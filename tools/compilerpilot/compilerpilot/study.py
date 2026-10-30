"""Controlled E1–E5 orchestration with immutable attempts and explicit resumption."""
from __future__ import annotations

import argparse
from dataclasses import asdict, dataclass
from datetime import datetime, timezone
import importlib.util
import hashlib
import json
import math
import os
from pathlib import Path
import platform
import re
import statistics
from typing import Any, Callable

from .build import BuildResult, file_sha256, source_provenance
from .layout import PROJECT, require_ledger_root
from .space import Candidate, KNOBS

STRATEGIES = ("random", "genetic", "surrogate", "agent")
SOURCE_KEYS = ("ledger_commit", "ledger_dirty", "source_sha256")


def _now() -> str:
    return datetime.now(timezone.utc).isoformat()


def _read(path: Path) -> dict[str, Any]:
    value = json.loads(path.read_text())
    if not isinstance(value, dict):
        raise ValueError(f"Expected a JSON object: {path}")
    return value


def _write(path: Path, value: Any) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    temporary = path.with_name(path.name + ".tmp")
    temporary.write_text(json.dumps(value, indent=2, allow_nan=False) + "\n")
    temporary.replace(path)


def _positive(value: Any) -> bool:
    return (not isinstance(value, bool) and isinstance(value, (int, float))
            and math.isfinite(value) and value > 0)


def host_identity() -> dict[str, Any]:
    boot = Path("/proc/sys/kernel/random/boot_id")
    return {"node": platform.node(), "machine": platform.machine(), "system": platform.system(),
            "boot_id_sha256": hashlib.sha256(boot.read_bytes().strip()).hexdigest() if boot.is_file() else None,
            "github_run_id": os.getenv("GITHUB_RUN_ID"), "github_run_attempt": os.getenv("GITHUB_RUN_ATTEMPT")}


@dataclass
class StudyConfig:
    study_id: str
    ledger: Path
    data: Path
    results: Path
    phase: str = "study"
    provider: str = "openai"
    model: str | None = None
    cpu: int = 0
    jobs: int = 2
    commands: int = 1_000_000
    budget: int = 40
    seeds: int = 3
    evaluation_seed: int = 20261011
    training_seed: int = 20261012
    confirm: bool = True
    resume: bool = False

    def __post_init__(self) -> None:
        if not re.fullmatch(r"[A-Za-z0-9][A-Za-z0-9_-]{0,63}", self.study_id):
            raise ValueError("study-id must be 1–64 letters/numbers/dashes/underscores, starting with a letter or number")
        if self.phase not in ("baseline", "study") or self.provider not in ("openai", "anthropic"):
            raise ValueError("Unknown study phase or provider")
        for name, lower, upper in (("cpu", 0, 1_000_000), ("jobs", 1, 64), ("commands", 1, 5_000_000),
                                    ("budget", 1, 40), ("seeds", 1, 3),
                                    ("evaluation_seed", 0, 2**63-1), ("training_seed", 0, 2**63-1)):
            value = getattr(self, name)
            if type(value) is not int or not lower <= value <= upper:
                raise ValueError(f"{name} must be in {lower}..{upper}")
        if self.evaluation_seed == self.training_seed:
            raise ValueError("Training and evaluation seeds must differ")
        for name in ("ledger", "data", "results"):
            setattr(self, name, Path(getattr(self, name)).resolve())
        if self.data == self.results:
            raise ValueError("Data and results must use different directories")

    @property
    def full_protocol(self) -> bool:
        return self.budget == 40 and self.seeds == 3 and self.commands >= 1_000_000

    def protocol(self) -> dict[str, Any]:
        values = asdict(self)
        for name in ("ledger", "data", "results"):
            values[name] = str(values[name])
        for name in ("phase", "resume", "provider", "model", "confirm"):
            del values[name]
        return values


def _mutation_check(ledger: Path, evaluation_input: Path, output: Path) -> dict[str, Any]:
    spec = importlib.util.spec_from_file_location("compilerpilot_live_gate", PROJECT / "scripts" / "check_gate.py")
    if spec is None or spec.loader is None:
        raise RuntimeError("Cannot load the live correctness-gate checker")
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module.qualify_gate(ledger, evaluation_input, output)


class StudyRunner:
    def __init__(self, config: StudyConfig, *, invoke: Callable[[list[str]], int] | None = None,
                 source_reader: Callable[[Path], dict] = source_provenance,
                 host_reader: Callable[[], dict] = host_identity,
                 mutation_checker: Callable[..., dict] | None = None,
                 reporter: Callable[..., dict] | None = None,
                 confirmer: Callable[..., dict] | None = None):
        self.config = config
        if invoke is None:
            from .cli import main
            invoke = main
        self.invoke = invoke
        self.source_reader, self.host_reader = source_reader, host_reader
        self.mutation_checker = mutation_checker or _mutation_check
        if reporter is None:
            from .plot import generate_report
            reporter = generate_report
        self.reporter, self.confirmer = reporter, confirmer
        self.path = config.results / "study.json"
        self.manifest: dict[str, Any] = {}
        self.active: str | None = None
        self._lock_owned = False

    def _save(self) -> None:
        self.manifest["updated_at"] = _now()
        _write(self.path, self.manifest)

    def _preflight(self) -> None:
        # No directory, source build, or provider request precedes credentials.
        if self.config.phase == "study":
            if not isinstance(self.config.model, str) or not self.config.model.strip():
                raise ValueError("--model must pin a provider model before starting the study")
            key = "OPENAI_API_KEY" if self.config.provider == "openai" else "ANTHROPIC_API_KEY"
            if not os.getenv(key, "").strip():
                raise ValueError(f"{key} is required before starting the study")
        source, host = self.source_reader(self.config.ledger), self.host_reader()
        if self.path.exists():
            if not self.config.resume:
                raise ValueError("Study already exists; use --resume to continue successful recorded phases")
            self.manifest = _read(self.path)
            if self.manifest.get("protocol") != self.config.protocol():
                raise ValueError("Resume protocol differs; use a new study-id and new results directory")
            if self.manifest.get("source") != source or self.manifest.get("host") != host:
                raise ValueError("Resume requires the same Ledger source and host boot")
            if self.manifest.get("status") in ("complete", "smoke_complete", "provisional_unconfirmed"):
                raise ValueError("Study attempt is already finished; it cannot be reopened or overwritten")
            if self.manifest.get("status") in ("failed", "interrupted"):
                raise ValueError("A failed/interrupted attempt cannot be rerun under the same study-id; preserve it and use a new study-id")
            if any(item.get("status") == "running" for item in self.manifest.get("phases", {}).values()):
                raise ValueError("An interrupted phase cannot be rerun under the same study-id")
            prior = self.manifest.get("agent")
            agent = {"provider": self.config.provider, "model": self.config.model, "temperature": 0}
            if prior and self.config.phase == "study" and prior != agent:
                raise ValueError("Resume cannot change the pinned provider/model")
            self._verify_inputs(required="E1" in self.manifest.get("phases", {}))
        else:
            if self.config.resume:
                raise ValueError("No study manifest exists to resume")
            if self.config.results.exists() and any(path.name != "runner.json" for path in self.config.results.iterdir()):
                raise ValueError("A new study requires empty results (runner.json metadata is allowed); historical evidence is never overwritten")
            self.manifest = {"schema_version": 1, "study_id": self.config.study_id,
                             "created_at": _now(), "protocol": self.config.protocol(),
                             "source": source, "host": host, "full_E3_protocol": self.config.full_protocol,
                             "phases": {}, "status": "planned", "agent": None}
        if self.config.phase == "study":
            self.manifest["agent"] = {"provider": self.config.provider, "model": self.config.model, "temperature": 0}
        self.manifest["requested_phase"] = self.config.phase
        self.manifest["confirmation_requested"] = self.config.confirm
        self.config.results.mkdir(parents=True, exist_ok=True)
        try:
            descriptor = os.open(self.config.results / ".study.lock", os.O_CREAT | os.O_EXCL | os.O_WRONLY, 0o600)
        except FileExistsError as error:
            raise ValueError("Study attempt is already active or interrupted; concurrent/repeated phases are forbidden") from error
        with os.fdopen(descriptor, "w") as lock:
            lock.write(str(os.getpid()))
        self._lock_owned = True
        self._save()

    def _verify_context(self) -> None:
        if self.source_reader(self.config.ledger) != self.manifest["source"]:
            raise RuntimeError("Ledger source changed during the study")
        if self.host_reader() != self.manifest["host"]:
            raise RuntimeError("Study host changed; confirmation must run on the same host boot")

    def _verify_inputs(self, *, required: bool = True) -> dict[str, Any] | None:
        path = self.config.data / "manifest.json"
        if not path.exists():
            if required:
                raise RuntimeError("Study input manifest is missing")
            return None
        inputs = _read(path)
        for key, expected in (("commands", self.config.commands), ("evaluation_seed", self.config.evaluation_seed),
                              ("training_seed", self.config.training_seed), ("source", self.manifest["source"])):
            if inputs.get(key) != expected:
                raise RuntimeError(f"Study input protocol changed: {key}")
        for name in ("eval.lob", "train.lob"):
            if not (self.config.data / name).is_file() or file_sha256(self.config.data / name) != inputs.get("files", {}).get(name, {}).get("sha256"):
                raise RuntimeError(f"Study input changed: {name}")
        recorded = self.manifest.get("inputs")
        if recorded is not None and recorded != inputs:
            raise RuntimeError("Study input manifest changed")
        return inputs

    def _run_id(self, suffix: str) -> str:
        return f"{self.config.study_id}-{suffix}"

    def _common(self) -> list[str]:
        c = self.config
        return ["--ledger", str(c.ledger), "--data", str(c.data), "--results", str(c.results),
                "--commands", str(c.commands), "--evaluation-seed", str(c.evaluation_seed),
                "--training-seed", str(c.training_seed), "--cpu", str(c.cpu), "--jobs", str(c.jobs),
                "--baseline-repetitions", "10"]

    def _perform(self, name: str, action: Callable[[], Any]) -> Any:
        prior = self.manifest["phases"].get(name)
        if prior:
            if prior.get("status") == "passed":
                return prior.get("outcome")
            raise RuntimeError(f"Phase {name} already has an attempt; it cannot be overwritten")
        self._verify_context()
        self.active = name
        self.manifest["status"] = "running"
        self.manifest["phases"][name] = {"status": "running", "started_at": _now()}
        self._save()
        try:
            outcome = action()
            self._verify_context()
        except BaseException as error:
            if name == "E5":
                confirmation_path = self.config.results / "confirmation.json"
                if confirmation_path.is_file():
                    recorded = _read(confirmation_path)
                    if recorded.get("status") == "confirmed":
                        _write(confirmation_path, {"status": "invalidated_context", "recommendation": None, "winner": None,
                                                   "reason": str(error)[:1000], "unvalidated_result": recorded})
            self.manifest["phases"][name].update(status="failed", ended_at=_now(), error=str(error)[:2000])
            self._save()
            raise
        self.manifest["phases"][name].update(status="passed", ended_at=_now(), outcome=outcome)
        self.active = None
        self._save()
        return outcome

    def _command(self, suffix: str, command: list[str], validator: Callable[[], dict]) -> dict:
        run_dir = self.config.results / "runs" / self._run_id(suffix)
        if run_dir.exists():
            raise RuntimeError(f"Run already exists and cannot be overwritten: {run_dir.name}")
        code = self.invoke(command)
        if code != 0:
            raise RuntimeError(f"{suffix} stopped with exit code {code}; its evidence remains in {run_dir}")
        inputs = self._verify_inputs()
        if "inputs" not in self.manifest:
            self.manifest["inputs"] = inputs
        return validator()

    def _baseline(self, suffix: str) -> dict[str, Any]:
        path = self.config.results / "runs" / self._run_id(suffix) / "baseline.json"
        baseline = _read(path)
        metric, build = baseline.get("metric", {}), baseline.get("build", {})
        if (baseline.get("noise_gate") is not True or metric.get("correctness") is not True
                or type(metric.get("cv")) not in (int, float) or not 0 <= metric["cv"] < .02
                or baseline.get("repetitions", 0) < 10 or len(baseline.get("observations", [])) < 10
                or build.get("success") is not True):
            raise RuntimeError(f"{suffix} baseline failed its correctness/noise/ten-observation gate")
        provenance = build.get("provenance", {})
        if any(provenance.get(key) != self.manifest["source"].get(key) for key in SOURCE_KEYS):
            raise RuntimeError(f"{suffix} baseline source differs from the study")
        measured = metric.get("provenance", {})
        expected_hash = self._verify_inputs()["files"]["eval.lob"]["sha256"]
        if measured.get("cpu") != self.config.cpu or measured.get("pinned") is not True or measured.get("input_sha256") != expected_hash:
            raise RuntimeError(f"{suffix} baseline input/CPU provenance differs from the study")
        return baseline

    def _history(self, suffix: str) -> list[dict[str, Any]]:
        path = self.config.results / "runs" / self._run_id(suffix) / "history.json"
        rows = json.loads(path.read_text())
        if not isinstance(rows, list):
            raise RuntimeError(f"{suffix} history is not a trial list")
        return rows

    def _validate_search(self, suffix: str, expected: int, *, experiment: bool) -> dict:
        baseline = self._baseline(suffix)
        rows = self._history(suffix)
        if len(rows) != expected or sorted(row.get("build_index", 0) for row in rows) != list(range(1, expected + 1)):
            raise RuntimeError(f"{suffix} did not record its complete fixed candidate budget")
        hashes = [Candidate.from_dict(row["candidate"]).hash() for row in rows]
        if len(set(hashes)) != len(hashes):
            raise RuntimeError(f"{suffix} repeated a candidate inside its budget")
        expected_hash = self._verify_inputs()["files"]["eval.lob"]["sha256"]
        for row in rows:
            if row.get("correctness") is True:
                if row.get("measurement_valid") is not True:
                    raise RuntimeError(f"{suffix} contains a discarded/noisy measurement batch")
                if not _positive(row.get("throughput")):
                    raise RuntimeError(f"{suffix} contains invalid measured throughput")
                provenance = row.get("provenance", {})
                if provenance.get("input_sha256") != expected_hash or provenance.get("cpu") != self.config.cpu:
                    raise RuntimeError(f"{suffix} candidate input/CPU differs from the study")
                if any(row.get("build_provenance", {}).get(key) != baseline["build"]["provenance"].get(key) for key in SOURCE_KEYS):
                    raise RuntimeError(f"{suffix} candidate source differs from the baseline")
        run_dir = self.config.results / "runs" / self._run_id(suffix)
        if experiment:
            outcome = _read(run_dir / "outcome.json")
            if outcome.get("status") == "finished":
                outcome = outcome.get("outcome", outcome)
            if outcome.get("status") != "provisional_pending_confirmation" or outcome.get("builds_used") != expected:
                raise RuntimeError(f"{suffix} did not finish the declared budget")
        trace = run_dir / "trace.jsonl"
        checkpoints = []
        if trace.is_file():
            for line in trace.read_text().splitlines():
                entry = json.loads(line)
                if entry.get("event") == "baseline_checkpoint":
                    checkpoints.append(entry.get("data", {}).get("valid"))
        if not checkpoints or not all(value is True for value in checkpoints):
            raise RuntimeError(f"{suffix} lacks passing baseline-drift checkpoint evidence")
        return {"run_id": run_dir.name, "builds": len(rows), "correct": sum(row.get("correctness") is True for row in rows),
                "failed": sum(row.get("correctness") is not True for row in rows), "noise_gate": True}

    def _gate(self) -> dict:
        path = self.config.results / "live-gate-check.json"
        if path.exists():
            raise RuntimeError("Live correctness-gate evidence already exists and cannot be overwritten")
        result = self.mutation_checker(self.config.ledger, self.config.data / "eval.lob", path)
        if (result.get("qualified") is not True or result.get("build_success") is not True
                or result.get("correctness") is not False or result.get("pinned_source_unchanged") is not True):
            raise RuntimeError("Live semantic-mutation correctness gate did not qualify")
        return {"qualified": True, "evidence": str(path)}

    def _report(self) -> dict:
        result = self.reporter(self.config.results)
        outcome = {key: result.get(key) for key in ("summary", "trials", "eligible", "complete")}
        outcome["heldout_measured"] = result.get("predictor", {}).get("mae_speedup_pct") is not None
        outcome["status"] = "measured" if outcome["heldout_measured"] else "insufficient_predictor_data"
        return outcome

    def _confirmation_plan(self) -> tuple[dict, BuildResult, list[BuildResult]]:
        baseline_doc = self._baseline("E1")
        baseline = BuildResult.from_dict(baseline_doc["build"])
        groups: dict[str, list[dict]] = {}
        for suffix, phase in self.manifest["phases"].items():
            if (suffix != "E2" and not suffix.startswith("E3-")) or phase.get("status") != "passed":
                continue
            for row in self._history(suffix):
                baseline_value, spread = row.get("baseline_throughput"), row.get("baseline_spread")
                if (row.get("correctness") is True and row.get("measurement_valid") is True
                        and _positive(row.get("throughput")) and _positive(baseline_value)
                        and type(spread) in (int, float) and math.isfinite(spread) and spread >= 0):
                    groups.setdefault(Candidate.from_dict(row["candidate"]).hash(), []).append(
                        {**row, "_suffix": suffix, "_ratio": row["throughput"] / baseline_value, "_noise": spread / baseline_value})
        eligible = [key for key, rows in groups.items() if any(row.get("significant") is True for row in rows)
                    and statistics.median(row["_ratio"] for row in rows) > 1 + 3 * max(row["_noise"] for row in rows)]
        ranks = sorted(eligible, key=lambda key: (-statistics.median(row["_ratio"] for row in groups[key]), key))[:3]
        builds, choices = [], []
        for key in ranks:
            representative = min(groups[key], key=lambda row: (row["_suffix"], row["build_index"]))
            run_baseline = self._baseline(representative["_suffix"])
            build_path = Path(run_baseline["build"]["build_dir"]).parent / representative["build_id"] / "build.json"
            build = BuildResult.from_dict(_read(build_path))
            if (not build.success or build.candidate != representative["candidate"]
                    or any(build.provenance.get(name) != baseline.provenance.get(name) for name in SOURCE_KEYS)):
                raise RuntimeError("Confirmation candidate build/source does not match its gated trial")
            builds.append(build)
            choices.append({"build_id": build.build_id, "candidate": build.candidate,
                            "median_recorded_speedup": statistics.median(row["_ratio"] for row in groups[key]),
                            "max_baseline_relative_spread": max(row["_noise"] for row in groups[key]),
                            "valid_observations": len(groups[key]), "build_file": str(build_path),
                            "representative_run": self._run_id(representative["_suffix"])})
        plan = {"baseline": baseline.build_id, "candidates": choices, "rounds": 10, "full_validation": True,
                "selection": "top three distinct candidates by median of all valid measured ratios, exceeding three times maximum baseline noise; fixed earliest representative",
                "host": self.manifest["host"], "source": self.manifest["source"],
                "evaluation_input_sha256": self._verify_inputs()["files"]["eval.lob"]["sha256"]}
        _write(self.config.results / "confirmation-plan.json", plan)
        return plan, baseline, builds

    def _confirm(self) -> dict:
        self._verify_inputs()
        plan, baseline, candidates = self._confirmation_plan()
        path = self.config.results / "confirmation.json"
        if path.exists():
            raise RuntimeError("Confirmation evidence already exists and cannot be overwritten")
        if not candidates:
            result = {"status": "no_provisional_improvement", "reason": "No valid candidate exceeded its recorded noise threshold",
                      "recommendation": None, "winner": None, "baseline": baseline.build_id}
        elif not self.config.confirm:
            result = {"status": "confirmation_disabled", "recommendation": None, "winner": None,
                      "reason": "Explicit --no-confirm; no performance winner is confirmed"}
        else:
            from .bench import BenchmarkConfig, BenchmarkRunner
            from .confirm import confirm_candidates
            runner = BenchmarkRunner(BenchmarkConfig(self.config.data / "eval.lob", cpu=self.config.cpu))
            trace = self.config.results / "confirmation-trace.jsonl"
            if trace.exists():
                raise RuntimeError("Confirmation trace already exists; this attempt cannot be repeated")
            def record(observation):
                with trace.open("a") as output:
                    output.write(json.dumps({"time": _now(), "observation": observation}, allow_nan=False) + "\n")
                    output.flush()
                    os.fsync(output.fileno())
                self._verify_context()
                self._verify_inputs()
            confirmer = self.confirmer or confirm_candidates
            result = None
            try:
                result = confirmer(runner, baseline, candidates, rounds=10, full_validation=True, callback=record)
                self._verify_context()
                self._verify_inputs()
            except BaseException as error:
                _write(path, {"status": "confirmation_interrupted_or_invalidated", "recommendation": None, "winner": None,
                              "error": str(error)[:1000], "unvalidated_result": result})
                raise
        self._verify_context()
        self._verify_inputs()
        _write(path, result)
        if result.get("status") not in ("confirmed", "no_significant_improvement", "no_provisional_improvement", "confirmation_disabled"):
            raise RuntimeError(f"E5 confirmation gate failed: {result.get('status')}")
        return {"status": result.get("status"), "recommendation": result.get("recommendation"),
                "winner": result.get("winner"), "candidate_count": len(plan["candidates"]), "evidence": str(path)}

    def _summary(self) -> None:
        phases = self.manifest.get("phases", {})
        lines = [f"# Study {self.config.study_id}", "", f"Status: **{self.manifest.get('status')}**.", "",
                 f"Protocol: {self.config.commands:,} commands; four strategies × {self.config.seeds} seeds × {self.config.budget} candidate builds. "
                 f"Full E3 protocol: {'yes' if self.config.full_protocol else 'no — smoke protocol only'}.", "",
                 "| Phase | Status | Outcome |", "|---|---|---|"]
        for name, phase in phases.items():
            outcome = phase.get("outcome", {})
            detail = outcome.get("status") or phase.get("error") or ("noise gate passed" if outcome.get("noise_gate") else "recorded")
            lines.append(f"| {name} | {phase['status']} | {str(detail).replace('|', '/')} |")
        lines.extend(["", "Every run ID names one attempt. Failed or interrupted phases are preserved and never rerun under this study ID. "
                      "Only a confirmed E5 recommendation establishes a performance winner. Smaller smoke budgets do not establish the full 4 × 3 × 40 comparison.", ""])
        (self.config.results / "study-summary.md").write_text("\n".join(lines))

    def run(self) -> int:
        self._preflight()
        try:
            e1 = self._run_id("E1")
            self._perform("E1", lambda: self._command("E1", ["baseline", "--run-id", e1, *self._common()],
                lambda: {"run_id": e1, "noise_gate": self._baseline("E1")["noise_gate"]}))
            self._verify_inputs()
            self._baseline("E1")  # Revalidate completed evidence on explicit resume.
            if self.config.phase == "baseline":
                self.manifest["status"] = "baseline_passed"
                return 0
            self._perform("Gate", self._gate)
            sweep_size = sum(len(values) - 1 for values in KNOBS.values())
            self._perform("E2", lambda: self._command("E2", ["sweep", "--run-id", self._run_id("E2"), *self._common()],
                lambda: self._validate_search("E2", sweep_size, experiment=False)))
            for seed in range(self.config.seeds):
                for strategy in STRATEGIES:
                    suffix = f"E3-{strategy}-{seed}"
                    command = ["experiment", "--strategy", strategy, "--budget", str(self.config.budget),
                               "--seed", str(seed), "--run-id", self._run_id(suffix), *self._common()]
                    if strategy == "agent":
                        command += ["--provider", self.config.provider, "--model", self.config.model]
                    self._perform(suffix, lambda s=suffix, c=command: self._command(s, c,
                        lambda: self._validate_search(s, self.config.budget, experiment=True)))
            predictor = self._perform("E4", self._report)
            result = self._perform("E5", self._confirm)
            if result.get("status") not in ("confirmed", "no_significant_improvement", "no_provisional_improvement", "confirmation_disabled"):
                raise RuntimeError(f"E5 did not confirm a usable result: {result.get('status')}")
            self.manifest["status"] = ("provisional_unconfirmed" if result.get("status") == "confirmation_disabled"
                                       else "complete" if self.config.full_protocol else "smoke_complete")
            self.manifest["recommendation"] = result.get("recommendation")
            if self.config.full_protocol and not predictor.get("heldout_measured"):
                self.manifest["status"] = "incomplete_predictor"
                return 1
            return 0
        except BaseException as error:
            self.manifest["status"] = "interrupted" if isinstance(error, KeyboardInterrupt) else "failed"
            self.manifest["error"] = str(error)[:2000]
            if isinstance(error, (KeyboardInterrupt, SystemExit)):
                raise
            return 1
        finally:
            try:
                self._save()
                try:
                    self.manifest["report"] = self._report()
                except Exception as error:
                    self.manifest["report_error"] = str(error)[:1000]
                self._save()
                self._summary()
            finally:
                if self._lock_owned:
                    (self.config.results / ".study.lock").unlink(missing_ok=True)
                    self._lock_owned = False


def run(argv: list[str] | None = None) -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--phase", choices=("baseline", "study"), default="study")
    parser.add_argument("--study-id", required=True)
    parser.add_argument("--provider", choices=("openai", "anthropic"), default="openai")
    parser.add_argument("--model")
    parser.add_argument("--cpu", type=int, default=0)
    parser.add_argument("--jobs", type=int, default=2)
    parser.add_argument("--commands", type=int, default=1_000_000)
    parser.add_argument("--budget", type=int, default=40)
    parser.add_argument("--seeds", type=int, default=3)
    parser.add_argument("--data", type=Path)
    parser.add_argument("--results", type=Path)
    parser.add_argument("--ledger", type=Path)
    parser.add_argument("--evaluation-seed", type=int, default=20261011)
    parser.add_argument("--training-seed", type=int, default=20261012)
    parser.add_argument("--confirm", action=argparse.BooleanOptionalAction, default=True)
    parser.add_argument("--resume", action="store_true")
    args = parser.parse_args(argv)
    try:
        config = StudyConfig(study_id=args.study_id, ledger=require_ledger_root(args.ledger),
                             data=args.data or PROJECT / "data" / "studies" / args.study_id,
                             results=args.results or PROJECT / "results" / "studies" / args.study_id,
                             **{name: getattr(args, name) for name in ("phase", "provider", "model", "cpu", "jobs", "commands",
                                 "budget", "seeds", "evaluation_seed", "training_seed", "confirm", "resume")})
        result = StudyRunner(config).run()
    except (ValueError, RuntimeError, OSError) as error:
        print(f"Study stopped: {error}", file=__import__('sys').stderr)
        return 1
    print(json.dumps({"study": str(config.results), "status": _read(config.results / "study.json").get("status"),
                      "exit_code": result}, indent=2))
    return result
