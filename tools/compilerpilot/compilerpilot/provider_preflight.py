"""One harmless API compatibility request; this is never a performance result."""
from __future__ import annotations

import argparse
import json
import os
from pathlib import Path
import re
from typing import Any, Callable
from urllib.error import HTTPError, URLError
from urllib.request import HTTPRedirectHandler, Request, build_opener

DEFAULT_MODEL = 'gpt-4.1-mini-2025-04-14'
ENDPOINT = 'https://api.openai.com/v1/chat/completions'
TOOL_NAME = 'compatibility_probe'
MAX_COMPLETION_TOKENS = 512
MAX_RESPONSE_BYTES = 65_536
MAX_ERROR_BYTES = 8_192
_ERROR_CODES = frozenset({'insufficient_quota', 'credit_balance_exhausted', 'invalid_api_key',
                          'model_not_found', 'unsupported_parameter', 'unsupported_value',
                          'rate_limit_exceeded', 'billing_hard_limit_reached'})
PROJECT = Path(__file__).resolve().parents[1]


class _NoRedirect(HTTPRedirectHandler):
    def redirect_request(self, request, fp, code, message, headers, new_url):
        # A redirect would become a second request and might forward credentials.
        return None


def _identifier(value: Any, secret: str | None, *, request_id: bool = False) -> str | None:
    if (not isinstance(value, str) or not re.fullmatch(r'[A-Za-z0-9_.:-]{1,200}', value)
            or (secret and secret in value)
            or value.lower().startswith(('sk-', 'sk_', 'rk-', 'rk_', 'sess-', 'ghp_', 'gho_',
                                         'ghu_', 'ghs_', 'ghr_', 'github_pat_'))):
        return None
    if request_id and not value.startswith('req_'):
        return None
    return value


def _usage(value: Any) -> dict[str, Any]:
    """Copy only recognized nonnegative token counts, never provider free text."""
    if not isinstance(value, dict):
        return {}
    result = {}
    for key in ('prompt_tokens', 'completion_tokens', 'total_tokens'):
        count = value.get(key)
        if type(count) is int and count >= 0:
            result[key] = count
    for outer, keys in (('prompt_tokens_details', ('cached_tokens', 'audio_tokens')),
                        ('completion_tokens_details', ('reasoning_tokens', 'audio_tokens',
                                                       'accepted_prediction_tokens', 'rejected_prediction_tokens'))):
        source = value.get(outer)
        if isinstance(source, dict):
            details = {key: source[key] for key in keys
                       if type(source.get(key)) is int and source[key] >= 0}
            if details:
                result[outer] = details
    return result


def preflight(model: str = DEFAULT_MODEL, *, opener: Callable[..., Any] | None = None) -> dict[str, Any]:
    """Send zero or one request, without retrying, building, or calling any tool.

    Sampling exactly matches the study's OpenAI path: temperature=0, seed=0,
    Chat Completions strict function tools, auto tool choice, no parallel calls.
    Only the completion bound and tiny fixed prompt/tools differ from the study.
    """
    report = {'model': {'requested': None, 'returned': None}, 'request_id': None,
              'usage': {}, 'status': 'not_started', 'tool_name': None}
    secret = os.environ.get('OPENAI_API_KEY')
    requested = _identifier(model, secret)
    report['model']['requested'] = requested
    if requested is None:
        report['status'] = 'invalid_model'
        return report
    if not secret:
        report['status'] = 'missing_api_key'
        return report
    payload = {
        'model': requested,
        'messages': [
            {'role': 'system', 'content': 'Compatibility check only. Call compatibility_probe exactly once with ok=true. Do not write prose.'},
            {'role': 'user', 'content': 'Call the harmless compatibility probe now.'},
        ],
        'tools': [{'type': 'function', 'function': {
            'name': TOOL_NAME, 'description': 'A harmless compatibility marker; no action is executed.',
            'parameters': {'type': 'object', 'properties': {'ok': {'type': 'boolean'}},
                           'required': ['ok'], 'additionalProperties': False}, 'strict': True,
        }}],
        'tool_choice': 'auto', 'parallel_tool_calls': False,
        'max_completion_tokens': MAX_COMPLETION_TOKENS, 'temperature': 0, 'seed': 0,
    }
    request = Request(ENDPOINT, data=json.dumps(payload).encode('utf-8'),
                      headers={'Authorization': f'Bearer {secret}', 'Content-Type': 'application/json'},
                      method='POST')
    send = opener or build_opener(_NoRedirect()).open
    try:
        with send(request, timeout=45) as response:
            report['request_id'] = _identifier(response.headers.get('x-request-id'), secret, request_id=True)
            raw = response.read(MAX_RESPONSE_BYTES + 1)
        if len(raw) > MAX_RESPONSE_BYTES:
            report['status'] = 'response_too_large'
            return report
        result = json.loads(raw)
        if not isinstance(result, dict):
            report['status'] = 'unexpected_response'
            return report
        report['model']['returned'] = _identifier(result.get('model'), secret)
        report['usage'] = _usage(result.get('usage'))
        choices = result.get('choices')
        if not isinstance(choices, list) or len(choices) != 1 or not isinstance(choices[0], dict):
            report['status'] = 'unexpected_response'
            return report
        message = choices[0].get('message')
        calls = message.get('tool_calls') if isinstance(message, dict) else None
        if not isinstance(calls, list) or len(calls) != 1 or not isinstance(calls[0], dict):
            report['status'] = 'expected_tool_call_missing'
            return report
        call = calls[0]
        function = call.get('function')
        if call.get('type') != 'function' or not isinstance(function, dict) or function.get('name') != TOOL_NAME:
            report['status'] = 'unexpected_tool_call'
            return report
        report['tool_name'] = TOOL_NAME
        arguments = json.loads(function.get('arguments', 'null'))
        if type(arguments) is not dict or set(arguments) != {'ok'} or arguments['ok'] is not True:
            report['status'] = 'invalid_tool_arguments'
            return report
        if choices[0].get('finish_reason') != 'tool_calls':
            report['status'] = 'tool_response_incomplete'
            return report
        if report['model']['returned'] != requested:
            report['status'] = 'model_mismatch'
            return report
        report['status'] = 'compatible'
    except HTTPError as error:
        code_number = error.code if type(error.code) is int and 100 <= error.code <= 599 else None
        report['status'] = f'http_error_{code_number}' if code_number is not None else 'http_error'
        # Only fixed, locally allow-listed codes can refine the status. Arbitrary
        # error messages, body text, request headers and credentials never leave.
        try:
            raw_error = error.read(MAX_ERROR_BYTES + 1)
            if len(raw_error) <= MAX_ERROR_BYTES:
                parsed = json.loads(raw_error)
                details = parsed.get('error') if isinstance(parsed, dict) else None
                code = details.get('code') if isinstance(details, dict) else None
                if isinstance(code, str) and code in _ERROR_CODES:
                    report['status'] += '_' + code
        except Exception:
            pass
    except TimeoutError:
        report['status'] = 'timeout'
    except URLError:
        report['status'] = 'network_error'
    except (ValueError, TypeError, KeyError, UnicodeError):
        report['status'] = 'invalid_provider_response'
    except Exception:
        report['status'] = 'request_failed'
    return report


def main(argv: list[str] | None = None) -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--model', default=DEFAULT_MODEL,
                        help='Exact model ID; the default remains available until its announced January 14, 2027 shutdown')
    parser.add_argument('--output', type=Path, default=PROJECT / 'results/provider-check.json')
    args = parser.parse_args(argv)
    report = preflight(args.model)
    try:
        args.output.parent.mkdir(parents=True, exist_ok=True)
        args.output.write_text(json.dumps(report, indent=2) + '\n')
    except OSError:
        print('Could not write provider compatibility report')
        return 1
    print(json.dumps(report))
    return 0 if report['status'] == 'compatible' else 1


if __name__ == '__main__':
    raise SystemExit(main())
