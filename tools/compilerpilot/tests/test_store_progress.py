import json

from compilerpilot.store import Store


def test_progress_is_opt_in_and_keeps_payloads_out_of_terminal(monkeypatch, tmp_path, capsys):
    monkeypatch.delenv('COMPILERPILOT_PROGRESS', raising=False)
    silent = Store(tmp_path, 'silent')
    silent.trace('build', {'note': 'private-test-payload'})
    assert capsys.readouterr().err == ''

    monkeypatch.setenv('COMPILERPILOT_PROGRESS', '1')
    visible = Store(tmp_path, 'visible')
    visible.trace('build', {'note': 'private-test-payload', 'api_key': 'fake-secret'})
    visible.trace('untrusted-fake-secret-event', {'note': 'private-test-payload'})
    visible.trace('trial', {'note': 'private-test-payload'})
    captured = capsys.readouterr()
    assert captured.out == ''
    assert [json.loads(line) for line in captured.err.splitlines()] == [
        {'compilerpilot_progress': 'build', 'events_recorded': 1},
        {'compilerpilot_progress': 'trial', 'events_recorded': 3},
    ]
    assert 'private-test-payload' not in captured.err and 'fake-secret' not in captured.err
    records = [json.loads(line) for line in (visible.run_dir / 'trace.jsonl').read_text().splitlines()]
    assert len(records) == 3


def test_failed_progress_sink_preserves_evidence(monkeypatch, tmp_path):
    monkeypatch.setenv('COMPILERPILOT_PROGRESS', '1')
    store = Store(tmp_path, 'closed-terminal')

    class ClosedTerminal:
        def write(self, text):
            raise OSError('terminal disconnected')

    monkeypatch.setattr('compilerpilot.store.sys.stderr', ClosedTerminal())
    store.trace('build', {'success': True})
    store.trace('trial', {'correctness': True})
    assert store.progress_enabled is False
    assert len((store.run_dir / 'trace.jsonl').read_text().splitlines()) == 2
