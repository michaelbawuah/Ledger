"""Independent reconstruction of fixed-work throughput and unchanged latency evidence."""
import copy
import statistics

import pytest

from compilerpilot.bench import BenchmarkConfig, parse_benchmark
from test_build_bench import evidence as legacy_evidence


def evidence(replays=3, runs=3):
    state = {"event_checksum": 123, "trade_checksum": 456, "events": 10, "trades": 2,
             "rejected_commands": 0, "live_orders_final": 1, "submitted": 1000,
             "executed": 100, "cancelled": 400, "expired": 0, "rejected": 0,
             "resting_quantity": 400, "best_bid": 10, "best_ask": 12}
    summary = {"schema_version": 2, "commands": 20, "runs": runs,
               "throughput_replays": replays, "throughput_commands_per_run": 20 * replays,
               "latency_commands_per_run": 20, "throughput_replays_file": "throughput_replays.csv",
               "engines": {}}
    rows, blocks, histograms = [], [], []
    for engine in ("reference", "fast-bitmap", "fast-linear"):
        rates = []
        for run in range(1, runs + 1):
            durations = [90 + run * 10 + replay for replay in range(1, replays + 1)]
            elapsed = sum(durations)
            rate = 20 * replays * 1e9 / elapsed
            rates.append(rate)
            rows.append({"engine": engine, "run": str(run), "commands": "20",
                         "throughput_total_ns": str(elapsed), "commands_per_second": str(rate),
                         "throughput_replays": str(replays), "throughput_commands": str(20 * replays),
                         "p50_ns": "20", "p99_ns": "30", "p999_ns": "30", "max_ns": "30",
                         **{key: str(value) for key, value in state.items()
                            if key in ("event_checksum", "trade_checksum", "events", "trades", "rejected_commands")}})
            for replay, duration in enumerate(durations, 1):
                blocks.append({"engine": engine, "run": str(run), "replay": str(replay),
                               "commands": "20", "throughput_total_ns": str(duration),
                               **{key: str(value) for key, value in state.items()}})
            histograms.extend([{"engine": engine, "run": str(run), "latency_ns": str(latency), "count": "10"}
                               for latency in (20, 30)])
        summary["engines"][engine] = {**state, "median_commands_per_second": statistics.median(rates),
                                       "median_p50_ns": 20, "median_p99_ns": 30,
                                       "median_p999_ns": 30, "median_run_max_ns": 30, "max_ns": 30}
    return summary, rows, blocks, histograms


def parse(record, expected_replays=3):
    summary, rows, blocks, histograms = record
    return parse_benchmark(summary, rows, expected_runs=3, expected_replays=expected_replays,
                           replay_rows=blocks, histogram_rows=histograms)


@pytest.mark.parametrize("replays", [1, 3, 20])
def test_all_replay_times_and_commands_reconstruct_the_reported_work(replays):
    record = evidence(replays)
    parsed = parse(record, expected_replays=replays)
    assert parsed["throughput_replays"] == replays
    assert parsed["throughput_commands_per_run"] == 20 * replays
    assert parsed["latency_commands_per_run"] == 20
    assert len(parsed["throughput_replay_durations_ns"]) == 3
    assert all(len(group) == replays for group in parsed["throughput_replay_durations_ns"])


@pytest.mark.parametrize("tamper", ["declared_replays", "effective_commands", "latency_commands", "missing_block",
                                   "duplicate_block", "wrong_block_commands", "block_checksum", "block_state",
                                   "block_time", "total_time", "run_replays", "run_effective_commands",
                                   "computed_rate", "histogram_count", "latency_quantile", "extra_engine",
                                   "wrong_replay_file", "boolean_count", "missing_state"])
def test_schema_two_rejects_inconsistent_evidence_without_trusting_success(tamper):
    summary, rows, blocks, histograms = record = evidence()
    if tamper == "declared_replays":
        summary["throughput_replays"] = 2
    elif tamper == "effective_commands":
        summary["throughput_commands_per_run"] -= 1
    elif tamper == "latency_commands":
        summary["latency_commands_per_run"] *= 3
    elif tamper == "missing_block":
        blocks.pop()
    elif tamper == "duplicate_block":
        blocks.append(copy.deepcopy(blocks[-1]))
    elif tamper == "wrong_block_commands":
        blocks[0]["commands"] = "19"
    elif tamper == "block_checksum":
        blocks[10]["event_checksum"] = "999"
    elif tamper == "block_state":
        blocks[10]["resting_quantity"] = "999"
    elif tamper == "block_time":
        blocks[0]["throughput_total_ns"] = "1"
    elif tamper == "total_time":
        rows[0]["throughput_total_ns"] = "1"
    elif tamper == "run_replays":
        rows[0]["throughput_replays"] = "2"
    elif tamper == "run_effective_commands":
        rows[0]["throughput_commands"] = "20"
    elif tamper == "computed_rate":
        # Keep the engine's median untouched: independently catch a forged non-median row.
        rows[0]["commands_per_second"] = str(float(rows[0]["commands_per_second"]) * 1.01)
    elif tamper == "histogram_count":
        histograms[0]["count"] = "11"
    elif tamper == "latency_quantile":
        rows[0]["p999_ns"] = "999"
    elif tamper == "extra_engine":
        blocks[0]["engine"] = "unknown"
    elif tamper == "wrong_replay_file":
        summary["throughput_replays_file"] = "../other.csv"
    elif tamper == "boolean_count":
        summary["throughput_commands_per_run"] = True
    else:
        del blocks[0]["submitted"]
    with pytest.raises(ValueError):
        parse(record)


def test_requested_work_unit_cannot_be_changed_by_the_binary():
    with pytest.raises(ValueError, match="protocol"):
        parse(evidence(1), expected_replays=3)


def test_schema_two_requires_both_raw_evidence_files():
    summary, rows, blocks, histograms = evidence()
    with pytest.raises(ValueError, match="Per-replay"):
        parse_benchmark(summary, rows, expected_runs=3, expected_replays=3, histogram_rows=histograms)
    with pytest.raises(ValueError, match="histogram"):
        parse_benchmark(summary, rows, expected_runs=3, expected_replays=3, replay_rows=blocks)


def test_historical_schema_one_stays_compatible_only_for_one_replay():
    summary, rows = legacy_evidence()
    parsed = parse_benchmark(summary, rows, expected_runs=3)
    assert parsed["throughput_replays"] == 1 and parsed["throughput_commands_per_run"] == 20
    with pytest.raises(ValueError, match="one throughput replay"):
        parse_benchmark(summary, rows, expected_runs=3, expected_replays=3)


@pytest.mark.parametrize("replays", [0, 21, True, "3", 3.5])
def test_invalid_requested_work_unit_rejected_before_benchmark(tmp_path, replays):
    with pytest.raises(ValueError):
        BenchmarkConfig(tmp_path / "input.lob", throughput_replays=replays)
