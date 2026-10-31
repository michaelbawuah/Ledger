#!/usr/bin/env python3
"""Compare three fixed LLVM pipelines on Ledger's real book.cpp translation unit.

This is an IR/correctness experiment, not a throughput benchmark or tuning search.
The other translation units use the same ordinary Clang Release build in all arms.
"""
from __future__ import annotations

import argparse
from datetime import datetime, timezone
import hashlib
import json
import os
from pathlib import Path
import platform
import re
import shutil
import signal
import subprocess
import sys
import xml.etree.ElementTree as ET


PIPELINES = {
    "baseline": "default<O2>",
    "early": "function(mem2reg,ledger-load-elim),default<O2>",
    "late": "default<O2>,function(ledger-load-elim)",
}
TEST_NAMES = {
    "engine_semantics", "allocation_free", "spsc_stress", "feed_roundtrip",
    "differential_smoke", "pool_verification", "index_verification",
    "feed_view_verification", "risk_verification", "fok_verification",
    "study_workload_verification", "study_observer_verification",
    "evidence_validation", "documentation_links", "tooling_tamper_tests",
}
CORE_DIRS = ("src", "include", "bench", "tests", "examples", "cmake")
DIFFERENTIAL_SEED = 0x739AF142DE56B807


def now():
    return datetime.now(timezone.utc).isoformat()


def require(condition, message):
    if not condition:
        raise ValueError(message)


def sha(path):
    digest = hashlib.sha256()
    with Path(path).open("rb") as stream:
        for block in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(block)
    return digest.hexdigest()


def save(path, document):
    path = Path(path)
    path.parent.mkdir(parents=True, exist_ok=True)
    temporary = path.with_name(path.name + ".tmp")
    with temporary.open("w", encoding="utf-8") as stream:
        json.dump(document, stream, indent=2, sort_keys=True, allow_nan=False)
        stream.write("\n")
        stream.flush()
        os.fsync(stream.fileno())
    temporary.replace(path)


def git(repo, *args):
    return subprocess.check_output(["git", "-C", str(repo), *args], text=True,
                                   stderr=subprocess.DEVNULL, timeout=20).strip()


def tool_path(requested):
    resolved = shutil.which(requested)
    require(resolved is not None, "Missing tool: " + requested)
    # Clang uses argv[0] to select its C++ driver. Resolving clang++'s symlink
    # to the underlying clang binary would lose automatic C++ runtime linking.
    return str(Path(resolved).absolute())


def source_snapshot(repo):
    files = [repo / name for name in ("CMakeLists.txt", "CMakePresets.json")
             if (repo / name).is_file()]
    files.extend(sorted((repo / "tools").glob("*.py")))
    for directory in CORE_DIRS:
        for parent, dirs, names in os.walk(repo / directory, followlinks=False):
            dirs[:] = [d for d in dirs if d not in ("results", "__pycache__", ".git")]
            files.extend(Path(parent) / name for name in names)
    hashes = {}
    digest = hashlib.sha256()
    for path in sorted(files):
        require(path.is_file() and not path.is_symlink(), "Unexpected build-input path")
        name = path.relative_to(repo).as_posix()
        hashes[name] = sha(path)
        digest.update(name.encode() + b"\0" + bytes.fromhex(hashes[name]))
    return {
        "ledger_commit": git(repo, "rev-parse", "HEAD"),
        "core_dirty": bool(git(repo, "status", "--porcelain", "--untracked-files=no", "--",
                               "CMakeLists.txt", "CMakePresets.json", *CORE_DIRS, "tools/*.py")),
        "source_sha256": digest.hexdigest(), "files": hashes,
    }


def ir_counts(path):
    text = Path(path).read_text(encoding="utf-8")
    # Count LLVM instruction lines, not mentions in comments, names or metadata.
    loads = re.findall(r'^\s+%(?:"(?:[^"\\]|\\[0-9A-Fa-f]{2})+"|[-a-zA-Z$._0-9]+)\s*=\s*load\s',
                       text, re.MULTILINE)
    stores = re.findall(r"^\s+store\s", text, re.MULTILINE)
    return {"load_instructions": len(loads), "store_instructions": len(stores),
            "function_definitions": len(re.findall(r"^define\s", text, re.MULTILINE))}


def pass_reports(log, expected_llvm_version=None):
    reports = []
    for line in Path(log).read_text(encoding="utf-8", errors="replace").splitlines():
        try:
            document = json.loads(line)
        except json.JSONDecodeError:
            continue
        if isinstance(document, dict) and document.get("pass") == "ledger-load-elim":
            require(type(document.get("loads_removed")) is int and document["loads_removed"] >= 0,
                    "Malformed custom-pass removal count")
            if expected_llvm_version is not None:
                require(document.get("llvm_version") == expected_llvm_version,
                        "Plugin was built against a different LLVM SDK version")
            reports.append(document)
    return reports


def verify_ctest(plan_path, xml_path):
    plan = json.loads(Path(plan_path).read_text())
    planned = [test["name"] for test in plan["tests"]]
    require(len(planned) == 15 and set(planned) == TEST_NAMES,
            "CTest plan must contain all 15 required Ledger tests")
    cases = list(ET.parse(xml_path).getroot().iter("testcase"))
    require(len(cases) == 15 and {case.attrib["name"] for case in cases} == TEST_NAMES,
            "JUnit evidence must contain all 15 required Ledger tests")
    require(all(not any(case.find(tag) is not None for tag in ("failure", "error", "skipped"))
                and case.attrib.get("status", "run") == "run" for case in cases),
            "CTest contains a failing, errored or skipped test")
    return {"planned": 15, "completed": 15, "passed": True,
            "plan_sha256": sha(plan_path), "junit_sha256": sha(xml_path)}


def verify_differential(path):
    report = json.loads(Path(path).read_text())
    expected = {"status": "pass", "seeds": 100, "first_seed": 0, "base_seed": DIFFERENTIAL_SEED,
                "commands_per_seed": 1_000_000, "commands_compared": 100_000_000,
                "linear_variant_compared": True, "linear_fok_variant_compared": True}
    require(all(type(report.get(key)) is type(value) and report.get(key) == value
                for key, value in expected.items()), "Exact 100M differential validation missing")
    return {"passed": True, "commands_compared": 100_000_000, "seeds": 100,
            "commands_per_seed": 1_000_000, "report_sha256": sha(path)}


class Commands:
    def __init__(self, output):
        self.output = output
        self.records = output / "commands.jsonl"

    def run(self, argv, log, *, cwd=None, timeout=1200):
        argv = [str(arg) for arg in argv]
        log = Path(log)
        log.parent.mkdir(parents=True, exist_ok=True)
        record = {"argv": argv, "cwd": str(cwd) if cwd else None,
                  "log": str(log.relative_to(self.output)), "timeout_seconds": timeout,
                  "started_at": now()}
        self.append({**record, "event": "started"})
        process = None
        with log.open("xb") as stream:
            try:
                process = subprocess.Popen(argv, cwd=cwd, stdout=stream,
                                           stderr=subprocess.STDOUT, start_new_session=True)
                code = process.wait(timeout=timeout)
            except BaseException:
                if process is not None and process.poll() is None:
                    try:
                        os.killpg(process.pid, signal.SIGKILL)
                    except ProcessLookupError:
                        pass
                    process.wait()
                self.append({**record, "event": "interrupted", "ended_at": now()})
                raise
        self.append({**record, "event": "finished", "returncode": code,
                     "ended_at": now(), "log_sha256": sha(log)})
        require(code == 0, "Command failed; inspect " + str(log))

    def append(self, record):
        with self.records.open("a", encoding="utf-8") as stream:
            stream.write(json.dumps(record, sort_keys=True) + "\n")
            stream.flush()
            os.fsync(stream.fileno())


def experiment(args):
    require(sys.platform == "linux", "This experiment is scoped to Linux with Ninja")
    repo, plugin, output = args.repo.resolve(), args.plugin.resolve(), args.out.resolve()
    require(not output.exists(), "Fresh output directory required; no overwrite or resume")
    require((repo / "src/book.cpp").is_file() and plugin.is_file(), "Ledger source/plugin missing")
    require(1 <= args.jobs <= 4, "Use 1 to 4 build jobs")
    tools = {}
    for name in ("clang", "opt", "cmake", "ninja", "ctest", "ar"):
        requested = getattr(args, name)
        tools[name] = tool_path(requested)
    versions = {name: "\n".join(subprocess.check_output([path, "--version"], text=True,
                 stderr=subprocess.STDOUT, timeout=20).splitlines()[:4]) for name, path in tools.items()}
    llvm_versions = {name: re.search(r"\b(18\.\d+\.\d+)\b", versions[name])
                     for name in ("clang", "opt", "ar")}
    require(all(llvm_versions.values()) and len({match.group(1) for match in llvm_versions.values()}) == 1,
            "Clang, opt and llvm-ar must have the exact same LLVM 18.x.y version")
    tool_hashes = {name: sha(path) for name, path in tools.items()}
    source = source_snapshot(repo)
    require(source["core_dirty"] is False, "Measured Ledger build inputs must be unchanged")
    experiment_files = [Path(__file__).resolve(), Path(__file__).with_name("LedgerLoadElim.cpp"),
                        Path(__file__).with_name("CMakeLists.txt"),
                        Path(__file__).with_name("book_object_launcher.py")]
    implementation = {str(path.resolve()): sha(path) for path in experiment_files}
    plugin_hash = sha(plugin)
    output.mkdir(parents=True)
    command = Commands(output)
    frontend = output / "book.frontend.ll"
    frontend_argv = [tools["clang"], "-std=c++23", "-DNDEBUG", "-O1", "-fno-strict-aliasing",
                     "-Xclang", "-disable-llvm-passes", "-fno-discard-value-names", "-emit-llvm", "-S",
                     "-I", repo / "include", repo / "src/book.cpp", "-o", frontend]
    protocol = {"schema_version": 1, "kind": "llvm18_book_pipeline_correctness_experiment",
        "declared_at": now(), "source": source, "implementation_sha256": implementation,
        "plugin": str(plugin), "plugin_sha256": plugin_hash, "tools": tools, "tool_versions": versions,
        "tool_binary_sha256": tool_hashes,
        "host": {"system": platform.system(), "machine": platform.machine()},
        "pipelines": PIPELINES, "frontend_argv": [str(arg) for arg in frontend_argv],
        "transformed_scope": "Only src/book.cpp; all other translation units use identical Clang Release/O3 builds",
        "backend": "Clang O2 code generation with -Xclang -disable-llvm-passes; no second middle-end pipeline",
        "required_ctest_names": sorted(TEST_NAMES),
        "differential": {"seeds": 100, "orders": 1_000_000, "base_seed": DIFFERENTIAL_SEED},
        "model_calls": 0, "timing_benchmark": False, "automatic_retries": 0,
        "claim_boundary": "IR transformations and correctness only; no speedup, optimal pipeline, agent win, or MLIR claim"}
    save(output / "protocol.json", protocol)
    result = {"schema_version": 1, "status": "running", "started_at": now(), "variants": {},
              "speedup_claim_supported": False, "model_calls": 0}
    phase = "frontend"
    def unchanged():
        require(source_snapshot(repo) == source, "Ledger source/commit changed during experiment")
        require(sha(plugin) == plugin_hash, "Plugin bytes changed during experiment")
        require(all(sha(path) == digest for path, digest in implementation.items()),
                "Experiment implementation changed during experiment")
        require(all(sha(tools[name]) == digest for name, digest in tool_hashes.items()),
                "Compiler/build tool bytes changed during experiment")
    try:
        command.run(frontend_argv, output / "frontend.log", cwd=repo)
        frontend_hash = sha(frontend)
        result["frontend"] = {"sha256": frontend_hash, **ir_counts(frontend)}
        for name, pipeline in PIPELINES.items():
            phase = name
            arm = output / name
            build = output / "_builds" / name
            arm.mkdir()
            transformed = arm / "book.optimized.ll"
            command.run([tools["opt"], "-load-pass-plugin", plugin, "-verify-each", "-S",
                         "-passes=" + pipeline, frontend, "-o", transformed], arm / "opt.log", cwd=repo)
            reports = pass_reports(arm / "opt.log", llvm_versions["clang"].group(1))
            if name != "baseline":
                require(bool(reports), "Custom pass emitted no execution evidence")
            else:
                require(not reports, "Baseline unexpectedly executed the custom pass")
            require(sha(frontend) == frontend_hash, "Shared frontend IR changed")
            launcher = Path(__file__).with_name("book_object_launcher.py").resolve()
            launcher_record = arm / "book-object-launcher.json"
            launcher_args = [sys.executable, str(launcher), "--book", str(repo / "src/book.cpp"),
                             "--ir", str(transformed), "--record", str(launcher_record), "--"]
            require(all(";" not in arg for arg in launcher_args), "CMake launcher paths cannot contain semicolons")
            command.run([tools["cmake"], "-S", repo, "-B", build, "-G", "Ninja",
                         "-DCMAKE_MAKE_PROGRAM=" + tools["ninja"], "-DCMAKE_CXX_COMPILER=" + tools["clang"],
                         "-DCMAKE_CXX_COMPILER_LAUNCHER=" + ";".join(launcher_args),
                         "-DCMAKE_BUILD_TYPE=Release", "-DCMAKE_CXX_FLAGS=", "-DCMAKE_CXX_FLAGS_RELEASE=-O3 -DNDEBUG",
                         "-DCMAKE_EXPORT_COMPILE_COMMANDS=ON", "-DBUILD_TESTING=ON", "-DLEDGER_NATIVE=OFF",
                         "-DLEDGER_SANITIZER=", "-DLEDGER_REQUIRE_GTEST=OFF"],
                        arm / "configure.log", cwd=repo)
            command.run([tools["cmake"], "--build", build, "--parallel", args.jobs],
                        arm / "build.log", cwd=repo)
            obj = build / "CMakeFiles/ledger.dir/src/book.cpp.o"
            require(obj.is_file() and not obj.is_symlink(), "Expected Ninja book.cpp object missing")
            launched = json.loads(launcher_record.read_text())
            require(launched.get("status") == "transformed" and launched.get("normal_returncode") == 0
                    and launched.get("codegen_returncode") == 0 and launched.get("ir_unchanged") is True
                    and launched.get("source") == str(repo / "src/book.cpp")
                    and launched.get("source_sha256") == source["files"]["src/book.cpp"]
                    and launched.get("object") == str(obj) and launched.get("ir") == str(transformed)
                    and launched.get("ir_sha256") == sha(transformed)
                    and launched.get("normal_argv", [None])[0] == tools["clang"],
                    "Compiler launcher did not bind the exact book.cpp object and pipeline IR")
            initial_hash = launched["normal_object_sha256"]
            transformed_hash = launched["transformed_object_sha256"]
            final_hash = sha(obj)
            require(final_hash == transformed_hash, "Build did not retain the launcher-produced book.cpp object")
            archive = build / "libledger.a"
            command.run([tools["ar"], "p", archive, "book.cpp.o"], arm / "archive-book-object.bin", cwd=repo)
            require(sha(arm / "archive-book-object.bin") == transformed_hash,
                    "Static library does not contain the transformed book.cpp object")
            archive_hash = sha(archive)
            binaries = {path.name: sha(path) for path in sorted(build.glob("ledger_*"))
                        if path.is_file() and os.access(path, os.X_OK)}
            require("ledger_differential" in binaries and "ledger_tests" in binaries,
                    "Required validation executables missing")
            for filename in ("CMakeCache.txt", "compile_commands.json"):
                shutil.copy2(build / filename, arm / filename)
            record = {"pipeline": pipeline, "ir_sha256": sha(transformed), **ir_counts(transformed),
                "custom_pass_executions": len(reports), "loads_removed_by_custom_pass": sum(r["loads_removed"] for r in reports),
                "pass_reports": reports, "normal_book_object_sha256": initial_hash,
                "transformed_book_object_sha256": transformed_hash, "linked_book_object_sha256": final_hash,
                "launcher_record_sha256": sha(launcher_record),
                "archive_book_object_sha256": sha(arm / "archive-book-object.bin"),
                "static_library_sha256": archive_hash, "executable_sha256": binaries,
                "correctness_passed": False}
            result["variants"][name] = record
            save(arm / "result.json", record)
            save(output / "result.json", result)
            command.run([tools["ctest"], "--test-dir", build, "--show-only=json-v1"],
                        arm / "ctest-plan.json", cwd=repo)
            plan = json.loads((arm / "ctest-plan.json").read_text())
            require(len(plan["tests"]) == 15 and {t["name"] for t in plan["tests"]} == TEST_NAMES,
                    "Missing required Ledger CTest cases")
            command.run([tools["ctest"], "--test-dir", build, "--output-on-failure", "-j", "1",
                         "--output-junit", arm / "ctest.xml"], arm / "ctest.log", cwd=repo)
            ctest = verify_ctest(arm / "ctest-plan.json", arm / "ctest.xml")
            record["ctest"] = ctest
            save(arm / "result.json", record)
            save(output / "result.json", result)
            command.run([build / "ledger_differential", "--seeds", "100", "--orders", "1000000",
                         "--seed", str(DIFFERENTIAL_SEED),
                         "--output", arm / "differential.json"], arm / "differential.log", cwd=repo, timeout=2400)
            differential = verify_differential(arm / "differential.json")
            require(sha(obj) == transformed_hash and sha(archive) == archive_hash and all(sha(build / target) == digest
                    for target, digest in binaries.items()), "Validated object/executable bytes changed")
            unchanged()
            record.update(differential=differential, correctness_passed=True)
            save(arm / "result.json", record)
            save(output / "result.json", result)
            print(json.dumps({"variant": name, "loads_removed": record["loads_removed_by_custom_pass"],
                              "correctness_passed": True, "commands_compared": 100_000_000}), flush=True)
        unchanged()
        require(set(result["variants"]) == set(PIPELINES), "Incomplete fixed pipeline comparison")
        result.update(status="correctness_validated", ended_at=now(), source_plugin_implementation_unchanged=True)
        return 0
    except BaseException as error:
        result.update(status="failed", phase=phase, ended_at=now(), failure_class=type(error).__name__,
                      reason=str(error)[:1000])
        print(json.dumps({"experiment_status": "failed", "phase": phase, "reason": str(error)[:1000]}), flush=True)
        return 1
    finally:
        save(output / "result.json", result)
        files = {str(path.relative_to(output)): sha(path) for path in sorted(output.rglob("*"))
                 if path.is_file() and not path.is_relative_to(output / "_builds")
                 and path.name != "evidence-manifest.json"}
        save(output / "evidence-manifest.json", {"hash_algorithm": "sha256", "files": files,
            "excludes": ["evidence-manifest.json", "_builds/**"],
            "build_tree_policy": "Build trees are local intermediates; report binds measured object and executable hashes"})


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--repo", type=Path, required=True)
    parser.add_argument("--plugin", type=Path, required=True)
    parser.add_argument("--out", type=Path, required=True)
    parser.add_argument("--clang", default="clang++-18")
    parser.add_argument("--opt", default="opt-18")
    parser.add_argument("--cmake", default="cmake")
    parser.add_argument("--ninja", default="ninja")
    parser.add_argument("--ctest", default="ctest")
    parser.add_argument("--ar", default="llvm-ar-18")
    parser.add_argument("--jobs", type=int, default=2)
    args = parser.parse_args()
    try:
        return experiment(args)
    except Exception as error:
        print(json.dumps({"experiment_status": "refused", "failure_class": type(error).__name__,
                          "reason": str(error)[:1000]}), file=sys.stderr)
        return 1


if __name__ == "__main__":
    raise SystemExit(main())
