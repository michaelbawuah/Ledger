# One current-runtime qualification attempt

The previous Codespaces and GitHub Actions experiments failed their published
noise gates. This is a separate, single attempt on the currently available
Linux runtime. It preserves those failures and uses no model requests or paid
compute. Qualification alone cannot support a speedup claim.

The [controller](../scripts/run_runtime_qualification.py) and this protocol must
be committed and published before any new timings. The controller refuses an
unexpected controller commit, dirty measurement implementation, changed host,
changed inputs or executable bytes, existing attempt directory, or mismatched
toolchain. The engine lives in a separate checkout at
`7c43ec7346796040a6c8b8f8d3ad22d0bd7446d6`; its measurement code and gates stay
unchanged.

## Declared host and measurements

This attempt is restricted to the inspected AMD EPYC 9V74 80-Core Processor
runtime, original affinity `0..8`, and cgroup CPU quota `800000 100000`.
Benchmark CPU 8 is the maximum originally allowed CPU, selected before timing.
The controller and builds run on CPUs 0,1 with two build jobs. This is available
shared compute; the observed hardware does not establish exclusive ownership.
The controller records the boot identity, cgroup quota/cpuset and CPU counters,
Python/kernel details, exact compiler versions and all provenance hashes.

| Item | Fixed value |
| --- | --- |
| Compilers | GCC 13; Clang, LLVM profiler and LLD 18 |
| Evaluation feed | 5,000,000 commands; seed 20261011 |
| Separate PGO feed | 5,000,000 commands; seed 20261012 |
| Throughput work unit | 20 complete evaluation replays per reported sample |
| E1 qualification | Ten baseline groups, five reported samples each |
| E5 confirmation | Ten interleaved rounds, one baseline and one fixed nominee each |
| Existing warmup | 50,000 commands per benchmark invocation |
| Timeout | 600 seconds per benchmark command |
| Attempts | One; no automatic retries or fallback candidates |

The regenerated feeds must match the original nomination hashes. The
[prior nomination manifest](../scripts/host_replication_nominees.json) supplies
the hypothesis only: its original platform/CPU fields are historical and do
not replace this runtime protocol.

## Fixed conditioning and stop rules

Before E1, run the matching baseline executable on CPU 8 for a fixed 300 seconds
of monotonic wall time. Each conditioning group uses one reported sample,
20 complete replays and the existing warmup. Complete the last whole group
even if it crosses the deadline. Repeat the same fixed conditioning exactly
once before E5, after the nominee build and semantic mutation check.

Conditioning stops only on elapsed wall time, never throughput or CV. Retain
every complete group's raw evidence, actual elapsed time and group count.
Correctness/provenance failure stops the attempt. Conditioning observations
have a separate role and are excluded from performance statistics by that
role; no slow samples or outliers are discarded. The phase inventory also
separates E1, E5 and PGO training evidence.

Build the baseline first and qualify it with the frozen Harness calculation:
its conservative CV must be below 2%, every within-group CV below 2%, and the
across-group sample CV below 2%. All ten groups must be correct. An observed
baseline within-group CV at or above 2% is appended before stopping because
it irreversibly fails the maximum gate. Partial across-group CV or drift
never triggers early stopping. Any failed E1 gate stops before nominee build.

Only a qualified runtime may build original top-ranked nominee
`6d3511b71fcfb52d`: Clang O3, native ISA, 64-byte alignment, PGO and unrolling
enabled, vectorization/frame-pointer/semantic-interposition/LTO disabled,
default inlining. There is no new search or nomination. After the frozen
semantic mutation gate and fixed conditioning, run the unchanged confirmer:
CV below 2%, drift at most 2%, improvement above three times baseline noise,
and exact 100,000,000-command differential validation plus all 15 CTest cases.
Failures or interruptions retain their evidence and no recommendation.

Even a successful result supports only a measured speedup of this fixed,
previously model-nominated configuration on this host. It cannot establish
completion of the original agent budget or that the agent beats search.

## Launch and collect

After publishing and reviewing the exact controller commit, launch once from
the controller checkout. Replace the paths and full 40-character published SHA:

```sh
python tools/compilerpilot/scripts/run_runtime_qualification.py \
  --controller /path/to/controller --engine /path/to/frozen-engine \
  --expected-controller PUBLISHED_COMMIT --run-id runtime-20261030-01
```

After the process exits and owned children are stopped, seal the same attempt:

```sh
python tools/compilerpilot/scripts/run_runtime_qualification.py \
  --controller /path/to/controller --engine /path/to/frozen-engine \
  --expected-controller PUBLISHED_COMMIT --run-id runtime-20261030-01 \
  --collect-only --launch-log /path/to/launch.log
```

Collection copies every retained raw result, losslessly compresses compiler
profiles/reports, independently audits raw benchmark summaries, records final
binary hashes and seals the packet with a SHA256 manifest. It refuses an active
lock or an already sealed packet. Controller tests run from
`tools/compilerpilot` using `python -m pytest tests/test_runtime_qualification.py`.
