"""Pinned replay measurement, checksum verification and differential correctness gates."""
from __future__ import annotations

import csv
from dataclasses import dataclass
import json
import math
import os
from pathlib import Path
import re
import shlex
import shutil
import statistics
from typing import Any
import xml.etree.ElementTree as ET

from .build import BuildResult, file_sha256, run_command
from .protocol import validate_throughput_replays

ENGINES = {"reference", "fast-bitmap", "fast-linear"}
STATE_FIELDS = ("event_checksum", "trade_checksum", "events", "trades", "rejected_commands",
                "live_orders_final", "submitted", "executed", "cancelled", "expired", "rejected",
                "resting_quantity", "best_bid", "best_ask")


@dataclass
class BenchmarkConfig:
    input: Path
    cpu: int | None = None
    runs: int = 5
    warmup: int = 50_000
    timeout: float = 120
    differential_seeds: int = 5
    differential_orders: int = 100_000
    throughput_replays: int = 1

    def __post_init__(self) -> None:
        self.input = Path(self.input).resolve()
        self.throughput_replays = validate_throughput_replays(self.throughput_replays)
        if type(self.runs) is not int or self.runs < 1 or self.runs % 2 != 1:
            raise ValueError("runs must be a positive odd integer")
        if type(self.warmup) is not int or not 0 <= self.warmup <= 5_000_000:
            raise ValueError("warmup is a command count in [0, 5000000]")
        if (not isinstance(self.timeout, (int, float)) or isinstance(self.timeout, bool)
                or not math.isfinite(self.timeout) or self.timeout <= 0
                or type(self.differential_seeds) is not int or self.differential_seeds < 1
                or type(self.differential_orders) is not int or self.differential_orders < 1):
            raise ValueError("timeouts, differential seeds and orders must be positive")
        available = sorted(os.sched_getaffinity(0)) if hasattr(os, "sched_getaffinity") else []
        if self.cpu is None and available:
            self.cpu = available[0]
        if self.cpu is not None:
            if type(self.cpu) is not int or self.cpu < 0 or (available and self.cpu not in available):
                raise ValueError(f"cpu must be an allowed CPU; available CPUs: {available}")


def _finite_positive(value: Any, name: str, *, allow_zero: bool = False) -> float:
    value = float(value)
    if not math.isfinite(value) or value < 0 or (not allow_zero and value == 0):
        raise ValueError(f"invalid {name}: {value!r}")
    return value


def _integer(value: Any, name: str, minimum: int = 0) -> int:
    """Validate JSON integers and decimal CSV fields without truncation or booleans."""
    if isinstance(value, str) and re.fullmatch(r"[0-9]+", value):
        value = int(value)
    if type(value) is not int or value < minimum or value > 2**64 - 1:
        raise ValueError(f"invalid {name}: expected uint64 >= {minimum}")
    return value


def _validate_replay_evidence(summary: dict[str, Any], rows: list[dict[str, str]],
                              replay_rows: list[dict[str, str]] | None,
                              expected_runs: int, expected_replays: int) -> list[list[int]]:
    """Reconstruct every group from all blocks; no block can be dropped or averaged away."""
    commands = _integer(summary["commands"], "commands", 1)
    effective = commands * expected_replays
    if (type(summary.get("throughput_replays")) is not int
            or summary["throughput_replays"] != expected_replays
            or summary.get("throughput_commands_per_run") != effective
            or type(summary.get("throughput_commands_per_run")) is not int
            or summary.get("latency_commands_per_run") != commands
            or type(summary.get("latency_commands_per_run")) is not int
            or summary.get("throughput_replays_file") != "throughput_replays.csv"):
        raise ValueError("Benchmark throughput/latency replay protocol does not match the request")
    if replay_rows is None:
        raise ValueError("Per-replay throughput evidence is missing")
    state = {key: _integer(summary["engines"]["reference"][key], key) for key in STATE_FIELDS}
    if state["submitted"] != (2 * state["executed"] + state["cancelled"]
                               + state["expired"] + state["resting_quantity"]):
        raise ValueError("Reference quantity accounting does not satisfy conservation")
    blocks: dict[tuple[str, int, int], int] = {}
    for row in replay_rows:
        engine = row.get("engine")
        run = _integer(row.get("run"), "replay run", 1)
        replay = _integer(row.get("replay"), "replay index", 1)
        key = (engine, run, replay)
        if engine not in ENGINES or not 1 <= run <= expected_runs or not 1 <= replay <= expected_replays:
            raise ValueError("Unexpected engine/run/replay in throughput evidence")
        if key in blocks:
            raise ValueError("Repeated engine/run/replay in throughput evidence")
        if _integer(row.get("commands"), "replay commands", 1) != commands:
            raise ValueError("A throughput replay processed a different command count")
        if any(_integer(row.get(field), field) != value for field, value in state.items()):
            raise ValueError("Throughput replay checksum/state differs from the reference")
        blocks[key] = _integer(row.get("throughput_total_ns"), "replay elapsed time", 1)
    required = {(engine, run, replay) for engine in ENGINES
                for run in range(1, expected_runs + 1) for replay in range(1, expected_replays + 1)}
    if set(blocks) != required:
        raise ValueError("Incomplete per-replay throughput evidence")
    for row in rows:
        engine, run = row["engine"], _integer(row["run"], "run", 1)
        if (_integer(row.get("throughput_replays"), "run replay count", 1) != expected_replays
                or _integer(row.get("throughput_commands"), "effective throughput commands", 1) != effective):
            raise ValueError("runs.csv has an incorrect throughput replay/command count")
        elapsed = sum(blocks[(engine, run, replay)] for replay in range(1, expected_replays + 1))
        if _integer(row.get("throughput_total_ns"), "run elapsed time", 1) != elapsed:
            raise ValueError("Run elapsed time is not the sum of all replay durations")
        calculated = effective * 1e9 / elapsed
        if not math.isclose(_finite_positive(row["commands_per_second"], "commands_per_second"),
                            calculated, rel_tol=1e-9, abs_tol=1e-7):
            raise ValueError("Run throughput is inconsistent with all replay commands and durations")
    return [[blocks[("fast-bitmap", run, replay)] for replay in range(1, expected_replays + 1)]
            for run in range(1, expected_runs + 1)]


def _validate_latency_evidence(summary: dict[str, Any], rows: list[dict[str, str]],
                               histogram_rows: list[dict[str, str]] | None,
                               expected_runs: int) -> None:
    """The longer throughput work unit must not enlarge or subsample latency work."""
    if histogram_rows is None:
        raise ValueError("Exact latency histogram evidence is missing")
    histograms: dict[tuple[str, int], dict[int, int]] = {}
    for row in histogram_rows:
        key = (row.get("engine"), _integer(row.get("run"), "histogram run", 1))
        if key[0] not in ENGINES or not 1 <= key[1] <= expected_runs:
            raise ValueError("Unexpected engine/run in latency histogram")
        latency = _integer(row.get("latency_ns"), "latency_ns")
        count = _integer(row.get("count"), "latency count", 1)
        histogram = histograms.setdefault(key, {})
        if latency in histogram:
            raise ValueError("Repeated latency histogram bin")
        histogram[latency] = count
    required = {(engine, run) for engine in ENGINES for run in range(1, expected_runs + 1)}
    if set(histograms) != required:
        raise ValueError("Incomplete exact latency histogram evidence")
    for row in rows:
        key = (row["engine"], _integer(row["run"], "run", 1))
        histogram = histograms[key]
        if sum(histogram.values()) != summary["commands"]:
            raise ValueError("Latency histogram count differs from the single input stream")
        for field, numerator, denominator in (("p50_ns", 50, 100), ("p99_ns", 99, 100),
                                               ("p999_ns", 999, 1000)):
            rank = (summary["commands"] * numerator + denominator - 1) // denominator
            cumulative = 0
            for latency, count in sorted(histogram.items()):
                cumulative += count
                if cumulative >= rank:
                    if _integer(row.get(field), field) != latency:
                        raise ValueError(f"{field} contradicts the exact latency histogram")
                    break
        if _integer(row.get("max_ns"), "max_ns") != max(histogram):
            raise ValueError("Latency maximum contradicts the exact histogram")


def parse_benchmark(summary: dict[str, Any], rows: list[dict[str, str]], *,
                    expected_runs: int, expected_flags: list[str] | None = None,
                    expected_input: Path | None = None,
                    expected_cpu: int | None = None, expected_replays: int = 1,
                    replay_rows: list[dict[str, str]] | None = None,
                    histogram_rows: list[dict[str, str]] | None = None) -> dict[str, Any]:
    """Refuse missing, inconsistent or tampered evidence, even after exit code zero."""
    expected_replays = validate_throughput_replays(expected_replays)
    schema = summary.get("schema_version")
    if (type(schema) is not int or schema not in (1, 2) or type(summary.get("runs")) is not int
            or summary["runs"] != expected_runs):
        raise ValueError("Unexpected benchmark schema or run count")
    if schema == 1 and expected_replays != 1:
        raise ValueError("Historical schema 1 evidence is valid only for one throughput replay")
    commands = _integer(summary["commands"], "commands", 1)
    if commands > 5_000_000:
        raise ValueError("Input command count exceeds the unchanged 5000000-command limit")
    if expected_input is not None and summary.get("input") != str(expected_input.resolve()):
        raise ValueError("Benchmark input provenance does not match the evaluation input")
    if expected_cpu is not None and summary.get("machine", {}).get("affinity_cpus") != str(expected_cpu):
        raise ValueError("Benchmark did not run on the requested single CPU")
    if expected_flags is not None:
        actual = shlex.split(summary.get("compiler", {}).get("flags", ""))
        # CMake's Release flags are explicitly just -DNDEBUG, not its default -O3.
        expected = expected_flags + ["-DNDEBUG", "standard=C++23"]
        if actual != expected:
            raise ValueError(f"Compiler flag provenance mismatch: {actual!r} != {expected!r}")
        if not summary.get("compiler", {}).get("ndebug"):
            raise ValueError("Release build is missing NDEBUG")
        if summary.get("compiler", {}).get("optimization_enabled") is False:
            raise ValueError("Compiler reports that optimization is disabled")
    engines = summary["engines"]
    if set(engines) != ENGINES or any(row.get("engine") not in ENGINES for row in rows):
        raise ValueError("Benchmark is missing an engine or contains an unknown engine")
    reference = engines["reference"]
    comparison = ("event_checksum", "trade_checksum", "events", "trades", "rejected_commands",
                  "live_orders_final")
    if schema == 2:
        comparison = STATE_FIELDS
    if any(key not in reference for key in comparison):
        raise ValueError("Benchmark reference is missing correctness evidence")
    for name, engine in engines.items():
        if any(_integer(engine.get(key), key) != _integer(reference[key], key) for key in comparison):
            raise ValueError(f"{name} failed reference checksum/state verification")
        engine_rows = [row for row in rows if row.get("engine") == name]
        if len(engine_rows) != expected_runs:
            raise ValueError(f"{name} run count is inconsistent with runs.csv")
        if sorted(int(row["run"]) for row in engine_rows) != list(range(1, expected_runs + 1)):
            raise ValueError(f"{name} has repeated or missing run identifiers")
        for row in engine_rows:
            for key in ("event_checksum", "trade_checksum", "events", "trades", "rejected_commands"):
                if int(row[key]) != reference[key]:
                    raise ValueError(f"{name} runs.csv {key} differs from reference")
            if _integer(row["commands"], "run commands", 1) != commands:
                raise ValueError("Run command count differs from summary")
        for metric, field in (("commands_per_second", "median_commands_per_second"),
                              ("p50_ns", "median_p50_ns"), ("p99_ns", "median_p99_ns")):
            observed = statistics.median(_finite_positive(row[metric], metric, allow_zero=metric != "commands_per_second")
                                         for row in engine_rows)
            reported = _finite_positive(engine[field], field, allow_zero=metric != "commands_per_second")
            if not math.isclose(observed, reported, rel_tol=1e-9, abs_tol=1e-7):
                raise ValueError(f"{name} {field} differs between summary and raw runs")
    durations = (_validate_replay_evidence(summary, rows, replay_rows, expected_runs, expected_replays)
                 if schema == 2 else None)
    if schema == 2:
        _validate_latency_evidence(summary, rows, histogram_rows, expected_runs)
    measured = engines["fast-bitmap"]
    bitmap_rows = [row for row in rows if row["engine"] == "fast-bitmap"]
    values = [float(row["commands_per_second"]) for row in bitmap_rows]
    spread = statistics.stdev(values) if len(values) > 1 else 0.0
    return {"throughput": float(measured["median_commands_per_second"]),
            "p50_ns": float(measured["median_p50_ns"]),
            "p99_ns": float(measured["median_p99_ns"]),
            "cv": spread / statistics.mean(values), "spread": spread,
            "runs": values,
            "throughput_replays": expected_replays,
            "input_commands": commands,
            "throughput_commands_per_run": commands * expected_replays,
            "latency_commands_per_run": commands,
            "throughput_replay_durations_ns": durations,
            "checksums": {key: reference[key] for key in comparison}}


class BenchmarkRunner:
    def __init__(self, config: BenchmarkConfig):
        self.config = config

    def _pin(self, argv: list[str | Path]) -> list[str | Path]:
        if self.config.cpu is None:
            return argv
        if not shutil.which("taskset"):
            raise RuntimeError("taskset is required for requested CPU affinity")
        return ["taskset", "-c", str(self.config.cpu), *argv]

    def run(self, build: BuildResult, label: str = "bench") -> dict[str, Any]:
        if not re.fullmatch(r"[a-zA-Z0-9_-]{1,80}", label):
            raise ValueError("benchmark label must be a short alphanumeric name")
        result: dict[str, Any] = {"correctness": False, "throughput": None, "p50_ns": None,
                                  "p99_ns": None, "cv": None, "spread": None, "runs": [],
                                  "error": None, "throughput_replays": self.config.throughput_replays,
                                  "provenance": {"throughput_replays": self.config.throughput_replays}}
        directory = Path(build.build_dir)
        out = directory / label
        if out.is_symlink():
            raise ValueError("benchmark output must not be a symbolic link")
        if out.exists():
            shutil.rmtree(out)
        out.mkdir(parents=True)
        try:
            if not build.success:
                raise ValueError("Cannot benchmark a failed build")
            if not self.config.input.is_file():
                raise ValueError("Evaluation input does not exist")
            input_hash = file_sha256(self.config.input)
            if build.candidate.get("pgo") and input_hash == build.provenance.get("training_input_sha256"):
                raise ValueError("PGO training and evaluation inputs must differ")
            binary = directory / "ledger_bench"
            if build.provenance.get("binary_sha256") != file_sha256(binary):
                raise ValueError("Benchmark binary changed after the build")
            result["provenance"].update({"input_sha256": input_hash,
                                         "input": str(self.config.input), "cpu": self.config.cpu,
                                         "pinned": self.config.cpu is not None,
                                         "flags": build.flags, "summary": str(out / "summary.json"),
                                         "runs_csv": str(out / "runs.csv")})
            argv = self._pin([binary, "--input", self.config.input, "--runs", str(self.config.runs),
                              "--warmup", str(self.config.warmup), "--outdir", out])
            if self.config.throughput_replays != 1:
                argv += ["--throughput-replays", str(self.config.throughput_replays)]
            measured = run_command(argv, timeout=self.config.timeout, log=out / "benchmark.log")
            result["provenance"]["benchmark_command"] = measured.argv
            if not measured.ok:
                raise RuntimeError("Benchmark/checksum gate failed: " + measured.output)
            summary = json.loads((out / "summary.json").read_text())
            with (out / "runs.csv").open(newline="") as stream:
                rows = list(csv.DictReader(stream))
            replay_rows = None
            histogram_rows = None
            if summary.get("schema_version") == 2:
                with (out / "throughput_replays.csv").open(newline="") as stream:
                    replay_rows = list(csv.DictReader(stream))
                with (out / "latency_histogram.csv").open(newline="") as stream:
                    histogram_rows = list(csv.DictReader(stream))
            parsed = parse_benchmark(summary, rows, expected_runs=self.config.runs,
                                     expected_flags=build.flags, expected_input=self.config.input,
                                     expected_cpu=self.config.cpu, expected_replays=self.config.throughput_replays,
                                     replay_rows=replay_rows, histogram_rows=histogram_rows)
            # Positive metrics stay absent until the independent correctness oracle passes.
            differential = run_command(self._pin([directory / "ledger_differential", "--seeds",
                                                 str(self.config.differential_seeds), "--orders",
                                                 str(self.config.differential_orders), "--output",
                                                 out / "differential.json"]),
                                       timeout=self.config.timeout, log=out / "differential.log")
            result["provenance"]["differential_command"] = differential.argv
            if not differential.ok:
                raise RuntimeError("Differential correctness gate failed: " + differential.output)
            report = json.loads((out / "differential.json").read_text())
            if (report.get("status") != "pass" or report.get("seeds") != self.config.differential_seeds
                    or report.get("commands_per_seed") != self.config.differential_orders):
                raise ValueError("Differential report does not match the requested gate")
            result.update(parsed)
            result["correctness"] = True
            result["provenance"].update({"cpu_model": summary["machine"].get("cpu_model"),
                                         "compiler": summary["compiler"],
                                         "differential": report,
                                         "benchmark_schema_version": summary["schema_version"],
                                         "throughput_commands_per_run": parsed["throughput_commands_per_run"],
                                         "latency_commands_per_run": parsed["latency_commands_per_run"]})
            if replay_rows is not None:
                result["provenance"]["throughput_replays_csv"] = str(out / "throughput_replays.csv")
        except (OSError, ValueError, KeyError, TypeError, RuntimeError) as exc:
            result["error"] = str(exc)[-12288:]
        (out / "measurement.json").write_text(json.dumps(result, indent=2) + "\n")
        return result

    def counters(self, build: BuildResult) -> dict[str, Any]:
        if not build.success:
            return {"available": False, "reason": "build failed", "throughput_replays": self.config.throughput_replays}
        if not shutil.which("perf"):
            return {"available": False, "reason": "perf is not installed", "throughput_replays": self.config.throughput_replays}
        out = Path(build.build_dir) / "counters"
        out.mkdir(exist_ok=True)
        events = "cycles,instructions,branches,branch-misses,L1-icache-load-misses"
        argv = ["perf", "stat", "-x", ";", "-e", events, "--", *self._pin([
            Path(build.build_dir) / "ledger_bench", "--input", self.config.input,
            "--runs", "1", "--warmup", str(self.config.warmup), "--outdir", out])]
        if self.config.throughput_replays != 1:
            argv += ["--throughput-replays", str(self.config.throughput_replays)]
        measured = run_command(argv, timeout=self.config.timeout, log=out / "perf.log")
        from .feedback import parse_perf
        parsed = parse_perf(measured.output)
        parsed["throughput_replays"] = self.config.throughput_replays
        parsed["available"] = measured.ok and bool(parsed.get("cycles"))
        if not parsed["available"]:
            parsed["reason"] = measured.output[-2000:] or "hardware events unavailable"
        (out / "counters.json").write_text(json.dumps(parsed, indent=2) + "\n")
        return parsed

    def full_validate(self, build: BuildResult, seeds: int = 100,
                      orders: int = 1_000_000) -> dict[str, Any]:
        if not build.success or seeds < 1 or orders < 1:
            return {"correctness": False, "error": "invalid build or validation settings"}
        out = Path(build.build_dir) / "validation"
        out.mkdir(exist_ok=True)
        differential = run_command(self._pin([Path(build.build_dir) / "ledger_differential",
                                             "--seeds", str(seeds), "--orders", str(orders),
                                             "--output", out / "differential.json"]),
                                   timeout=max(self.config.timeout, 600), log=out / "differential.log")
        planned = run_command(["ctest", "--test-dir", build.build_dir, "--show-only=json-v1"],
                              timeout=30, log=out / "ctest-plan.json")
        planned_count = 0
        try:
            if planned.ok:
                planned_count = len(json.loads((out / "ctest-plan.json").read_text())["tests"])
        except (OSError, ValueError, KeyError):
            pass
        junit = out / "ctest.xml"
        junit.unlink(missing_ok=True)
        ctest = run_command(["ctest", "--test-dir", build.build_dir, "--output-on-failure",
                             "--no-tests=error", "--output-junit", junit,
                             "--timeout", str(int(self.config.timeout))],
                            timeout=max(self.config.timeout, 600), log=out / "ctest.log")
        completed_count = 0
        ctest_verified = False
        try:
            suite = ET.parse(junit).getroot()
            cases = list(suite.iter("testcase"))
            completed_count = len(cases)
            ctest_verified = (planned_count > 0 and completed_count == planned_count
                              and not list(suite.iter("failure")) and not list(suite.iter("error"))
                              and not list(suite.iter("skipped")))
        except (OSError, ET.ParseError):
            pass
        result = {"correctness": differential.ok and ctest.ok and ctest_verified,
                  "throughput_replays": self.config.throughput_replays,
                  "ctest_planned_tests": planned_count, "ctest_completed_tests": completed_count,
                  "ctest_evidence_verified": ctest_verified, "seeds": seeds, "orders": orders,
                  "differential": differential.output, "ctest": ctest.output,
                  "differential_exit_code": differential.returncode, "ctest_exit_code": ctest.returncode}
        if differential.ok:
            try:
                report = json.loads((out / "differential.json").read_text())
                result["correctness"] &= (report.get("status") == "pass" and report.get("seeds") == seeds
                                          and report.get("commands_per_seed") == orders)
                result["report"] = report
            except (OSError, ValueError):
                result["correctness"] = False
        (out / "validation.json").write_text(json.dumps(result, indent=2) + "\n")
        return result
