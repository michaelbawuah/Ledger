"""The in-repository mutation check must copy the engine and protect live files."""
import importlib.util
import json
from pathlib import Path
import sys
from types import SimpleNamespace

import pytest


@pytest.fixture
def gate_module():
    script = Path(__file__).resolve().parents[1] / "scripts" / "check_gate.py"
    specification = importlib.util.spec_from_file_location("compilerpilot_gate_layout", script)
    module = importlib.util.module_from_spec(specification)
    specification.loader.exec_module(module)
    return module


def make_checkout(root, matching_line="engine source\n"):
    for name, text in {
        "CMakeLists.txt": "project(Ledger)\n",
        "src/book.cpp": matching_line,
        "include/ledger/book.hpp": "// Ledger\n",
        "tools/check_docs.py": "# Preserve Ledger tooling\n",
        "tools/compilerpilot/results/report.json": "{}\n",
        "tools/compilerpilot/builds/deep/generated.cpp": "large generated artifact\n",
        "build/CMakeLists.txt": "generated build tree\n",
        "builds/candidate/binary": "generated binary\n",
        ".git/private": "git metadata\n",
    }.items():
        target = root / name
        target.parent.mkdir(parents=True, exist_ok=True)
        target.write_text(text)
    return root


def test_snapshot_omits_autotuner_git_and_builds_but_preserves_engine_tools(gate_module, tmp_path):
    ledger = make_checkout(tmp_path / "Ledger")
    changed = gate_module.copy_ledger_snapshot(ledger, tmp_path / "snapshot")
    assert (changed / "src/book.cpp").read_bytes() == (ledger / "src/book.cpp").read_bytes()
    assert (changed / "tools/check_docs.py").is_file()
    assert not (changed / "tools/compilerpilot").exists()
    assert not (changed / "build").exists()
    assert not (changed / "builds").exists()
    assert not (changed / ".git").exists()


def test_snapshot_cannot_recurse_into_live_checkout(gate_module, tmp_path):
    ledger = make_checkout(tmp_path / "Ledger")
    with pytest.raises(ValueError, match="outside the live Ledger"):
        gate_module.copy_ledger_snapshot(ledger, ledger / "tools/compilerpilot/builds/snapshot")


def test_reports_allow_own_results_and_external_json_only(gate_module, tmp_path):
    ledger = make_checkout(tmp_path / "Ledger")
    evaluation = tmp_path / "input.lob"
    evaluation.write_bytes(b"input")
    own_report = ledger / "tools/compilerpilot/results/gate-check.json"
    assert gate_module.validate_report_output(ledger, evaluation, own_report) == own_report.resolve()
    assert gate_module.validate_report_output(ledger, evaluation, tmp_path / "gate.json") == tmp_path / "gate.json"
    for forbidden in (ledger / "src/book.json", ledger / "CMakeLists.txt", evaluation):
        with pytest.raises(ValueError):
            gate_module.validate_report_output(ledger, evaluation, forbidden)


def test_report_symlink_cannot_turn_source_into_allowed_results(gate_module, tmp_path):
    ledger = make_checkout(tmp_path / "Ledger")
    reports = ledger / "tools/compilerpilot/results"
    (reports / "redirect").symlink_to(ledger / "src", target_is_directory=True)
    with pytest.raises(ValueError, match="Reports inside Ledger"):
        gate_module.validate_report_output(ledger, tmp_path / "input.lob", reports / "redirect/book.json")


def test_in_repository_gate_report_leaves_live_source_untouched(gate_module, tmp_path, monkeypatch):
    ledger = make_checkout(tmp_path / "Ledger", gate_module.BEFORE + "\n")
    original = (ledger / "src/book.cpp").read_bytes()
    evaluation = tmp_path / "eval.lob"
    evaluation.write_bytes(b"fixed input fixture")
    output = ledger / "tools/compilerpilot/results/gate-check.json"

    class FakeManager:
        def __init__(self, changed, builds):
            assert not (changed / "tools/compilerpilot").exists()
            assert gate_module.AFTER in (changed / "src/book.cpp").read_text()

        def build(self, candidate):
            return SimpleNamespace(success=True, compiler_version="fixture", flags=["-O3"])

    class FakeRunner:
        def __init__(self, config):
            self.config = SimpleNamespace(cpu=0)

        def run(self, build, label):
            return {"correctness": False, "throughput": None, "p50_ns": None, "p99_ns": None,
                    "error": "fast-bitmap differs from reference event/trade checksum or state",
                    "provenance": {"input_sha256": "fixture"}}

    monkeypatch.setattr(gate_module, "BuildManager", FakeManager)
    monkeypatch.setattr(gate_module, "BenchmarkRunner", FakeRunner)
    result = gate_module.qualify_gate(ledger, evaluation, output)
    assert result["qualified"] and result["source_unchanged"]
    assert result["source_mode"] == "live-checkout"
    assert (ledger / "src/book.cpp").read_bytes() == original
    assert json.loads(output.read_text())["qualified"]


@pytest.mark.parametrize("explicit_output", [False, True])
def test_gate_cli_preserves_historical_report_default(gate_module, tmp_path, monkeypatch, explicit_output):
    ledger = make_checkout(tmp_path / "Ledger")
    calls = []
    requested = tmp_path / "requested-report.json"

    def qualify(source, evaluation, output):
        calls.append((source, output))
        return {"qualified": True, "build_success": True, "correctness": False,
                "pinned_source_unchanged": True}

    monkeypatch.setattr(gate_module, "qualify_gate", qualify)
    argv = ["check_gate.py", "--ledger", str(ledger)]
    if explicit_output:
        argv += ["--output", str(requested)]
    monkeypatch.setattr(sys, "argv", argv)
    assert gate_module.main() == 0
    component = Path(gate_module.__file__).resolve().parents[1]
    expected = requested if explicit_output else component / "results/live-gate-check.json"
    assert calls == [(ledger, expected)]
