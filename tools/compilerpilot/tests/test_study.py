"""Study orchestration tests use fake CLI/artifacts; no compiler or provider runs."""
from dataclasses import replace
import json
import os
from pathlib import Path
import random

import pytest

from compilerpilot.build import BuildResult, file_sha256
from compilerpilot.api_budget import ApiBudget, MODEL
from compilerpilot.space import Candidate, KNOBS, sample_candidate
from compilerpilot.study import StudyConfig, StudyRunner, run

SOURCE = {"ledger_commit": "fixed-commit", "ledger_dirty": False, "source_sha256": "fixed-source"}
HOST = {"boot_id_sha256": "fixed-host"}
CPU = min(os.sched_getaffinity(0)) if hasattr(os, "sched_getaffinity") else 0


def save(path, value):
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(value))


def config(tmp_path, **changes):
    values = {"study_id": "controlled", "ledger": tmp_path / "ledger", "data": tmp_path / "data",
              "results": tmp_path / "results", "model": MODEL, "budget": 2, "seeds": 1, "cpu": CPU,
              "api_budget_file": tmp_path / "shared-api-budget.json"}
    values.update(changes)
    if values.get("api_budget_file") is not None and not Path(values["api_budget_file"]).exists():
        ApiBudget.initialize(values["api_budget_file"])
    return StudyConfig(**values)


class FakeExperiment:
    def __init__(self, cfg, *, noise=False, significant=False, failed_strategy=None):
        self.cfg, self.noise, self.significant, self.failed_strategy = cfg, noise, significant, failed_strategy
        self.commands, self.reports, self.gates, self.confirmations = [], [], [], []

    def inputs(self):
        c = self.cfg
        c.data.mkdir(parents=True, exist_ok=True)
        for name in ("eval.lob", "train.lob"):
            (c.data / name).write_bytes(name.encode())
        manifest = {"commands": c.commands, "evaluation_seed": c.evaluation_seed, "training_seed": c.training_seed,
                    "source": SOURCE, "files": {name: {"sha256": file_sha256(c.data/name)} for name in ("eval.lob", "train.lob")}}
        save(c.data / "manifest.json", manifest)
        return manifest

    def __call__(self, command):
        self.commands.append(command)
        def arg(flag):
            return command[command.index(flag)+1]
        run_id = arg("--run-id")
        run_dir = self.cfg.results / "runs" / run_id
        run_dir.mkdir(parents=True, exist_ok=False)
        inputs = self.inputs()
        provenance = {"cpu": self.cfg.cpu, "pinned": True, "input_sha256": inputs["files"]["eval.lob"]["sha256"],
                      "throughput_replays": self.cfg.throughput_replays}
        build_root = self.cfg.ledger / "builds" / run_id
        baseline = BuildResult(Candidate().hash(), Candidate().to_dict(), str(build_root/Candidate().hash()),
                               success=True, provenance=SOURCE)
        metric = {"correctness": True, "throughput": 1000., "cv": .13 if self.noise else .001,
                  "p50_ns": 1., "p99_ns": 2., "provenance": provenance}
        save(run_dir / "baseline.json", {"build": baseline.to_dict(), "metric": metric,
                                          "throughput_replays": self.cfg.throughput_replays,
                                          "observations": [metric] * 10, "repetitions": 10, "noise_gate": not self.noise})
        if self.noise:
            return 1
        if command[0] == "baseline":
            return 0
        count = int(arg("--budget")) if command[0] == "experiment" else sum(len(v)-1 for v in KNOBS.values())
        rng, candidates = random.Random(5), {}
        while len(candidates) < count:
            candidate = sample_candidate(rng)
            if candidate != Candidate():
                candidates[candidate.hash()] = candidate
        rows = []
        for index, candidate in enumerate(candidates.values(), 1):
            built = BuildResult(candidate.hash(), candidate.to_dict(), str(build_root/candidate.hash()),
                                success=True, provenance=SOURCE)
            save(Path(built.build_dir) / "build.json", built.to_dict())
            ratio = 1.1 + index/100 if self.significant else .99
            rows.append({"build_index": index, "build_id": built.build_id, "candidate": built.candidate,
                         "correctness": True, "measurement_valid": True, "significant": self.significant,
                         "throughput": metric["throughput"]*ratio, "speedup": ratio,
                         "baseline_throughput": metric["throughput"], "baseline_spread": 1.,
                         "build_provenance": SOURCE, "provenance": provenance})
        save(run_dir / "history.json", rows)
        strategy = arg("--strategy") if command[0] == "experiment" else "sweep"
        failed = strategy == self.failed_strategy
        save(run_dir / "outcome.json", {"status": "incomplete" if failed else "provisional_pending_confirmation", "builds_used": count})
        (run_dir / "trace.jsonl").write_text(json.dumps({"event": "baseline_checkpoint", "data": {"valid": not failed}}) + "\n")
        return 1 if failed else 0

    def report(self, path):
        self.reports.append(path)
        (path / "summary.md").write_text("Factual fake report used only in orchestration tests.\n")
        return {"summary": str(path/"summary.md"), "trials": 0, "eligible": 0, "complete": False}

    def gate(self, ledger, input_path, output):
        self.gates.append((ledger, input_path, output))
        result = {"qualified": True, "build_success": True, "correctness": False, "pinned_source_unchanged": True}
        save(output, result)
        return result

    def confirm(self, runner, baseline, candidates, **settings):
        self.confirmations.append((runner, baseline, candidates, settings))
        settings["callback"]({"build_id": baseline.build_id, "round": 0, "correctness": True,
                              "throughput_replays": self.cfg.throughput_replays})
        return {"status": "confirmed", "recommendation": candidates[0].build_id, "winner": candidates[0].build_id,
                "throughput_replays": self.cfg.throughput_replays}

    def runner(self, cfg=None, **changes):
        return StudyRunner(cfg or self.cfg, invoke=self, source_reader=lambda _: SOURCE,
                           host_reader=lambda: HOST, mutation_checker=self.gate, reporter=self.report,
                           confirmer=self.confirm, **changes)


@pytest.fixture(autouse=True)
def no_real_credentials(monkeypatch):
    monkeypatch.delenv("OPENAI_API_KEY", raising=False)
    monkeypatch.delenv("ANTHROPIC_API_KEY", raising=False)


def test_study_credentials_checked_before_files_or_builds(tmp_path):
    cfg = config(tmp_path)
    fake = FakeExperiment(cfg)
    with pytest.raises(ValueError, match="OPENAI_API_KEY"):
        fake.runner().run()
    assert fake.commands == fake.reports == []
    assert not cfg.results.exists()


def test_model_required_only_for_study_before_builds(tmp_path, monkeypatch):
    monkeypatch.setenv("OPENAI_API_KEY", "test-only-key")
    cfg = config(tmp_path, model=None)
    fake = FakeExperiment(cfg)
    with pytest.raises(ValueError, match="--model"):
        fake.runner().run()
    assert fake.commands == []


def test_baseline_phase_needs_no_model_or_api_and_records_pass(tmp_path):
    cfg = config(tmp_path, phase="baseline", model=None)
    fake = FakeExperiment(cfg)
    assert fake.runner().run() == 0
    assert [cmd[0] for cmd in fake.commands] == ["baseline"]
    assert not fake.gates
    result = json.loads((cfg.results / "study.json").read_text())
    assert result["status"] == "baseline_passed"
    assert result["agent"] is None
    assert fake.reports == [cfg.results]


def test_failed_noise_gate_stops_every_later_phase_and_reports(tmp_path, monkeypatch):
    monkeypatch.setenv("OPENAI_API_KEY", "test-only-key")
    cfg = config(tmp_path)
    fake = FakeExperiment(cfg, noise=True)
    assert fake.runner().run() == 1
    result = json.loads((cfg.results / "study.json").read_text())
    assert result["status"] == "failed"
    assert result["phases"]["E1"]["status"] == "failed"
    assert len(fake.commands) == 1
    assert not fake.gates and not fake.confirmations
    assert fake.reports == [cfg.results]
    assert (cfg.results / "runs" / "controlled-E1" / "baseline.json").is_file()
    with pytest.raises(ValueError, match="failed/interrupted"):
        fake.runner(replace(cfg, resume=True)).run()


def test_smoke_study_uses_identical_protocol_and_never_fabricates_winner(tmp_path, monkeypatch):
    monkeypatch.setenv("OPENAI_API_KEY", "test-only-key")
    cfg = config(tmp_path, commands=100)
    fake = FakeExperiment(cfg)
    assert fake.runner().run() == 0
    commands = fake.commands
    assert [cmd[0] for cmd in commands] == ["baseline", "sweep", "experiment", "experiment", "experiment", "experiment"]
    assert len(fake.gates) == 1
    for cmd in commands:
        for flag, expected in [("--data", str(cfg.data)), ("--results", str(cfg.results)), ("--commands", "100"), ("--cpu", str(CPU)), ("--jobs", "2")]:
            assert cmd[cmd.index(flag)+1] == expected
    strategies = [cmd[cmd.index("--strategy")+1] for cmd in commands if cmd[0] == "experiment"]
    assert strategies == ["random", "genetic", "surrogate", "agent"]
    assert all(cmd[cmd.index("--budget")+1] == "2" for cmd in commands if cmd[0] == "experiment")
    result = json.loads((cfg.results / "study.json").read_text())
    assert result["status"] == "smoke_complete"
    assert result["full_E3_protocol"] is False
    assert result["phases"]["E5"]["outcome"]["status"] == "no_provisional_improvement"
    assert result["recommendation"] is None
    assert not fake.confirmations
    assert all("test-only-key" not in path.read_text() for path in cfg.results.glob("*.json"))


def test_runner_metadata_is_preserved_but_historical_results_are_rejected(tmp_path):
    cfg = config(tmp_path, phase="baseline", model=None)
    save(cfg.results / "runner.json", {"predeclared": True})
    fake = FakeExperiment(cfg)
    assert fake.runner().run() == 0
    assert json.loads((cfg.results / "runner.json").read_text()) == {"predeclared": True}
    with pytest.raises(ValueError, match="already exists"):
        fake.runner().run()
    other = replace(cfg, results=tmp_path/"historical")
    save(other.results / "qualification-baseline.json", {"historical": True})
    with pytest.raises(ValueError, match="historical evidence"):
        FakeExperiment(other).runner().run()


def test_explicit_resume_reuses_only_passing_same_host_baseline(tmp_path, monkeypatch):
    cfg = config(tmp_path, phase="baseline", model=None)
    fake = FakeExperiment(cfg)
    assert fake.runner().run() == 0
    monkeypatch.setenv("OPENAI_API_KEY", "test-only-key")
    follow = replace(cfg, phase="study", model=MODEL, resume=True)
    assert fake.runner(follow).run() == 0
    assert sum(cmd[0] == "baseline" for cmd in fake.commands) == 1
    assert sum(cmd[0] == "experiment" for cmd in fake.commands) == 4


def test_resume_never_stitches_different_host_or_changed_input(tmp_path):
    cfg = config(tmp_path, phase="baseline", model=None)
    fake = FakeExperiment(cfg)
    assert fake.runner().run() == 0
    runner = StudyRunner(replace(cfg, resume=True), invoke=fake, source_reader=lambda _: SOURCE,
                         host_reader=lambda: {"boot_id_sha256": "different"}, reporter=fake.report)
    with pytest.raises(ValueError, match="same Ledger source and host"):
        runner.run()
    (cfg.data / "eval.lob").write_bytes(b"changed")
    with pytest.raises(RuntimeError, match="input changed"):
        fake.runner(replace(cfg, resume=True)).run()
    assert len(fake.commands) == 1


def test_failed_search_is_terminal_and_all_evidence_is_retained(tmp_path, monkeypatch):
    monkeypatch.setenv("OPENAI_API_KEY", "test-only-key")
    cfg = config(tmp_path)
    fake = FakeExperiment(cfg, failed_strategy="genetic")
    assert fake.runner().run() == 1
    assert [cmd[cmd.index("--strategy")+1] for cmd in fake.commands if cmd[0] == "experiment"] == ["random", "genetic"]
    result = json.loads((cfg.results / "study.json").read_text())
    assert result["phases"]["E3-genetic-0"]["status"] == "failed"
    assert fake.reports
    with pytest.raises(ValueError, match="failed/interrupted"):
        fake.runner(replace(cfg, resume=True)).run()


def test_e5_confirms_only_top_three_unique_gated_builds_and_records_trace(tmp_path, monkeypatch):
    monkeypatch.setenv("OPENAI_API_KEY", "test-only-key")
    cfg = config(tmp_path)
    fake = FakeExperiment(cfg, significant=True)
    assert fake.runner().run() == 0
    assert len(fake.confirmations) == 1
    _, baseline, candidates, settings = fake.confirmations[0]
    assert len(candidates) == len({b.build_id for b in candidates}) == 3
    assert settings["rounds"] == 10 and settings["full_validation"] is True
    assert all(build.provenance == baseline.provenance for build in candidates)
    plan = json.loads((cfg.results / "confirmation-plan.json").read_text())
    assert [row["median_recorded_speedup"] for row in plan["candidates"]] == sorted([row["median_recorded_speedup"] for row in plan["candidates"]], reverse=True)
    assert (cfg.results / "confirmation-trace.jsonl").read_text().strip()


def test_no_confirm_is_explicit_and_cannot_claim_completed_winner(tmp_path, monkeypatch):
    monkeypatch.setenv("OPENAI_API_KEY", "test-only-key")
    cfg = config(tmp_path, confirm=False)
    fake = FakeExperiment(cfg, significant=True)
    assert fake.runner().run() == 0
    assert not fake.confirmations
    result = json.loads((cfg.results / "study.json").read_text())
    assert result["status"] == "provisional_unconfirmed"
    assert result["recommendation"] is None


@pytest.mark.parametrize("bad", ["../escape", "", "bad/name", ".hidden", "a b"])
def test_study_id_rejects_paths_and_unsafe_names(tmp_path, bad):
    with pytest.raises(ValueError, match="study-id"):
        config(tmp_path, study_id=bad)


def test_cli_requires_explicit_study_id():
    with pytest.raises(SystemExit) as error:
        run(["--phase", "baseline"])
    assert error.value.code == 2


def test_confirmation_ranking_keeps_unfavorable_valid_repeats(tmp_path, monkeypatch):
    monkeypatch.setenv("OPENAI_API_KEY", "test-only-key")
    cfg = config(tmp_path, confirm=False)
    fake = FakeExperiment(cfg, significant=True)
    runner = fake.runner()
    assert runner.run() == 0
    original = json.loads((cfg.results / "confirmation-plan.json").read_text())["candidates"][0]
    for phase in ("E3-random-0", "E3-genetic-0", "E3-surrogate-0", "E3-agent-0"):
        path = cfg.results / "runs" / f"controlled-{phase}" / "history.json"
        rows = json.loads(path.read_text())
        rows[0].update(candidate=original["candidate"], build_id=original["build_id"],
                       throughput=500., speedup=999., significant=False)
        save(path, rows)
    plan, _, _ = runner._confirmation_plan()
    assert original["build_id"] not in [item["build_id"] for item in plan["candidates"]]


def test_confirmation_context_change_cannot_leave_saved_winner(tmp_path, monkeypatch):
    monkeypatch.setenv("OPENAI_API_KEY", "test-only-key")
    cfg = config(tmp_path)
    fake = FakeExperiment(cfg, significant=True)
    state = dict(HOST)
    def confirm(*args, **settings):
        result = fake.confirm(*args, **settings)
        state["boot_id_sha256"] = "changed-during-confirmation"
        return result
    runner = StudyRunner(cfg, invoke=fake, source_reader=lambda _: SOURCE, host_reader=lambda: dict(state),
                         mutation_checker=fake.gate, reporter=fake.report, confirmer=confirm)
    assert runner.run() == 1
    outcome = json.loads((cfg.results / "confirmation.json").read_text())
    manifest = json.loads((cfg.results / "study.json").read_text())
    assert outcome["recommendation"] is None and outcome["winner"] is None
    assert outcome["status"] == "confirmation_interrupted_or_invalidated"
    assert manifest["phases"]["E5"]["status"] == "failed"


def test_failed_confirmation_gate_is_a_failed_phase(tmp_path, monkeypatch):
    monkeypatch.setenv("OPENAI_API_KEY", "test-only-key")
    cfg = config(tmp_path)
    fake = FakeExperiment(cfg, significant=True)
    runner = StudyRunner(cfg, invoke=fake, source_reader=lambda _: SOURCE, host_reader=lambda: HOST,
                         mutation_checker=fake.gate, reporter=fake.report,
                         confirmer=lambda *args, **kwargs: {"status": "noisy", "winner": None, "recommendation": None})
    assert runner.run() == 1
    manifest = json.loads((cfg.results / "study.json").read_text())
    assert manifest["phases"]["E5"]["status"] == "failed"
    assert json.loads((cfg.results / "confirmation.json").read_text())["status"] == "noisy"


def test_concurrent_same_study_attempt_is_exclusively_claimed(tmp_path):
    cfg = config(tmp_path, phase="baseline", model=None)
    fake = FakeExperiment(cfg)
    first = fake.runner()
    first._preflight()
    try:
        with pytest.raises(ValueError, match="already active or interrupted"):
            fake.runner(replace(cfg, resume=True))._preflight()
    finally:
        (cfg.results / ".study.lock").unlink()


def test_host_identity_hashes_boot_id_and_records_github_session(monkeypatch):
    from compilerpilot.study import host_identity
    monkeypatch.setenv("GITHUB_RUN_ID", "12345")
    monkeypatch.setenv("GITHUB_RUN_ATTEMPT", "2")
    identity = host_identity()
    assert "boot_id" not in identity
    assert identity["github_run_id"] == "12345" and identity["github_run_attempt"] == "2"
    assert identity["boot_id_sha256"] is None or len(identity["boot_id_sha256"]) == 64


def test_all_agent_seeds_share_one_existing_api_allocation_and_audit_snapshot(tmp_path, monkeypatch):
    monkeypatch.setenv('OPENAI_API_KEY', 'test-only-key')
    cfg = config(tmp_path, seeds=3)
    fake = FakeExperiment(cfg)
    assert fake.runner().run() == 0
    agents = [command for command in fake.commands if '--strategy' in command
              and command[command.index('--strategy') + 1] == 'agent']
    assert len(agents) == 3
    for command in agents:
        assert command[command.index('--api-budget-file') + 1] == str(cfg.api_budget_file)
        assert command[command.index('--api-budget-usd') + 1] == '9.99'
    others = [command for command in fake.commands if command not in agents]
    assert all('--api-budget-file' not in command for command in others)
    snapshot = json.loads((cfg.results / 'api-budget-snapshot.json').read_text())
    assert snapshot == ApiBudget(cfg.api_budget_file).snapshot()
    manifest = json.loads((cfg.results / 'study.json').read_text())
    assert manifest['api_budget']['limit_usd'] == '9.99'
    assert manifest['api_budget']['preflight_reserve_usd'] == '0.01'


def test_study_missing_allocation_fails_before_any_build_or_new_results(tmp_path, monkeypatch):
    monkeypatch.setenv('OPENAI_API_KEY', 'test-only-key')
    cfg = config(tmp_path)
    cfg.api_budget_file.unlink()
    fake = FakeExperiment(cfg)
    with pytest.raises(RuntimeError, match='budget ledger is missing'):
        fake.runner().run()
    assert not cfg.results.exists() and fake.commands == []


@pytest.mark.parametrize('alias_kind', ['dotdot', 'symlink_parent'])
def test_budget_cannot_hide_inside_per_study_results_through_path_alias(tmp_path, alias_kind):
    results = tmp_path / 'results'
    results.mkdir()
    outside = tmp_path / 'outside'
    outside.mkdir()
    if alias_kind == 'dotdot':
        budget = outside / '..' / 'results' / 'shared.json'
    else:
        alias = outside / 'alias'
        alias.symlink_to(results, target_is_directory=True)
        budget = alias / 'shared.json'
    with pytest.raises(ValueError, match='outside per-study results'):
        StudyConfig(study_id='controlled', ledger=tmp_path / 'ledger',
                    data=tmp_path / 'data', results=results, phase='baseline',
                    api_budget_file=budget)


def test_budget_final_symlink_is_rejected_before_normalization(tmp_path):
    real = tmp_path / 'authoritative.json'
    real.write_text('{}')
    alias = tmp_path / 'alias.json'
    alias.symlink_to(real)
    with pytest.raises(ValueError, match='must not be a symbolic link'):
        StudyConfig(study_id='controlled', ledger=tmp_path / 'ledger',
                    data=tmp_path / 'data', results=tmp_path / 'results',
                    phase='baseline', api_budget_file=alias)


def test_five_replay_protocol_reaches_every_search_and_final_confirmation(tmp_path, monkeypatch):
    monkeypatch.setenv('OPENAI_API_KEY', 'test-only-key')
    cfg = config(tmp_path, throughput_replays=5, commands=100)
    fake = FakeExperiment(cfg, significant=True)
    assert fake.runner().run() == 0
    assert len(fake.commands) == 6
    assert all(command[command.index('--throughput-replays') + 1] == '5' for command in fake.commands)
    assert fake.confirmations[0][0].config.throughput_replays == 5
    manifest = json.loads((cfg.results / 'study.json').read_text())
    plan = json.loads((cfg.results / 'confirmation-plan.json').read_text())
    result = json.loads((cfg.results / 'confirmation.json').read_text())
    assert manifest['protocol']['throughput_replays'] == plan['throughput_replays'] == result['throughput_replays'] == 5


def test_resume_requires_same_replay_protocol_and_preserves_previous_attempt(tmp_path):
    cfg = config(tmp_path, phase='baseline', model=None)
    fake = FakeExperiment(cfg)
    assert fake.runner().run() == 0
    original = (cfg.results / 'study.json').read_bytes()
    with pytest.raises(ValueError, match='Resume protocol differs'):
        fake.runner(replace(cfg, throughput_replays=5, resume=True)).run()
    assert (cfg.results / 'study.json').read_bytes() == original
    assert len(fake.commands) == 1


def test_legacy_missing_replay_field_is_compatible_only_with_one_replay(tmp_path):
    cfg = config(tmp_path, phase='baseline', model=None)
    fake = FakeExperiment(cfg)
    assert fake.runner().run() == 0
    manifest_path = cfg.results / 'study.json'
    manifest = json.loads(manifest_path.read_text())
    del manifest['protocol']['throughput_replays']
    save(manifest_path, manifest)
    baseline_path = cfg.results / 'runs/controlled-E1/baseline.json'
    baseline = json.loads(baseline_path.read_text())
    del baseline['throughput_replays']
    del baseline['metric']['provenance']['throughput_replays']
    for observation in baseline['observations']:
        del observation['provenance']['throughput_replays']
    save(baseline_path, baseline)
    assert fake.runner(replace(cfg, resume=True)).run() == 0
    assert len(fake.commands) == 1


def test_each_baseline_observation_must_use_declared_replays(tmp_path):
    cfg = config(tmp_path, phase='baseline', model=None, throughput_replays=5)
    fake = FakeExperiment(cfg)
    def tampered(command):
        code = fake(command)
        path = cfg.results / 'runs/controlled-E1/baseline.json'
        value = json.loads(path.read_text())
        value['observations'][0]['provenance']['throughput_replays'] = 1
        save(path, value)
        return code
    runner = StudyRunner(cfg, invoke=tampered, source_reader=lambda _: SOURCE,
                         host_reader=lambda: HOST, reporter=fake.report)
    assert runner.run() == 1
    manifest = json.loads((cfg.results / 'study.json').read_text())
    assert 'replay protocol differs' in manifest['error']
    assert len(fake.commands) == 1


@pytest.mark.parametrize('value', [0, 21, True])
def test_study_replay_bounds_are_checked_before_running(tmp_path, value):
    with pytest.raises(ValueError, match='throughput_replays'):
        config(tmp_path, throughput_replays=value)


def test_e5_actual_confirmation_callbacks_preserve_five_replay_protocol(tmp_path, monkeypatch):
    import compilerpilot.bench as bench
    from compilerpilot.confirm import confirm_candidates
    monkeypatch.setenv('OPENAI_API_KEY', 'test-only-key')
    cfg = config(tmp_path, commands=100, throughput_replays=5)
    fake = FakeExperiment(cfg, significant=True)

    class Runner:
        def __init__(self, configuration):
            self.config = configuration
            assert self.config.throughput_replays == 5

        def run(self, build, label):
            return {'correctness': True, 'throughput': 1000. if build.build_id == Candidate().hash() else 1200.,
                    'p50_ns': 1., 'p99_ns': 2., 'cv': .001,
                    'provenance': {'throughput_replays': 5,
                                   'input_sha256': file_sha256(cfg.data/'eval.lob')}}

        def full_validate(self, build, seeds, orders):
            return {'correctness': True, 'ctest_exit_code': 0, 'differential_exit_code': 0,
                    'throughput_replays': self.config.throughput_replays}

    monkeypatch.setattr(bench, 'BenchmarkRunner', Runner)
    runner = StudyRunner(cfg, invoke=fake, source_reader=lambda _: SOURCE,
                         host_reader=lambda: HOST, mutation_checker=fake.gate,
                         reporter=fake.report, confirmer=confirm_candidates)
    assert runner.run() == 0
    result = json.loads((cfg.results/'confirmation.json').read_text())
    records = [json.loads(line)['observation'] for line in
               (cfg.results/'confirmation-trace.jsonl').read_text().splitlines()]
    assert result['status'] == 'confirmed' and result['throughput_replays'] == 5
    assert len(records) == 40
    assert all(observation['provenance']['throughput_replays'] == 5
               for observation in records)
