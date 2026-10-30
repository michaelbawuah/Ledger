"""Focused optimization keeps the scientific gates without claiming E3 coverage."""
from dataclasses import replace
import json

import pytest

from compilerpilot.api_budget import ApiBudget, MODEL
from compilerpilot.build import file_sha256
from compilerpilot.confirm import confirm_candidates
from compilerpilot.space import Candidate, KNOBS
from compilerpilot.study import StudyConfig, StudyRunner
from test_study import CPU, HOST, SOURCE, FakeExperiment, save


def focused_config(tmp_path, **changes):
    values = dict(study_id="focused", ledger=tmp_path / "ledger", data=tmp_path / "data",
                  results=tmp_path / "results", scope="speedup", phase="study", model=None,
                  api_budget_file=None, cpu=CPU, commands=5_000_000, throughput_replays=5)
    values.update(changes)
    return StudyConfig(**values)


@pytest.fixture(autouse=True)
def no_provider_credentials(monkeypatch):
    monkeypatch.delenv("OPENAI_API_KEY", raising=False)
    monkeypatch.delenv("ANTHROPIC_API_KEY", raising=False)


def manifest(cfg):
    return json.loads((cfg.results / "study.json").read_text())


def test_focused_scope_uses_complete_sweep_and_confirmation_without_api(tmp_path):
    cfg = focused_config(tmp_path)
    fake = FakeExperiment(cfg, significant=True)
    assert fake.runner().run() == 0
    result = manifest(cfg)
    assert [command[0] for command in fake.commands] == ["baseline", "sweep"]
    assert list(result["phases"]) == ["E1", "Gate", "E2", "E5"]
    assert result["protocol"]["scope"] == "speedup"
    assert result["status"] == "speedup_confirmed"
    assert result["full_E3_protocol"] is False
    assert result["agent"] is None and "api_budget" not in result
    assert result["effective_strategy_runs"] == []
    assert fake.reports == []
    assert not (cfg.results / "api-budget-snapshot.json").exists()
    assert result["phases"]["E2"]["outcome"]["builds"] == sum(len(values) - 1 for values in KNOBS.values()) == 14
    assert len(fake.gates) == 1 and len(fake.confirmations) == 1
    runner, baseline, candidates, settings = fake.confirmations[0]
    assert runner.config.throughput_replays == 5
    assert settings["rounds"] == 10 and settings["full_validation"] is True
    assert len(candidates) == len({build.build_id for build in candidates}) == 3
    assert all(build.provenance == baseline.provenance for build in candidates)
    assert all(command[command.index("--baseline-repetitions") + 1] == "10" for command in fake.commands)
    assert all(command[command.index("--throughput-replays") + 1] == "5" for command in fake.commands)


def test_scope_is_not_full_strategy_comparison_even_at_original_budget(tmp_path):
    focused = focused_config(tmp_path, budget=40, seeds=3, commands=5_000_000)
    assert focused.full_protocol is False
    assert replace(focused, scope="full").full_protocol is True
    with pytest.raises(ValueError, match="scope"):
        focused_config(tmp_path, scope="unrecognized")


@pytest.mark.parametrize("before,after", [("full", "speedup"), ("speedup", "full"),
                                        ("agent-speedup", "full"), ("speedup", "agent-speedup")])
def test_scope_cannot_change_after_baseline_qualification(tmp_path, before, after):
    cfg = focused_config(tmp_path, phase="baseline", scope=before)
    fake = FakeExperiment(cfg)
    assert fake.runner().run() == 0
    original = (cfg.results / "study.json").read_bytes()
    with pytest.raises(ValueError, match="Resume protocol differs"):
        fake.runner(replace(cfg, scope=after, resume=True)).run()
    assert (cfg.results / "study.json").read_bytes() == original
    assert len(fake.commands) == 1


def test_historical_manifest_without_scope_resumes_only_as_full(tmp_path):
    cfg = focused_config(tmp_path, phase="baseline", scope="full")
    fake = FakeExperiment(cfg)
    assert fake.runner().run() == 0
    saved = manifest(cfg)
    del saved["protocol"]["scope"]
    save(cfg.results / "study.json", saved)
    assert fake.runner(replace(cfg, resume=True)).run() == 0
    assert len(fake.commands) == 1
    with pytest.raises(ValueError, match="Resume protocol differs"):
        fake.runner(replace(cfg, scope="speedup", resume=True)).run()


def test_focused_baseline_can_resume_same_scope_without_credentials(tmp_path):
    cfg = focused_config(tmp_path, phase="baseline")
    fake = FakeExperiment(cfg, significant=True)
    assert fake.runner().run() == 0
    assert fake.runner(replace(cfg, phase="study", resume=True)).run() == 0
    assert [command[0] for command in fake.commands] == ["baseline", "sweep"]
    assert manifest(cfg)["status"] == "speedup_confirmed"
    with pytest.raises(ValueError, match="already finished"):
        fake.runner(replace(cfg, phase="study", resume=True)).run()


@pytest.mark.parametrize("significant,confirm,status", [
    (False, True, "speedup_no_improvement"),
    (True, False, "speedup_unconfirmed"),
])
def test_focused_terminal_outcomes_never_invent_a_winner(tmp_path, significant, confirm, status):
    cfg = focused_config(tmp_path, confirm=confirm)
    fake = FakeExperiment(cfg, significant=significant)
    assert fake.runner().run() == 0
    result = manifest(cfg)
    assert result["status"] == status and result["recommendation"] is None
    assert not fake.confirmations
    assert json.loads((cfg.results / "confirmation.json").read_text())["recommendation"] is None


def test_focused_noise_failure_stops_before_sweep_and_preserves_attempt(tmp_path):
    cfg = focused_config(tmp_path)
    fake = FakeExperiment(cfg, noise=True)
    assert fake.runner().run() == 1
    assert manifest(cfg)["status"] == "failed"
    assert [command[0] for command in fake.commands] == ["baseline"]
    assert not fake.gates and not fake.confirmations
    assert (cfg.results / "runs/focused-E1/baseline.json").exists()


def test_focused_live_mutation_gate_cannot_be_skipped(tmp_path):
    cfg = focused_config(tmp_path)
    fake = FakeExperiment(cfg, significant=True)
    runner = StudyRunner(cfg, invoke=fake, source_reader=lambda _: SOURCE, host_reader=lambda: HOST,
                         mutation_checker=lambda *args: {"qualified": False}, reporter=fake.report,
                         confirmer=fake.confirm)
    assert runner.run() == 1
    assert manifest(cfg)["phases"]["Gate"]["status"] == "failed"
    assert [command[0] for command in fake.commands] == ["baseline"]
    assert not fake.confirmations


def test_focused_noisy_confirmation_is_not_a_confirmed_speedup(tmp_path):
    cfg = focused_config(tmp_path)
    fake = FakeExperiment(cfg, significant=True)
    runner = StudyRunner(cfg, invoke=fake, source_reader=lambda _: SOURCE, host_reader=lambda: HOST,
                         mutation_checker=fake.gate, reporter=fake.report,
                         confirmer=lambda *args, **kwargs: {"status": "noisy", "winner": None,
                                                           "recommendation": None,
                                                           "throughput_replays": 5})
    assert runner.run() == 1
    assert manifest(cfg)["status"] == "failed"
    assert manifest(cfg)["phases"]["E5"]["status"] == "failed"
    assert json.loads((cfg.results / "confirmation.json").read_text())["recommendation"] is None


@pytest.mark.parametrize("changed", ["source", "host"])
def test_focused_confirmation_context_change_invalidates_saved_winner(tmp_path, changed):
    cfg = focused_config(tmp_path)
    fake = FakeExperiment(cfg, significant=True)
    source, host = dict(SOURCE), dict(HOST)

    def confirm(*args, **settings):
        result = fake.confirm(*args, **settings)
        if changed == "source":
            source["source_sha256"] = "changed-after-measurement"
        else:
            host["boot_id_sha256"] = "changed-after-measurement"
        return result

    runner = StudyRunner(cfg, invoke=fake, source_reader=lambda _: dict(source),
                         host_reader=lambda: dict(host), mutation_checker=fake.gate,
                         reporter=fake.report, confirmer=confirm)
    assert runner.run() == 1
    result = json.loads((cfg.results / "confirmation.json").read_text())
    assert result["status"] == "confirmation_interrupted_or_invalidated"
    assert result["recommendation"] is None and result["winner"] is None
    assert manifest(cfg)["status"] == "failed"


def test_last_context_check_invalidates_an_already_written_confirmation(tmp_path):
    cfg = focused_config(tmp_path)
    fake = FakeExperiment(cfg, significant=True)

    def host_reader():
        path = cfg.results / "confirmation.json"
        if path.is_file() and json.loads(path.read_text()).get("status") == "confirmed":
            return {"boot_id_sha256": "changed-after-confirmation-was-written"}
        return HOST

    runner = StudyRunner(cfg, invoke=fake, source_reader=lambda _: SOURCE, host_reader=host_reader,
                         mutation_checker=fake.gate, reporter=fake.report, confirmer=fake.confirm)
    assert runner.run() == 1
    result = json.loads((cfg.results / "confirmation.json").read_text())
    assert result["status"] == "invalidated_context"
    assert result["recommendation"] is None and result["winner"] is None
    assert manifest(cfg)["status"] == "failed"


def test_final_run_context_check_cannot_preserve_a_previously_confirmed_winner(tmp_path):
    cfg = focused_config(tmp_path)
    fake = FakeExperiment(cfg, significant=True)
    persisted_checks = []

    def host_reader():
        path = cfg.results / "confirmation.json"
        if path.is_file() and json.loads(path.read_text()).get("status") == "confirmed":
            persisted_checks.append(True)
            if len(persisted_checks) == 2:
                return {"boot_id_sha256": "changed-after-E5-phase-context-check"}
        return HOST

    runner = StudyRunner(cfg, invoke=fake, source_reader=lambda _: SOURCE, host_reader=host_reader,
                         mutation_checker=fake.gate, reporter=fake.report, confirmer=fake.confirm)
    assert runner.run() == 1
    assert len(persisted_checks) == 2
    result = json.loads((cfg.results / "confirmation.json").read_text())
    assert result["status"] == "invalidated_context"
    assert result["recommendation"] is None and result["winner"] is None
    assert manifest(cfg)["status"] == "failed"
    assert manifest(cfg).get("recommendation") is None


def test_focused_actual_confirmer_requires_full_validation_and_all_interleaved_rounds(tmp_path, monkeypatch):
    import compilerpilot.bench as bench

    cfg = focused_config(tmp_path)
    fake = FakeExperiment(cfg, significant=True)
    validation_calls = []

    class Runner:
        def __init__(self, configuration):
            self.config = configuration

        def run(self, build, label):
            return {"correctness": True,
                    "throughput": 1000. if build.build_id == Candidate().hash() else 1200.,
                    "p50_ns": 1., "p99_ns": 2., "cv": .001,
                    "provenance": {"throughput_replays": 5,
                                   "input_sha256": file_sha256(cfg.data / "eval.lob")}}

        def full_validate(self, build, seeds, orders):
            validation_calls.append((build.build_id, seeds, orders))
            return {"correctness": True, "ctest_exit_code": 0, "differential_exit_code": 0,
                    "throughput_replays": self.config.throughput_replays}

    monkeypatch.setattr(bench, "BenchmarkRunner", Runner)
    runner = StudyRunner(cfg, invoke=fake, source_reader=lambda _: SOURCE, host_reader=lambda: HOST,
                         mutation_checker=fake.gate, reporter=fake.report, confirmer=confirm_candidates)
    assert runner.run() == 0
    result = json.loads((cfg.results / "confirmation.json").read_text())
    records = [json.loads(line)["observation"] for line in
               (cfg.results / "confirmation-trace.jsonl").read_text().splitlines()]
    assert manifest(cfg)["status"] == "speedup_confirmed" and result["status"] == "confirmed"
    assert len(records) == 40
    assert {record["round"] for record in records} == set(range(10))
    assert all(record["provenance"]["throughput_replays"] == 5 for record in records)
    assert validation_calls == [(result["winner"], 100, 1_000_000)]


@pytest.mark.parametrize("budget", [1, 20, 39])
def test_agent_speedup_does_not_silently_reduce_the_fixed_build_budget(tmp_path, budget):
    with pytest.raises(ValueError, match="40"):
        focused_config(tmp_path, scope="agent-speedup", budget=budget)


def test_agent_speedup_still_requires_credentials_before_any_output(tmp_path):
    cfg = focused_config(tmp_path, scope="agent-speedup", model=MODEL)
    fake = FakeExperiment(cfg)
    with pytest.raises(ValueError, match="OPENAI_API_KEY"):
        fake.runner().run()
    assert not cfg.results.exists() and fake.commands == []


@pytest.mark.parametrize("missing", ["model", "allocation", "wrong_model"])
def test_agent_speedup_requires_pinned_model_and_shared_allocation(tmp_path, monkeypatch, missing):
    monkeypatch.setenv("OPENAI_API_KEY", "not-a-real-key")
    cfg = focused_config(tmp_path, scope="agent-speedup", model=MODEL)
    if missing == "model":
        cfg = replace(cfg, model=None)
        error = "--model"
    elif missing == "wrong_model":
        cfg = replace(cfg, model="other-model")
        error = "approved allocation"
    else:
        error = "--api-budget-file"
    fake = FakeExperiment(cfg)
    with pytest.raises((ValueError, RuntimeError), match=error):
        fake.runner().run()
    assert not cfg.results.exists() and fake.commands == []


def test_agent_speedup_runs_one_complete_agent_budget_without_baseline_rank_claim(tmp_path, monkeypatch):
    monkeypatch.setenv("OPENAI_API_KEY", "not-a-real-key")
    allocation = tmp_path / "shared-allocation.json"
    ApiBudget.initialize(allocation)
    cfg = focused_config(tmp_path, scope="agent-speedup", model=MODEL,
                         api_budget_file=allocation, budget=40)
    fake = FakeExperiment(cfg, significant=True)
    assert fake.runner().run() == 0
    assert [command[0] for command in fake.commands] == ["baseline", "experiment"]
    command = fake.commands[1]
    for flag, expected in (("--strategy", "agent"), ("--seed", "0"), ("--budget", "40"),
                           ("--model", MODEL), ("--api-budget-file", str(allocation)),
                           ("--api-budget-usd", "9.99")):
        assert command[command.index(flag) + 1] == expected
    result = manifest(cfg)
    assert list(result["phases"]) == ["E1", "Gate", "E3-agent-0", "E5"]
    assert result["protocol"]["scope"] == "agent-speedup"
    assert result["effective_strategy_runs"] == [{"strategy": "agent", "seed": 0, "build_budget": 40}]
    assert result["status"] == "speedup_confirmed"
    assert result["full_E3_protocol"] is False
    assert result["phases"]["E3-agent-0"]["outcome"]["builds"] == 40
    assert result["api_budget"]["limit_usd"] == "9.99"
    assert fake.reports == []
    assert json.loads((cfg.results / "api-budget-snapshot.json").read_text()) == ApiBudget(allocation).snapshot()
