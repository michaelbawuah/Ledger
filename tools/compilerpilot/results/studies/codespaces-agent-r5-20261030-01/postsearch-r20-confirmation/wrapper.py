#!/usr/bin/env python3
"""One separately declared R20 precision confirmation after an ineligible R5 attempt.

Calls the frozen project's confirmer; does not resume/promote the original study,
modify its source/evidence, build new candidates, or call a model/API.
"""
import argparse
import hashlib
import json
import math
import os
from pathlib import Path
import statistics
import subprocess
import sys
from datetime import datetime, timezone


def now():
    return datetime.now(timezone.utc).isoformat()


def read(path):
    return json.loads(path.read_text())


def sha(path):
    result = hashlib.sha256()
    with path.open('rb') as stream:
        for block in iter(lambda: stream.read(1024 * 1024), b''):
            result.update(block)
    return result.hexdigest()


def write_new(path, value):
    with path.open('x', encoding='utf-8') as stream:
        json.dump(value, stream, sort_keys=True, indent=2, allow_nan=False)
        stream.write(chr(10))
        stream.flush()
        os.fsync(stream.fileno())


def positive(value):
    return type(value) in (int, float) and math.isfinite(value) and value > 0


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--ledger', type=Path, required=True)
    parser.add_argument('--study-id', required=True)
    parser.add_argument('--expected-source', required=True)
    args = parser.parse_args()
    ledger = args.ledger.resolve()
    project = ledger / 'tools/compilerpilot'
    study_dir = project / 'results/studies' / args.study_id
    original_path = study_dir / 'study.json'
    original = read(original_path)
    if (study_dir / '.study.lock').exists() or original.get('status') != 'failed':
        raise ValueError('Original search must be inactive and remain explicitly failed')
    if original.get('study_id') != args.study_id or original.get('source', {}).get('ledger_commit') != args.expected_source:
        raise ValueError('Unexpected original study or source')
    protocol = original['protocol']
    if (protocol.get('scope') != 'agent-speedup' or protocol.get('commands') != 5000000
            or protocol.get('throughput_replays') != 5 or protocol.get('cpu') != 0
            or protocol.get('budget') != 40):
        raise ValueError('Expected the declared focused R5, CPU0, five-million-input search')
    if any(item.get('status') == 'running' for item in original.get('phases', {}).values()):
        raise ValueError('Original phase is still active')
    if 'E5' in original.get('phases', {}) or (study_dir / 'confirmation.json').exists():
        raise ValueError('Original E5 must not have run; never repeat confirmation')
    predecessor = study_dir / 'postsearch-confirmation'
    required_predecessor = ['protocol.json', 'plan.json', 'confirmation-trace.jsonl', 'confirmation.json', 'status.json', 'stop-decision.json']
    if (predecessor / '.confirmation.lock').exists() or not all((predecessor / name).is_file() for name in required_predecessor):
        raise ValueError('R5 predecessor must be stopped with all failure/decision evidence retained')
    if read(predecessor / 'status.json').get('status') == 'speedup_confirmed':
        raise ValueError('R20 cannot replace an already confirmed R5 result')
    output = study_dir / 'postsearch-r20-confirmation'
    if output.exists():
        raise ValueError('This independent confirmation was already declared; never repeat it')

    # No provider/repository credential is needed by this offline confirmation.
    for name in ('OPENAI_API_KEY', 'ANTHROPIC_API_KEY', 'GH_TOKEN', 'GITHUB_TOKEN', 'GH_ENTERPRISE_TOKEN'):
        os.environ.pop(name, None)
    sys.path.insert(0, str(project))
    from compilerpilot.study import StudyConfig, StudyRunner, SOURCE_KEYS
    from compilerpilot.build import BuildResult
    from compilerpilot.space import Candidate
    from compilerpilot.protocol import measurement_replays
    from compilerpilot.bench import BenchmarkConfig, BenchmarkRunner
    from compilerpilot.confirm import confirm_candidates

    config = StudyConfig(**protocol, phase='baseline')
    guard = StudyRunner(config)
    guard.manifest = original
    suffix = 'E3-agent-0'
    baseline_doc = guard._baseline('E1')
    search_baseline = guard._baseline(suffix)
    baseline = BuildResult.from_dict(baseline_doc['build'])
    history_path = study_dir / 'runs' / (args.study_id + '-' + suffix) / 'history.json'
    history = guard._history(suffix)
    hashes = [Candidate.from_dict(row['candidate']).hash() for row in history]
    if len(hashes) != len(set(hashes)):
        raise ValueError('Recorded exploratory history contains duplicate candidates')
    trace_path = history_path.parent / 'trace.jsonl'
    source_trace = [json.loads(line) for line in trace_path.read_text().splitlines() if line.strip()]
    build_events = [entry for entry in source_trace if entry.get('event') == 'build']
    expected_input = guard._verify_inputs()['files']['eval.lob']['sha256']
    grouped = {}
    for row in history:
        base, spread = row.get('baseline_throughput'), row.get('baseline_spread')
        if (row.get('correctness') is True and row.get('measurement_valid') is True
                and positive(row.get('throughput')) and positive(base)
                and type(spread) in (int, float) and math.isfinite(spread) and spread >= 0):
            if (measurement_replays(row) != 5 or row.get('provenance', {}).get('input_sha256') != expected_input
                    or row.get('provenance', {}).get('cpu') != 0
                    or any(row.get('build_provenance', {}).get(key) != original['source'].get(key)
                           for key in SOURCE_KEYS)):
                raise ValueError('Exploratory nomination has incompatible protocol/source/input')
            key = Candidate.from_dict(row['candidate']).hash()
            if row.get('build_id') != key:
                raise ValueError('Candidate identity differs from its typed choices')
            grouped.setdefault(key, []).append({**row, '_ratio': row['throughput'] / base, '_noise': spread / base})
    eligible = [key for key, rows in grouped.items()
                if any(row.get('significant') is True for row in rows)
                and statistics.median(row['_ratio'] for row in rows) > 1 + 3 * max(row['_noise'] for row in rows)]
    ranked = sorted(eligible, key=lambda key: (-statistics.median(row['_ratio'] for row in grouped[key]), key))
    choices, candidates = [], []
    build_root = (project / 'builds').resolve()
    for key in ranked[:3]:
        representative = min(grouped[key], key=lambda row: row['build_index'])
        build_path = Path(search_baseline['build']['build_dir']).parent / key / 'build.json'
        if not build_path.resolve().is_relative_to(build_root):
            raise ValueError('Candidate build is outside this study build storage')
        build = BuildResult.from_dict(read(build_path))
        if (not build.success or build.candidate != representative['candidate']
                or Path(build.build_dir).resolve() != build_path.parent.resolve()
                or any(build.provenance.get(name) != baseline.provenance.get(name) for name in SOURCE_KEYS)):
            raise ValueError('Candidate build/source differs from the observed exploratory trial')
        candidates.append(build)
        choices.append({'build_id': key, 'candidate': build.candidate, 'flags': build.flags,
                        'build_file': str(build_path), 'build_file_sha256': sha(build_path),
                        'median_recorded_speedup': statistics.median(row['_ratio'] for row in grouped[key]),
                        'max_baseline_relative_spread': max(row['_noise'] for row in grouped[key]),
                        'valid_observations': len(grouped[key]), 'build_index': representative['build_index']})
    for build in [baseline, *candidates]:
        directory = Path(build.build_dir)
        if any(directory.glob('confirm-r20-*')):
            raise ValueError('R20 confirmation output already exists; never repeat or overwrite it')
        if 'throughput_replays' in build.provenance and build.provenance['throughput_replays'] != 20:
            raise ValueError('Build carries an incompatible explicit replay declaration')
        if build is not baseline and (directory / 'validation').exists():
            raise ValueError('A nominated candidate already has validation output; do not overwrite it')
        if sha(directory / 'ledger_bench') != build.provenance.get('binary_sha256'):
            raise ValueError('A selected executable no longer matches its build provenance')
    immutable = [original_path, history_path,
        study_dir / 'runs' / (args.study_id + '-E1') / 'baseline.json',
        history_path.parent / 'baseline.json', config.data / 'manifest.json', trace_path]
    immutable += [predecessor / name for name in required_predecessor]
    old_plan = read(predecessor / 'plan.json')
    if old_plan.get('baseline') != baseline.build_id or [item['build_id'] for item in old_plan.get('candidates', [])] != [item['build_id'] for item in choices]:
        raise ValueError('R20 nominations must be exactly the same predeclared top three as R5')
    old_observations = [json.loads(line)['observation'] for line in (predecessor / 'confirmation-trace.jsonl').read_text().splitlines() if line.strip()]
    old_baseline_cvs = [item['cv'] for item in old_observations if item.get('build_id') == baseline.build_id and type(item.get('cv')) in (int, float)]
    if not old_baseline_cvs or max(old_baseline_cvs) < .02:
        raise ValueError('R20 precision change requires recorded R5 baseline variability failing the unchanged 2% gate')
    immutable_hashes = {str(path): sha(path) for path in immutable}
    module_hashes = {name: sha(project / 'compilerpilot' / name)
                     for name in ('study.py', 'confirm.py', 'bench.py', 'build.py', 'space.py', 'protocol.py')}
    binary_hashes = {str(Path(build.build_dir) / name): sha(Path(build.build_dir) / name)
                     for build in [baseline, *candidates] for name in ('ledger_bench', 'ledger_differential')}

    def verify_context():
        guard._verify_context()
        guard._verify_inputs()
        dirty = subprocess.check_output(['git', '-C', str(ledger), 'status', '--porcelain', '--untracked-files=no', '--',
            'CMakeLists.txt', 'src', 'include', 'bench', 'tests', 'tools/compilerpilot/compilerpilot',
            'tools/compilerpilot/scripts'], text=True)
        if dirty.strip():
            raise RuntimeError('Tracked source or harness changed')
        if any(sha(Path(path)) != digest for path, digest in immutable_hashes.items()):
            raise RuntimeError('Original failed study/nomination evidence changed')
        if any(sha(project / 'compilerpilot' / name) != digest for name, digest in module_hashes.items()):
            raise RuntimeError('Frozen confirmation implementation changed')

    verify_context()
    output.mkdir()
    lock = output / '.confirmation.lock'
    with lock.open('x') as stream:
        stream.write(str(os.getpid()))
    started = now()
    declared = {'schema_version': 1, 'kind': 'independent_postsearch_precision_confirmation',
        'declared_at': started, 'original_study_id': args.study_id, 'original_scope': protocol['scope'],
        'original_study_status': original['status'], 'original_study_completed': False,
        'original_requested_build_budget': protocol['budget'], 'recorded_build_events': len(build_events),
        'recorded_history_rows': len(history), 'recorded_correct_measurements': sum(row.get('correctness') is True for row in history),
        'source': original['source'], 'host': original['host'], 'evaluation_input_sha256': expected_input,
        'commands': 5000000, 'throughput_replays': 20, 'latency_replays': 1, 'cpu': 0,
        'throughput_commands_per_reported_run': 100000000, 'reported_runs_per_observation': 5,
        'benchmark_timeout_seconds': 600, 'physical_output_label_prefix': 'confirm-r20-',
        'logical_to_physical_label': 'confirm-XX-ID -> confirm-r20-XX-ID',
        'precision_revision': {'previous_replays': 5, 'new_replays': 20,
            'previous_observations_retained': len(old_observations), 'previous_max_baseline_cv': max(old_baseline_cvs),
            'reason': 'R5 baseline variability already exceeds the unchanged 2% maximum-run-CV gate; preserve it and make one predeclared larger-work-unit attempt',
            'maximum_precision_attempt': True, 'further_automatic_retries': 0},
        'rounds': 10, 'full_validation': True, 'validation_seeds': 100, 'validation_commands_per_seed': 1000000,
        'required_ctest_cases': 15, 'model_calls': 0, 'original_evidence_sha256': immutable_hashes,
        'frozen_module_sha256': module_hashes, 'binary_sha256_before_confirmation': binary_hashes,
        'wrapper_sha256': sha(Path(__file__)),
        'claim_boundary': 'The original fixed-budget agent search remains failed/incomplete. '
            'Its observed candidates only nominate builds for this newly declared independent confirmation. '
            'The prior R5 confirmation is retained as ineligible/interrupted. This is one new R20 precision protocol with the same nominations and unchanged gates. '
            'A confirmed result supports workload-specific compiler speedup, not agent-versus-search ranking.'}
    plan = {'schema_version': 1, 'baseline': baseline.build_id, 'baseline_build': baseline.to_dict(),
        'candidates': choices, 'eligible_candidate_count': len(ranked), 'eligible_ranked_build_ids': ranked,
        'selection': 'Same frozen StudyRunner formula: top three distinct candidates by median of all valid measured '
            'ratios exceeding three times maximum relative baseline noise; ties by candidate hash; '
            'earliest recorded build representative. The failed source phase supplies exploratory nominations only.',
        'source_history_sha256': sha(history_path), 'rounds': 10, 'full_validation': True,
        'throughput_replays': 20, 'same_nominations_as_R5': True}
    write_new(output / 'protocol.json', declared)
    write_new(output / 'plan.json', plan)
    trace = output / 'confirmation-trace.jsonl'
    trace.touch(exist_ok=False)
    observations = 0
    result = None
    try:
        def record(observation):
            nonlocal observations
            with trace.open('a') as stream:
                stream.write(json.dumps({'time': now(), 'observation': observation, 'physical_output_label': observation.get('label', '').replace('confirm-', 'confirm-r20-', 1)}, allow_nan=False) + chr(10))
                stream.flush()
                os.fsync(stream.fileno())
            observations += 1
            if measurement_replays(observation) != 20:
                raise RuntimeError('Confirmation observation changed replay protocol')
            verify_context()
            print(json.dumps({'postsearch_progress': 'observation', 'round': observation.get('round'),
                              'build_id': observation.get('build_id'), 'observations_recorded': observations}), flush=True)
        if candidates:
            inner = BenchmarkRunner(BenchmarkConfig(config.data / 'eval.lob', cpu=0, throughput_replays=20, timeout=600))
            class PrecisionRunner:
                def __init__(self, runner):
                    self.inner, self.config = runner, runner.config
                def run(self, build, *, label):
                    physical = label.replace('confirm-', 'confirm-r20-', 1)
                    return self.inner.run(build, label=physical)
                def full_validate(self, build, **kwargs):
                    return self.inner.full_validate(build, **kwargs)
            result = confirm_candidates(PrecisionRunner(inner), baseline, candidates, rounds=10, full_validation=True, callback=record)
        else:
            result = {'status': 'no_provisional_improvement', 'recommendation': None, 'winner': None,
                      'reason': 'No exploratory nomination met the predeclared threshold', 'throughput_replays': 20}
        verify_context()
        if any(sha(Path(path)) != digest for path, digest in binary_hashes.items()):
            raise RuntimeError('A selected executable changed during confirmation')
        if measurement_replays(result) != 20:
            raise RuntimeError('Returned confirmation changed replay protocol')
        write_new(output / 'confirmation.json', result)
        confirmed = result.get('status') == 'confirmed'
        status = {'schema_version': 1, 'kind': declared['kind'], 'started_at': started, 'ended_at': now(),
            'status': 'speedup_confirmed' if confirmed else result.get('status'),
            'recommendation': result.get('recommendation') if confirmed else None,
            'original_study_status': 'failed', 'original_study_sha256_unchanged': sha(original_path) == immutable_hashes[str(original_path)],
            'source_and_host_unchanged': True, 'input_unchanged': True, 'binary_hashes_unchanged': True,
            'observations_recorded': observations, 'model_calls': 0, 'claim_boundary': declared['claim_boundary']}
        write_new(output / 'status.json', status)
        print(json.dumps({'postsearch_confirmation': status['status'], 'recommendation': status['recommendation'],
                          'observations_recorded': observations, 'original_study_status': 'failed', 'model_calls': 0}), flush=True)
        return 0 if confirmed or result.get('status') in ('no_significant_improvement', 'no_provisional_improvement') else 1
    except BaseException as error:
        invalid = {'status': 'confirmation_interrupted_or_invalidated', 'recommendation': None, 'winner': None,
                   'failure_class': type(error).__name__, 'unvalidated_result': result, 'throughput_replays': 20}
        if not (output / 'confirmation.json').exists():
            write_new(output / 'confirmation.json', invalid)
        write_new(output / 'status.json', {'status': invalid['status'], 'started_at': started, 'ended_at': now(),
            'recommendation': None, 'original_study_status': 'failed', 'failure_class': type(error).__name__,
            'observations_recorded': observations, 'model_calls': 0})
        print(json.dumps({'postsearch_confirmation': invalid['status'], 'failure_class': type(error).__name__}), file=sys.stderr)
        return 1
    finally:
        lock.unlink(missing_ok=True)


if __name__ == '__main__':
    try:
        raise SystemExit(main())
    except Exception as error:
        print(json.dumps({'postsearch_confirmation': 'preflight_refused', 'failure_class': type(error).__name__}), file=sys.stderr)
        raise SystemExit(1)
