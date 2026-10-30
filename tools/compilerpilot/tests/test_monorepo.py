"""Layout checks need no compilation, credentials, or benchmark measurements."""
from pathlib import Path
import runpy
import sys

import pytest

from compilerpilot.build import source_provenance
from compilerpilot.layout import find_ledger_root, require_ledger_root

COMPONENT = Path(__file__).resolve().parents[1]
LEDGER = COMPONENT.parents[1]


def _ledger_fixture(root):
    for name, content in {
        'CMakeLists.txt': 'project(Ledger)\n',
        'src/book.cpp': 'engine source\n',
        'include/ledger/book.hpp': 'engine declaration\n',
        'bench/bench_replay.cpp': 'benchmark source\n',
        'tests/unit/engine_tests.cpp': 'semantic tests\n',
    }.items():
        path = root / name
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_text(content)
    return root


def test_discovery_walks_to_live_ledger_root_independent_of_cwd(tmp_path, monkeypatch):
    root = _ledger_fixture(tmp_path / 'Ledger')
    component = root / 'tools/compilerpilot/compilerpilot'
    component.mkdir(parents=True)
    unrelated = tmp_path / 'unrelated'
    unrelated.mkdir()
    monkeypatch.chdir(unrelated)
    assert find_ledger_root(component) == root
    assert find_ledger_root(COMPONENT) == LEDGER
    assert require_ledger_root(root) == root
    assert find_ledger_root(unrelated) is None
    with pytest.raises(ValueError):
        require_ledger_root(unrelated)


def test_fingerprint_excludes_nested_compilerpilot_generated_files(tmp_path):
    root = _ledger_fixture(tmp_path / 'Ledger')
    before = source_provenance(root)['source_sha256']
    artifacts = {
        'tools/compilerpilot/builds/example/source/CMakeLists.txt': 'nested build file\n',
        'tools/compilerpilot/data/generator-build/README.md': 'generated documentation\n',
        'tools/compilerpilot/compilerpilot/cli.py': 'compiler tuning code\n',
        'tools/compilerpilot/results/report.md': 'compiler tuning results\n',
        'bench/results/experiment.csv': 'historical measurements\n',
    }
    for name, content in artifacts.items():
        path = root / name
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_text(content)
    assert source_provenance(root)['source_sha256'] == before
    (root / 'src/book.cpp').write_text('changed matching semantics\n')
    assert source_provenance(root)['source_sha256'] != before


def test_fingerprint_includes_root_build_configuration(tmp_path):
    root = _ledger_fixture(tmp_path / 'Ledger')
    before = source_provenance(root)['source_sha256']
    (root / 'CMakeLists.txt').write_text('project(Ledger)\nadd_compile_options(-O2)\n')
    assert source_provenance(root)['source_sha256'] != before


@pytest.mark.parametrize('repository_cwd', [True, False])
def test_plot_script_defaults_to_component_results_from_any_cwd(tmp_path, monkeypatch, repository_cwd):
    import compilerpilot.plot as plot
    calls = []
    def generate_report(results, **options):
        calls.append((results, options))
        return {'status': 'test only'}
    monkeypatch.setattr(plot, 'generate_report', generate_report)
    monkeypatch.chdir(LEDGER if repository_cwd else tmp_path)
    monkeypatch.setattr(sys, 'argv', ['plot.py'])
    runpy.run_path(str(COMPONENT / 'scripts/plot.py'), run_name='__main__')
    assert calls == [(COMPONENT / 'results', {'budget': 40, 'expected_seeds': 3})]


def test_cli_data_defaults_to_live_root_from_unrelated_cwd(tmp_path, monkeypatch):
    import compilerpilot.cli as cli
    calls = []
    def prepare_data(ledger, data, *args, **kwargs):
        calls.append((ledger, data))
        return {'status': 'test only'}
    monkeypatch.setattr(cli, 'prepare_data', prepare_data)
    monkeypatch.chdir(tmp_path)
    assert cli.main(['data']) == 0
    assert calls == [(LEDGER, COMPONENT / 'data')]


def test_cli_explicit_source_override_wins_over_default(tmp_path, monkeypatch):
    import compilerpilot.cli as cli
    override = _ledger_fixture(tmp_path / 'other-Ledger')
    calls = []
    def prepare_data(ledger, data, *args, **kwargs):
        calls.append(ledger)
        return {'status': 'test only'}
    monkeypatch.setattr(cli, 'prepare_data', prepare_data)
    assert cli.main(['data', '--ledger', str(override)]) == 0
    assert calls == [override]
