"""Tamper and reconstruction tests for the offline benchmark verifier."""
import copy
import csv
import importlib.util
import json
import subprocess
import sys
from pathlib import Path
import tempfile
import unittest

SCRIPT = Path(__file__).resolve().parents[2] / "tools" / "verify_results.py"
SPEC = importlib.util.spec_from_file_location("verify_results", SCRIPT)
verifier = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(verifier)


def fixture_summary():
    metrics = dict(median_commands_per_second=1000000, median_p50_ns=10,
                   median_p99_ns=10, median_p999_ns=20, median_run_max_ns=30,
                   max_ns=30, rejected_commands=0, live_orders_final=2,
                   events=2000, trades=10, event_checksum=2**64 - 1, trade_checksum=42)
    return dict(schema_version=1, commands=1000, seed=1, input=None, runs=3,
                warmup_commands=10, config=dict(min_price=1, max_price=20000, max_orders=8192),
                mix=dict(limit=600, cancel=300, market=100, replace=0),
                generated_peak_live_orders=5, generated_empty_book_cancels=0,
                generated_capacity_ioc_limits=0,
                machine=dict(system="test", cpu_model="test", logical_cpus=1,
                             affinity_cpus="0", memory="test", governor_cpu0=""),
                compiler=dict(version="test", flags="test", optimization_enabled=True, ndebug=True),
                clock=dict(steady=True, period_numerator=1, period_denominator=1000000000,
                           median_empty_pair_ns=1), method="Synthetic test fixture",
                engines={engine: copy.deepcopy(metrics) for engine in verifier.ENGINES})


def fixture_rows():
    runs, histogram = [], []
    for engine in sorted(verifier.ENGINES):
        for run in range(1, 4):
            runs.append(dict(engine=engine, run=run, commands=1000, throughput_total_ns=1000000,
                             commands_per_second=1000000, p50_ns=10, p99_ns=10, p999_ns=20,
                             max_ns=30, rejected_commands=0, events=2000, trades=10,
                             event_checksum=2**64 - 1, trade_checksum=42))
            for latency, count in ((10, 990), (20, 9), (30, 1)):
                histogram.append(dict(engine=engine, run=run, latency_ns=latency, count=count))
    return runs, histogram


def zero_latency_frequencies(summary, runs):
    """Model exact zero-duration clock samples without changing throughput work."""
    for metrics in summary["engines"].values():
        for field in ("median_p50_ns", "median_p99_ns", "median_p999_ns", "median_run_max_ns", "max_ns"):
            metrics[field] = 0
    for row in runs:
        for field in ("p50_ns", "p99_ns", "p999_ns", "max_ns"):
            row[field] = 0
    return [dict(engine=row["engine"], run=row["run"], latency_ns=0, count=summary["commands"])
            for row in runs]


class FileFixture(unittest.TestCase):
    def setUp(self):
        self.temp = tempfile.TemporaryDirectory()
        self.root = Path(self.temp.name)
        self.addCleanup(self.temp.cleanup)

    def write_summary(self, value):
        path = self.root / "summary.json"
        path.write_text(json.dumps(value), encoding="utf-8")
        return path

    def write_csv(self, name, columns, rows):
        path = self.root / name
        with path.open("w", encoding="utf-8", newline="") as stream:
            writer = csv.DictWriter(stream, fieldnames=columns)
            writer.writeheader()
            writer.writerows(rows)
        return path


class SchemaTests(FileFixture):
    def test_accepts_schema_and_preserves_uint64_checksum(self):
        result = verifier.read_summary(self.write_summary(fixture_summary()))
        self.assertEqual(result["engines"]["reference"]["event_checksum"], 2**64 - 1)

    def test_rejects_missing_and_extra_summary_fields(self):
        for extra in (False, True):
            value = fixture_summary()
            if extra:
                value["surprise"] = 1
            else:
                del value["commands"]
            with self.assertRaises(verifier.VerificationError):
                verifier.read_summary(self.write_summary(value))

    def test_rejects_boolean_count_and_unknown_engine(self):
        for key, replacement in (("commands", True), ("engines", {"unknown": {}})):
            value = fixture_summary()
            value[key] = replacement
            with self.assertRaises(verifier.VerificationError):
                verifier.read_summary(self.write_summary(value))

    def test_rejects_duplicate_json_fields_and_nonfinite_constants(self):
        for text in ('{"commands":1,"commands":2}', '{"commands":NaN}'):
            path = self.root / "summary.json"
            path.write_text(text, encoding="utf-8")
            with self.assertRaises(verifier.VerificationError):
                verifier.read_summary(path)

    def test_rejects_csv_header_and_ragged_rows(self):
        for text in ("engine,run\nreference,1\n", "engine,run,latency_ns,count\nreference,1,10\n",
                     "engine,run,latency_ns,count\nreference,1,10,1,extra\n"):
            path = self.root / "hist.csv"
            path.write_text(text, encoding="utf-8")
            with self.assertRaises(verifier.VerificationError):
                verifier.read_csv(path, verifier.HISTOGRAM_COLUMNS)


class FrequencyTests(FileFixture):
    def evidence(self, run_rows=None, hist_rows=None):
        summary = fixture_summary()
        original_runs, original_hist = fixture_rows()
        runs = verifier.read_runs(self.write_csv("runs.csv", verifier.RUN_COLUMNS,
                                                original_runs if run_rows is None else run_rows), summary)
        return verifier.read_histograms(self.write_csv("hist.csv", verifier.HISTOGRAM_COLUMNS,
                                                       original_hist if hist_rows is None else hist_rows),
                                        summary, runs)

    def test_reconstructs_nearest_rank_without_expanding_samples(self):
        result = self.evidence()
        self.assertEqual(verifier.nearest_rank(result[("reference", 1)], 999, 1000), 20)
        self.assertEqual(verifier.nearest_rank({7: 10**80, 9: 1}, 99, 100), 7)

    def test_rejects_duplicate_and_missing_runs(self):
        runs, _ = fixture_rows()
        for tampered in (runs[:-1], runs + [runs[0]]):
            with self.assertRaises(verifier.VerificationError):
                self.evidence(run_rows=tampered)

    def test_rejects_duplicate_missing_and_zero_count_bins(self):
        _, histogram = fixture_rows()
        zero = copy.deepcopy(histogram)
        zero[0]["count"] = 0
        for tampered in (histogram + [histogram[0]], histogram[:-3], zero):
            with self.assertRaises(verifier.VerificationError):
                self.evidence(hist_rows=tampered)

    def test_rejects_count_percentile_and_maximum_tampering(self):
        for field, replacement in (("count", 991), ("latency_ns", 11)):
            _, histogram = fixture_rows()
            histogram[0][field] = replacement
            with self.assertRaises(verifier.VerificationError):
                self.evidence(hist_rows=histogram)
        runs, _ = fixture_rows()
        runs[0]["max_ns"] = 31
        with self.assertRaises(verifier.VerificationError):
            self.evidence(run_rows=runs)


class MetricTests(FileFixture):
    def metrics(self, summary=None, rows=None):
        summary = fixture_summary() if summary is None else summary
        original, _ = fixture_rows()
        runs = verifier.read_runs(self.write_csv("runs.csv", verifier.RUN_COLUMNS,
                                                original if rows is None else rows), summary)
        return verifier.verify_metrics(summary, runs)

    def test_recomputes_speedup_ratios(self):
        report = self.metrics()
        self.assertEqual(report["bitmap_reference_throughput_ratio"], 1)
        self.assertEqual(report["bitmap_linear_p99_reduction_percent"], 0)

    def test_upper_median_matches_cpp_for_even_run_count(self):
        self.assertEqual(verifier.upper_median([1, 4, 3, 2]), 3)

    def test_rejects_throughput_and_summary_median_tampering(self):
        rows, _ = fixture_rows()
        rows[0]["commands_per_second"] = 1000100
        with self.assertRaises(verifier.VerificationError):
            self.metrics(rows=rows)
        value = fixture_summary()
        value["engines"]["reference"]["median_p99_ns"] = 11
        with self.assertRaises(verifier.VerificationError):
            self.metrics(summary=value)

    def test_rejects_zero_nonfinite_and_exponent_overflow_metrics(self):
        for replacement in ("0", "NaN", "Infinity", "1e999999999"):
            rows, _ = fixture_rows()
            rows[0]["commands_per_second"] = replacement
            with self.assertRaises(verifier.VerificationError):
                self.metrics(rows=rows)

    def test_allows_only_decimal_serialization_rounding(self):
        rows, _ = fixture_rows()
        rows[0]["throughput_total_ns"] = 1000003
        rows[0]["commands_per_second"] = "999997.000009"
        self.metrics(rows=rows)


class AccountingTests(FileFixture):
    def accounting(self, summary=None, rows=None):
        summary = fixture_summary() if summary is None else summary
        verifier.read_summary(self.write_summary(summary))
        original, _ = fixture_rows()
        runs = verifier.read_runs(self.write_csv("runs.csv", verifier.RUN_COLUMNS,
                                                original if rows is None else rows), summary)
        verifier.verify_accounting(summary, runs)

    def test_accepts_matching_counts_and_uint64_checksums(self):
        self.accounting()

    def test_rejects_checksum_and_event_count_tampering(self):
        for field in ("event_checksum", "trade_checksum", "events", "trades", "rejected_commands"):
            rows, _ = fixture_rows()
            rows[0][field] -= 1 if rows[0][field] else -1
            with self.assertRaises(verifier.VerificationError):
                self.accounting(rows=rows)

    def test_rejects_cross_engine_final_state_and_capacity_drift(self):
        for tamper in ("state", "capacity"):
            summary = fixture_summary()
            if tamper == "state":
                summary["engines"]["fast-bitmap"]["live_orders_final"] = 3
            else:
                summary["generated_peak_live_orders"] = 8193
            with self.assertRaises(verifier.VerificationError):
                self.accounting(summary=summary)


    def test_rejects_metadata_types_and_integer_overflow(self):
        mutations = (("machine", "logical_cpus", True), ("clock", "steady", False),
                     ("compiler", "ndebug", 1), ("config", "max_orders", 2**64),
                     ("clock", "period_denominator", 0))
        for section, field, replacement in mutations:
            summary = fixture_summary()
            summary[section][field] = replacement
            with self.assertRaises(verifier.VerificationError):
                self.accounting(summary=summary)


class IntegrationTests(FileFixture):
    def write_evidence(self, zero_latencies=False):
        summary = fixture_summary()
        runs, histogram = fixture_rows()
        if zero_latencies:
            histogram = zero_latency_frequencies(summary, runs)
        self.write_summary(summary)
        self.write_csv("runs.csv", verifier.RUN_COLUMNS, runs)
        self.write_csv("latency_histogram.csv", verifier.HISTOGRAM_COLUMNS, histogram)

    def test_exact_zero_latency_samples_preserve_counts_and_undefined_ratios(self):
        self.write_evidence(zero_latencies=True)
        report = verifier.verify_directory(self.root)
        self.assertEqual(report["verified_latency_samples"], 9000)
        self.assertIsNone(report["derived"]["bitmap_linear_p99_reduction_percent"])
        self.assertIsNone(report["derived"]["bitmap_linear_p999_reduction_percent"])
        self.assertEqual(report["derived"]["bitmap_reference_throughput_ratio"], "1")
        result = subprocess.run([sys.executable, str(SCRIPT), str(self.root)],
                                text=True, capture_output=True, check=True)
        self.assertEqual(json.loads(result.stdout), report)

    def test_zero_resolution_does_not_admit_negative_or_inconsistent_latency(self):
        for target in ("run", "histogram", "summary", "mismatch"):
            with self.subTest(target=target):
                self.write_evidence(zero_latencies=True)
                if target == "summary":
                    summary = json.loads((self.root / "summary.json").read_text())
                    summary["engines"]["reference"]["median_p50_ns"] = -1
                    self.write_summary(summary)
                else:
                    name = "latency_histogram.csv" if target == "histogram" else "runs.csv"
                    columns = verifier.HISTOGRAM_COLUMNS if target == "histogram" else verifier.RUN_COLUMNS
                    with (self.root / name).open(newline="", encoding="utf-8") as stream:
                        rows = list(csv.DictReader(stream))
                    field = "latency_ns" if target == "histogram" else "p50_ns"
                    rows[0][field] = 1 if target == "mismatch" else -1
                    self.write_csv(name, columns, rows)
                with self.assertRaises(verifier.VerificationError):
                    verifier.verify_directory(self.root)

    def test_zero_latency_still_requires_positive_throughput_and_elapsed_time(self):
        for field in ("commands_per_second", "throughput_total_ns"):
            for value in (0, -1):
                with self.subTest(field=field, value=value):
                    self.write_evidence(zero_latencies=True)
                    with (self.root / "runs.csv").open(newline="", encoding="utf-8") as stream:
                        rows = list(csv.DictReader(stream))
                    rows[0][field] = value
                    self.write_csv("runs.csv", verifier.RUN_COLUMNS, rows)
                    with self.assertRaises(verifier.VerificationError):
                        verifier.verify_directory(self.root)

    def test_complete_fixture_and_deterministic_cli_json(self):
        self.write_evidence()
        report = verifier.verify_directory(self.root)
        self.assertEqual(report["verified_latency_samples"], 9000)
        command = [sys.executable, str(SCRIPT), str(self.root)]
        first = subprocess.run(command, text=True, capture_output=True, check=True)
        second = subprocess.run(command, text=True, capture_output=True, check=True)
        self.assertEqual(first.stdout, second.stdout)
        self.assertEqual(json.loads(first.stdout), report)

    def test_cli_reports_missing_evidence_without_traceback(self):
        process = subprocess.run([sys.executable, str(SCRIPT), str(self.root)],
                                 text=True, capture_output=True)
        self.assertEqual(process.returncode, 1)
        self.assertIn("verification failed", process.stderr)
        self.assertNotIn("Traceback", process.stderr)

    def test_committed_core_evidence_is_consistent(self):
        for packet in ("core-v2", "core"):
            with self.subTest(packet=packet):
                report = verifier.verify_directory(SCRIPT.parents[1] / "bench/results" / packet)
                self.assertEqual(report["verified_engine_runs"], 15)
                self.assertEqual(report["verified_latency_samples"], 15000000)


class ReplayMetadataTests(FileFixture):
    def test_input_replay_accepts_null_generator_metadata(self):
        summary = fixture_summary()
        summary["input"] = "recorded feed.lob"
        for key in ("seed", "generated_peak_live_orders", "generated_empty_book_cancels",
                    "generated_capacity_ioc_limits"):
            summary[key] = None
        loaded = verifier.read_summary(self.write_summary(summary))
        rows, _ = fixture_rows()
        runs = verifier.read_runs(self.write_csv("runs.csv", verifier.RUN_COLUMNS, rows), loaded)
        verifier.verify_accounting(loaded, runs)

    def test_rejects_mixed_replay_and_generator_metadata(self):
        for input_path in (None, "recorded.lob"):
            summary = fixture_summary()
            summary["input"] = input_path
            if input_path is None:
                summary["seed"] = None
            with self.assertRaises(verifier.VerificationError):
                verifier.read_summary(self.write_summary(summary))

    def test_bounds_run_sets_and_configuration_before_allocating_them(self):
        for key, replacement, message in (("runs", 2**64 - 1, "odd count"),
                                           ("runs", 2, "odd count"),
                                           ("commands", 5_000_001, "command limit")):
            summary = fixture_summary()
            summary[key] = replacement
            with self.assertRaisesRegex(verifier.VerificationError, message):
                verifier.read_summary(self.write_summary(summary))
        for field, replacement in (("max_orders", 1_000_001), ("max_price", 1_000_001)):
            summary = fixture_summary()
            summary["config"][field] = replacement
            with self.assertRaises(verifier.VerificationError):
                verifier.read_summary(self.write_summary(summary))


class FixedThroughputReplayTests(FileFixture):
    """Schema 2 keeps original latency evidence and audits every throughput block."""
    def write_evidence(self, replays=3):
        summary = fixture_summary()
        summary.update(schema_version=2, throughput_replays=replays,
                       throughput_commands_per_run=summary["commands"] * replays,
                       latency_commands_per_run=summary["commands"],
                       throughput_replays_file="throughput_replays.csv")
        state = dict(submitted=2000, executed=10, cancelled=500, expired=100,
                     rejected=0, resting_quantity=1380, best_bid=9999, best_ask=10001)
        for metrics in summary["engines"].values():
            metrics.update(state)
        runs, histogram = fixture_rows()
        blocks = []
        for row in runs:
            row.update(throughput_total_ns=row["throughput_total_ns"] * replays,
                       throughput_replays=replays, throughput_commands=row["commands"] * replays)
            for replay in range(1, replays + 1):
                blocks.append(dict(engine=row["engine"], run=row["run"], replay=replay,
                                   commands=row["commands"], throughput_total_ns=1_000_000,
                                   **{key: summary["engines"][row["engine"]][key]
                                      for key in verifier.REPLAY_STATE}))
        self.write_summary(summary)
        self.write_csv("runs.csv", verifier.RUN_COLUMNS_V2, runs)
        self.write_csv("latency_histogram.csv", verifier.HISTOGRAM_COLUMNS, histogram)
        self.write_csv("throughput_replays.csv", verifier.REPLAY_COLUMNS, blocks)
        return summary, runs, blocks

    def test_accepts_declared_one_and_three_without_inflating_latency_samples(self):
        for replays in (1, 3):
            with self.subTest(replays=replays):
                self.write_evidence(replays)
                report = verifier.verify_directory(self.root)
                self.assertEqual(report["verified_throughput_replays_per_run"], replays)
                self.assertEqual(report["verified_throughput_commands_per_run"], 1000 * replays)
                self.assertEqual(report["verified_throughput_blocks"], 9 * replays)
                self.assertEqual(report["verified_latency_samples"], 9000)

    def test_zero_resolution_latency_keeps_every_throughput_block(self):
        summary, runs, _ = self.write_evidence(replays=20)
        histogram = zero_latency_frequencies(summary, runs)
        self.write_summary(summary)
        self.write_csv("runs.csv", verifier.RUN_COLUMNS_V2, runs)
        self.write_csv("latency_histogram.csv", verifier.HISTOGRAM_COLUMNS, histogram)
        report = verifier.verify_directory(self.root)
        self.assertEqual(report["verified_latency_samples"], 9000)
        self.assertEqual(report["verified_throughput_blocks"], 180)
        self.assertEqual(report["verified_throughput_commands_per_run"], 20_000)
        self.assertIsNone(report["derived"]["bitmap_linear_p99_reduction_percent"])

    def test_rejects_undeclared_or_malformed_protocol(self):
        for field, replacement in (("throughput_replays", 0), ("throughput_replays", 21),
                                   ("throughput_replays", True), ("throughput_commands_per_run", 1000),
                                   ("latency_commands_per_run", 3000),
                                   ("throughput_replays_file", "../outside.csv")):
            summary, _, _ = self.write_evidence()
            summary[field] = replacement
            with self.subTest(field=field, replacement=replacement):
                with self.assertRaises(verifier.VerificationError):
                    verifier.read_summary(self.write_summary(summary))

    def test_rejects_missing_duplicate_and_unexpected_blocks(self):
        for mutation in ("missing", "duplicate", "run", "replay", "engine"):
            _, _, blocks = self.write_evidence()
            if mutation == "missing":
                blocks.pop()
            elif mutation == "duplicate":
                blocks.append(blocks[0])
            elif mutation == "engine":
                blocks[0]["engine"] = "unknown"
            else:
                blocks[0][mutation] = 99
            self.write_csv("throughput_replays.csv", verifier.REPLAY_COLUMNS, blocks)
            with self.subTest(mutation=mutation):
                with self.assertRaises(verifier.VerificationError):
                    verifier.verify_directory(self.root)

    def test_rejects_every_block_state_field_and_invalid_timing(self):
        for field in verifier.REPLAY_STATE:
            _, _, blocks = self.write_evidence()
            blocks[1][field] += 1
            self.write_csv("throughput_replays.csv", verifier.REPLAY_COLUMNS, blocks)
            with self.subTest(field=field):
                with self.assertRaises(verifier.VerificationError):
                    verifier.verify_directory(self.root)
        for field, replacement in (("commands", 3000), ("throughput_total_ns", 0),
                                   ("throughput_total_ns", "1.5"),
                                   ("throughput_total_ns", 2**64)):
            _, _, blocks = self.write_evidence()
            blocks[0][field] = replacement
            self.write_csv("throughput_replays.csv", verifier.REPLAY_COLUMNS, blocks)
            with self.subTest(field=field, replacement=replacement):
                with self.assertRaises(verifier.VerificationError):
                    verifier.verify_directory(self.root)

    def test_rejects_fastest_block_selection_even_if_reported_rate_matches(self):
        summary, runs, _ = self.write_evidence()
        for row in runs:
            row["throughput_total_ns"] = 1_000_000
            row["commands_per_second"] = 3_000_000
        for metrics in summary["engines"].values():
            metrics["median_commands_per_second"] = 3_000_000
        self.write_summary(summary)
        self.write_csv("runs.csv", verifier.RUN_COLUMNS_V2, runs)
        with self.assertRaisesRegex(verifier.VerificationError, "sum every replay"):
            verifier.verify_directory(self.root)

    def test_uses_total_commands_over_total_time_not_mean_of_block_rates(self):
        summary, runs, blocks = self.write_evidence()
        for block in blocks:
            block["throughput_total_ns"] = block["replay"] * 1_000_000
        for row in runs:
            row["throughput_total_ns"] = 6_000_000
            row["commands_per_second"] = 500_000
        for metrics in summary["engines"].values():
            metrics["median_commands_per_second"] = 500_000
        self.write_summary(summary)
        self.write_csv("runs.csv", verifier.RUN_COLUMNS_V2, runs)
        self.write_csv("throughput_replays.csv", verifier.REPLAY_COLUMNS, blocks)
        verifier.verify_directory(self.root)
        for row in runs:
            row["commands_per_second"] = "611111.111111"
        self.write_csv("runs.csv", verifier.RUN_COLUMNS_V2, runs)
        # Keep the summary numeric; the raw run ratio must fail independently.
        with self.assertRaisesRegex(verifier.VerificationError, "inconsistent numeric value"):
            verifier.verify_directory(self.root)

    def test_rejects_cross_engine_state_and_quantity_conservation_tampering(self):
        summary, _, _ = self.write_evidence()
        summary["engines"]["fast-bitmap"]["best_ask"] += 1
        self.write_summary(summary)
        with self.assertRaises(verifier.VerificationError):
            verifier.verify_directory(self.root)
        summary, _, blocks = self.write_evidence()
        for metrics in summary["engines"].values():
            metrics["resting_quantity"] += 1
        for block in blocks:
            block["resting_quantity"] += 1
        self.write_summary(summary)
        self.write_csv("throughput_replays.csv", verifier.REPLAY_COLUMNS, blocks)
        with self.assertRaisesRegex(verifier.VerificationError, "quantity.*conservation"):
            verifier.verify_directory(self.root)

if __name__ == "__main__":
    unittest.main()
