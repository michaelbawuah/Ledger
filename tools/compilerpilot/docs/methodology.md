# Experiment protocol

The research protocol follows five questions. Functional qualification is recorded separately from performance experiments. CompilerPilot is an in-repository component of [Ledger](../../../README.md); commands run from `Ledger/tools/compilerpilot` and discover the enclosing live engine automatically.

| Experiment | Method | Acceptance evidence |
|---|---|---|
| E1: noise | Ten baseline observations; five raw replay runs each; fixed core, input and warmup | Median, raw runs, within-observation and across-observation spread. Conservative CV <2%. |
| E2: knobs | Vary one knob at a time from GCC O3/native, keeping all others fixed | Throughput, p50/p99, compile seconds, text bytes and correctness for each value. |
| E3: search | Random/genetic/surrogate/agent × seeds 0,1,2 × 40 unique builds | Best-so-far curves, per-seed results and complete attempt inventory. |
| E4: predictor | Deduplicate candidates, fit transforms/models inside each fold | Out-of-fold MAE in speedup percentage points and Spearman rank correlation; scatter. |
| E5: confirmation | Interleave top three and baseline for ten rounds | Noise-aware medians, 100-seed × 1M differential, complete CTest pass. |

Input generation is deterministic. Both inputs contain one million commands by default. Evaluation seed is 20261011; PGO training seed is 20261012. Exact input hashes, the live Ledger commit, relevant engine/configuration source fingerprint and dirty state are stored with every new run. A manifest prevents silent reuse under a different data protocol.

Build time covers clean `cmake --build` wall time, adding both phases for PGO. Configure time is recorded separately. Text size is the `.text` section measured by `size -A` in bytes, displayed in KiB. Throughput selects Ledger's exact `fast-bitmap` engine key. Spread uses sample standard deviation. CV is a fraction, displayed as a percentage. The initial gate uses the larger within-observation or across-observation noise estimate.

## Declared throughput work per reported run

`--throughput-replays R` defaults to 1 and accepts integers from 1 through 20. For input length N, each reported run measures R fresh-book throughput passes and computes `N * R * 1e9 / sum(block_ns)`. Every block duration is included, and every block's complete state and checksums must agree with the single-input reference. Book construction and invariant checks retain their original position outside the measured processing loop. Each block's wall-clock processing time includes event consumption and checksum work; the implementation adds no per-command clock reads to throughput timing.

The latency measurement remains one independent N-command pass per engine/reported run, with its unchanged exact histogram. Thus `commands` is still the input/latency length, while `throughput_commands_per_run` records `N * R`. Summary schema 2 and `throughput_replays.csv` bind the requested count, effective command count, every block duration and every block checksum. Python independently checks those records before accepting a trial. Historical schema-1 records are R=1; their raw data is not rewritten.

The predeclared next qualification is a single R=5 attempt on the existing free Codespace using five million input commands, or 25 million throughput commands per reported run. It will use a fresh study ID, source fingerprint and data/results directories after review. This work window is not yet a completed qualification. R=5 leaves the input and latency-array working set unchanged; generating a 25-million-command input would change both the trajectory and memory footprint and is not this protocol.

The preserved [R=1 Codespaces attempt](../results/studies/codespaces-20261030-01/review.md) failed E1 with 2.5335% conservative variation; its 50 reported runs and all failed-gate evidence remain visible. Longer work may average short interruptions, but correlated host contention can persist. No outlier is removed, no 2% threshold is relaxed and no repeated attempt is made until a lucky pass. The declared R applies equally to baseline qualification, every search policy, sweep, drift check and final confirmation. Reports with mixed or mismatched R settings retain an inventory but withhold pooled rankings, strategy curves and predictor validation. An unchanged R is required when resuming a compatible study; any source/protocol change requires a new study ID.

The baseline is remeasured after each twenty completed unique builds. More than 2% drift or a failing noise/correctness gate discards that batch. Search stops; a new explicit run is required. Reports retain all failed attempts and never combine independent runs into a better-looking curve. Compile failures consume search budget, and every successful build must complete its correctness measurement before finish.

The deliberate mutation check copies Ledger to a temporary directory, changes buy crossing from `>=` to `>`, compiles it and requires the specific reference-checksum mismatch. A compile failure, timeout or missing executable cannot qualify the gate. The live Ledger engine source must remain unchanged; the mutation is confined to the temporary copy.

The model receives typed capabilities and compact feedback. Compiler flags are selected from a finite allow-list. No provider output reaches a shell. Requests, hypotheses, tools and results are traced; credentials are redacted and excluded from artifacts. Exact model ID, temperature and provider seed support are recorded. Missing credentials or unsupported API settings yield an incomplete experiment.

PGO uses independent input bytes and seed. GCC generation/use stays in the same object directory. Clang raw profiles are merged with matching `llvm-profdata`; ThinLTO links with `lld`. Untrained helper executables can emit missing-profile warnings; missing profiles for the benchmark hot path invalidate PGO qualification. Unsafe math is not in the search space.

## Authored LLVM pass experiment

The [LLVM 18 plugin](../llvm/README.md) is a separate compiler-implementation and correctness experiment. Its new-pass-manager function pass uses MemorySSA clobber identity to eliminate a same-block scalar integer reload, with conservative barriers for calls, atomics, volatile accesses and metadata. It does not change the typed flag search or the E1–E5 performance gates.

The [recorded comparison](../results/llvm-pass/llvm18-20261030-01-review.md) uses one fixed Clang frontend IR and three explicit `opt` pipelines: standard O2, an early custom pass with `mem2reg`, and the custom pass after O2. Each pipeline must pass the same 100-seed × 1M-command differential check and the same 15 CTest cases. The compiler launcher, archive-member hashes, full command history and independent audit bind the transformed object to the tested executables.

Custom-pass rewrite counts and endpoint IR instruction counts are separate static observations. Early normalization is part of the early pipeline, so final IR differences cannot be attributed to the custom pass alone. No throughput benchmark is run. Neither load counts nor correctness checks establish a runtime speedup, an optimal pass order, an agent win or MLIR experience.

## Historical evidence and current measurement boundary

The committed qualification packet was collected against Ledger commit `c0dbffd6a036feb27e225362a92df9792d8e844a` before CompilerPilot moved under `tools/compilerpilot`. Its raw JSON and benchmark files preserve that source identity. Moving the harness does not create a fresh performance measurement of the current checkout.

E1 collected ten baseline observations, fifty raw throughput replays in total. Its conservative CV was 13.61%, above the 2% acceptance limit. E1 measurement is complete, and its noise gate failed. E2–E5 performance experiments were not performed; the GCC/Clang PGO timings are functional qualifications only. The baseline's 100 million differential commands and 15 completed CTest suites establish historical correctness, not confirmation of a compiler-tuned winner.

A later live LLM search and separate confirmation attempts are preserved in the [current qualification status](../results/status.md). The four-policy comparison and predictor-quality measurements remain incomplete. The historical [measured report](../results/summary.md) below its current-status note retains the earlier qualification results.
