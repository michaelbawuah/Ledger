#!/usr/bin/env python3
"""Exercise the actual LLVM plugin, IR verifier, FileCheck and execution oracle."""
from __future__ import annotations

import argparse
import json
from pathlib import Path
import re
import subprocess
import tempfile


def execute(argv: list[str], *, input_text: str | None = None) -> subprocess.CompletedProcess[str]:
    result = subprocess.run(argv, input=input_text, capture_output=True, text=True, timeout=45)
    if result.returncode:
        raise AssertionError(f"Command failed ({result.returncode}): {argv!r}\n{result.stdout}\n{result.stderr}")
    return result


def reports(stderr: str) -> list[dict]:
    records = []
    for line in stderr.splitlines():
        if not line.startswith('{'):
            continue
        item = json.loads(line)
        if item.get('pass') == 'ledger-load-elim':
            records.append(item)
    return records


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--plugin', type=Path, required=True)
    parser.add_argument('--opt', required=True)
    parser.add_argument('--lli', required=True)
    parser.add_argument('--filecheck', required=True)
    args = parser.parse_args()
    versions = {}
    for tool in (args.opt, args.lli, args.filecheck):
        version = execute([tool, '--version']).stdout
        match = re.search(r'\bversion (18\.\d+\.\d+)\b', version)
        if not match:
            raise AssertionError(f'Expected LLVM 18 tool: {tool}: {version}')
        versions[tool] = match.group(1)
    if len(set(versions.values())) != 1:
        raise AssertionError(f'Exact LLVM tool versions differ: {versions}')
    if not args.plugin.is_file():
        raise AssertionError('Missing built plugin')

    fixtures = Path(__file__).resolve().parent
    base = [args.opt, '-load-pass-plugin', str(args.plugin), '-verify-each']
    with tempfile.TemporaryDirectory(prefix='ledger-llvm-pass-tests-') as folder:
        temp = Path(folder)
        transformed = temp / 'transformed.ll'
        result = execute([*base, '-passes=function(ledger-load-elim)', '-S',
                          str(fixtures / 'load_elim.ll'), '-o', str(transformed)])
        text = transformed.read_text()
        execute([args.filecheck, str(fixtures / 'load_elim.ll')], input_text=text)
        records = reports(result.stderr)
        if any(item.get('llvm_version') != versions[args.opt] for item in records):
            raise AssertionError('Plugin SDK version differs from the executing opt version')
        by_name = {item['function']: item for item in records}
        functions = set(re.findall(r'^define .*?@([^ (]+)\(', (fixtures / 'load_elim.ll').read_text(), re.M))
        if set(by_name) != functions or len(records) != len(functions):
            raise AssertionError('Missing or duplicate per-function transformation reports')
        expected = {'adjacent': 1, 'three_reads': 2, 'noalias_store': 1}
        for name in functions:
            if by_name[name]['loads_removed'] != expected.get(name, 0):
                raise AssertionError(f'Wrong rewrite count for {name}: {by_name[name]}')
        if sum(item['loads_removed'] for item in records) != 4:
            raise AssertionError('The plugin did not perform exactly the four intended rewrites')

        malformed = subprocess.run(
            [*base, '-passes=function(ledger-load-elim(instcombine))',
             '-disable-output', str(fixtures / 'load_elim.ll')],
            capture_output=True, text=True, timeout=45)
        if malformed.returncode == 0:
            raise AssertionError('Unsupported nested pipeline was silently accepted')

        # Force cached MemorySSA construction before the transformation, then
        # verification after it. This catches stale analysis preservation as
        # well as malformed IR. A second application must not find more work.
        repeated = temp / 'repeated.ll'
        again = execute([*base,
                         '-passes=function(require<memoryssa>,ledger-load-elim,verify<memoryssa>,ledger-load-elim,verify<memoryssa>)',
                         '-S', str(fixtures / 'load_elim.ll'), '-o', str(repeated)])
        again_records = reports(again.stderr)
        for name in functions:
            passes = [item for item in again_records if item['function'] == name]
            if len(passes) != 2 or passes[1]['loads_removed'] != 0:
                raise AssertionError(f'Pass is not idempotent for {name}: {passes}')
        execute([args.filecheck, str(fixtures / 'load_elim.ll')], input_text=repeated.read_text())

        # Execute independent expected-value assertions before/after the actual
        # rewrite, with both possible alias situations and wraparound integers.
        semantics = fixtures / 'semantics.ll'
        execute([args.lli, str(semantics)])
        rewritten = temp / 'semantics.ll'
        semantic_run = execute([*base, '-passes=function(ledger-load-elim)', '-S',
                                str(semantics), '-o', str(rewritten)])
        semantic_reports = {item['function']: item for item in reports(semantic_run.stderr)}
        if semantic_reports['redundant']['loads_removed'] != 2 or semantic_reports['disjoint']['loads_removed'] != 1:
            raise AssertionError('Execution oracle did not exercise the intended transformations')
        if semantic_reports['maybe_alias']['loads_removed'] != 0:
            raise AssertionError('May-alias loads were incorrectly eliminated')
        execute([args.lli, str(rewritten)])

    print(json.dumps({'status': 'pass', 'structural_functions': len(functions),
                      'structural_loads_removed': 4, 'idempotence': True,
                      'memoryssa_recomputation': True, 'semantic_values': 4096,
                      'semantic_checks_per_value': 4, 'semantic_executions': 2}, sort_keys=True))


if __name__ == '__main__':
    main()
