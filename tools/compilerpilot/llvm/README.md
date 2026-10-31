# An authored LLVM pass and pipeline experiment

`LedgerLoadElim` is an out-of-tree LLVM 18 new-pass-manager plugin written in
C++. Its `ledger-load-elim` function pass removes a redundant scalar integer
load only when an earlier load in the same basic block has the identical
pointer SSA value, type and MemorySSA clobber. It uses LLVM's alias analysis
through the MemorySSA walker, so a provably disjoint store can be crossed while
a possibly aliasing store prevents reuse.

This is a small compiler implementation exercise. LLVM's existing EarlyCSE and
GVN perform stronger optimizations; this pass is not a novel optimization and
does not establish a runtime speedup. It is separate from the typed flag search,
the earlier failed performance confirmations, and MLIR, which is not used here.

## Safety and analysis management

- The pass stays within one basic block and does not speculate or change control flow.
- Only non-atomic, non-volatile scalar integer loads are eligible. Loads with any
  non-debug metadata are skipped, avoiding range, alias-scope and invariant-group
  metadata-combination rules.
- Calls, fences, atomic/volatile operations and unmodelled memory effects clear
  availability. Calls remain barriers even if marked `readonly` or `readnone`.
- All clobber proofs are collected before changing the IR. The first surviving
  load remains the representative when several later reads are removed.
- Deletions update MemorySSA with `MemorySSAUpdater`; the pass verifies that graph
  and invalidates analyses after a change. It reports compact JSON diagnostics
  with the function name, loads seen and loads removed.

The IR tests cover positive rewrites, disjoint versus possibly aliasing writes,
calls, lifetime intrinsics, atomic and volatile accesses, fences, metadata,
different pointers/types and basic-block boundaries. They also run LLVM's IR
verifier, analysis recomputation and a deterministic executable before/after
comparison with `lli`.

## Build and test

Use matching LLVM 18 development headers and tools. On Ubuntu 24.04:

```sh
sudo apt-get install cmake ninja-build clang-18 llvm-18 llvm-18-dev llvm-18-tools
python -m pip install matplotlib==3.10.8
```

From `tools/compilerpilot`:

```sh
cmake -S llvm -B builds/llvm-plugin -G Ninja \
  -DLLVM_DIR="$(llvm-config-18 --cmakedir)" \
  -DCMAKE_CXX_COMPILER=clang++-18
cmake --build builds/llvm-plugin --parallel 2
ctest --test-dir builds/llvm-plugin --output-on-failure
opt-18 -load-pass-plugin=builds/llvm-plugin/LedgerLoadElim.so \
  -passes='function(ledger-load-elim)' -verify-each -S \
  llvm/tests/load_elim.ll -o builds/load-elim-example.ll
```

The plugin is opt-in. Building Ledger normally does not load it.

## Placement in the live matching engine

[`run_experiment.py`](run_experiment.py) transforms the real `src/book.cpp`
translation unit. Every variant starts from the same Clang frontend IR:
`-O1 -Xclang -disable-llvm-passes -fno-strict-aliasing`, with C++23 and `NDEBUG`.
Disabling strict-aliasing metadata consistently across variants exposes plain
integer reads to the deliberately conservative pass. Remaining metadata-bearing
loads are still excluded. This frontend is an experimental control, not the
normal Clang `-O2`/`-O3` driver pipeline.

| Variant | Explicit `opt` pipeline |
|---|---|
| Baseline | `default<O2>` |
| Early custom pass | `function(mem2reg,ledger-load-elim),default<O2>` |
| Late custom pass | `default<O2>,function(ledger-load-elim)` |

Each pipeline uses `-verify-each`. A CMake compiler launcher compiles normally,
then replaces only `book.cpp.o` with code generated from the transformed IR
before the compile step finishes. Ninja therefore tracks the final object and
its dependencies normally. The runner extracts that object from `libledger.a`
and verifies its exact hash, along with the linked executables. Other translation
units use the same normal CMake Release build in all three variants. This
experiment changes one engine translation unit, not Ledger's entire build or
the CompilerPilot candidate space.

```sh
python llvm/run_experiment.py --repo ../.. \
  --plugin "$PWD/builds/llvm-plugin/LedgerLoadElim.so" \
  --out "$PWD/builds/llvm-placement-01" \
  --clang clang++-18 --opt opt-18 --jobs 2
```

Use a fresh output directory. The runner retains tool versions, exact commands,
source/plugin/script hashes, frontend/transformed IR, static load counts, pass
diagnostics, object hashes, CTest evidence and differential-test reports. Every
variant must pass all 15 Ledger CTest cases and the separate 100-seed ×
1,000,000-command differential check. Failures remain failures in the report.
No throughput benchmark is run, and static load removal is not a speedup metric.
Zero extra removals after LLVM's standard pipeline is a valid result.

The [audited LLVM 18.1.3 result](../results/llvm-pass/llvm18-20261030-01-review.md)
records one redundant read removed from `ledger::FastBook::process` in the early
pass and none in the late pass. All three variants passed the complete
differential and CTest checks. Their final IR load counts were 377, 378 and 377;
these are descriptive static counts. Early `mem2reg` placement also differs, so
the endpoint differences cannot be attributed to the custom pass alone.

A [separate CI workflow](../../../.github/workflows/compilerpilot-llvm.yml)
builds the plugin, checks its IR tests and repeats the engine experiment. Its
artifact retains the generated IR and validation records.

## LLVM references

- [Writing a new-pass-manager pass](https://releases.llvm.org/18.1.7/docs/WritingAnLLVMNewPMPass.html)
- [Using and invalidating analyses](https://releases.llvm.org/18.1.7/docs/NewPassManager.html)
- [MemorySSA and clobber queries](https://releases.llvm.org/18.1.7/docs/MemorySSA.html)
