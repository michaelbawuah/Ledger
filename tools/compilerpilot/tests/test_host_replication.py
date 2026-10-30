"""Controller checks only; never execute a compiler, benchmark, or provider request."""
import copy
import gzip
import hashlib
import importlib.util
import json
from pathlib import Path
import subprocess
import sys
from types import SimpleNamespace
import pytest
from compilerpilot.space import Candidate

SCRIPT=Path(__file__).resolve().parents[1]/'scripts/run_host_replication.py'
spec=importlib.util.spec_from_file_location('fixed_host_replication_controller',SCRIPT)
controller=importlib.util.module_from_spec(spec);spec.loader.exec_module(controller)
MANIFEST=json.loads(SCRIPT.with_name('host_replication_nominees.json').read_text())


def test_fixed_manifest_is_original_top_ranked_configuration():
    controller.validate_nomination(MANIFEST,Candidate)
    assert MANIFEST['nominees'][0]['build_id']=='6d3511b71fcfb52d'
    assert MANIFEST['origin_plan_sha256']=='c14e2936238f1e078461ce99d94023e2e4a353728df59b41b847fae094ece6bf'


@pytest.mark.parametrize('mutation', ['new_nominee','second_nominee','id_mismatch','precision','seed','bool_limit','fallback'])
def test_changed_fixed_hypothesis_is_rejected(mutation):
    document=copy.deepcopy(MANIFEST)
    if mutation=='new_nominee': document['nominees'][0]['candidate']['unroll']=False
    if mutation=='second_nominee': document['nominees'].append(copy.deepcopy(document['nominees'][0]))
    if mutation=='id_mismatch': document['nominees'][0]['build_id']='0'*16
    if mutation=='precision': document['throughput_replays']=5
    if mutation=='seed': document['training_seed']=1
    if mutation=='bool_limit': document['maximum_new_platform_attempts']=True
    if mutation=='fallback': document['fallback_nominees']=1
    with pytest.raises(ValueError): controller.validate_nomination(document,Candidate)


def test_baseline_futility_appends_evidence_before_aborting(tmp_path):
    trace=tmp_path/'trace.jsonl';seen=[]
    def verify():
        assert json.loads(trace.read_text())['observation']['cv']==.02
        seen.append('verified-after-append')
    with pytest.raises(controller.BaselineNoiseAbort):
        controller.append_observation(trace,{'build_id':'baseline','cv':.02,'round':0},'baseline',verify)
    assert seen==['verified-after-append']


def test_no_futility_abort_for_candidate_or_still_valid_baseline(tmp_path):
    trace=tmp_path/'trace.jsonl';seen=[]
    controller.append_observation(trace,{'build_id':'candidate','cv':.9},'baseline',lambda:seen.append(1))
    controller.append_observation(trace,{'build_id':'baseline','cv':.01999},'baseline',lambda:seen.append(2))
    assert len(trace.read_text().splitlines())==2 and seen==[1,2]


def complete_validation():
    return {'full_validation':{'correctness':True,'differential_exit_code':0,'ctest_exit_code':0,
        'ctest_planned_tests':15,'ctest_completed_tests':15,'ctest_evidence_verified':True,
        'report':{'status':'pass','seeds':100,'commands_per_seed':1000000,'commands_compared':100000000}}}


@pytest.mark.parametrize('missing',['full_validation','report','ctest_completed_tests','ctest_evidence_verified','commands_compared'])
def test_missing_full_validation_cannot_be_confirmed(missing):
    result=complete_validation()
    if missing=='full_validation':result.pop(missing)
    elif missing=='report':result['full_validation'].pop(missing)
    elif missing=='commands_compared':result['full_validation']['report'].pop(missing)
    else:result['full_validation'].pop(missing)
    assert controller.full_validation_complete(result) is False


def test_exact_100m_and_all_15_tests_are_required():
    result=complete_validation();assert controller.full_validation_complete(result)
    result['full_validation']['ctest_completed_tests']=14
    assert not controller.full_validation_complete(result)
    result=complete_validation();result['full_validation']['report']['commands_compared']=99999999
    assert not controller.full_validation_complete(result)


def test_multiline_llvm_version_header_is_recognized(monkeypatch):
    versions={'g++':'g++ Ubuntu 13.3.0\nCopyright', 'clang++':'Ubuntu clang version 18.1.3',
        'llvm-profdata':'LLVM (http://llvm.org/):\n  LLVM version 18.1.3\n  Optimized build.',
        'ld.lld':'Debian LLD 18.1.3', 'cmake':'cmake version 3.28.3'}
    monkeypatch.setattr(controller.subprocess,'check_output',lambda command,**kwargs:versions[command[0]])
    assert '18.1.3' in controller.tool_versions()['llvm-profdata']
    versions['llvm-profdata']='LLVM (http://llvm.org/):\n LLVM version 17.0.0'
    with pytest.raises(ValueError):controller.tool_versions()


def make_collection(tmp_path):
    ctrl=tmp_path/'controller';engine=tmp_path/'engine';run_id='fixture-only'
    output=ctrl/'tools/compilerpilot/results/replications'/run_id;output.mkdir(parents=True)
    build=engine/'tools/compilerpilot/builds'/run_id/'fixture-build';build.mkdir(parents=True)
    (build/'build.json').write_text('{"fixture_only":true}')
    (build/'remarks.opt.yaml').write_bytes(b'fixture optimization record\n'*1000)
    (build/'training.profraw').write_bytes(b'fixture profile data'*1000)
    (build/'ledger_bench').write_bytes(b'fixture binary never executed')
    digest=hashlib.sha256((build/'ledger_bench').read_bytes()).hexdigest()
    controller.save(output/'binary-hashes-before.json',{str(build/'ledger_bench'):digest})
    data=engine/'tools/compilerpilot/data/replications'/run_id;data.mkdir(parents=True)
    (data/'configure.log').write_text('fixture failed-generation diagnostics')
    launch=tmp_path/'launch.log';launch.write_text('fixture-only log')
    args=SimpleNamespace(controller=ctrl,engine=engine,run_id=run_id,launch_log=launch,github_output=tmp_path/'outputs')
    return args,output,build


def test_failure_packet_preserves_logs_profiles_and_hashes_without_binaries(tmp_path):
    args,output,build=make_collection(tmp_path)
    assert controller.collect(args)==0
    record=json.loads((output/'collection.json').read_text())
    assert len(record['compressed_artifacts'])==2
    for item in record['compressed_artifacts']:
        assert gzip.decompress((output/item['retained_path']).read_bytes())==(build.parent/item['original_relative_path']).read_bytes()
    assert not list((output/'build-evidence').rglob('ledger_bench'))
    assert (output/'input-evidence/configure.log').read_text()=='fixture failed-generation diagnostics'
    assert all(item['matches_before'] for item in json.loads((output/'binary-hashes-after.json').read_text()).values())
    manifest=json.loads((output/'evidence-manifest.json').read_text())
    for name,digest in manifest['files'].items():assert hashlib.sha256((output/name).read_bytes()).hexdigest()==digest
    assert 'evidence-manifest.json' not in manifest['files']
    assert args.github_output.read_text()=='upload=true\n'


def test_oversized_packet_cannot_enable_upload(tmp_path,monkeypatch):
    args,_,_=make_collection(tmp_path);monkeypatch.setattr(controller,'MAX_PACKET_BYTES',1)
    assert controller.collect(args)==1
    assert args.github_output.read_text()=='upload=false\n'


def test_active_and_already_sealed_collection_are_refused(tmp_path):
    args,output,_=make_collection(tmp_path);lock=output/'.replication.lock';lock.touch()
    with pytest.raises(ValueError):controller.collect(args)
    lock.unlink();assert controller.collect(args)==0
    with pytest.raises(ValueError):controller.collect(args)


def test_owned_child_group_is_stopped_before_evidence_collection(monkeypatch):
    child=subprocess.Popen([sys.executable,'-c','import time; time.sleep(60)'],start_new_session=True)
    # This managed test runtime virtualizes PIDs and omits /proc/.../children.
    # Supply that one enumeration response, then exercise actual session signals.
    original=Path.read_text
    def owned_children(path,*args,**kwargs):
        if str(path).startswith('/proc/self/task/') and path.name=='children': return str(child.pid)
        return original(path,*args,**kwargs)
    monkeypatch.setattr(Path,'read_text',owned_children)
    try:
        report=controller.cleanup_owned_children()
        assert report['complete'] is True and child.pid in report['process_groups']
        assert child.wait(timeout=3)<0
    finally:
        if child.poll() is None: child.kill();child.wait()


def test_existing_attempt_refuses_without_overwriting(tmp_path):
    args,output,_=make_collection(tmp_path);original=(output/'binary-hashes-before.json').read_bytes()
    with pytest.raises(ValueError):controller.run(args)
    assert (output/'binary-hashes-before.json').read_bytes()==original
