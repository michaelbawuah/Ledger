#!/usr/bin/env python3
"""Offline audit of a SEALED runtime packet. Never launches a benchmark/compiler.

Run only after collection, with --packet, --controller, --engine and --output.
Writes outside the packet so the sealed manifest remains unchanged.
"""
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
import shlex
import statistics as st
import subprocess
import xml.etree.ElementTree as ET

CONTROLLER='274fb1c7cbd40af903e3ecd53ce80e6e958a823d'
ENGINE='7c43ec7346796040a6c8b8f8d3ad22d0bd7446d6'
SOURCE='adcb9b9bc745d28411bde43e91eb21b2dd44c9455c4666ccd2f1d1ad4f6251d7'
BASE='be180963747c4559'
NOMINEE='6d3511b71fcfb52d'
MODEL='AMD EPYC 9V74 80-Core Processor'
EVAL='f3618b200095cc3aecf9bfd317f583500234b2c7fe98e2c3fba3e33975647a04'
TRAIN='c9f6e216eb41c89fbda0c8c6f0310d2e7f5443ca3b1f0c3633a551b8371441b4'


def require(value,message):
    if not value:raise ValueError(message)


def sha(path):
    digest=hashlib.sha256()
    with Path(path).open('rb') as stream:
        for block in iter(lambda:stream.read(1024*1024),b''):digest.update(block)
    return digest.hexdigest()


def unique(pairs):
    result={}
    for key,value in pairs:
        require(key not in result,'Duplicate JSON field '+key);result[key]=value
    return result


def read(path):
    return json.loads(Path(path).read_text(),object_pairs_hook=unique,
        parse_constant=lambda value:(_ for _ in ()).throw(ValueError('Nonfinite JSON '+value)))


def git_bytes(root,commit,path):
    return subprocess.check_output(['git','-C',str(root),'show',commit+':'+str(path)],timeout=20)


def binding(root,commit,path,digest):
    require(hashlib.sha256(git_bytes(root,commit,path)).hexdigest()==digest,'Published byte binding failed: '+str(path))


def live_source(root):
    paths=[root/'CMakeLists.txt'];ignored={'results','__pycache__','.pytest_cache','.git'}
    for name in ('src','include','bench','tests'):
        for parent,children,files in os.walk(root/name,followlinks=False):
            children[:]=[entry for entry in children if entry not in ignored]
            paths.extend(Path(parent)/entry for entry in files if entry not in ignored and (Path(parent)/entry).is_file())
    digest=hashlib.sha256()
    for path in sorted(paths,key=lambda item:item.relative_to(root).as_posix()):
        digest.update(str(path.relative_to(root)).encode()+b'\0');digest.update(bytes.fromhex(sha(path)))
    return digest.hexdigest()


def close(actual,expected,name):
    require(isinstance(actual,(float,int)) and not isinstance(actual,bool) and math.isfinite(actual)
        and math.isclose(actual,expected,rel_tol=1e-11,abs_tol=1e-9),'Reconstruction differs: '+name)


def role(name):
    return ('conditioning_e1' if name.startswith('condition-e1-') else
        'conditioning_e5' if name.startswith('condition-e5-') else
        'qualification' if name.startswith('baseline-') else
        'confirmation' if name.startswith('confirm-') else
        'PGO_training' if name=='training' else 'other')


def stats(rows):
    values=[row['throughput'] for row in rows];sigma=st.stdev(values) if len(values)>1 else 0.
    return {'throughput':st.median(values),'cv':sigma/st.mean(values),'stdev':sigma,
        'noise_stdev':max(sigma,st.median(row['cv']*row['throughput'] for row in rows)),
        'max_run_cv':max(row['cv'] for row in rows),'median_run_cv':st.median(row['cv'] for row in rows),
        'p50_ns':st.median(row['p50_ns'] for row in rows),'p99_ns':st.median(row['p99_ns'] for row in rows),
        'spread':max(values)-min(values),'observations':len(rows)}


def qualification(rows):
    if not rows:return {'groups':0,'passed':False}
    values=[row['throughput'] for row in rows];median=st.median(values)
    across=st.stdev(values) if len(values)>1 else 0.
    conservative=max(across,max(row['cv']*row['throughput'] for row in rows))/median
    return {'groups':len(rows),'median_throughput':median,'conservative_cv':conservative,
        'across_group_cv':across/st.mean(values),'max_within_group_cv':max(row['cv'] for row in rows),
        'passed':len(rows)==10 and conservative<.02 and across/st.mean(values)<.02
            and max(row['cv'] for row in rows)<.02}


def audit(args):
    packet=args.packet.resolve();require(not (packet/'.replication.lock').exists(),'Active/unclean attempt; wait for collection')
    require(not args.output.resolve().is_relative_to(packet),'Audit output must be outside sealed packet')
    manifest=read(packet/'evidence-manifest.json');files=manifest['files']
    require(manifest['hash_algorithm']=='sha256' and manifest['manifest_excludes_itself'] is True,'Wrong seal format')
    actual={str(path.relative_to(packet)) for path in packet.rglob('*') if path.is_file() and path.name!='evidence-manifest.json'}
    require(actual==set(files),'Sealed packet has missing or unbound files')
    for name,digest in files.items():
        path=packet/name;require(not path.is_symlink() and path.resolve().is_relative_to(packet),'Unsafe sealed path')
        require(sha(path)==digest,'Packet hash differs: '+name)
    protocol=read(packet/'protocol.json');status=read(packet/'status.json');nom=read(packet/'nomination-manifest.json')
    require(protocol['controller_commit']==CONTROLLER and protocol['engine']==
        {'ledger_commit':ENGINE,'ledger_dirty':False,'source_sha256':SOURCE},'Unfrozen controller/engine identity')
    for key,value in {'benchmark_cpu':8,'driver_cpus':[0,1],'commands':5000000,'throughput_replays':20,
        'reported_runs':5,'latency_replays':1,'qualification_groups':10,'confirmation_rounds':10,
        'conditioning_wall_seconds_each':300,'conditioning_runs':1,'maximum_runtime_attempts':1,
        'automatic_retries':0,'model_calls':0,'conditioning_excluded_by_role_only':True}.items():
        require(protocol.get(key)==value,'Wrong declared runtime field '+key)
    snapshot=protocol['resources_before']
    require(snapshot['cpu_model']==MODEL and snapshot['allowed_cpus']==list(range(9))
        and snapshot['cpu_max']=='800000 100000','Wrong declared hardware')
    require(protocol['host']['system']=='Linux' and protocol['host']['machine']=='x86_64'
        and re.fullmatch('[0-9a-f]{64}',protocol['host']['boot_id_sha256']),'Missing host/boot identity')
    require(nom==protocol['nomination'] and nom['evaluation_input_sha256']==EVAL
        and nom['training_input_sha256']==TRAIN,'Nomination/input declaration differs')
    require(nom['baseline']['build_id']==BASE and len(nom['nominees'])==1
        and nom['nominees'][0]['build_id']==NOMINEE,'Fixed nominee changed')
    for item in [nom['baseline'],*nom['nominees']]:
        digest=hashlib.sha256(json.dumps(item['candidate'],sort_keys=True,separators=(',',':')).encode()).hexdigest()[:16]
        require(digest==item['build_id'],'Candidate hash differs')
    for archive,path in [('controller.py','tools/compilerpilot/scripts/run_runtime_qualification.py'),
        ('archive-helper.py','tools/compilerpilot/scripts/run_host_replication.py'),
        ('nomination-manifest.json','tools/compilerpilot/scripts/host_replication_nominees.json')]:
        binding(args.controller,CONTROLLER,path,sha(packet/archive))
    require(sha(packet/'controller.py')==protocol['controller_script_sha256']
        and sha(packet/'nomination-manifest.json')==protocol['nomination_manifest_sha256'],'Declared controller/nomination SHA differs')
    for field in ('plan','study'):
        binding(args.controller,CONTROLLER,nom['origin_'+field+'_path'],nom['origin_'+field+'_sha256'])
    for name,digest in protocol['frozen_module_sha256'].items():
        binding(args.engine,ENGINE,'tools/compilerpilot/compilerpilot/'+name+'.py',digest)
        require(sha(args.engine/'tools/compilerpilot/compilerpilot'/(name+'.py'))==digest,'Live frozen module changed')
    binding(args.engine,ENGINE,'tools/compilerpilot/scripts/check_gate.py',protocol['frozen_gate_script_sha256'])
    require(sha(args.engine/'tools/compilerpilot/scripts/check_gate.py')==protocol['frozen_gate_script_sha256'],'Live frozen gate changed')
    require(subprocess.check_output(['git','-C',str(args.engine),'rev-parse','HEAD'],text=True,timeout=20).strip()==ENGINE
        and live_source(args.engine)==SOURCE,'Fresh engine source identity differs')
    for tool in ('g++','clang++','llvm-profdata','ld.lld'):
        require(re.search(r'\b'+('13' if tool=='g++' else '18')+r'\.',protocol['tool_versions'][tool]),'Wrong recorded toolchain '+tool)
    verifier_path=args.engine/'tools/verify_results.py'
    binding(args.engine,ENGINE,'tools/verify_results.py',sha(verifier_path))
    spec=importlib.util.spec_from_file_location('independent_frozen_raw_verifier',verifier_path)
    verifier=importlib.util.module_from_spec(spec);spec.loader.exec_module(verifier)
    inputs=read(packet/'input-manifest.json')
    require(inputs['files']['eval.lob']['sha256']==EVAL and inputs['files']['train.lob']['sha256']==TRAIN,'Regenerated input declaration differs')
    fresh_inputs={}
    for name,digest in [('eval.lob',EVAL),('train.lob',TRAIN)]:
        path=Path(protocol['data'])/name
        require(path.is_file() and sha(path)==digest,'Fresh input rehash failed: '+name);fresh_inputs[name]=digest
    collection=read(packet/'collection.json');archives=0
    for item in collection['compressed_artifacts']:
        path=packet/item['retained_path'];require(sha(path)==item['compressed_sha256'],'Archive SHA differs')
        digest=hashlib.sha256();size=0
        with gzip.open(path,'rb') as stream:
            for block in iter(lambda:stream.read(1024*1024),b''):digest.update(block);size+=len(block)
        require(digest.hexdigest()==item['original_sha256'] and size==item['original_size_bytes'],'Lossless archive differs');archives+=1
    buildroot=packet/'build-evidence';builds={}
    for path in sorted(buildroot.glob('*/build.json')):
        build=read(path);require(build['build_id'] in (BASE,NOMINEE),'Unplanned build retained')
        expected=nom['baseline'] if build['build_id']==BASE else nom['nominees'][0]
        require(build['candidate']==expected['candidate'],'Build candidate differs')
        for key,value in protocol['engine'].items():require(build['provenance'][key]==value,'Build source differs')
        if build['build_id']==NOMINEE:
            require(build['provenance']['training_input_sha256']==TRAIN
                and build['provenance']['training_input']==protocol['data']+'/train.lob','Nominee PGO feed differs')
            if build['success']:require(build['provenance']['profile_verification']['correctness'] is True,'PGO profile consumption unverified')
        builds[build['build_id']]=build
    raw={};roles={key:[] for key in ('conditioning_e1','conditioning_e5','qualification','confirmation','PGO_training','other')}
    for path in sorted(buildroot.rglob('summary.json')):
        directory=path.parent;summary=read(path);relative=str(directory.relative_to(buildroot));group_role=role(directory.name)
        verified=verifier.verify_directory(directory);expected_runs=1 if group_role in ('conditioning_e1','conditioning_e5','PGO_training') else 5
        require(group_role!='other','Unplanned raw result group '+relative)
        require(summary['commands']==5000000 and summary['runs']==expected_runs,'Raw group shape differs')
        require(summary['throughput_replays']==(1 if group_role=='PGO_training' else 20),'Raw replay protocol differs')
        if group_role=='PGO_training':require(summary['input']==protocol['data']+'/train.lob','Raw PGO training feed differs')
        if group_role!='PGO_training':
            require(summary['input']==protocol['data']+'/eval.lob' and summary['warmup_commands']==50000,'Raw input/warmup differs')
            require(summary['machine']['affinity_cpus']=='8' and summary['machine']['cpu_model']==MODEL,'Raw host/pinning differs')
            build=builds[directory.parent.name]
            require(shlex.split(summary['compiler']['flags'])==build['flags']+['-DNDEBUG','standard=C++23'],'Raw compiler flags differ')
            measurement=read(directory/'measurement.json');differential=read(directory/'differential.json')
            require(measurement['correctness'] is True and differential['status']=='pass'
                and differential['seeds']==5 and differential['commands_per_seed']==100000,'Per-group correctness oracle missing')
            with (directory/'runs.csv').open(newline='') as stream:
                selected=[row for row in csv.DictReader(stream) if row['engine']=='fast-bitmap']
            rates=[float(row['commands_per_second']) for row in selected]
            derived={'throughput':st.median(rates),'cv':st.stdev(rates)/st.mean(rates) if len(rates)>1 else 0.,
                'p50_ns':st.median(float(row['p50_ns']) for row in selected),'p99_ns':st.median(float(row['p99_ns']) for row in selected)}
            for name,value in derived.items():close(measurement[name],value,relative+'/'+name)
            require(measurement['provenance']['input_sha256']==EVAL and measurement['provenance']['cpu']==8,'Measurement input/CPU differs')
            raw[relative]=(measurement,derived,verified)
        roles[group_role].append({'directory':relative,'runs':summary['runs'],'throughput_replays':summary['throughput_replays']})
    require(read(packet/'phase-inventory.json')['groups_by_role']==roles,'Phase inventory differs from retained raw groups')
    traces={};all_trace_dirs=set()
    for filename,group_role in [('conditioning-e1-trace.jsonl','conditioning_e1'),('conditioning-e5-trace.jsonl','conditioning_e5'),
        ('qualification-trace.jsonl','qualification'),('confirmation-trace.jsonl','confirmation')]:
        path=packet/filename;observations=[]
        if path.exists():
            for line in path.read_text().splitlines():
                item=json.loads(line);observation=item['observation'];observations.append(observation)
                relative=str(Path(observation['provenance']['summary']).parent.relative_to(protocol['builds']))
                require(relative in raw and role(Path(relative).name)==group_role,'Trace references wrong raw group')
                require(relative==observation['build_id']+'/'+observation['label'],'Trace build/label does not name its raw directory')
                require(observation['build_id'] in ((BASE,NOMINEE) if group_role=='confirmation' else (BASE,)),
                    'Unplanned build in phase trace')
                measurement,derived,unused=raw[relative]
                require(measurement=={key:observation[key] for key in measurement},'Trace differs from retained measurement')
                require(relative not in all_trace_dirs,'Repeated measurement trace');all_trace_dirs.add(relative)
        traces[group_role]=observations
        metadata=packet/('conditioning-'+('e1' if group_role=='conditioning_e1' else 'e5')+'.json')
        if group_role.startswith('conditioning') and metadata.exists():
            doc=read(metadata);require(doc['target_wall_seconds']==300 and doc['actual_wall_seconds']>=300
                and doc['completed_groups']==len(observations) and doc['reported_runs']==1
                and doc['throughput_replays']==20 and doc['role']=='conditioning_only_not_performance_estimation',
                'Conditioning completion metadata differs')
            phase='e1' if group_role=='conditioning_e1' else 'e5'
            require(observations and [row['label'] for row in observations]==
                [f'condition-{phase}-{i:04d}' for i in range(len(observations))],'Wrong complete conditioning sequence')
    require(all_trace_dirs==set(raw),'Retained complete measurement omitted from trace')
    e1=traces['qualification'];e1stats=qualification(e1)
    if e1:require((packet/'conditioning-e1.json').exists() and traces['conditioning_e1'],'E1 conditioning not completed')
    require([row['label'] for row in e1]==['baseline-'+str(i) for i in range(len(e1))]
        and all(row['build_id']==BASE for row in e1),'Wrong qualification sequence')
    if (packet/'qualification.json').exists():
        doc=read(packet/'qualification.json');require(doc['observations']==[{k:v for k,v in row.items() if k not in ('label','build_id')} for row in e1],'Qualification trace/document differs')
        require(doc['strict_runtime_gate']==e1stats['passed'],'Recorded E1 gate differs')
        close(doc['metric']['cv'],e1stats['conservative_cv'],'E1 conservative CV')
    current=status['status'];require(status['model_calls']==0,'Unexpected model calls')
    require(current not in ('running','measuring'),'Attempt incomplete')
    early_e1=current=='early_noisy' and status['phase']=='qualification'
    if current=='qualification_noisy' or early_e1:
        require(not e1stats['passed'] and set(builds)=={BASE} and not traces['confirmation']
            and not traces['conditioning_e5'],'E1 failure did not stop before nominee')
        if current=='qualification_noisy':require(len(e1)==10,'Incomplete E1 noise decision')
        else:require(e1 and e1[-1]['cv']>=.02 and all(row['cv']<.02 for row in e1[:-1]),'Wrong irreversible E1 stop')
    e5=traces['confirmation'];e5stats={};confirmed=False
    if e5:
        require(e1stats['passed'],'E5 ran before qualified E1')
        require([(row['round'],row['build_id']) for row in e5]==[(i//2,NOMINEE if i%2==0 else BASE) for i in range(len(e5))],'Wrong E5 order')
        require(set(builds)=={BASE,NOMINEE},'Wrong E5 builds')
        mutation=read(packet/'mutation-gate.json')
        require(mutation['qualified'] is True and mutation['build_success'] is True and mutation['correctness'] is False
            and mutation['source_unchanged'] is True and mutation['pinned_source_unchanged'] is True
            and all(mutation[key] is None for key in ('throughput','p50_ns','p99_ns'))
            and mutation['original_source']==protocol['engine'],'Semantic mutation gate not established')
        require((packet/'conditioning-e5.json').exists(),'E5 conditioning not completed')
        if len(e5)==20:
            e5stats={bid:stats([row for row in e5 if row['build_id']==bid]) for bid in (BASE,NOMINEE)}
            base=e5stats[BASE];candidate=e5stats[NOMINEE];base_rows=[row for row in e5 if row['build_id']==BASE]
            drift=abs(st.median(row['throughput'] for row in base_rows[5:])/st.median(row['throughput'] for row in base_rows[:5])-1)
            threshold=3*base['noise_stdev'];delta=candidate['throughput']-base['throughput']
            gates={'baseline_variability':max(base['cv'],base['max_run_cv'])<.02,'candidate_variability':max(candidate['cv'],candidate['max_run_cv'])<.02,
                'baseline_drift':drift<=.02,'strict_three_sigma':delta>threshold}
            e5stats.update(drift=drift,absolute_three_sigma_threshold=threshold,relative_three_sigma_threshold=threshold/base['throughput'],
                speedup_pct=100*(candidate['throughput']/base['throughput']-1),gates=gates)
            confirmation=read(packet/'confirmation.json')
            if confirmation.get('medians'):
                require(confirmation['observations']==e5,'Confirmation trace/document differs')
                require(confirmation['status']==('confirmed' if current=='speedup_confirmed' else current),'Controller/confirmation status differs')
                for bid in (BASE,NOMINEE):
                    for key,value in e5stats[bid].items():close(confirmation['medians'][bid][key],value,'E5 '+bid+'/'+key)
                close(confirmation['medians'][BASE]['drift'],drift,'E5 drift')
                close(confirmation['threshold']['absolute_throughput'],threshold,'E5 threshold')
            if current=='noisy':require(not gates['baseline_variability'] or not gates['baseline_drift'],'Reported E5 noise gate did not fail')
            if current=='no_significant_improvement':require(gates['baseline_variability'] and gates['baseline_drift']
                and not (gates['candidate_variability'] and gates['strict_three_sigma']),'Reported absence of significant improvement differs')
            if current=='speedup_confirmed':
                require(all(gates.values()) and confirmation['status']=='confirmed'
                    and confirmation['recommendation']==confirmation['winner']==status['recommendation']==NOMINEE,'Positive claim contradicts gates')
                validation=read(buildroot/NOMINEE/'validation/validation.json');report=read(buildroot/NOMINEE/'validation/differential.json')
                require(confirmation['full_validation']==validation and validation['correctness'] is True
                    and validation['throughput_replays']==20
                    and validation['ctest_exit_code']==validation['differential_exit_code']==0
                    and validation['ctest_planned_tests']==validation['ctest_completed_tests']==15
                    and validation['ctest_evidence_verified'] is True,'Final validation summary incomplete')
                require(report['status']=='pass' and report['seeds']==100 and report['commands_per_seed']==1000000
                    and report['commands_compared']==100000000 and validation['report']==report,'Exact100M evidence missing')
                planned=read(buildroot/NOMINEE/'validation/ctest-plan.json')['tests']
                suite=ET.parse(buildroot/NOMINEE/'validation/ctest.xml').getroot();cases=list(suite.iter('testcase'))
                require(len(planned)==len(cases)==15 and {test['name'] for test in planned}=={test.attrib['name'] for test in cases}
                    and not any(list(suite.iter(tag)) for tag in ('failure','error','skipped')),'Exact15 CTest evidence incomplete')
                confirmed=True
        if current=='early_noisy':require(status['phase']=='confirmation' and e5[-1]['build_id']==BASE and e5[-1]['cv']>=.02
            and all(row['cv']<.02 for row in e5[:-1] if row['build_id']==BASE),'Wrong irreversible E5 stop')
    require(current!='speedup_confirmed' or confirmed,'Positive claim without complete E5 evidence')
    if not confirmed:
        require(status.get('recommendation') is None,'Failed/noisy attempt retains recommendation')
        if (packet/'confirmation.json').exists():require(read(packet/'confirmation.json').get('recommendation') is None,'Failed confirmation retains recommendation')
    binary_records=read(packet/'binary-hashes-after.json')
    binary_before=read(packet/'binary-hashes-before.json')
    baseline_paths={protocol['builds']+'/'+BASE+'/'+name for name in ('ledger_bench','ledger_differential')}
    both_paths=baseline_paths|{protocol['builds']+'/'+NOMINEE+'/'+name for name in ('ledger_bench','ledger_differential')}
    require(set(binary_before) in (baseline_paths,both_paths) and (not e5 or set(binary_before)==both_paths),'Unexpected executable hash membership')
    require(set(binary_before)==set(binary_records) and all(item['matches_before'] is True and item['sha256']==binary_before[path]
        for path,item in binary_records.items()),'Executable continuity failed')
    require(all(sha(Path(path))==digest for path,digest in binary_before.items()),'Fresh executable rehash differs')
    qualification_binaries=read(packet/'qualification-binary-hashes-before.json')
    require(set(qualification_binaries)==baseline_paths and all(binary_before[path]==digest
        for path,digest in qualification_binaries.items()),'E1-to-E5 baseline executable bytes differ')
    for bid,build in builds.items():
        path=protocol['builds']+'/'+bid+'/ledger_bench'
        if path in binary_before:require(build['provenance']['binary_sha256']==binary_before[path],'Build benchmark SHA differs from timed executable')
    return {'packet_integrity_verified':True,'file_hashes_verified':len(files),'lossless_archives_verified':archives,
        'raw_directories_verified':sum(map(len,roles.values())),'trace_observations_verified':len(all_trace_dirs),
        'phase_counts':{key:len(value) for key,value in roles.items()},'qualification':e1stats,'confirmation':e5stats,
        'status':current,'controller_commit':CONTROLLER,'engine':protocol['engine'],'host':protocol['host'],
        'fresh_source_sha256':SOURCE,'fresh_input_sha256':fresh_inputs,'fresh_executables_rehashed':len(binary_before),
        'model_calls':0,'speedup_claim_supported':confirmed,'agent_win_claim_supported':False,
        'claim':'Fixed original model-nominated configuration speedup on this host only.' if confirmed else 'No speedup or agent-win claim supported.',
        'audit_helper_sha256':sha(Path(__file__)),'frozen_raw_verifier_sha256':sha(verifier_path),
        'limits':'Offline audit binds recorded bytes, rehashes available original source/inputs/executables and independently reconstructs raw statistics; no fresh benchmark or search is performed.'}


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    for name in ('packet','controller','engine','output'):parser.add_argument('--'+name,type=Path,required=True)
    args=parser.parse_args()
    try:result=audit(args)
    except Exception as error:
        print(json.dumps({'audit_passed':False,'failure_class':type(error).__name__,'reason':str(error)}));return 1
    args.output.parent.mkdir(parents=True,exist_ok=True);args.output.write_text(json.dumps(result,indent=2,sort_keys=True,allow_nan=False)+'\n')
    print(json.dumps({'audit_passed':True,'status':result['status'],'speedup_claim_supported':result['speedup_claim_supported'],'output':str(args.output)}));return 0


if __name__=='__main__':raise SystemExit(main())
