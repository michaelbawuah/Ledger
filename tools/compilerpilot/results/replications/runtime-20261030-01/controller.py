#!/usr/bin/env python3
"""One declared runtime qualification, then conditional fixed-nominee confirmation.

No model calls or search. Measurement and gate implementations are imported only
from the independently frozen engine. Conditioning groups are retained separately.
"""
from __future__ import annotations
import argparse
import importlib.util
import json
import math
import os
from pathlib import Path
import platform
import re
import signal
import statistics
import subprocess
import sys
import time

HELPER_PATH=Path(__file__).with_name('run_host_replication.py')
spec=importlib.util.spec_from_file_location('runtime_archive_helpers',HELPER_PATH)
helper=importlib.util.module_from_spec(spec);spec.loader.exec_module(helper)
ENGINE_COMMIT=helper.ENGINE_COMMIT
EXPECTED_MODEL='AMD EPYC 9V74 80-Core Processor'
CONDITION_SECONDS=300


class OwnedSessions:
    """Observe namespace-local child handles without modifying their commands."""
    def __init__(self):
        self.original=subprocess.Popen;self.children=[]
        def factory(*args,**kwargs):
            child=self.original(*args,**kwargs)
            if kwargs.get('start_new_session') is True:self.children.append(child)
            return child
        self.factory=factory
    def __enter__(self):subprocess.Popen=self.factory;return self
    def __exit__(self,*unused):subprocess.Popen=self.original
    def cleanup(self):
        active=[child for child in self.children if child.poll() is None]
        report={'complete':True,'observed_session_children':len(self.children),
                'active_children':[child.pid for child in active],'sigkill_groups':[]}
        for child in active:
            try:
                if os.getpgid(child.pid)!=child.pid:raise RuntimeError('Observed session leader changed group')
                os.killpg(child.pid,signal.SIGTERM)
            except ProcessLookupError:pass
            except (PermissionError,RuntimeError):report['complete']=False
        deadline=time.monotonic()+2
        for child in active:
            try:child.wait(timeout=max(.01,deadline-time.monotonic()))
            except subprocess.TimeoutExpired:pass
        for child in active:
            try:os.killpg(child.pid,signal.SIGKILL);report['sigkill_groups'].append(child.pid)
            except ProcessLookupError:pass
            except PermissionError:report['complete']=False
            try:child.wait(timeout=2)
            except subprocess.TimeoutExpired:report['complete']=False
        return report


def resources():
    cpu=Path('/proc/cpuinfo').read_text()
    model=next(line.split(':',1)[1].strip() for line in cpu.splitlines() if line.startswith('model name'))
    cgroup=Path('/sys/fs/cgroup')
    return {'cpu_model':model,'allowed_cpus':sorted(os.sched_getaffinity(0)),
        'cpu_max':(cgroup/'cpu.max').read_text().strip(),
        'cpuset_effective':(cgroup/'cpuset.cpus.effective').read_text().strip(),
        'cpu_stat':(cgroup/'cpu.stat').read_text(),'load_average':list(os.getloadavg()),
        'python':sys.version,'kernel':platform.release(),'platform':platform.platform()}


def cpu_plan(snapshot):
    if (snapshot['cpu_model']!=EXPECTED_MODEL or snapshot['allowed_cpus']!=list(range(9))
            or snapshot['cpu_max']!='800000 100000'):
        raise ValueError('This one attempt is declared only for the inspected nine-CPU/eight-quota runtime')
    target=max(snapshot['allowed_cpus'])
    return target,[cpu for cpu in snapshot['allowed_cpus'] if cpu!=target][:2]


def append(trace,role,observation):
    with trace.open('a',encoding='utf-8') as stream:
        stream.write(json.dumps({'time':helper.now(),'role':role,'observation':observation},allow_nan=False)+'\n')
        stream.flush();os.fsync(stream.fileno())
    print(json.dumps({'runtime_progress':role,'build_id':observation.get('build_id'),
        'label':observation.get('label'),'round':observation.get('round'),
        'correctness':observation.get('correctness'),'cv':observation.get('cv')}),flush=True)


def condition(runner,baseline,output,phase,verify,clock=time.monotonic):
    """Finish whole groups until fixed elapsed wall time; never inspect speed/CV."""
    trace=output/('conditioning-'+phase+'-trace.jsonl')
    if trace.exists():raise ValueError('Conditioning cannot be repeated')
    trace.touch();started=clock();count=0
    while clock()-started<CONDITION_SECONDS:
        label=f'condition-{phase}-{count:04d}'
        measured=runner.run(baseline,label=label)
        record={**measured,'build_id':baseline.build_id,'label':label,'conditioning_group':count}
        append(trace,'conditioning_'+phase,record);verify()
        if measured.get('correctness') is not True or measured.get('throughput_replays')!=20:
            raise RuntimeError('Conditioning failed correctness/protocol; no retry is allowed')
        count+=1
    result={'role':'conditioning_only_not_performance_estimation','reported_runs':1,
        'throughput_replays':20,'target_wall_seconds':CONDITION_SECONDS,
        'completed_groups':count,'actual_wall_seconds':clock()-started,
        'selection':'All completed groups retained; stop depends only on elapsed wall time, never speed or CV'}
    helper.save(output/('conditioning-'+phase+'.json'),result)
    return result


def qualification_gate(document):
    rows=document.get('observations',[])
    if len(rows)!=10 or document.get('noise_gate') is not True:return False
    values=[row.get('throughput') for row in rows]
    if not all(row.get('correctness') is True and row.get('throughput_replays')==20
        and type(row.get('cv')) in (int,float) and math.isfinite(row['cv']) and 0<=row['cv']<.02
        and type(value) in (int,float) and math.isfinite(value) and value>0 for row,value in zip(rows,values)):
        return False
    return (document.get('repetitions')==10 and document['metric']['cv']<.02
            and statistics.stdev(values)/statistics.mean(values)<.02)


def run(args):
    controller,engine,output=helper.paths(args)
    if controller==engine or engine.is_relative_to(controller) or controller.is_relative_to(engine):
        raise ValueError('Separate controller and frozen engine checkouts are required')
    if output.exists():raise ValueError('Existing attempt cannot be overwritten or retried')
    output.mkdir(parents=True);lock=output/'.replication.lock';lock.write_text(str(os.getpid()))
    original_affinity=set(os.sched_getaffinity(0));restore_affinity=False;cleanup_complete=True
    phase='preflight';result=None;qualification=None
    status={'kind':'runtime_qualification_then_conditional_fixed_nominee','status':'running',
        'started_at':helper.now(),'model_calls':0,'recommendation':None}
    with OwnedSessions() as owned:
        try:
            helper.scrub_credentials()
            if helper.git(controller,'rev-parse','HEAD')!=args.expected_controller:
                raise ValueError('Controller HEAD differs from the reviewed published commit')
            script=Path(__file__).resolve();relative=script.relative_to(controller)
            helper.git(controller,'ls-files','--error-unmatch',str(relative))
            sys.path.insert(0,str(engine/'tools/compilerpilot'))
            from compilerpilot.build import BuildManager,source_provenance
            from compilerpilot.bench import BenchmarkConfig,BenchmarkRunner
            from compilerpilot.cli import prepare_data
            from compilerpilot.confirm import confirm_candidates
            from compilerpilot.harness import Harness
            from compilerpilot.protocol import measurement_replays
            from compilerpilot.space import Candidate
            from compilerpilot.store import Store
            from compilerpilot.study import host_identity
            modules=('build','bench','cli','confirm','harness','protocol','space','store','study')
            for name in modules:
                if Path(sys.modules['compilerpilot.'+name].__file__).resolve()!=engine/'tools/compilerpilot/compilerpilot'/(name+'.py'):
                    raise ValueError('Measurement module imported outside the frozen engine')
            nomination_path=HELPER_PATH.with_name('host_replication_nominees.json')
            nomination=helper.read(nomination_path);helper.validate_nomination(nomination,Candidate)
            source=source_provenance(engine);host=host_identity();snapshot=resources();cpu,driver=cpu_plan(snapshot)
            if source!={'ledger_commit':ENGINE_COMMIT,'ledger_dirty':False,'source_sha256':nomination['origin_engine_source_sha256']}:
                raise ValueError('Wrong or dirty frozen engine source')
            if helper.git(engine,'status','--porcelain','--untracked-files=no','--','tools/compilerpilot/compilerpilot','tools/compilerpilot/scripts'):
                raise ValueError('Frozen measurement/gate implementation is dirty')
            paths=[script,HELPER_PATH,nomination_path,controller/nomination['origin_plan_path'],controller/nomination['origin_study_path']]
            if helper.git(controller,'status','--porcelain','--untracked-files=no','--',*[str(p.relative_to(controller)) for p in paths]):
                raise ValueError('Controller/nomination files must be committed and unchanged')
            if helper.sha(paths[3])!=nomination['origin_plan_sha256'] or helper.sha(paths[4])!=nomination['origin_study_sha256']:
                raise ValueError('Original fixed nomination evidence changed')
            first=helper.read(paths[3])['candidates'][0]
            if first['build_id']!=helper.NOMINEE_ID or first['candidate']!=nomination['nominees'][0]['candidate']:
                raise ValueError('Fixed nominee differs from original first nomination')
            versions=helper.tool_versions()
            if helper.shutil.disk_usage(engine).free<5*1024**3:raise ValueError('Five GiB free disk is required')
            data=engine/'tools/compilerpilot/data/replications'/args.run_id
            builds=engine/'tools/compilerpilot/builds'/args.run_id
            if data.exists() or builds.exists():raise ValueError('Data/build folders must be fresh')
            file_hashes={str(path):helper.sha(path) for path in paths}
            module_hashes={name:helper.sha(engine/'tools/compilerpilot/compilerpilot'/(name+'.py')) for name in modules}
            gate_path=engine/'tools/compilerpilot/scripts/check_gate.py';gate_hash=helper.sha(gate_path)
            # BenchmarkConfig validates CPU membership now, before the driver is narrowed.
            measured_runner=BenchmarkRunner(BenchmarkConfig(data/'eval.lob',cpu=cpu,runs=5,warmup=50000,throughput_replays=20,timeout=600))
            warming_runner=BenchmarkRunner(BenchmarkConfig(data/'eval.lob',cpu=cpu,runs=1,warmup=50000,throughput_replays=20,timeout=600))
            helper.save(output/'protocol.json',{'schema_version':1,'kind':status['kind'],'run_id':args.run_id,
                'declared_at':helper.now(),'controller_commit':args.expected_controller,'controller_script_sha256':helper.sha(script),
                'engine':source,'host':host,'resources_before':snapshot,'tool_versions':versions,
                'benchmark_cpu':cpu,'cpu_selection':'Maximum originally allowed CPU, selected before any benchmark',
                'driver_cpus':driver,'commands':5000000,'throughput_replays':20,'reported_runs':5,'latency_replays':1,
                'qualification_groups':10,'confirmation_rounds':10,'conditioning_wall_seconds_each':CONDITION_SECONDS,
                'conditioning_runs':1,'conditioning_rule':'Complete baseline-only groups until monotonic elapsed>=300s, once before E1 and once before E5; no value-based selection',
                'conditioning_excluded_by_role_only':True,'frozen_module_sha256':module_hashes,
                'frozen_gate_script_sha256':gate_hash,
                'nomination_manifest_sha256':helper.sha(nomination_path),'nomination':nomination,
                'data':str(data),'builds':str(builds),'model_calls':0,'maximum_runtime_attempts':1,'automatic_retries':0,
                'conditional_plan':'If qualification fails, stop before nominee build; otherwise build only original6d, mutation gate, then unchanged ten-round confirmer/full100M+15CTest',
                'qualification_gate':'Frozen Harness conservative CV<2% AND maximum within-group CV<2% AND across-group CV<2%; ten correct groups',
                'futility_rule':'Append first; any E1/E5 baseline within-group CV>=2% stops as an irreversible maximum-CV failure. Never stop on partial across-group CV or drift.',
                'confirmation_gate':'Unchanged frozen confirmer, CV<2%, drift<=2%, improvement>3x baseline noise, full100M differential and all15CTest',
                'child_lifecycle':'Observe Popen handles only for own start_new_session children; unchanged commands/timeouts; terminate active owned groups on controller failure',
                'claim_boundary':'Qualification is not speedup. Conditioning/E1/E5/PGO training timings stay separate; no original agent-budget completion or policy ranking.'})
            helper.save(output/'nomination-manifest.json',nomination)
            helper.shutil.copy2(script,output/'controller.py');helper.shutil.copy2(HELPER_PATH,output/'archive-helper.py')
            inputs=None;binary_hashes={}
            def verify():
                if source_provenance(engine)!=source or host_identity()!=host:raise RuntimeError('Frozen source/host changed')
                if helper.git(engine,'status','--porcelain','--untracked-files=no','--','tools/compilerpilot/compilerpilot','tools/compilerpilot/scripts'):
                    raise RuntimeError('Frozen measurement/gate implementation is dirty')
                if any(helper.sha(Path(path))!=digest for path,digest in file_hashes.items()):raise RuntimeError('Controller/nomination bytes changed')
                if any(helper.sha(engine/'tools/compilerpilot/compilerpilot'/(name+'.py'))!=digest for name,digest in module_hashes.items()):raise RuntimeError('Frozen implementation changed')
                if helper.sha(gate_path)!=gate_hash:raise RuntimeError('Frozen mutation gate changed')
                if any(helper.sha(Path(path))!=digest for path,digest in binary_hashes.items()):raise RuntimeError('Measured executable bytes changed')
                if Path('/sys/fs/cgroup/cpu.max').read_text().strip()!=snapshot['cpu_max'] or Path('/sys/fs/cgroup/cpuset.cpus.effective').read_text().strip()!=snapshot['cpuset_effective']:
                    raise RuntimeError('Runtime CPU quota/cpuset changed')
                if restore_affinity and sorted(os.sched_getaffinity(0))!=driver:raise RuntimeError('Controller driver affinity changed')
                if inputs:
                    if helper.read(data/'manifest.json')!=inputs:raise RuntimeError('Input manifest changed')
                    if any(helper.sha(data/name)!=inputs['files'][name]['sha256'] for name in ('eval.lob','train.lob')):raise RuntimeError('Input bytes changed')
            os.sched_setaffinity(0,set(driver));restore_affinity=True
            phase='data';inputs=prepare_data(engine,data,5000000,20261011,20261012,jobs=2)
            if any(inputs['files'][name]['sha256']!=nomination[key] for name,key in [('eval.lob','evaluation_input_sha256'),('train.lob','training_input_sha256')]):
                raise RuntimeError('Regenerated input differs from original nomination feeds')
            helper.save(output/'input-manifest.json',inputs);verify()
            manager=BuildManager(engine,builds,jobs=2)
            # Harness owns baseline construction and its unchanged conservative noise formula.
            class GuardedQualificationRunner:
                config=measured_runner.config
                def run(self,build,label='bench'):
                    nonlocal phase
                    if not binary_hashes:
                        binary_hashes.update({str(Path(build.build_dir)/name):helper.sha(Path(build.build_dir)/name) for name in ('ledger_bench','ledger_differential')})
                        helper.save(output/'qualification-binary-hashes-before.json',binary_hashes)
                        helper.save(output/'binary-hashes-before.json',binary_hashes)
                    if not (output/'conditioning-e1.json').exists():
                        phase='conditioning_e1';condition(warming_runner,build,output,'e1',verify)
                    phase='qualification'
                    value=measured_runner.run(build,label=label)
                    append(output/'qualification-trace.jsonl','qualification',{**value,'build_id':build.build_id,'label':label});verify()
                    if type(value.get('cv')) in (int,float) and math.isfinite(value['cv']) and value['cv']>=.02:
                        raise helper.BaselineNoiseAbort('E1 baseline within-group CV already fails the strict 2% maximum gate')
                    return value
            store=Store(output/'qualification','E1')
            harness=Harness(manager,GuardedQualificationRunner(),store,budget=1,strategy='fixed-qualification')
            qualification=harness.establish_baseline(10)
            passed=qualification_gate(qualification)
            helper.save(output/'qualification.json',{**qualification,'strict_runtime_gate':passed})
            if not passed:
                status.update(status='qualification_noisy',phase='qualification',qualification_groups=10,ended_at=helper.now())
                helper.save(output/'status.json',status);print(json.dumps({'runtime_status':status['status'],'nominee_built':False}),flush=True)
                return 1
            baseline=harness.baseline;phase='nominee_build'
            candidate=manager.build(Candidate.from_dict(nomination['nominees'][0]['candidate']),training_input=data/'train.lob')
            helper.save(output/'builds.json',{'baseline':baseline.to_dict(),'candidates':[candidate.to_dict()]})
            if not candidate.success:raise RuntimeError('Fixed nominee build failed; no fallback')
            verify()
            binary_hashes={str(Path(build.build_dir)/name):helper.sha(Path(build.build_dir)/name) for build in (baseline,candidate) for name in ('ledger_bench','ledger_differential')}
            helper.save(output/'binary-hashes-before.json',binary_hashes)
            phase='mutation_gate'
            gate_spec=importlib.util.spec_from_file_location('runtime_frozen_gate',engine/'tools/compilerpilot/scripts/check_gate.py')
            gate=importlib.util.module_from_spec(gate_spec);gate_spec.loader.exec_module(gate)
            if gate.qualify_gate(engine,data/'eval.lob',output/'mutation-gate.json').get('qualified') is not True:raise RuntimeError('Semantic mutation was not rejected')
            verify();phase='conditioning_e5';condition(warming_runner,baseline,output,'e5',verify)
            phase='confirmation';trace=output/'confirmation-trace.jsonl';trace.touch(exist_ok=False)
            def record(observation):
                if measurement_replays(observation)!=20:raise RuntimeError('Confirmation replay protocol changed')
                helper.append_observation(trace,observation,baseline.build_id,verify)
            result=confirm_candidates(measured_runner,baseline,[candidate],rounds=10,full_validation=True,callback=record)
            verify()
            if any(helper.sha(Path(path))!=digest for path,digest in binary_hashes.items()):raise RuntimeError('Timed executable changed')
            if result.get('status')=='confirmed' and not helper.full_validation_complete(result):raise RuntimeError('Exact100M/15CTest final validation missing')
            helper.save(output/'confirmation.json',result)
            status.update(status='speedup_confirmed' if result.get('status')=='confirmed' else result.get('status'),
                recommendation=result.get('recommendation') if result.get('status')=='confirmed' else None,
                qualification_groups=10,observations_recorded=len(result.get('observations',[])),ended_at=helper.now(),source_host_input_binary_unchanged=True)
            helper.save(output/'status.json',status);print(json.dumps({'runtime_status':status['status'],'recommendation':status['recommendation']}),flush=True)
            return 0 if result.get('status') in ('confirmed','no_significant_improvement') else 1
        except BaseException as error:
            cleanup=owned.cleanup();cleanup_complete=cleanup['complete'];helper.save(output/'child-cleanup.json',cleanup)
            failed='early_noisy' if isinstance(error,helper.BaselineNoiseAbort) else 'interrupted' if isinstance(error,KeyboardInterrupt) else 'failed'
            helper.save(output/'confirmation.json',{'status':failed,'recommendation':None,'winner':None,'unvalidated_result':result,'failure_class':type(error).__name__,'reason':str(error)[:1000]})
            status.update(status=failed,phase=phase,ended_at=helper.now(),reason=str(error)[:1000],failure_class=type(error).__name__)
            helper.save(output/'status.json',status);print(json.dumps({'runtime_status':failed,'phase':phase,'failure_class':type(error).__name__}),flush=True)
            return 1
        finally:
            if restore_affinity:os.sched_setaffinity(0,original_affinity)
            if cleanup_complete:lock.unlink(missing_ok=True)


def collect(args):
    controller,engine,output=helper.paths(args)
    if (output/'.replication.lock').exists():raise ValueError('Attempt is still active or incompletely stopped')
    groups={'conditioning_e1':[],'conditioning_e5':[],'qualification':[],'confirmation':[],'PGO_training':[],'other':[]}
    builds=engine/'tools/compilerpilot/builds'/args.run_id
    for path in sorted(builds.rglob('summary.json')):
        name=path.parent.name
        role=('conditioning_e1' if name.startswith('condition-e1-') else 'conditioning_e5' if name.startswith('condition-e5-') else 'qualification' if name.startswith('baseline-') else 'confirmation' if name.startswith('confirm-') else 'PGO_training' if name=='training' else 'other')
        summary=helper.read(path)
        groups[role].append({'directory':str(path.parent.relative_to(builds)),'runs':summary.get('runs'),'throughput_replays':summary.get('throughput_replays')})
    helper.save(output/'phase-inventory.json',{'groups_by_role':groups,'aggregation_boundary':'Conditioning runs1, E1 runs5, E5 runs5 and PGO training are distinct; no timing pooling'})
    return helper.collect(args)


def main(argv=None):
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--controller',type=Path,required=True);parser.add_argument('--engine',type=Path,required=True)
    parser.add_argument('--expected-controller',required=True);parser.add_argument('--run-id',required=True)
    parser.add_argument('--collect-only',action='store_true');parser.add_argument('--launch-log',type=Path)
    parser.add_argument('--github-output',type=Path)
    args=parser.parse_args(argv)
    if not re.fullmatch(r'runtime-[A-Za-z0-9][A-Za-z0-9_-]{0,55}',args.run_id) or not re.fullmatch(r'[0-9a-f]{40}',args.expected_controller):raise ValueError('Invalid fixed attempt/controller identifier')
    return collect(args) if args.collect_only else run(args)


if __name__=='__main__':
    try:raise SystemExit(main())
    except Exception as error:
        print(json.dumps({'runtime_controller':'refused','failure_class':type(error).__name__,'reason':str(error)[:1000]}),file=sys.stderr);raise SystemExit(1)
