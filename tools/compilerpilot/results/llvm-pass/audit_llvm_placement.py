#!/usr/bin/env python3
"""Audit sealed LLVM pipeline evidence; never run a benchmark or compiler.

Live mode additionally rehashes the original checkout, tools and build artifacts.
Use --offline only when those original paths are unavailable. Custom-pass removal
counts are reconstructed from retained plugin reports, not endpoint IR deltas.
"""
import argparse
from datetime import datetime, timezone
import hashlib
import json
import os
from pathlib import Path, PurePosixPath
import re
import subprocess
import xml.etree.ElementTree as ET

PIPELINES = {"baseline": "default<O2>",
             "early": "function(mem2reg,ledger-load-elim),default<O2>",
             "late": "default<O2>,function(ledger-load-elim)"}
TESTS = set("engine_semantics allocation_free spsc_stress feed_roundtrip differential_smoke "
            "pool_verification index_verification feed_view_verification risk_verification "
            "fok_verification study_workload_verification study_observer_verification "
            "evidence_validation documentation_links tooling_tamper_tests".split())
CORE_DIRS = ("src", "include", "bench", "tests", "examples", "cmake")
SEED = 0x739AF142DE56B807


def need(condition, reason):
    if not condition:
        raise ValueError(reason)


def read(path):
    return json.loads(Path(path).read_text())


def sha(path):
    digest = hashlib.sha256()
    with Path(path).open("rb") as stream:
        for block in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(block)
    return digest.hexdigest()


def sealed(packet):
    doc = read(packet / "evidence-manifest.json")
    need(doc["hash_algorithm"] == "sha256", "Wrong manifest algorithm")
    declared = doc["files"]
    actual = {p.relative_to(packet).as_posix() for p in packet.rglob("*")
              if p.is_file() and p.relative_to(packet).parts[0] != "_builds"
              and p != packet / "evidence-manifest.json"}
    need(actual == set(declared), "Sealed inventory differs")
    for name, digest in declared.items():
        parts = PurePosixPath(name).parts
        need(not name.startswith("/") and ".." not in parts and "\\" not in name,
             "Unsafe manifest member")
        target = packet / name
        need(target.resolve().is_relative_to(packet) and not target.is_symlink(), "Unsafe sealed path")
        need(re.fullmatch(r"[0-9a-f]{64}", digest) and sha(target) == digest, "Sealed hash differs: " + name)
    return len(declared)


def ir(path):
    text = path.read_text()
    value = r'%(?:"(?:[^"\\]|\\[0-9A-Fa-f]{2})+"|[-a-zA-Z$._0-9]+)'
    return {"load_instructions": len(re.findall(r"^\s+" + value + r"\s*=\s*load\s", text, re.M)),
            "store_instructions": len(re.findall(r"^\s+store\s", text, re.M)),
            "function_definitions": len(re.findall(r"^define\s", text, re.M))}


def ctest(arm, record):
    names = [case["name"] for case in read(arm / "ctest-plan.json")["tests"]]
    cases = list(ET.parse(arm / "ctest.xml").getroot().iter("testcase"))
    need(len(names) == 15 and set(names) == TESTS, "Wrong raw CTest plan")
    need(len(cases) == 15 and {c.attrib["name"] for c in cases} == TESTS, "Wrong raw JUnit cases")
    need(all(c.attrib.get("status", "run") == "run" and not any(c.find(t) is not None
             for t in ("failure", "error", "skipped")) for c in cases), "Incomplete or failing CTest")
    expected = {"planned": 15, "completed": 15, "passed": True,
                "plan_sha256": sha(arm / "ctest-plan.json"), "junit_sha256": sha(arm / "ctest.xml")}
    need(record["ctest"] == expected, "CTest summary differs from raw evidence")
    return expected


def differential(arm, record):
    report = read(arm / "differential.json")
    expected = {"status": "pass", "seeds": 100, "first_seed": 0, "base_seed": SEED,
                "commands_per_seed": 1000000, "commands_compared": 100000000,
                "linear_variant_compared": True, "linear_fok_variant_compared": True}
    need(all(type(report.get(k)) is type(v) and report.get(k) == v for k, v in expected.items()),
         "Exact 100M differential evidence missing")
    summary = {"passed": True, "commands_compared": 100000000, "seeds": 100,
               "commands_per_seed": 1000000, "report_sha256": sha(arm / "differential.json")}
    need(record["differential"] == summary, "Differential summary differs from raw evidence")
    return summary


def live_source(repo, expected):
    paths = [repo / n for n in ("CMakeLists.txt", "CMakePresets.json") if (repo / n).is_file()]
    paths.extend((repo / "tools").glob("*.py"))
    for name in CORE_DIRS:
        for root, dirs, names in os.walk(repo / name, followlinks=False):
            dirs[:] = [d for d in dirs if d not in ("results", "__pycache__", ".git")]
            paths.extend(Path(root) / n for n in names)
    hashes = {}
    digest = hashlib.sha256()
    for path in sorted(paths):
        need(path.is_file() and not path.is_symlink(), "Unsafe live source path")
        name = path.relative_to(repo).as_posix()
        hashes[name] = sha(path)
        digest.update(name.encode() + b"\0" + bytes.fromhex(hashes[name]))
    need(hashes == expected["files"] and digest.hexdigest() == expected["source_sha256"],
         "Fresh source differs")
    head = subprocess.check_output(["git", "-C", str(repo), "rev-parse", "HEAD"], text=True).strip()
    need(head == expected["ledger_commit"] and expected["core_dirty"] is False, "Source commit differs")
    return {"files_rehashed": len(hashes), "source_sha256": digest.hexdigest(), "head": head}


def audit(args):
    packet, repo = args.packet.resolve(), args.repo.resolve()
    need(not args.output.resolve().is_relative_to(packet), "Audit output must be outside the sealed packet")
    count = sealed(packet)
    protocol, result = read(packet / "protocol.json"), read(packet / "result.json")
    need(protocol["kind"] == "llvm18_book_pipeline_correctness_experiment"
         and protocol["pipelines"] == PIPELINES and protocol["timing_benchmark"] is False
         and protocol["model_calls"] == 0 and protocol["automatic_retries"] == 0, "Wrong declared experiment")
    need(result["status"] == "correctness_validated" and set(result["variants"]) == set(PIPELINES)
         and result["speedup_claim_supported"] is False and result["model_calls"] == 0
         and result["source_plugin_implementation_unchanged"] is True, "Incomplete or misleading outcome")
    versions = [re.search(r"\b(18\.\d+\.\d+)\b", protocol["tool_versions"][name]).group(1)
                for name in ("clang", "opt", "ar")]
    need(len(set(versions)) == 1, "Mixed LLVM tool versions")
    version, frontend = versions[0], packet / "book.frontend.ll"
    need(result["frontend"] == {"sha256": sha(frontend), **ir(frontend)}, "Frontend summary differs")
    frontend_argv = protocol["frontend_argv"]
    original_packet = Path(frontend_argv[-1]).parent
    need(frontend_argv == [protocol["tools"]["clang"], "-std=c++23", "-DNDEBUG", "-O1",
         "-fno-strict-aliasing", "-Xclang", "-disable-llvm-passes", "-fno-discard-value-names",
         "-emit-llvm", "-S", "-I", str(repo / "include"), str(repo / "src/book.cpp"),
         "-o", str(original_packet / "book.frontend.ll")], "Frontend flags differ")
    commands = [json.loads(line) for line in (packet / "commands.jsonl").read_text().splitlines()]
    started = {r["log"]: r for r in commands if r["event"] == "started"}
    finished = {r["log"]: r for r in commands if r["event"] == "finished"}
    need(len(commands) == len(started) + len(finished), "Duplicate or unexpected command events")
    logs = ["frontend.log"] + [name + "/" + log for name in PIPELINES for log in
            ("opt.log", "configure.log", "build.log", "archive-book-object.bin", "ctest-plan.json", "ctest.log", "differential.log")]
    need(set(started) | set(finished) == set(logs), "Missing complete command/log inventory")
    expected_events = [(event, log) for log in logs for event in ("started", "finished")]
    actual_events = [(r["event"], r["log"]) for r in commands]
    need(actual_events == [e for e in expected_events if e in actual_events], "Reordered command events")
    gaps = {"missing_started": sorted(set(logs) - set(started)),
            "missing_finished": sorted(set(logs) - set(finished))}
    trace_complete = not any(gaps.values())
    for log, end in finished.items():
        need(end["returncode"] == 0, "Failed command in completed experiment")
        if log in started:
            need(started[log]["argv"] == end["argv"] and started[log]["cwd"] == end["cwd"], "Command bindings differ")
        need(sha(packet / end["log"]) == end["log_sha256"], "Command log hash differs")
    need(sum(r["argv"] == frontend_argv for r in finished.values()) == 1, "Frontend not compiled exactly once")
    arms, normal_argv, compile_commands = {}, None, None
    for name, pipeline in PIPELINES.items():
        arm, live_build = packet / name, original_packet / "_builds" / name
        record = read(arm / "result.json")
        need(record == result["variants"][name] and record["correctness_passed"] is True
             and record["pipeline"] == pipeline, "Arm summary differs")
        optimized = arm / "book.optimized.ll"
        need(sha(optimized) == record["ir_sha256"] and all(record[k] == v for k, v in ir(optimized).items()),
             "Endpoint IR summary differs")
        expected_opt = [protocol["tools"]["opt"], "-load-pass-plugin", protocol["plugin"], "-verify-each", "-S",
                        "-passes=" + pipeline, str(original_packet / "book.frontend.ll"), "-o",
                        str(original_packet / name / "book.optimized.ll")]
        need(sum(r["argv"] == expected_opt for r in finished.values()) == 1, "Wrong fixed opt pipeline/input")
        reports = []
        for line in (arm / "opt.log").read_text().splitlines():
            if line.startswith("{"):
                item = json.loads(line)
                if item.get("pass") == "ledger-load-elim":
                    need(item.get("llvm_version") == version and type(item.get("loads_removed")) is int
                         and item["loads_removed"] >= 0, "Invalid custom-pass report")
                    reports.append(item)
        need(record["pass_reports"] == reports and record["custom_pass_executions"] == len(reports)
             and record["loads_removed_by_custom_pass"] == sum(r["loads_removed"] for r in reports), "Pass counts differ")
        need((not reports) if name == "baseline" else bool(reports), "Unexpected/missing custom-pass execution")
        need(len({r["function"] for r in reports}) == len(reports), "Duplicate function pass reports")
        expected_functions = result["frontend"]["function_definitions"] if name == "early" else record["function_definitions"]
        need(name == "baseline" or len(reports) == expected_functions, "Missing per-function execution reports")
        launcher = read(arm / "book-object-launcher.json")
        obj = live_build / "CMakeFiles/ledger.dir/src/book.cpp.o"
        need(launcher["status"] == "transformed" and launcher["normal_returncode"] == launcher["codegen_returncode"] == 0
             and launcher["ir_unchanged"] is True and launcher["source"] == str(repo / "src/book.cpp")
             and launcher["source_sha256"] == protocol["source"]["files"]["src/book.cpp"]
             and launcher["object"] == str(obj) and launcher["ir"] == str(original_packet / name / "book.optimized.ll")
             and launcher["ir_sha256"] == record["ir_sha256"], "Launcher bindings differ")
        need(sha(arm / "book-object-launcher.json") == record["launcher_record_sha256"], "Launcher digest differs")
        need(launcher["codegen_argv"] == [protocol["tools"]["clang"], "-O2", "-Xclang", "-disable-llvm-passes",
             "-x", "ir", "-c", launcher["ir"], "-o", str(obj)], "Wrong backend invocation")
        need(launcher["normal_argv"][0] == protocol["tools"]["clang"], "C++ driver identity differs")
        if normal_argv is None:
            normal_argv = launcher["normal_argv"]
        need(launcher["normal_argv"] == normal_argv, "Ordinary book compilation differs across arms")
        need(launcher["normal_object_sha256"] == record["normal_book_object_sha256"], "Normal object digest differs")
        transformed = launcher["transformed_object_sha256"]
        need(all(record[key] == transformed for key in ("transformed_book_object_sha256", "linked_book_object_sha256",
             "archive_book_object_sha256")) and sha(arm / "archive-book-object.bin") == transformed, "Archived object differs")
        current_commands = read(arm / "compile_commands.json")
        normalized = [{k: v.replace(str(live_build), "$BUILD") if isinstance(v, str) else v
                       for k, v in row.items()} for row in current_commands]
        if compile_commands is None:
            compile_commands = normalized
        need(normalized == compile_commands, "Ordinary translation-unit compilation differs across arms")
        checks = {"ctest": ctest(arm, record), "differential": differential(arm, record)}
        if not args.offline:
            need(sha(obj) == transformed and sha(live_build / "libledger.a") == record["static_library_sha256"],
                 "Fresh object/archive differs")
            binaries = {p.name: sha(p) for p in live_build.glob("ledger_*") if p.is_file() and os.access(p, os.X_OK)}
            need(binaries == record["executable_sha256"], "Fresh executable inventory/bytes differ")
        arms[name] = {**ir(optimized), "plugin_reported_loads_removed": sum(r["loads_removed"] for r in reports),
                      "function_reports_verified": len(reports), **checks}
    fresh = {}
    if not args.offline:
        fresh["source"] = live_source(repo, protocol["source"])
        need(sha(protocol["plugin"]) == protocol["plugin_sha256"], "Fresh plugin differs")
        for path, digest in protocol["implementation_sha256"].items():
            need(sha(path) == digest, "Fresh experiment implementation differs")
        for name, digest in protocol["tool_binary_sha256"].items():
            need(sha(protocol["tools"][name]) == digest, "Fresh tool differs: " + name)
        fresh.update(plugin_rehashed=True, tool_binaries_rehashed=len(protocol["tools"]),
                     implementation_files_rehashed=len(protocol["implementation_sha256"]))
    failure = None
    if args.failed_packet:
        failed = args.failed_packet.resolve()
        failed_count = sealed(failed)
        failed_result, failed_protocol = read(failed / "result.json"), read(failed / "protocol.json")
        need(failed_result["status"] == "failed" and failed_result["variants"] == {}
             and failed_result["speedup_claim_supported"] is False, "Earlier setup failure was upgraded")
        failure = {"status": "failed", "phase": failed_result["phase"], "variants": 0,
                   "manifest_hashes_verified": failed_count, "protocol_sha256": sha(failed / "protocol.json"),
                   "recorded_implementation_sha256": failed_protocol["implementation_sha256"]}
    return {"audit_passed": trace_complete, "semantic_validation_passed": True,
            "packet_integrity_verified": True, "command_trace_complete": trace_complete,
            "command_trace_gaps": gaps, "command_events_verified": len(commands), "expected_command_events": 44,
            "warnings": [] if trace_complete else ["Retained command history has missing start/completion events; no complete trace claim."],
            "audited_at": datetime.now(timezone.utc).isoformat(),
            "audit_helper_sha256": sha(__file__), "manifest_hashes_verified": count,
            "protocol_sha256": sha(packet / "protocol.json"), "llvm_version": version,
            "frontend": {"sha256": sha(frontend), **ir(frontend)}, "variants": arms,
            "fresh_context_verified": not args.offline, "fresh_context": fresh, "earlier_setup_failure": failure,
            "speedup_claim_supported": False, "agent_win_claim_supported": False, "mlir_claim_supported": False,
            "scope": "Endpoint IR counts and retained plugin reports are separate static measurements; no timing or compiler replay.",
            "limitations": "Sealed hashes bind retained bytes. Live mode rehashes original artifacts; offline mode cannot re-establish them."}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--packet", type=Path, required=True)
    parser.add_argument("--repo", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--failed-packet", type=Path)
    parser.add_argument("--offline", action="store_true")
    args = parser.parse_args()
    document = audit(args)
    with args.output.open("x") as stream:
        json.dump(document, stream, indent=2, sort_keys=True, allow_nan=False)
        stream.write("\n")
    print(json.dumps({"audit_passed": document["audit_passed"], "semantic_validation_passed": True,
                      "command_trace_complete": document["command_trace_complete"], "fresh_context_verified": not args.offline,
                      "output": str(args.output), "speedup_claim_supported": False}))
    return 0 if document["audit_passed"] else 1


if __name__ == "__main__":
    raise SystemExit(main())
