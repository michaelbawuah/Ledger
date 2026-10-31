#!/usr/bin/env python3
"""Reject incomplete or misleading correctness evidence before reporting success."""
import copy
import importlib.util
import json
import hashlib
from pathlib import Path
import shutil
import subprocess
import sys
import tempfile
import unittest
from unittest import mock
import xml.etree.ElementTree as ET

SPEC = importlib.util.spec_from_file_location("llvm_experiment", Path(__file__).with_name("run_experiment.py"))
EXPERIMENT = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(EXPERIMENT)


class EvidenceGates(unittest.TestCase):
    def setUp(self):
        self.temporary = tempfile.TemporaryDirectory()
        self.addCleanup(self.temporary.cleanup)
        self.root = Path(self.temporary.name)

    def differential(self, **changes):
        report = {"status": "pass", "seeds": 100, "first_seed": 0,
                  "base_seed": EXPERIMENT.DIFFERENTIAL_SEED, "commands_per_seed": 1_000_000,
                  "commands_compared": 100_000_000, "linear_variant_compared": True,
                  "linear_fok_variant_compared": True}
        report.update(changes)
        path = self.root / "differential.json"
        path.write_text(json.dumps(report))
        return path

    def ctest(self, names=None, failed=None, status=None):
        names = sorted(EXPERIMENT.TEST_NAMES) if names is None else names
        plan = self.root / "plan.json"
        plan.write_text(json.dumps({"tests": [{"name": name} for name in names]}))
        suite = ET.Element("testsuite")
        for name in names:
            case = ET.SubElement(suite, "testcase", name=name, status=status or "run")
            if failed and name == names[0]:
                ET.SubElement(case, failed)
        xml = self.root / "ctest.xml"
        ET.ElementTree(suite).write(xml)
        return plan, xml

    def test_exact_100m_report_is_accepted(self):
        self.assertTrue(EXPERIMENT.verify_differential(self.differential())["passed"])

    def test_tool_resolution_preserves_clang_cxx_driver_symlink_name(self):
        target = self.root / "clang"
        target.write_text("compiler fixture")
        driver = self.root / "clang++-18"
        driver.symlink_to(target)
        with mock.patch.object(EXPERIMENT.shutil, "which", return_value=str(driver)):
            self.assertEqual(EXPERIMENT.tool_path("clang++-18"), str(driver))
            self.assertNotEqual(EXPERIMENT.tool_path("clang++-18"), str(driver.resolve()))

    def command_chain(self):
        commands = EXPERIMENT.Commands(self.root)
        for filename in EXPERIMENT.expected_command_logs():
            path = self.root / filename
            path.parent.mkdir(parents=True, exist_ok=True)
            path.write_text("complete command output: " + filename)
            shared = {"argv": ["fixture-tool", filename], "cwd": str(self.root), "log": filename,
                      "timeout_seconds": 1200, "started_at": "2026-10-30T20:00:00+00:00"}
            commands.append({**shared, "event": "started"})
            commands.append({**shared, "event": "finished", "returncode": 0,
                             "ended_at": "2026-10-30T20:00:01+00:00",
                             "log_sha256": EXPERIMENT.sha(path)})
        return commands

    def rewrite_command_chain(self, commands, events):
        commands.events = events
        commands.records.write_text("".join(json.dumps(event, sort_keys=True) + "\n" for event in events))

    def test_complete_44_event_chain_is_persisted_and_validated(self):
        commands = self.command_chain()
        self.assertEqual(len(commands.events), 44)
        self.assertEqual([json.loads(line) for line in commands.records.read_text().splitlines()], commands.events)
        report = commands.validate(EXPERIMENT.expected_command_logs())
        self.assertEqual((report["commands"], report["events"], report["complete"]), (22, 44, True))
        self.assertFalse(commands.records.with_name("commands.jsonl.tmp").exists())

    def test_command_history_rejects_missing_duplicate_or_reordered_events(self):
        commands = self.command_chain()
        original = copy.deepcopy(commands.events)
        # Match the observed functional-run gap: configure has no finish and
        # build has no start; neither gap may be inferred from later log files.
        gap = [event for event in original if not (
            (event["log"] == "early/configure.log" and event["event"] == "finished") or
            (event["log"] == "early/build.log" and event["event"] == "started"))]
        variants = [gap, original[:-1], original + original[:2],
                    original[2:4] + original[:2] + original[4:]]
        for events in variants:
            with self.subTest(events=len(events)), self.assertRaises(ValueError):
                self.rewrite_command_chain(commands, copy.deepcopy(events))
                commands.validate(EXPERIMENT.expected_command_logs())

    def test_command_history_rejects_truncation_or_disk_only_event_loss(self):
        commands = self.command_chain()
        complete = commands.records.read_text()
        for broken in (complete[:-4], "\n".join(complete.splitlines()[:-1]) + "\n"):
            commands.records.write_text(broken)
            with self.subTest(size=len(broken)), self.assertRaises(ValueError):
                commands.validate(EXPERIMENT.expected_command_logs())

    def test_command_history_rejects_mismatched_pairs_and_unsuccessful_finish(self):
        commands = self.command_chain()
        original = copy.deepcopy(commands.events)
        changes = {"argv": ["another-tool"], "cwd": "/another/cwd", "log": "another.log",
                   "timeout_seconds": 600, "started_at": "2026-10-30T19:00:00+00:00",
                   "returncode": 1, "event": "started", "ended_at": "2026-10-30T19:00:00+00:00"}
        for key, value in changes.items():
            events = copy.deepcopy(original)
            events[1][key] = value
            self.rewrite_command_chain(commands, events)
            with self.subTest(key=key), self.assertRaises(ValueError):
                commands.validate(EXPERIMENT.expected_command_logs())

    def test_command_history_rejects_changed_finished_log_bytes(self):
        commands = self.command_chain()
        (self.root / "early/configure.log").write_text("changed after command finished")
        with self.assertRaises(ValueError):
            commands.validate(EXPERIMENT.expected_command_logs())

    def test_differential_rejects_wrong_counts_seed_and_missing_oracles(self):
        for changes in ({"commands_compared": 99_999_999}, {"seeds": 99},
                        {"commands_per_seed": 100_000}, {"first_seed": 1},
                        {"base_seed": 1}, {"status": "fail"},
                        {"linear_variant_compared": False}, {"linear_fok_variant_compared": False},
                        {"commands_compared": 100_000_000.0}, {"seeds": True}):
            with self.subTest(changes=changes), self.assertRaises(ValueError):
                EXPERIMENT.verify_differential(self.differential(**changes))

    def test_exact_15_test_plan_and_junit_is_accepted(self):
        plan, xml = self.ctest()
        self.assertEqual(EXPERIMENT.verify_ctest(plan, xml)["completed"], 15)

    def test_ctest_rejects_missing_duplicate_and_unexpected_tests(self):
        names = sorted(EXPERIMENT.TEST_NAMES)
        for changed in (names[:-1], names[:-1] + [names[0]], names[:-1] + ["unexpected"]):
            with self.subTest(names=changed), self.assertRaises(ValueError):
                EXPERIMENT.verify_ctest(*self.ctest(names=changed))

    def test_junit_must_match_plan_and_contain_no_failed_or_skipped_cases(self):
        for failure in ("failure", "error", "skipped"):
            with self.subTest(failure=failure), self.assertRaises(ValueError):
                EXPERIMENT.verify_ctest(*self.ctest(failed=failure))
        with self.assertRaises(ValueError):
            EXPERIMENT.verify_ctest(*self.ctest(status="notrun"))
        plan, xml = self.ctest()
        tree = ET.parse(xml)
        tree.getroot().remove(tree.getroot()[0])
        tree.write(xml)
        with self.assertRaises(ValueError):
            EXPERIMENT.verify_ctest(plan, xml)

    def test_ir_counts_handle_quoted_names_without_counting_comments(self):
        path = self.root / "source.ll"
        path.write_text('define i32 @f(ptr %p) {\n  %"space name" = load i32, ptr %p\n'
                        '  %"name = load text" = add i32 1, 2\n  %a = load i32, ptr %p\n'
                        '  store i32 %a, ptr %p\n  ; %other = load i32, ptr %p\n  ret i32 %a\n}\n')
        self.assertEqual(EXPERIMENT.ir_counts(path), {"load_instructions": 2,
                         "store_instructions": 1, "function_definitions": 1})

    def test_custom_pass_reports_must_have_nonnegative_integer_counts(self):
        path = self.root / "opt.log"
        for count in (-1, True, 1.5):
            path.write_text(json.dumps({"pass": "ledger-load-elim", "loads_removed": count}) + "\n")
            with self.subTest(count=count), self.assertRaises(ValueError):
                EXPERIMENT.pass_reports(path)

    def test_custom_pass_reports_bind_exact_llvm_sdk_version(self):
        path = self.root / "opt.log"
        for version in (None, "18.1.8", "19.1.0"):
            path.write_text(json.dumps({"pass": "ledger-load-elim", "loads_removed": 0,
                                       "llvm_version": version}) + "\n")
            with self.subTest(version=version), self.assertRaises(ValueError):
                EXPERIMENT.pass_reports(path, "18.1.3")
        path.write_text(json.dumps({"pass": "ledger-load-elim", "loads_removed": 0,
                                   "llvm_version": "18.1.3"}) + "\n")
        self.assertEqual(len(EXPERIMENT.pass_reports(path, "18.1.3")), 1)

    @unittest.skipUnless(all(shutil.which(tool) for tool in ("clang++-18", "llvm-ar-18", "cmake", "ninja")),
                         "matched compiler/Ninja tools required")
    def test_launcher_installs_object_before_ninja_records_dependencies_and_links(self):
        source, build = self.root / "source", self.root / "build"
        source.mkdir()
        (source / "CMakeLists.txt").write_text(
            'cmake_minimum_required(VERSION 3.21)\nproject(Launcher LANGUAGES CXX)\n'
            'add_library(book STATIC book.cpp)\nadd_executable(check main.cpp)\n'
            'target_link_libraries(check PRIVATE book)\n')
        book = source / "book.cpp"
        book.write_text('int value(){return 3;}\n')
        (source / "main.cpp").write_text('#include <string>\nint value();\n'
            'int main(){std::string text="Ledger"; return value()==4 && text.size()==6 ? 0 : 1;}\n')
        override = source / "override.cpp"
        override.write_text('int value(){return 4;}\n')
        ir, record = self.root / "override.ll", self.root / "launcher.json"
        launcher = Path(__file__).with_name("book_object_launcher.py").resolve()
        clang = EXPERIMENT.tool_path("clang++-18")
        def run(argv):
            completed = subprocess.run([str(arg) for arg in argv], stdout=subprocess.PIPE,
                                       stderr=subprocess.STDOUT, text=True)
            self.assertEqual(completed.returncode, 0, completed.stdout)
            return completed.stdout
        run([clang, "-O1", "-emit-llvm", "-S", override, "-o", ir])
        args = [sys.executable, str(launcher), "--book", str(book), "--ir", str(ir),
                "--record", str(record), "--"]
        run(["cmake", "-S", source, "-B", build, "-G", "Ninja", "-DCMAKE_CXX_COMPILER=" + clang,
             "-DCMAKE_CXX_COMPILER_LAUNCHER=" + ";".join(args)])
        run(["cmake", "--build", build, "--parallel", "2"])
        document = json.loads(record.read_text())
        self.assertEqual(document["status"], "transformed")
        self.assertNotEqual(document["normal_object_sha256"], document["transformed_object_sha256"])
        self.assertEqual(EXPERIMENT.sha(Path(document["object"])), document["transformed_object_sha256"])
        archived = subprocess.check_output(["llvm-ar-18", "p", str(build / "libbook.a"), "book.cpp.o"])
        self.assertEqual(hashlib.sha256(archived).hexdigest(), document["transformed_object_sha256"])
        run([build / "check"])
        self.assertIn("no work to do", run(["cmake", "--build", build]).lower())


if __name__ == "__main__":
    unittest.main()
