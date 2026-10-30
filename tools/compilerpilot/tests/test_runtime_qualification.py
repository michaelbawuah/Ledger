"""Controller fixtures only: never compile, benchmark, or call a provider."""
import copy
import hashlib
import importlib.util
import json
from pathlib import Path
import subprocess
import sys
from types import SimpleNamespace
import pytest

SCRIPT=Path(__file__).resolve().parents[1]/'scripts/run_runtime_qualification.py'
spec=importlib.util.spec_from_file_location('runtime_qualification_controller',SCRIPT)
controller=importlib.util.module_from_spec(spec);spec.loader.exec_module(controller)
MANIFEST=json.loads(SCRIPT.with_name('host_replication_nominees.json').read_text())


def document(cv=.001):
    return {'noise_gate':True,'repetitions':10,'metric':{'cv':cv},'observations':[
        {'correctness':True,'throughput':100.,'cv':cv,'throughput_replays':20} for _ in range(10)]}


def test_strict_qualification_keeps_both_conservative_and_exact_gates():
    assert controller.qualification_gate(document())
    for altered in (document(.02),document(.03)):
        assert not controller.qualification_gate(altered)
    altered=document();altered['noise_gate']=False
    assert not controller.qualification_gate(altered)
    altered=document();altered['observations'].pop()
    assert not controller.qualification_gate(altered)
    altered=document();altered['observations'][0]['throughput']=120
    assert not controller.qualification_gate(altered)


def test_cpu_choice_is_declared_from_affinity_not_speed():
    snapshot={'cpu_model':controller.EXPECTED_MODEL,'allowed_cpus':list(range(9)),'cpu_max':'800000 100000'}
    assert controller.cpu_plan(snapshot)==(8,[0,1])
    for field,value in [('cpu_model','other'),('allowed_cpus',[0,1,2,3]),('cpu_max','400000 100000')]:
        changed={**snapshot,field:value}
        with pytest.raises(ValueError):controller.cpu_plan(changed)


def test_conditioning_uses_only_fixed_elapsed_time_and_retains_every_group(tmp_path):
    calls=[];times=iter([0,0,100,200,300,301])
    runner=SimpleNamespace(run=lambda build,label:(calls.append(label) or
        {'correctness':True,'throughput_replays':20,'cv':99,'throughput':len(calls)*100.}))
    result=controller.condition(runner,SimpleNamespace(build_id='baseline'),tmp_path,'e1',lambda:None,clock=lambda:next(times))
    assert calls==['condition-e1-0000','condition-e1-0001','condition-e1-0002']
    assert result['completed_groups']==3 and result['target_wall_seconds']==300
    assert result['actual_wall_seconds']==301
    records=[json.loads(line) for line in (tmp_path/'conditioning-e1-trace.jsonl').read_text().splitlines()]
    assert len(records)==3 and all(row['role']=='conditioning_e1' for row in records)
    with pytest.raises(ValueError):controller.condition(runner,SimpleNamespace(build_id='baseline'),tmp_path,'e1',lambda:None)


def test_conditioning_correctness_failure_is_retained_and_never_retried(tmp_path):
    calls=[];runner=SimpleNamespace(run=lambda build,label:(calls.append(label) or {'correctness':False,'throughput_replays':20}))
    with pytest.raises(RuntimeError):controller.condition(runner,SimpleNamespace(build_id='baseline'),tmp_path,'e1',lambda:None,clock=lambda:0)
    assert len(calls)==1 and len((tmp_path/'conditioning-e1-trace.jsonl').read_text().splitlines())==1


def test_owned_session_cleanup_uses_actual_child_handles_not_proc_pid_mapping():
    with controller.OwnedSessions() as owned:
        child=subprocess.Popen([sys.executable,'-c','import time;time.sleep(60)'],start_new_session=True)
        try:
            report=owned.cleanup()
            assert report['complete'] and report['active_children']==[child.pid]
            assert child.poll() is not None
        finally:
            if child.poll() is None:child.kill();child.wait()


@pytest.fixture
def runtime_fixture(tmp_path,monkeypatch):
    """Mock binaries/feeds and hardware; reuse actual Python gate implementations."""
    import compilerpilot.build as build
    import compilerpilot.bench as bench
    import compilerpilot.cli as cli
    import compilerpilot.study as study
    from compilerpilot.build import BuildResult
    root=SCRIPT.parents[3];engine=tmp_path/'engine';output=tmp_path/'output'
    events=[];current=list(range(9));state={'noise':False,'across_noise':False,'host_changed':False,'change_during_confirm':False,'gate_changed':False,'wrong_validation':False}
    monkeypatch.setattr(sys,'path',sys.path.copy())
    for name in ('build','bench','cli','confirm','harness','protocol','space','store','study'):
        module=__import__('compilerpilot.'+name,fromlist=['*'])
        file=engine/'tools/compilerpilot/compilerpilot'/(name+'.py');file.parent.mkdir(parents=True,exist_ok=True);file.write_text('# mock fixture only\n')
        monkeypatch.setattr(module,'__file__',str(file))
    gate=engine/'tools/compilerpilot/scripts/check_gate.py';gate.parent.mkdir(parents=True)
    gate.write_text('def qualify_gate(*args):return {"qualified":True}\n')
    expected_source={'ledger_commit':controller.ENGINE_COMMIT,'ledger_dirty':False,'source_sha256':MANIFEST['origin_engine_source_sha256']}
    monkeypatch.setattr(build,'source_provenance',lambda unused:expected_source)
    monkeypatch.setattr(study,'host_identity',lambda:{'node':'fixture','boot':int(state['host_changed'])})
    monkeypatch.setattr(controller.helper,'paths',lambda args:(root,engine,output))
    monkeypatch.setattr(controller.helper,'git',lambda root,*a:'a'*40 if a==('rev-parse','HEAD') else '')
    monkeypatch.setattr(controller.helper,'tool_versions',lambda:{'fixture':'no tools executed'})
    original_sha=controller.helper.sha
    def fixture_sha(path):
        if path.name=='eval.lob':return MANIFEST['evaluation_input_sha256']
        if path.name=='train.lob':return MANIFEST['training_input_sha256']
        return original_sha(path)
    monkeypatch.setattr(controller.helper,'sha',fixture_sha)
    # Model the declared cgroup rather than requiring these files on the CI host.
    quota='800000 100000';cpuset='0-8'
    cgroup_files={Path('/sys/fs/cgroup/cpu.max'):quota,
        Path('/sys/fs/cgroup/cpuset.cpus.effective'):cpuset}
    original_read_text=Path.read_text
    def fixture_read_text(path,*args,**kwargs):
        if path in cgroup_files:return cgroup_files[path]+'\n'
        return original_read_text(path,*args,**kwargs)
    monkeypatch.setattr(Path,'read_text',fixture_read_text)
    monkeypatch.setattr(controller,'resources',lambda:{'cpu_model':controller.EXPECTED_MODEL,'allowed_cpus':list(range(9)),
        'cpu_max':quota,'cpuset_effective':cpuset,'cpu_stat':'fixture','python':'fixture'})
    monkeypatch.setattr(controller.os,'sched_getaffinity',lambda unused:set(current))
    monkeypatch.setattr(controller.os,'sched_setaffinity',lambda unused,values:(current.clear(),current.extend(sorted(values))))
    def prepare(ledger,data,*a,**kw):
        data.mkdir(parents=True);files={}
        for name,key in [('eval.lob','evaluation_input_sha256'),('train.lob','training_input_sha256')]:
            (data/name).write_text('mock feed never replayed');files[name]={'sha256':MANIFEST[key]}
        result={'files':files};controller.helper.save(data/'manifest.json',result);return result
    monkeypatch.setattr(cli,'prepare_data',prepare)
    class Manager:
        def __init__(self,ledger,path,jobs):self.path=path
        def build(self,candidate,training_input=None):
            events.append(('build',candidate.hash()));p=self.path/candidate.hash();p.mkdir(parents=True)
            for name in ('ledger_bench','ledger_differential'):(p/name).write_text('mock binary never executed')
            return BuildResult(candidate.hash(),candidate.to_dict(),str(p),success=True,provenance=expected_source)
    monkeypatch.setattr(build,'BuildManager',Manager)
    class Runner:
        def __init__(self,config):
            assert current==list(range(9)) # Construct under original mask before narrowing driver.
            self.config=config
        def run(self,built,label='bench'):
            events.append(('measure',label))
            if label.startswith('confirm-') and state['change_during_confirm']:state['host_changed']=True
            if label.startswith('confirm-') and state['gate_changed']:gate.write_text('# changed fixture gate\n')
            throughput=110. if built.build_id==controller.helper.NOMINEE_ID else 100.
            if label.startswith('baseline-') and state['across_noise']:throughput=100.+10*(int(label.split('-')[-1])%2)
            return {'correctness':True,'throughput_replays':20,'throughput':throughput,
                'cv':.03 if state['noise'] else .001,'p50_ns':1.,'p99_ns':2.,'provenance':{'input_sha256':MANIFEST['evaluation_input_sha256']}}
        def full_validate(self,*a,**kw):
            events.append(('validate',100000000))
            return {'correctness':True,'ctest_exit_code':0,'differential_exit_code':0,'ctest_planned_tests':15,'ctest_completed_tests':15,
                'ctest_evidence_verified':True,'report':{'status':'pass','seeds':100,'commands_per_seed':1000000,
                'commands_compared':1 if state['wrong_validation'] else 100000000}}
    monkeypatch.setattr(bench,'BenchmarkRunner',Runner)
    def conditioned(runner,baseline,out,phase,verify):
        events.append(('conditioning',phase));verify();controller.helper.save(out/('conditioning-'+phase+'.json'),{'fixture':True})
    monkeypatch.setattr(controller,'condition',conditioned)
    args=SimpleNamespace(controller=root,engine=engine,expected_controller='a'*40,run_id='runtime-fixture')
    return args,output,events,current,state


def test_failed_qualification_never_builds_nominee_or_runs_confirmation(runtime_fixture):
    args,out,events,current,state=runtime_fixture;state['noise']=True
    assert controller.run(args)==1
    assert [x for x in events if x[0]=='build']==[('build',MANIFEST['baseline']['build_id'])]
    assert not any(x[0]=='measure' and x[1].startswith('confirm-') for x in events)
    assert json.loads((out/'status.json').read_text())['status']=='early_noisy'
    assert current==list(range(9)) and not (out/'.replication.lock').exists()


def test_completed_across_group_qualification_failure_never_builds_nominee(runtime_fixture):
    args,out,events,current,state=runtime_fixture;state['across_noise']=True
    assert controller.run(args)==1
    assert json.loads((out/'status.json').read_text())['status']=='qualification_noisy'
    assert len([x for x in events if x[0]=='measure'])==10
    assert [x for x in events if x[0]=='build']==[('build',MANIFEST['baseline']['build_id'])]
    assert json.loads((out/'qualification.json').read_text())['strict_runtime_gate'] is False


def test_qualified_runtime_uses_only_fixed_nominee_and_full_final_gate(runtime_fixture):
    args,out,events,current,state=runtime_fixture
    assert controller.run(args)==0
    assert [x[1] for x in events if x[0]=='build']==[MANIFEST['baseline']['build_id'],controller.helper.NOMINEE_ID]
    assert [x[1] for x in events if x[0]=='conditioning']==['e1','e5']
    assert len([x for x in events if x[0]=='measure' and x[1].startswith('baseline-')])==10
    assert len([x for x in events if x[0]=='measure' and x[1].startswith('confirm-')])==20
    assert ('validate',100000000) in events
    status=json.loads((out/'status.json').read_text())
    assert status['status']=='speedup_confirmed' and status['model_calls']==0
    assert current==list(range(9)) and not (out/'.replication.lock').exists()


@pytest.mark.parametrize('problem',['host','validation','gate'])
def test_context_or_incomplete_validation_cannot_persist_confirmation(runtime_fixture,problem):
    args,out,events,current,state=runtime_fixture
    state['change_during_confirm']=problem=='host';state['wrong_validation']=problem=='validation';state['gate_changed']=problem=='gate'
    assert controller.run(args)==1
    assert json.loads((out/'status.json').read_text())['recommendation'] is None
    assert json.loads((out/'confirmation.json').read_text())['recommendation'] is None


def test_collection_inventory_separates_conditioning_from_e1_e5_and_training(tmp_path,monkeypatch):
    ctrl=tmp_path/'controller';engine=tmp_path/'engine';run_id='runtime-fixture';out=tmp_path/'out'
    root=engine/'tools/compilerpilot/builds'/run_id/'baseline'
    for name,runs,replays in [('condition-e1-0000',1,20),('condition-e5-0000',1,20),('baseline-0',5,20),('confirm-00-baseline',5,20),('training',1,1)]:
        p=root/name;p.mkdir(parents=True);(p/'summary.json').write_text(json.dumps({'runs':runs,'throughput_replays':replays}))
    monkeypatch.setattr(controller.helper,'paths',lambda args:(ctrl,engine,out))
    monkeypatch.setattr(controller.helper,'collect',lambda args:0)
    assert controller.collect(SimpleNamespace(run_id=run_id))==0
    roles=json.loads((out/'phase-inventory.json').read_text())['groups_by_role']
    assert roles['conditioning_e1'][0]['runs']==roles['conditioning_e5'][0]['runs']==1
    assert roles['qualification'][0]['runs']==roles['confirmation'][0]['runs']==5
    assert roles['PGO_training'][0]['throughput_replays']==1
