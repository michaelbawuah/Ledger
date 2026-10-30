import pytest
from compilerpilot.cli import main, prepare_data


def test_agent_credentials_checked_before_build(monkeypatch, tmp_path):
    monkeypatch.delenv('OPENAI_API_KEY',raising=False)
    assert main(['experiment','--strategy','agent','--model','fixed-test-model',
                 '--results',str(tmp_path)])==1
    assert not list(tmp_path.iterdir())


def test_training_seed_cannot_equal_evaluation_seed(tmp_path):
    with pytest.raises(ValueError,match='seeds must differ'):
        prepare_data(tmp_path,tmp_path/'data',100,1,1)


def test_command_limit_checked_before_build(tmp_path):
    with pytest.raises(ValueError,match='commands'):
        prepare_data(tmp_path,tmp_path/'data',0,1,2)


def test_successful_agent_outcome_is_strategy_neutral_and_execution_metadata_kept(monkeypatch, tmp_path):
    import argparse
    import json
    import compilerpilot.cli as cli
    import compilerpilot.strategies.agent as agent
    from compilerpilot.store import Store
    from compilerpilot.api_budget import ApiBudget, MODEL

    store = Store(tmp_path, 'agent-40')
    recommendation = {'status': 'provisional_pending_confirmation',
                      'builds_used': 40, 'recommendation': 'baseline-build',
                      'rationale': 'All forty measured candidates were within baseline noise'}
    execution = {'status': 'finished', 'complete': True, 'builds': 40,
                 'recommendation': recommendation, 'provider': 'openai',
                 'model': MODEL, 'seed': 2, 'calls': 81, 'sampling': 'fixed'}
    class Harness:
        pass
    harness = Harness()
    harness.store = store
    class Runner:
        def __init__(self, supplied, **settings):
            assert supplied is harness
            assert settings['model'] == MODEL
            assert settings['seed'] == 2
        def run(self, budget):
            assert budget == 40
            # This file is normally written by Harness.finish during dispatch.
            store.write('recommendation.json', recommendation)
            return execution
    monkeypatch.setenv('OPENAI_API_KEY', 'test-placeholder')
    monkeypatch.setattr(cli, '_harness', lambda *args: harness)
    monkeypatch.setattr(agent, 'AgentRunner', Runner)
    budget_path = tmp_path / 'shared-api-budget.json'
    ApiBudget.initialize(budget_path)
    cli.experiment(argparse.Namespace(strategy='agent', model=MODEL,
                                      provider='openai', budget=40, seed=2, api_budget_file=budget_path, api_budget_usd='9.99'))
    outcome = json.loads((store.run_dir / 'outcome.json').read_text())
    raw = json.loads((store.run_dir / 'agent-execution.json').read_text())
    assert outcome == recommendation
    assert raw == execution
    assert raw['provider'] == 'openai' and raw['model'] == MODEL
    assert raw['seed'] == 2 and raw['calls'] == 81


def test_live_agent_budget_required_before_any_baseline_build(monkeypatch, tmp_path):
    import compilerpilot.cli as cli
    from compilerpilot.api_budget import MODEL
    monkeypatch.setenv('OPENAI_API_KEY', 'test-placeholder')
    monkeypatch.setattr(cli, '_harness', lambda *args: pytest.fail('No build before persistent spending guard'))
    assert main(['experiment', '--strategy', 'agent', '--model', MODEL,
                 '--results', str(tmp_path)]) == 1
    assert not list(tmp_path.iterdir())


@pytest.mark.parametrize('count', [None, 5])
def test_cli_default_and_explicit_throughput_replay_argument(monkeypatch, tmp_path, count):
    from types import SimpleNamespace
    import compilerpilot.cli as cli
    calls = []
    def harness(args, strategy, budget):
        calls.append(args.throughput_replays)
        return SimpleNamespace(trace=lambda *args: None, get_counters=lambda _: {},
                               baseline=SimpleNamespace(build_id='fixture'),
                               store=SimpleNamespace(run_dir=tmp_path), noise_ok=True, baseline_metric={})
    monkeypatch.setattr(cli, '_harness', harness)
    arguments = ['baseline'] + ([] if count is None else ['--throughput-replays', str(count)])
    assert cli.main(arguments) == 0
    assert calls == [1 if count is None else count]


def test_harness_configuration_records_and_uses_fixed_replay_count(monkeypatch, tmp_path):
    from types import SimpleNamespace
    import json
    import compilerpilot.cli as cli
    captured = []
    monkeypatch.setattr(cli, 'prepare_data', lambda *args: {'fixture': True})
    monkeypatch.setattr(cli, 'BuildManager', lambda *args, **kwargs: object())
    monkeypatch.setattr(cli, 'BenchmarkConfig', lambda input_path, **kwargs: SimpleNamespace(input=input_path, **kwargs))
    monkeypatch.setattr(cli, 'BenchmarkRunner', lambda config: SimpleNamespace(config=config))
    class Harness:
        def __init__(self, manager, runner, store, **kwargs):
            captured.append(runner.config.throughput_replays)
            self.store = store
        def establish_baseline(self, repetitions):
            return {'noise_gate': True}
    monkeypatch.setattr(cli, 'Harness', Harness)
    args = SimpleNamespace(ledger=cli.require_ledger_root(), data=tmp_path/'data', results=tmp_path/'results',
                           run_id='fixed-work', commands=100, evaluation_seed=1, training_seed=2,
                           jobs=2, cpu=0, baseline_repetitions=10, throughput_replays=5)
    harness = cli._harness(args, 'random', 1)
    protocol = json.loads((harness.store.run_dir/'protocol.json').read_text())
    assert captured == [5]
    assert protocol['throughput_replays'] == protocol['arguments']['throughput_replays'] == 5


def test_confirmation_cli_rejects_saved_one_replay_baseline_for_new_protocol(tmp_path):
    import json
    baseline = tmp_path/'baseline.json'
    baseline.write_text(json.dumps({'build': {}, 'metric': {}}))
    assert main(['confirm', '--baseline', str(baseline), '--candidates', str(tmp_path/'candidate.json'),
                 '--input', str(tmp_path/'eval.lob'), '--throughput-replays', '5']) == 1
