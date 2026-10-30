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

    store = Store(tmp_path, 'agent-40')
    recommendation = {'status': 'provisional_pending_confirmation',
                      'builds_used': 40, 'recommendation': 'baseline-build',
                      'rationale': 'All forty measured candidates were within baseline noise'}
    execution = {'status': 'finished', 'complete': True, 'builds': 40,
                 'recommendation': recommendation, 'provider': 'openai',
                 'model': 'fixed-model-version', 'seed': 2, 'calls': 81, 'sampling': 'fixed'}
    class Harness:
        pass
    harness = Harness()
    harness.store = store
    class Runner:
        def __init__(self, supplied, **settings):
            assert supplied is harness
            assert settings['model'] == 'fixed-model-version'
            assert settings['seed'] == 2
        def run(self, budget):
            assert budget == 40
            # This file is normally written by Harness.finish during dispatch.
            store.write('recommendation.json', recommendation)
            return execution
    monkeypatch.setenv('OPENAI_API_KEY', 'test-placeholder')
    monkeypatch.setattr(cli, '_harness', lambda *args: harness)
    monkeypatch.setattr(agent, 'AgentRunner', Runner)
    cli.experiment(argparse.Namespace(strategy='agent', model='fixed-model-version',
                                      provider='openai', budget=40, seed=2))
    outcome = json.loads((store.run_dir / 'outcome.json').read_text())
    raw = json.loads((store.run_dir / 'agent-execution.json').read_text())
    assert outcome == recommendation
    assert raw == execution
    assert raw['provider'] == 'openai' and raw['model'] == 'fixed-model-version'
    assert raw['seed'] == 2 and raw['calls'] == 81
