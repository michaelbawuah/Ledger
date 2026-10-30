#!/usr/bin/env python3
"""Prove the correctness gate rejects a compiling semantic mutation of Ledger."""
from __future__ import annotations

import argparse
from datetime import datetime, timezone
import json
from pathlib import Path
import shutil
import sys
import tempfile

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
from compilerpilot.bench import BenchmarkConfig, BenchmarkRunner
from compilerpilot.build import BuildManager, source_provenance
from compilerpilot.layout import find_ledger_root, require_ledger_root
from compilerpilot.space import Candidate

BEFORE = "    return command.action == Action::Market || (command.side == Side::Buy ? command.price >= maker_price : command.price <= maker_price);"
AFTER = "    return command.action == Action::Market || (command.side == Side::Buy ? command.price > maker_price : command.price <= maker_price);"


def validate_report_output(ledger: Path, evaluation_input: Path, output: Path) -> Path:
    """Allow nested experiment reports while protecting the live source and input."""
    ledger = ledger.resolve()
    output = output.resolve()
    if output == evaluation_input.resolve():
        raise ValueError("The gate report cannot overwrite the evaluation input")
    if output.suffix.lower() != ".json":
        raise ValueError("The gate report must be a JSON file")
    if output.exists() and not output.is_file():
        raise ValueError("The gate report cannot replace a directory")
    if output == ledger or ledger in output.parents:
        # Deliberately do not resolve this root: a symlink from results into src
        # must not turn the source directory into an allowed report destination.
        reports = ledger / "tools" / "compilerpilot" / "results"
        if not output.is_relative_to(reports):
            raise ValueError("Reports inside Ledger must be under tools/compilerpilot/results")
    return output


def copy_ledger_snapshot(ledger: Path, destination: Path) -> Path:
    """Copy the engine once, excluding this tool and generated build trees."""
    ledger, destination = ledger.resolve(), destination.resolve()
    if destination == ledger or ledger in destination.parents:
        raise ValueError("The mutation snapshot must be outside the live Ledger checkout")

    def ignore(directory: str, names: list[str]) -> set[str]:
        relative = Path(directory).relative_to(ledger)
        excluded = {name for name in names if name in
                    {".git", "__pycache__", ".pytest_cache", ".venv"}}
        if relative == Path("."):
            excluded.update({"build", "builds"} & set(names))
        if relative == Path("tools"):
            excluded.add("compilerpilot")
        return excluded

    shutil.copytree(ledger, destination, ignore=ignore, symlinks=True)
    return destination


def qualify_gate(ledger: Path, evaluation_input: Path, output: Path) -> dict:
    ledger = ledger.resolve()
    evaluation_input = evaluation_input.resolve()
    output = validate_report_output(ledger, evaluation_input, output)
    if not evaluation_input.is_file():
        raise ValueError(f"Evaluation input is missing: {evaluation_input}")
    original = source_provenance(ledger)
    source = ledger / "src" / "book.cpp"
    original_text = source.read_text()
    if original_text.count(BEFORE) != 1:
        raise ValueError("Live Ledger matching line differs; inspect it before changing the qualification mutation")
    report = {"schema_version": 1, "timestamp": datetime.now(timezone.utc).isoformat(),
              "source_mode": "live-checkout",
              "qualified": False, "original_source": original,
              "mutation": {"file": "src/book.cpp", "before": BEFORE, "after": AFTER,
                           "reason": "A buy limit equal to the resting ask incorrectly fails to cross"},
              "build_success": False, "correctness": None,
              "throughput": None, "p50_ns": None, "p99_ns": None}
    try:
        with tempfile.TemporaryDirectory(prefix="compilerpilot-gate-") as temporary:
            scratch = Path(temporary)
            changed = scratch / "ledger"
            copy_ledger_snapshot(ledger, changed)
            changed_source = changed / "src" / "book.cpp"
            if not changed_source.resolve().is_relative_to(changed):
                raise ValueError("The snapshot matching source must not link outside its scratch copy")
            changed_source.write_text(original_text.replace(BEFORE, AFTER, 1))
            report["mutated_source"] = source_provenance(changed)
            if original["source_sha256"] == report["mutated_source"]["source_sha256"]:
                raise RuntimeError("Mutation did not change the source fingerprint")
            result = BuildManager(changed, scratch / "builds").build(Candidate())
            report["build_success"] = result.success
            report["compiler_version"] = result.compiler_version
            report["flags"] = result.flags
            if not result.success:
                report["error"] = result.error
                raise RuntimeError("Mutation must compile before correctness qualification can count")
            runner = BenchmarkRunner(BenchmarkConfig(evaluation_input))
            measured = runner.run(result, label="mutation-gate")
            report["correctness"] = measured["correctness"]
            report["error"] = measured.get("error")
            report["measurement"] = measured
            report["cpu"] = runner.config.cpu
            report["input_sha256"] = measured.get("provenance", {}).get("input_sha256")
            report["qualified"] = (measured["correctness"] is False
                                   and all(measured.get(key) is None
                                           for key in ("throughput", "p50_ns", "p99_ns"))
                                   and "differs from reference event/trade checksum or state"
                                   in (measured.get("error") or ""))
            if not report["qualified"]:
                raise RuntimeError("Correctness gate did not demonstrably reject the semantic mutation")
    finally:
        report["pinned_source_unchanged"] = source_provenance(ledger)["source_sha256"] == original["source_sha256"]
        report["source_unchanged"] = report["pinned_source_unchanged"]
        if not report["pinned_source_unchanged"]:
            report["qualified"] = False
            report["error"] = "Live Ledger source changed during mutation qualification"
        output.parent.mkdir(parents=True, exist_ok=True)
        output.write_text(json.dumps(report, indent=2) + "\n")
    if not report["pinned_source_unchanged"]:
        raise RuntimeError("Live Ledger source changed during mutation qualification")
    return report


def main() -> int:
    root = Path(__file__).resolve().parents[1]
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--ledger", type=Path, default=find_ledger_root(root))
    parser.add_argument("--input", type=Path, default=root / "data" / "eval.lob")
    parser.add_argument("--output", type=Path, default=root / "results" / "live-gate-check.json")
    args = parser.parse_args()
    try:
        result = qualify_gate(require_ledger_root(args.ledger), args.input, args.output)
    except (OSError, ValueError, RuntimeError) as error:
        print(f"Gate qualification failed: {error}", file=sys.stderr)
        return 1
    print(json.dumps({"qualified": result["qualified"], "build_success": result["build_success"],
                      "correctness": result["correctness"], "pinned_source_unchanged": result["pinned_source_unchanged"],
                      "output": str(args.output.resolve())}, indent=2))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
