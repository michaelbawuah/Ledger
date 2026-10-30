#!/usr/bin/env python3
"""One API-free, fixed-hypothesis host replication using an independently frozen engine.

The controller and engine checkouts are deliberately separate. This file only imports
compiler/benchmark/confirmation implementation from the pinned engine checkout.
"""
from __future__ import annotations
import argparse
import csv
import gzip
import hashlib
import importlib.util
import json
import math
import os
from pathlib import Path
import re
import signal
import shutil
import subprocess
import sys
import time
from datetime import datetime, timezone

ENGINE_COMMIT = '7c43ec7346796040a6c8b8f8d3ad22d0bd7446d6'
NOMINEE_ID = '6d3511b71fcfb52d'
MAX_PACKET_BYTES = 256 * 1024 * 1024
NAMES = {'build.json','summary.json','runs.csv','throughput_replays.csv','latency_histogram.csv',
    'measurement.json','differential.json','validation.json','ctest.xml','ctest-plan.json','ctest.log',
    'benchmark.log','differential.log','build.log','build-generate.log','configure-normal.log',
    'configure-generate.log','configure-use.log','training.log','profile-merge.log','size.log',
    'compiler-version.log','CMakeCache.txt','compile_commands.json'}
COMPRESSED = {'.yaml','.profraw','.profdata','.gcda','.gcno'}


def now(): return datetime.now(timezone.utc).isoformat()
def read(path): return json.loads(path.read_text())
def sha(path):
    digest=hashlib.sha256()
    with path.open('rb') as stream:
        for block in iter(lambda:stream.read(1024*1024),b''): digest.update(block)
    return digest.hexdigest()
def save(path,value):
    path.parent.mkdir(parents=True,exist_ok=True)
    temp=path.with_name(path.name+'.tmp')
    with temp.open('w',encoding='utf-8') as stream:
        json.dump(value,stream,indent=2,sort_keys=True,allow_nan=False);stream.write(chr(10));stream.flush();os.fsync(stream.fileno())
    temp.replace(path)
def git(root,*args):
    return subprocess.check_output(['git','-C',str(root),*args],text=True,stderr=subprocess.DEVNULL,timeout=20).strip()
def scrub_credentials():
    for name in ('OPENAI_API_KEY','ANTHROPIC_API_KEY','GH_TOKEN','GITHUB_TOKEN','GH_ENTERPRISE_TOKEN','ACTIONS_RUNTIME_TOKEN'):
        os.environ.pop(name,None)


class BaselineNoiseAbort(RuntimeError): pass


def cleanup_owned_children():
    """Stop only this controller's direct children/session groups before sealing evidence."""
    report={'complete':True,'process_groups':[],'individual_children':[],'sigkill_groups':[]}
    try:
        children=[int(value) for value in Path('/proc/self/task/'+str(os.getpid())+'/children').read_text().split()]
    except OSError:
        return {**report,'complete':False,'reason':'Could not enumerate owned direct children'}
    own_group=os.getpgrp()
    for pid in children:
        if pid==os.getpid(): continue
        try:
            group=os.getpgid(pid)
            if group!=own_group and group!=os.getpid():
                if group not in report['process_groups']: report['process_groups'].append(group)
            else: report['individual_children'].append(pid)
        except ProcessLookupError: pass
    for group in report['process_groups']:
        try: os.killpg(group,signal.SIGTERM)
        except ProcessLookupError: pass
        except PermissionError: report['complete']=False
    for pid in report['individual_children']:
        try: os.kill(pid,signal.SIGTERM)
        except ProcessLookupError: pass
        except PermissionError: report['complete']=False
    deadline=time.monotonic()+2
    while (report['process_groups'] or report['individual_children']) and time.monotonic()<deadline:
        active=False
        for group in report['process_groups']:
            try: os.killpg(group,0);active=True
            except ProcessLookupError: pass
        for pid in report['individual_children']:
            try:
                waited,_=os.waitpid(pid,os.WNOHANG)
                active |= waited==0
            except ChildProcessError: pass
        if not active: break
        time.sleep(.05)
    for group in report['process_groups']:
        try: os.killpg(group,signal.SIGKILL);report['sigkill_groups'].append(group)
        except ProcessLookupError: pass
        except PermissionError: report['complete']=False
    for pid in report['individual_children']:
        try: os.kill(pid,signal.SIGKILL)
        except ProcessLookupError: pass
        except PermissionError: report['complete']=False
    if children: time.sleep(.1)
    return report


def full_validation_complete(result):
    validation=result.get('full_validation',{})
    report=validation.get('report',{}) if isinstance(validation,dict) else {}
    return (isinstance(validation,dict) and validation.get('correctness') is True
        and validation.get('differential_exit_code')==0 and validation.get('ctest_exit_code')==0
        and validation.get('ctest_planned_tests')==15 and validation.get('ctest_completed_tests')==15
        and validation.get('ctest_evidence_verified') is True and report.get('status')=='pass'
        and report.get('seeds')==100 and report.get('commands_per_seed')==1000000
        and report.get('commands_compared')==100000000)


def tool_versions():
    versions={tool:'\n'.join(subprocess.check_output([tool,'--version'],text=True,timeout=15).splitlines()[:4])
        for tool in ('g++','clang++','llvm-profdata','ld.lld','cmake')}
    if not re.search(r'\b13\.',versions['g++']) or any(not re.search(r'\b18\.',versions[t]) for t in ('clang++','llvm-profdata','ld.lld')):
        raise ValueError('Matched GCC13/LLVM18 toolchains are required')
    return versions


def append_observation(trace,observation,baseline_id,verify):
    """Append actual evidence before checking irreversible within-observation futility."""
    with trace.open('a',encoding='utf-8') as stream:
        stream.write(json.dumps({'time':now(),'observation':observation},allow_nan=False)+chr(10));stream.flush();os.fsync(stream.fileno())
    print(json.dumps({'replication_progress':'observation','build_id':observation.get('build_id'),
        'round':observation.get('round'),'correctness':observation.get('correctness'),
        'throughput':observation.get('throughput'),'cv':observation.get('cv')}),flush=True)
    verify()
    cv=observation.get('cv')
    if observation.get('build_id')==baseline_id and type(cv) in (int,float) and math.isfinite(cv) and cv>=.02:
        raise BaselineNoiseAbort('A recorded baseline run CV already fails the unchanged strict 2% maximum-run gate')


def validate_nomination(document,Candidate):
    if document.get('origin_engine_commit')!=ENGINE_COMMIT or document.get('throughput_replays')!=20:
        raise ValueError('Wrong pinned engine or declared precision')
    nominees=document.get('nominees')
    if not isinstance(nominees,list) or len(nominees)!=1 or nominees[0].get('build_id')!=NOMINEE_ID:
        raise ValueError('Only the one predeclared original top-ranked configuration is allowed')
    for item in [document['baseline'],*nominees]:
        candidate=Candidate.from_dict(item['candidate'])
        if candidate.hash()!=item['build_id']: raise ValueError('Candidate hash/configuration mismatch')
    if document['baseline']['candidate']!=Candidate().to_dict(): raise ValueError('Baseline choices changed')
    expected={'commands':5000000,'evaluation_seed':20261011,'training_seed':20261012,'reported_runs':5,
        'latency_replays':1,'cpu':0,'jobs':2,'rounds':10,'benchmark_timeout_seconds':600,
        'maximum_new_platform_attempts':1,'automatic_retries':0,'maximum_nominees':1,'fallback_nominees':0}
    if any(type(document.get(key)) is not int or document.get(key)!=value for key,value in expected.items()):
        raise ValueError('Fixed replication protocol differs')


def paths(args):
    controller=args.controller.resolve();engine=args.engine.resolve()
    output=controller/'tools/compilerpilot/results/replications'/args.run_id
    return controller,engine,output


def run(args):
    controller,engine,output=paths(args)
    if engine==controller or engine.is_relative_to(controller) or controller.is_relative_to(engine):
        raise ValueError('Controller and pinned engine must be separate checkouts')
    if output.exists(): raise ValueError('Attempt folder already exists; no rerun or overwrite is allowed')
    output.mkdir(parents=True)
    lock=output/'.replication.lock';lock.write_text(str(os.getpid()))
    result=None;started=now();phase='preflight';baseline=None;observations=0;cleanup_complete=True
    status={'kind':'independent_fixed_nominee_host_replication','status':'running','started_at':started,'recommendation':None,'model_calls':0}
    try:
        scrub_credentials()
        sys.path.insert(0,str(engine/'tools/compilerpilot'))
        from compilerpilot.build import BuildManager,source_provenance
        from compilerpilot.bench import BenchmarkConfig,BenchmarkRunner
        from compilerpilot.cli import prepare_data
        from compilerpilot.confirm import confirm_candidates
        from compilerpilot.protocol import measurement_replays
        from compilerpilot.space import Candidate
        from compilerpilot.study import host_identity
        for module in ('build','bench','cli','confirm','protocol','space','study'):
            imported=Path(sys.modules['compilerpilot.'+module].__file__).resolve()
            if imported!=engine/'tools/compilerpilot/compilerpilot'/(module+'.py'):
                raise ValueError('A benchmark/harness module was imported outside the frozen engine checkout')
        spec=importlib.util.spec_from_file_location('frozen_live_gate',engine/'tools/compilerpilot/scripts/check_gate.py')
        gate=importlib.util.module_from_spec(spec);spec.loader.exec_module(gate)
        nomination_path=Path(__file__).with_name('host_replication_nominees.json')
        nomination=read(nomination_path);validate_nomination(nomination,Candidate)
        source=source_provenance(engine);host=host_identity()
        if source['ledger_commit']!=ENGINE_COMMIT or source['ledger_dirty'] is not False or source['source_sha256']!=nomination['origin_engine_source_sha256']:
            raise ValueError('Engine checkout is wrong, dirty, or differs from the nominated engine source')
        if git(engine,'status','--porcelain','--untracked-files=no','--','tools/compilerpilot/compilerpilot','tools/compilerpilot/scripts'):
            raise ValueError('Frozen engine harness is dirty')
        allowed=sorted(os.sched_getaffinity(0))
        if allowed!=[0,1,2,3]: raise ValueError('This attempt requires the predeclared four-core CPU0 host')
        if os.getenv('GITHUB_ACTIONS')=='true' and os.getenv('GITHUB_RUN_ATTEMPT')!='1':
            raise ValueError('GitHub reruns are forbidden; one platform attempt only')
        if shutil.disk_usage(engine).free<5*1024**3: raise ValueError('Less than five GiB free before generation/build')
        origin_plan=controller/nomination['origin_plan_path'];origin_study=controller/nomination['origin_study_path']
        if sha(origin_plan)!=nomination['origin_plan_sha256'] or sha(origin_study)!=nomination['origin_study_sha256']:
            raise ValueError('Original nomination evidence bytes differ')
        old_plan,old_study=read(origin_plan),read(origin_study)
        if old_study['status']!='failed' or old_study['source']['ledger_commit']!=ENGINE_COMMIT:
            raise ValueError('Original failed study provenance differs')
        original_first=old_plan['candidates'][0]
        if original_first['build_id']!=NOMINEE_ID or original_first['candidate']!=nomination['nominees'][0]['candidate']:
            raise ValueError('Replication configuration differs from original first nomination')
        versions=tool_versions()
        data=engine/'tools/compilerpilot/data/replications'/args.run_id
        builds=engine/'tools/compilerpilot/builds'/args.run_id
        if data.exists() or builds.exists(): raise ValueError('Fresh data/build folders required')
        module_hashes={name:sha(engine/'tools/compilerpilot/compilerpilot'/name)
            for name in ('build.py','bench.py','confirm.py','space.py','protocol.py','study.py')}
        declaration={'schema_version':1,'kind':status['kind'],'declared_at':now(),'run_id':args.run_id,
            'controller_commit':git(controller,'rev-parse','HEAD'),'controller_script_sha256':sha(Path(__file__)),
            'engine':source,'host':host,'allowed_cpus':allowed,'tool_versions':versions,
            'nomination_manifest_sha256':sha(nomination_path),'nomination':nomination,
            'frozen_module_sha256':module_hashes,'data':str(data),'builds':str(builds),
            'model_calls':0,'no_new_search':True,'no_cross_host_timing_pooling':True,
            'baseline_gate':'Unchanged confirmer: ten interleaved baseline groups, CV<2%, drift<=2%, winner delta>3x baseline noise.',
            'futility_rule':'Append first; stop only if any baseline observation CV>=2%, an irreversible maximum-run failure. No partial across-group CV/drift stopping.',
            'claim_boundary':nomination['claim_boundary']}
        # Fsync every declaration and nomination before generation, building, or timing.
        save(output/'protocol.json',declaration)
        save(output/'nomination-manifest.json',nomination)
        shutil.copy2(origin_plan,output/'nomination-source-plan.json')
        shutil.copy2(origin_study,output/'nomination-source-study.json')
        guard_hashes={str(origin_plan):sha(origin_plan),str(origin_study):sha(origin_study),str(nomination_path):sha(nomination_path),str(Path(__file__)):sha(Path(__file__))}
        inputs=None;binary_hashes={}
        def verify():
            if source_provenance(engine)!=source or host_identity()!=host: raise RuntimeError('Pinned engine/source/host changed')
            if git(engine,'status','--porcelain','--untracked-files=no','--','tools/compilerpilot/compilerpilot','tools/compilerpilot/scripts'):
                raise RuntimeError('Frozen harness changed')
            if any(sha(Path(path))!=digest for path,digest in guard_hashes.items()): raise RuntimeError('Controller or nomination changed')
            if any(sha(engine/'tools/compilerpilot/compilerpilot'/name)!=digest for name,digest in module_hashes.items()): raise RuntimeError('Frozen implementation changed')
            if inputs:
                if read(data/'manifest.json')!=inputs: raise RuntimeError('Input manifest changed')
                for name in ('eval.lob','train.lob'):
                    if sha(data/name)!=inputs['files'][name]['sha256']: raise RuntimeError('Input bytes changed')
        phase='data'
        inputs=prepare_data(engine,data,5000000,20261011,20261012,jobs=2)
        if (inputs['files']['eval.lob']['sha256']!=nomination['evaluation_input_sha256'] or
            inputs['files']['train.lob']['sha256']!=nomination['training_input_sha256']): raise RuntimeError('Regenerated feed differs from original nomination feeds')
        save(output/'input-manifest.json',inputs);verify()
        phase='build'
        manager=BuildManager(engine,builds,jobs=2)
        baseline=manager.build(Candidate.from_dict(nomination['baseline']['candidate']))
        candidates=[manager.build(Candidate.from_dict(item['candidate']),training_input=data/'train.lob') for item in nomination['nominees']]
        save(output/'builds.json',{'baseline':baseline.to_dict(),'candidates':[build.to_dict() for build in candidates]})
        if not baseline.success or not all(build.success for build in candidates): raise RuntimeError('Fixed configuration failed to rebuild; no fallback configuration allowed')
        binary_hashes={str(Path(build.build_dir)/name):sha(Path(build.build_dir)/name)
            for build in [baseline,*candidates] for name in ('ledger_bench','ledger_differential')}
        save(output/'binary-hashes-before.json',binary_hashes)
        phase='mutation_gate'
        gate_report=gate.qualify_gate(engine,data/'eval.lob',output/'mutation-gate.json')
        if gate_report.get('qualified') is not True: raise RuntimeError('Semantic mutation was not rejected')
        verify()
        phase='confirmation'
        trace=output/'confirmation-trace.jsonl';trace.touch(exist_ok=False)
        runner=BenchmarkRunner(BenchmarkConfig(data/'eval.lob',cpu=0,runs=5,warmup=50000,throughput_replays=20,timeout=600))
        def record(observation):
            nonlocal observations
            observations+=1
            if measurement_replays(observation)!=20: raise RuntimeError('Replay protocol changed')
            append_observation(trace,observation,baseline.build_id,verify)
        result=confirm_candidates(runner,baseline,candidates,rounds=10,full_validation=True,callback=record)
        verify()
        if any(sha(Path(path))!=digest for path,digest in binary_hashes.items()): raise RuntimeError('A timed executable changed')
        if measurement_replays(result)!=20: raise RuntimeError('Confirmation precision changed')
        if result.get('status')=='confirmed' and not full_validation_complete(result):
            raise RuntimeError('Confirmed result lacks the exact 100M-command/15-test validation evidence')
        save(output/'confirmation.json',result)
        confirmed=result.get('status')=='confirmed'
        status.update(status='speedup_confirmed' if confirmed else result.get('status'),
            recommendation=result.get('recommendation') if confirmed else None,
            source_host_input_binary_unchanged=True,observations_recorded=observations,ended_at=now())
        save(output/'status.json',status)
        print(json.dumps({'replication_status':status['status'],'recommendation':status['recommendation'],
            'observations_recorded':observations,'model_calls':0}),flush=True)
        return 0 if confirmed or result.get('status')=='no_significant_improvement' else 1
    except BaseException as error:
        cleanup=cleanup_owned_children();cleanup_complete=cleanup['complete']
        save(output/'child-cleanup.json',cleanup)
        failed='early_noisy' if isinstance(error,BaselineNoiseAbort) else 'interrupted' if isinstance(error,KeyboardInterrupt) else 'failed'
        save(output/'confirmation.json',{'status':failed,'recommendation':None,'winner':None,
            'failure_class':type(error).__name__,'reason':str(error)[:1000],'unvalidated_result':result,'throughput_replays':20})
        status.update(status=failed,recommendation=None,phase=phase,observations_recorded=observations,
            failure_class=type(error).__name__,reason=str(error)[:1000],ended_at=now())
        save(output/'status.json',status)
        print(json.dumps({'replication_status':failed,'phase':phase,'failure_class':type(error).__name__}),flush=True)
        return 1
    finally:
        if cleanup_complete: lock.unlink(missing_ok=True)


def collect(args):
    controller,engine,output=paths(args)
    if (output/'.replication.lock').exists(): raise ValueError('Cannot collect an active/interrupted locked attempt')
    output.mkdir(parents=True,exist_ok=True)
    if (output/'evidence-manifest.json').exists(): raise ValueError('Evidence already sealed')
    if args.launch_log and args.launch_log.is_file(): shutil.copy2(args.launch_log,output/'launch.log')
    data_root=engine/'tools/compilerpilot/data/replications'/args.run_id
    for name in ('configure.log','build.log','eval.lob.log','train.lob.log','manifest.json'):
        source=data_root/name
        if source.is_file():
            if source.is_symlink(): raise ValueError('Unexpected input evidence symlink')
            target=output/'input-evidence'/name;target.parent.mkdir(parents=True,exist_ok=True)
            shutil.copy2(source,target)
            if sha(source)!=sha(target): raise RuntimeError('Input-generation evidence copy changed bytes')
    build_root=engine/'tools/compilerpilot/builds'/args.run_id
    compressed=[]
    for source in sorted(build_root.rglob('*')):
        if not source.is_file(): continue
        if source.is_symlink(): raise ValueError('Unexpected build evidence symlink')
        relative=source.relative_to(build_root);target=output/'build-evidence'/relative
        if source.suffix in COMPRESSED:
            target=target.with_name(target.name+'.gz');target.parent.mkdir(parents=True,exist_ok=True)
            original=sha(source)
            with target.open('xb') as raw:
                with gzip.GzipFile(filename='',mode='wb',fileobj=raw,mtime=0) as sink:
                    with source.open('rb') as stream: shutil.copyfileobj(stream,sink,1024*1024)
            restored=hashlib.sha256();size=0
            with gzip.open(target,'rb') as stream:
                for block in iter(lambda:stream.read(1024*1024),b''): restored.update(block);size+=len(block)
            if restored.hexdigest()!=original or size!=source.stat().st_size: raise RuntimeError('Compressed artifact did not roundtrip')
            compressed.append({'original_relative_path':str(relative),'retained_path':str(target.relative_to(output)),
                'original_sha256':original,'compressed_sha256':sha(target),'original_size_bytes':size,
                'compressed_size_bytes':target.stat().st_size,'lossless_roundtrip_verified':True})
        elif source.name in NAMES:
            target.parent.mkdir(parents=True,exist_ok=True);shutil.copy2(source,target)
            if sha(source)!=sha(target): raise RuntimeError('Raw evidence copy changed bytes')
    raw=[]
    before=read(output/'binary-hashes-before.json') if (output/'binary-hashes-before.json').is_file() else {}
    after={}
    for name,digest in before.items():
        source=Path(name)
        if not source.resolve().is_relative_to(build_root.resolve()): raise ValueError('Binary record is outside this attempt')
        current=sha(source) if source.is_file() else None
        after[name]={'sha256':current,'matches_before':current==digest,'copied':False}
    save(output/'binary-hashes-after.json',after)
    if (engine/'tools/verify_results.py').is_file():
        spec=importlib.util.spec_from_file_location('frozen_independent_verifier',engine/'tools/verify_results.py')
        verifier=importlib.util.module_from_spec(spec);spec.loader.exec_module(verifier)
        for summary in sorted((output/'build-evidence').rglob('summary.json')):
            item={'directory':str(summary.parent.relative_to(output)),'verified':False}
            try: item.update(verified=True,report=verifier.verify_directory(summary.parent))
            except Exception as error: item['failure_class']=type(error).__name__
            raw.append(item)
    save(output/'collection.json',{'schema_version':1,'collected_at':now(),'model_calls':0,
        'compressed_artifacts':compressed,'raw_audits':raw,'claim_boundary':'Independent host results only; no timing pooling, no original search completion or policy ranking.'})
    manifest={str(path.relative_to(output)):sha(path) for path in sorted(output.rglob('*')) if path.is_file() and path.name!='evidence-manifest.json'}
    save(output/'evidence-manifest.json',{'hash_algorithm':'sha256','manifest_excludes_itself':True,'files':manifest})
    total=sum(path.stat().st_size for path in output.rglob('*') if path.is_file())
    allowed=total<=MAX_PACKET_BYTES
    if args.github_output:
        with args.github_output.open('a') as stream: stream.write('upload='+str(allowed).lower()+chr(10))
    print(json.dumps({'packet_bytes':total,'packet_limit_bytes':MAX_PACKET_BYTES,'upload_allowed':allowed,'files_hashed':len(manifest)}))
    return 0 if allowed else 1


def main(argv=None):
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--controller',type=Path,required=True);parser.add_argument('--engine',type=Path,required=True)
    parser.add_argument('--run-id',required=True);parser.add_argument('--collect-only',action='store_true')
    parser.add_argument('--launch-log',type=Path);parser.add_argument('--github-output',type=Path)
    args=parser.parse_args(argv)
    if not re.fullmatch(r'[A-Za-z0-9][A-Za-z0-9_-]{0,63}',args.run_id): raise ValueError('Invalid run id')
    return collect(args) if args.collect_only else run(args)

if __name__=='__main__':
    try: raise SystemExit(main())
    except Exception as error:
        print(json.dumps({'replication_controller':'refused','failure_class':type(error).__name__}),file=sys.stderr);raise SystemExit(1)
