"""Real CLI evidence for fixed, fresh-book throughput replay groups.

These are tiny correctness checks, not performance qualifications. CTest passes
LEDGER_BINARY_DIR; offline tooling discovery skips them when no binary exists.
"""
import csv
import json
import math
import os
from pathlib import Path
import statistics
import subprocess
import sys
import tempfile
import unittest


ROOT = Path(__file__).resolve().parents[2]
BINARY_DIR = Path(os.environ.get("LEDGER_BINARY_DIR", ROOT / "build" / "release"))
BINARY = BINARY_DIR / ("ledger_bench.exe" if os.name == "nt" else "ledger_bench")
ENGINES = ("reference", "fast-bitmap", "fast-linear")
STATE = ("event_checksum", "trade_checksum", "rejected_commands", "events", "submitted", "executed",
         "cancelled", "expired", "rejected", "trades", "live_orders_final", "resting_quantity",
         "best_bid", "best_ask")


def read_csv(path):
    with path.open(newline="", encoding="utf-8") as stream:
        return list(csv.DictReader(stream))


def percentile(histogram, numerator, denominator, count):
    rank = (count * numerator + denominator - 1) // denominator
    cumulative = 0
    for row in histogram:
        cumulative += int(row["count"])
        if cumulative >= rank:
            return int(row["latency_ns"])
    raise AssertionError("histogram has too few observations")


class BuiltBenchmarkReplayTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        if not BINARY.is_file():
            raise unittest.SkipTest("build ledger_bench and set LEDGER_BINARY_DIR for benchmark replay tests")

    def invoke(self, *arguments):
        return subprocess.run([str(BINARY), *map(str, arguments)], capture_output=True,
                              text=True, timeout=30)

    def validate(self, root, *, commands, runs, replays):
        summary = json.loads((root / "summary.json").read_text(encoding="utf-8"))
        self.assertEqual(summary["schema_version"], 2)
        self.assertEqual(summary["commands"], commands)
        self.assertEqual(summary["runs"], runs)
        self.assertEqual(summary["throughput_replays"], replays)
        self.assertEqual(summary["throughput_commands_per_run"], commands * replays)
        self.assertEqual(summary["latency_commands_per_run"], commands)
        self.assertEqual(summary["throughput_replays_file"], "throughput_replays.csv")
        self.assertEqual(set(summary["engines"]), set(ENGINES))
        rows = read_csv(root / "runs.csv")
        blocks = read_csv(root / "throughput_replays.csv")
        histograms = read_csv(root / "latency_histogram.csv")
        self.assertEqual(len(rows), len(ENGINES) * runs)
        self.assertEqual(len(blocks), len(ENGINES) * runs * replays)
        identities = {(row["engine"], int(row["run"]), int(row["replay"])) for row in blocks}
        self.assertEqual(identities, {(engine, run, replay) for engine in ENGINES
                                      for run in range(1, runs + 1) for replay in range(1, replays + 1)})
        expected = summary["engines"]["reference"]
        for engine in ENGINES:
            self.assertEqual({key: summary["engines"][engine][key] for key in STATE},
                             {key: expected[key] for key in STATE})
        for block in blocks:
            self.assertEqual(int(block["commands"]), commands)
            self.assertGreater(int(block["throughput_total_ns"]), 0)
            self.assertEqual({key: int(block[key]) for key in STATE},
                             {key: expected[key] for key in STATE})
        for row in rows:
            own = [block for block in blocks if (block["engine"], block["run"]) == (row["engine"], row["run"])]
            self.assertEqual(len(own), replays)
            total_ns = sum(int(block["throughput_total_ns"]) for block in own)
            self.assertEqual(int(row["throughput_total_ns"]), total_ns)
            self.assertEqual(int(row["commands"]), commands)
            self.assertEqual(int(row["throughput_commands"]), commands * replays)
            self.assertEqual(int(row["throughput_replays"]), replays)
            self.assertTrue(math.isclose(float(row["commands_per_second"]),
                                         commands * replays * 1e9 / total_ns, rel_tol=1e-10))
            histogram = [item for item in histograms if (item["engine"], item["run"]) == (row["engine"], row["run"])]
            # Repeating throughput does not inflate latency counts or change quantile semantics.
            self.assertEqual(sum(int(item["count"]) for item in histogram), commands)
            self.assertEqual([int(item["latency_ns"]) for item in histogram],
                             sorted({int(item["latency_ns"]) for item in histogram}))
            for numerator, denominator, column in ((50, 100, "p50_ns"), (99, 100, "p99_ns"),
                                                    (999, 1000, "p999_ns")):
                self.assertEqual(int(row[column]), percentile(histogram, numerator, denominator, commands))
        for engine in ENGINES:
            own = [row for row in rows if row["engine"] == engine]
            for column, reported in (("commands_per_second", "median_commands_per_second"),
                                     ("p50_ns", "median_p50_ns"), ("p99_ns", "median_p99_ns")):
                self.assertEqual(statistics.median(float(row[column]) for row in own),
                                 summary["engines"][engine][reported])
        audited = subprocess.run([sys.executable, str(ROOT / "tools/verify_results.py"), str(root)],
                                 capture_output=True, text=True, timeout=30)
        self.assertEqual(audited.returncode, 0, audited.stderr)
        self.assertEqual(json.loads(audited.stdout)["verified_throughput_blocks"], len(blocks))
        return summary

    def test_default_one_and_explicit_three_keep_single_input_correctness_and_latency(self):
        with tempfile.TemporaryDirectory(prefix="ledger replay correctness ") as temporary:
            root = Path(temporary)
            outputs = []
            for replays in (1, 3):
                output = root / str(replays)
                args = ["--commands", 2000, "--seed", 7, "--runs", 3, "--warmup", 100, "--outdir", output]
                if replays != 1:
                    args += ["--throughput-replays", replays]
                result = self.invoke(*args)
                self.assertEqual(result.returncode, 0, result.stderr)
                outputs.append(self.validate(output, commands=2000, runs=3, replays=replays))
            self.assertEqual({key: outputs[0]["engines"]["reference"][key] for key in STATE},
                             {key: outputs[1]["engines"]["reference"][key] for key in STATE})

    def test_explicit_upper_bound_keeps_every_tiny_replay(self):
        with tempfile.TemporaryDirectory() as temporary:
            output = Path(temporary)
            # Keep each replay above coarse clock resolution while checking R=20.
            result = self.invoke("--commands", 2000, "--runs", 1, "--throughput-replays", 20, "--outdir", output)
            self.assertEqual(result.returncode, 0, result.stderr)
            self.validate(output, commands=2000, runs=1, replays=20)

    def test_invalid_replay_count_rejected_before_writing_evidence(self):
        invalid = (("--throughput-replays", "0"), ("--throughput-replays", "21"),
                   ("--throughput-replays", "-1"), ("--throughput-replays", "1.5"),
                   ("--throughput-replays", "nan"), ("--throughput-replays", "4294967296"),
                   ("--throughput-replays", "1", "--throughput-replays", "3"),
                   ("--throughput-replays",))
        with tempfile.TemporaryDirectory() as temporary:
            for index, args in enumerate(invalid):
                output = Path(temporary) / str(index)
                with self.subTest(arguments=args):
                    result = self.invoke("--outdir", output, *args)
                    self.assertEqual(result.returncode, 1)
                    self.assertIn("bench_replay:", result.stderr)
                    self.assertFalse(output.exists())


if __name__ == "__main__":
    unittest.main()
