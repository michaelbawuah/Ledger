import io
import json
from urllib.error import HTTPError, URLError

import pytest

from compilerpilot.provider_preflight import DEFAULT_MODEL, MAX_RESPONSE_BYTES, _NoRedirect, main, preflight


class Response:
    headers = {'x-request-id': 'req_test-only'}
    def __init__(self, body):
        self.body = body
    def __enter__(self):
        return self
    def __exit__(self, *args):
        pass
    def read(self, limit):
        assert limit == MAX_RESPONSE_BYTES + 1
        return self.body[:limit]


def good_response(**changes):
    result = {'model': DEFAULT_MODEL, 'usage': {'prompt_tokens': 150, 'completion_tokens': 20,
              'total_tokens': 170, 'untrusted_note': 'never save me'},
              'choices': [{'finish_reason': 'tool_calls', 'message': {'tool_calls': [
                  {'type': 'function', 'function': {'name': 'compatibility_probe', 'arguments': '{"ok":true}'}}]}}]}
    result.update(changes)
    return json.dumps(result).encode()


def test_one_bounded_request_uses_actual_study_sampling_and_only_whitelisted_report(monkeypatch):
    key = 'test-provider-secret'
    monkeypatch.setenv('OPENAI_API_KEY', key)
    calls = []
    def send(request, timeout):
        calls.append(request)
        payload = json.loads(request.data)
        assert request.full_url == 'https://api.openai.com/v1/chat/completions'
        assert request.get_header('Authorization') == f'Bearer {key}'
        assert timeout == 45
        assert payload['model'] == DEFAULT_MODEL
        assert payload['temperature'] == 0 and payload['seed'] == 0
        assert payload['max_completion_tokens'] == 512
        assert payload['tool_choice'] == 'auto' and payload['parallel_tool_calls'] is False
        assert len(payload['tools']) == 1 and payload['tools'][0]['function']['strict'] is True
        assert len(payload['messages']) == 2
        assert key not in json.dumps(payload)
        return Response(good_response())
    report = preflight(opener=send)
    assert len(calls) == 1
    assert report['status'] == 'compatible'
    assert set(report) == {'model', 'request_id', 'usage', 'status', 'tool_name'}
    assert report['request_id'] == 'req_test-only'
    assert report['tool_name'] == 'compatibility_probe'
    assert 'untrusted_note' not in report['usage']
    assert key not in json.dumps(report)


def test_missing_key_never_sends_request(monkeypatch):
    monkeypatch.delenv('OPENAI_API_KEY', raising=False)
    assert preflight(opener=lambda *args, **kwargs: pytest.fail('must not call'))['status'] == 'missing_api_key'


@pytest.mark.parametrize('error,status', [
    (HTTPError('https://api.openai.com', 401, 'secret body', {}, io.BytesIO(b'provider-secret-body')), 'http_error_401'),
    (URLError('private network diagnostic'), 'network_error'),
    (TimeoutError('private timeout diagnostic'), 'timeout'),
])
def test_errors_are_sanitized_without_retries(monkeypatch, error, status):
    monkeypatch.setenv('OPENAI_API_KEY', 'test-provider-secret')
    calls = []
    def send(*args, **kwargs):
        calls.append(True)
        raise error
    report = preflight(opener=send)
    assert len(calls) == 1 and report['status'] == status
    assert 'secret' not in json.dumps(report) and 'private' not in json.dumps(report)


@pytest.mark.parametrize('body,status', [
    (b'not json', 'invalid_provider_response'),
    (b'x' * (MAX_RESPONSE_BYTES + 1), 'response_too_large'),
    (good_response(choices=[]), 'unexpected_response'),
    (good_response(choices=[{'message': {'tool_calls': []}}]), 'expected_tool_call_missing'),
])
def test_malformed_or_oversized_provider_data_never_passes(monkeypatch, body, status):
    monkeypatch.setenv('OPENAI_API_KEY', 'test-provider-secret')
    assert preflight(opener=lambda *args, **kwargs: Response(body))['status'] == status


def test_redirects_are_not_followed():
    assert _NoRedirect().redirect_request(None, None, 302, '', {}, 'https://elsewhere.invalid') is None


def test_cli_writes_failure_report_without_provider_call(monkeypatch, tmp_path, capsys):
    monkeypatch.delenv('OPENAI_API_KEY', raising=False)
    output = tmp_path / 'report.json'
    assert main(['--output', str(output)]) == 1
    assert json.loads(output.read_text())['status'] == 'missing_api_key'
    assert json.loads(capsys.readouterr().out)['status'] == 'missing_api_key'


@pytest.mark.parametrize('returned', ['another-model-version', None, 'sk-other-secret', 'test-provider-secret'])
def test_fixed_snapshot_mismatch_or_secret_like_model_never_passes(monkeypatch, returned):
    monkeypatch.setenv('OPENAI_API_KEY', 'test-provider-secret')
    report = preflight(opener=lambda *args, **kwargs: Response(good_response(model=returned)))
    assert report['status'] == 'model_mismatch'
    if returned and ('secret' in returned):
        assert returned not in json.dumps(report)


def test_only_allowlisted_provider_error_code_is_persisted(monkeypatch):
    monkeypatch.setenv('OPENAI_API_KEY', 'test-provider-secret')
    def send(*args, **kwargs):
        body = json.dumps({'error': {'code': 'insufficient_quota',
            'message': 'private message with test-provider-secret',
            'untrusted_field': 'private diagnostic'}}).encode()
        raise HTTPError('https://api.openai.com', 429, 'private diagnostic', {}, io.BytesIO(body))
    report = preflight(opener=send)
    assert report['status'] == 'http_error_429_insufficient_quota'
    assert 'private' not in json.dumps(report) and 'test-provider-secret' not in json.dumps(report)


def test_untrusted_error_code_never_leaves_report(monkeypatch):
    monkeypatch.setenv('OPENAI_API_KEY', 'test-provider-secret')
    def send(*args, **kwargs):
        body = b'{"error":{"code":"test-provider-secret","message":"private"}}'
        raise HTTPError('https://api.openai.com', 400, 'private', {}, io.BytesIO(body))
    report = preflight(opener=send)
    assert report['status'] == 'http_error_400'
    assert 'test-provider-secret' not in json.dumps(report) and 'private' not in json.dumps(report)


def test_secret_like_model_input_is_never_sent_or_printed(monkeypatch, tmp_path, capsys):
    monkeypatch.setenv('OPENAI_API_KEY', 'test-provider-secret')
    output = tmp_path / 'report.json'
    assert main(['--model', 'sk-accidental-other-key', '--output', str(output)]) == 1
    assert json.loads(output.read_text())['status'] == 'invalid_model'
    assert 'sk-accidental-other-key' not in output.read_text()
    assert 'sk-accidental-other-key' not in capsys.readouterr().out
