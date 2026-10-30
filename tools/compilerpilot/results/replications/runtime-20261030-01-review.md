# Conditioned runtime qualification — October 30, 2026

**Outcome: `early_noisy`; no compiler speedup or agent-versus-search claim is supported.** The second baseline qualification group had **2.7914776504% within-group CV**, above the unchanged strict 2% limit. The declared futility rule stopped this single attempt before building the fixed nominee. Confirmation and final-winner validation did not run.

## Declared attempt

The [controller and protocol](../../docs/runtime-qualification.md) were published at `274fb1c7cbd40af903e3ecd53ce80e6e958a823d` before this attempt's timings. Measurement and gate code came unchanged from separate frozen engine checkout `7c43ec7346796040a6c8b8f8d3ad22d0bd7446d6`, source fingerprint `adcb9b9bc745d28411bde43e91eb21b2dd44c9455c4666ccd2f1d1ad4f6251d7`.

The available Linux runtime exposed an AMD EPYC 9V74 80-Core Processor, affinity CPUs 0–8 and a cgroup quota of eight CPUs. CPU 8 was selected deterministically before timing; the driver and builds used CPUs 0,1. Low observed load did not establish exclusive CPU ownership. The [recorded protocol](runtime-20261030-01/protocol.json) binds the host identity, resource limits, compiler versions, source, inputs and controller bytes. GCC 13.3 and Clang/LLVM 18.1.3 were installed before declaration.

The planned qualification was ten GCC baseline groups, each with five reported samples. Each throughput sample aggregates all 20 fresh-book replays of the same 5M-command evaluation input, with a separate single-input latency pass and the existing 50K-command warmup. Separate evaluation and training input hashes matched the original nomination feeds. Only original nominee `6d3511b71fcfb52d` was eligible for later testing; it was never built in this attempt. There was no new search, model request, fallback, retry or cross-host pooling.

## Conditioning and qualification

The controller first completed baseline-only groups until the fixed 300-second wall-time cutoff. It retained all **12 conditioning groups**, taking **321.7711 seconds** because the last whole group completed after the cutoff. Stopping depended only on elapsed time. Conditioning results have a separate role and are excluded from qualification statistics.

| Qualification group | Correctness | Within-group CV | Strict 2% gate |
|---|---|---:|---|
| `baseline-0` | passed | 0.6251890236% | passed |
| `baseline-1` | passed | 2.7914776504% | failed; attempt stopped |

The [append-only qualification trace](runtime-20261030-01/qualification-trace.jsonl) retains both observations before the stop decision. Across these two groups, independently reconstructed conservative CV is **2.8024562669%** and across-group CV is **0.5561967599%**. These describe an incomplete, failed qualification, not a completed ten-group estimate. The failed maximum within-group gate could not recover by collecting more groups, so the predeclared rule stopped immediately. No measured sample was removed.

The [status](runtime-20261030-01/status.json) records `early_noisy`, phase `qualification`, and a null recommendation. The [child cleanup record](runtime-20261030-01/child-cleanup.json) reports no active owned child sessions. No nominee, PGO training, semantic mutation test, second conditioning stage, confirmation or final-winner 100M-command/15-CTest validation ran on this host.

## Evidence and next prerequisite

The sealed packet contains **144 files**, totaling **10,654,526 bytes**. All **143 manifest SHA-256 entries** match. Its one compressed archive roundtrips to the original bytes, and all **14 raw directories** independently pass the frozen Ledger verifier: 12 conditioning directories and two qualification directories, kept separate. The audit also freshly rehashed the original source, both input feeds and both baseline executables before cleanup. Manifest SHA-256: `b1e18106e1d0f5882877bafe3b53680c49edd9f71eba13a6d701470d707aa5e0`.

The [audit snapshot](runtime-20261030-01-audit.json), [audit helper](audit_runtime_qualification.py), [phase inventory](runtime-20261030-01/phase-inventory.json) and [sealed manifest](runtime-20261030-01/evidence-manifest.json) preserve that reconstruction. This review and the audit files are siblings of the sealed folder; they do not alter its coverage. Reproducing the fresh-file checks requires the original engine data/build checkout, whose binaries and feeds are not included in the sealed packet.

This attempt made **zero model calls** and used available workspace compute. The original incomplete live-agent search, failed Codespaces confirmations, failed GitHub Actions replication and shared API allocation remain unchanged. Additional model calls do not resolve the observed measurement failure.

The remaining prerequisite is access to a Linux host stable across the full declared protocol. [Cornell Red Cloud exploratory access](../../docs/cornell-exploratory-access.md) is a possible free route for eligible first-time Cornell users; access has not been requested or provisioned, and its host would still need qualification. No further automatic attempt is scheduled. No speedup or agent-win resume bullet is supported.
