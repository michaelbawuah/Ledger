"""Only fake transports are used; no provider credentials or requests are accessed."""
from concurrent.futures import ThreadPoolExecutor
from concurrent.futures import ProcessPoolExecutor
import json
import multiprocessing
from pathlib import Path

import pytest

from compilerpilot.api_budget import ApiBudget, BudgetError, MODEL, request_bound
from compilerpilot.strategies.agent import AgentRunner


def response(prompt=100, completion=10, **changes):
    return {'model': MODEL, 'service_tier': 'default',
            'usage': {'prompt_tokens': prompt, 'completion_tokens': completion,
                      'total_tokens': prompt + completion}, **changes}


class Harness:
    def trace(self, *args):
        pass


def _reserve_in_another_process(values):
    path, seed = values
    try:
        return ApiBudget(Path(path), '.85').reserve(MODEL, 4096, run_id=f'process-{seed}')
    except BudgetError:
        return None


def test_shared_allocation_persists_across_three_seeds_and_attempts(tmp_path):
    path = tmp_path / 'shared.json'
    ApiBudget.initialize(path, '.426')
    calls = []
    for seed in range(3):
        spending = ApiBudget(path, '.426')
        def transport(url, headers, payload, timeout):
            calls.append(payload)
            assert payload['service_tier'] == 'default'
            return response()
        runner = AgentRunner(Harness(), model=MODEL, seed=seed, api_key='test-only-key',
                             spending=spending, transport=transport)
        runner._request([], [])
    snapshot = ApiBudget(path, '.426').snapshot()
    assert len(calls) == len(snapshot['entries']) == 3
    assert [entry['run_id'] for entry in snapshot['entries']] == ['agent-seed-0', 'agent-seed-1', 'agent-seed-2']
    assert all(entry['status'] == 'settled' for entry in snapshot['entries'])
    assert sum(entry['charged_nusd'] for entry in snapshot['entries']) == 3 * (100 * 400 + 10 * 1600)
    assert snapshot['preflight_reserve_nusd'] == 10_000_000


def test_limit_checked_before_any_network_call(tmp_path):
    spending = ApiBudget.initialize(tmp_path / 'shared.json', '.42')
    runner = AgentRunner(Harness(), model=MODEL, api_key='test-only-key', spending=spending,
                         transport=lambda *args: pytest.fail('Budget must stop network access'))
    with pytest.raises(BudgetError, match='exhausted'):
        runner._request([], [])
    assert spending.snapshot()['entries'] == []


@pytest.mark.parametrize('changes', [
    {'usage': None}, {'usage': {}},
    {'usage': {'prompt_tokens': True, 'completion_tokens': 1, 'total_tokens': 2}},
    {'usage': {'prompt_tokens': -1, 'completion_tokens': 1, 'total_tokens': 0}},
    {'usage': {'prompt_tokens': 1, 'completion_tokens': 4097, 'total_tokens': 4098}},
    {'usage': {'prompt_tokens': 1, 'completion_tokens': 1, 'total_tokens': 3}},
    {'model': 'unvetted-model'}, {'service_tier': 'priority'}, {'service_tier': None},
    {'error': {'message': 'test-only-key must never be stored'}},
])
def test_unverified_usage_retains_full_reservation_and_stops(tmp_path, changes):
    spending = ApiBudget.initialize(tmp_path / 'shared.json', '.426')
    runner = AgentRunner(Harness(), model=MODEL, api_key='test-only-key', spending=spending,
                         transport=lambda *args: response(**changes))
    with pytest.raises(BudgetError, match='full request reservation retained'):
        runner._request([], [])
    snapshot = spending.snapshot()
    entry = snapshot['entries'][0]
    assert entry['charged_nusd'] == request_bound(MODEL, 4096) == 425_584_000
    assert entry['status'] == 'uncertain'
    assert 'test-only-key' not in json.dumps(snapshot)
    with pytest.raises(BudgetError, match='exhausted'):
        spending.reserve(MODEL, 4096, run_id='another-seed')


def test_ambiguous_provider_error_conservatively_charged_without_retry(tmp_path):
    spending = ApiBudget.initialize(tmp_path / 'shared.json', '.426')
    calls = []
    def transport(*args):
        calls.append(True)
        raise RuntimeError('sanitized provider failure')
    runner = AgentRunner(Harness(), model=MODEL, api_key='test-only-key', spending=spending, transport=transport)
    with pytest.raises(RuntimeError, match='sanitized provider failure'):
        runner._request([], [])
    assert len(calls) == 1
    entry = spending.snapshot()['entries'][0]
    assert entry['status'] == 'uncertain' and entry['charged_nusd'] == 425_584_000
    assert entry['reason'] == 'ambiguous_provider_error'


def test_integer_money_rounding_and_exact_request_bound(tmp_path):
    spending = ApiBudget.initialize(tmp_path / 'shared.json', '.425584')
    reservation = spending.reserve(MODEL, 4096)
    receipt = spending.settle(reservation, response(prompt=1, completion=1))
    assert receipt['charged_usd'] == '0.000002'
    assert receipt['refunded_usd'] == '0.425582'
    assert spending.snapshot()['entries'][0]['charged_nusd'] == 2000


@pytest.mark.parametrize('model', ['gpt-4.1-mini', 'gpt-6-luna', 'gpt-4.1-mini-2025-04-15', 'sk-untrusted-key'])
def test_exact_vetted_model_required_before_network(tmp_path, model):
    spending = ApiBudget.initialize(tmp_path / 'shared.json')
    runner = AgentRunner(Harness(), model=model, api_key='test-only-key', spending=spending,
                         transport=lambda *args: pytest.fail('Unvetted model must never reach provider'))
    with pytest.raises(BudgetError, match='vetted'):
        runner._request([], [])
    assert spending.snapshot()['entries'] == []


@pytest.mark.parametrize('limit', ['10', '10.01', 'nan', 'inf', '-1', '0', '.0000000001', True])
def test_invalid_or_overapproved_limit_cannot_initialize(tmp_path, limit):
    with pytest.raises(BudgetError):
        ApiBudget.initialize(tmp_path / 'shared.json', limit)
    assert not (tmp_path / 'shared.json').exists()


def test_allocation_cannot_be_silently_reset_or_imported_with_other_limit(tmp_path):
    path = tmp_path / 'shared.json'
    ApiBudget.initialize(path)
    with pytest.raises(BudgetError, match='cannot be reset'):
        ApiBudget.initialize(path)
    with pytest.raises(BudgetError, match='different allocation'):
        ApiBudget(path, '9')
    path.unlink()
    # The durable lock/tombstone forbids starting again after JSON deletion.
    with pytest.raises(BudgetError, match='cannot be reset'):
        ApiBudget.initialize(path)
    with pytest.raises(BudgetError, match='missing'):
        ApiBudget(path)


def test_corrupt_allocation_is_fail_closed(tmp_path):
    path = tmp_path / 'shared.json'
    ApiBudget.initialize(path)
    data = json.loads(path.read_text())
    data['allocation_id'] = 'another-allocation'
    path.write_text(json.dumps(data))
    with pytest.raises(BudgetError, match='different allocation'):
        ApiBudget(path)


def test_concurrent_reservations_cannot_overspend_shared_allocation(tmp_path):
    path = tmp_path / 'shared.json'
    ApiBudget.initialize(path, '.85')
    def reserve(seed):
        try:
            return ApiBudget(path, '.85').reserve(MODEL, 4096, run_id=f'seed-{seed}')
        except BudgetError:
            return None
    with ThreadPoolExecutor(max_workers=3) as executor:
        reservations = list(executor.map(reserve, range(3)))
    assert sum(value is not None for value in reservations) == 1
    assert len(ApiBudget(path, '.85').snapshot()['entries']) == 1


def test_separate_processes_cannot_spend_the_same_allocation(tmp_path):
    path = tmp_path / 'shared.json'
    ApiBudget.initialize(path, '.85')
    with ProcessPoolExecutor(max_workers=3, mp_context=multiprocessing.get_context('spawn')) as executor:
        reservations = list(executor.map(_reserve_in_another_process,
                                         [(str(path), seed) for seed in range(3)]))
    assert sum(value is not None for value in reservations) == 1
    assert len(ApiBudget(path, '.85').snapshot()['entries']) == 1


def test_interrupted_ledger_replace_blocks_future_requests(tmp_path, monkeypatch):
    import compilerpilot.api_budget as budget_module
    path = tmp_path / 'shared.json'
    spending = ApiBudget.initialize(path)
    replace = budget_module.os.replace
    def interrupt_after_replace(source, destination):
        replace(source, destination)
        raise OSError('Simulated interruption before checkpoint update')
    monkeypatch.setattr(budget_module.os, 'replace', interrupt_after_replace)
    with pytest.raises(OSError, match='checkpoint update'):
        spending.reserve(MODEL, 4096)
    # A durable reservation exists, but its checkpoint is the previous revision.
    assert json.loads(path.read_text())['entries'][0]['charged_nusd'] == 425_584_000
    with pytest.raises(BudgetError, match='inconsistent'):
        ApiBudget(path)


def test_live_agent_without_persistent_budget_never_sends_request(monkeypatch):
    import compilerpilot.strategies.agent as agent
    monkeypatch.setattr(agent, '_post', lambda *args: pytest.fail('No live request without budget'))
    runner = AgentRunner(Harness(), model=MODEL, api_key='test-only-key')
    with pytest.raises(BudgetError, match='persistent shared API budget'):
        runner._request([], [])


def test_older_valid_json_cannot_roll_back_live_allocation(tmp_path):
    path = tmp_path / 'shared.json'
    spending = ApiBudget.initialize(path)
    older = path.read_bytes()
    spending.reserve(MODEL, 4096)
    path.write_bytes(older)
    with pytest.raises(BudgetError, match='inconsistent'):
        ApiBudget(path)


def test_ledger_requires_its_matching_durable_checkpoint(tmp_path):
    path = tmp_path / 'shared.json'
    ApiBudget.initialize(path)
    path.with_name(path.name + '.lock').unlink()
    with pytest.raises(BudgetError, match='missing'):
        ApiBudget(path)


def test_agent_transport_never_follows_redirects():
    from compilerpilot.strategies.agent import _NoRedirect
    assert _NoRedirect().redirect_request(None, None, 302, '', {}, 'https://elsewhere.invalid') is None


def test_malformed_ledger_shape_fails_closed_without_traceback_or_reset(tmp_path):
    import hashlib
    path = tmp_path / 'shared.json'
    ApiBudget.initialize(path)
    raw = b'[]'
    path.write_bytes(raw)
    checkpoint_path = path.with_name(path.name + '.lock')
    checkpoint = json.loads(checkpoint_path.read_text())
    checkpoint['ledger_sha256'] = hashlib.sha256(raw).hexdigest()
    checkpoint_path.write_text(json.dumps(checkpoint))
    with pytest.raises(BudgetError, match='inconsistent'):
        ApiBudget(path)
