# Independent fixed-candidate host replication — October 30, 2026

**Outcome: `noisy`, with no recommendation. No compiler speedup or agent-versus-search advantage is established.** All 20 declared observations completed; the run did not stop on partial across-round variability. The baseline's final across-observation CV was **2.7584694995%**, above the strict 2% limit. Its **1.9033241292%** drift passed the separate 2% drift gate. The candidate's median difference also failed the unchanged three-sigma threshold.

The [workflow run](https://github.com/michaelbawuah/Ledger/actions/runs/41131249122) correctly failed its measurement step and successfully collected/uploaded all evidence. The original live-agent study remains failed/incomplete after 20 builds and 19 correct measurements out of the requested 40 builds.

## Fixed hypothesis and provenance

Before new-host timing, the [nomination manifest](gha-replication-41131249122-1/nomination-manifest.json) selected only `6d3511b71fcfb52d`, the original first-ranked agent nominee, against GCC baseline `be180963747c4559`. There was no fallback to either other nominee, new search, model call, rerun or cross-host timing pooling.

The [protocol](gha-replication-41131249122-1/protocol.json) pins engine/harness source `7c43ec7346796040a6c8b8f8d3ad22d0bd7446d6`, source fingerprint `adcb9b9bc745d28411bde43e91eb21b2dd44c9455c4666ccd2f1d1ad4f6251d7`, and controller `ae80e51dca53a0187a487f234fee841aa75fc06f`. The candidate was rebuilt with Clang 18, O3/native, PGO, no LTO, loop unrolling, disabled vectorization, 64-byte function alignment and disabled semantic interposition. The baseline used GCC 13 O3/native. Input hashes matched the original separate evaluation/training feeds. The compiling semantic mutation was again rejected; source, host, inputs and executable hashes remained unchanged according to the recorded checks.

This first and only GitHub Actions attempt used Ubuntu 24.04 on a four-core AMD EPYC 9V45 VM with about 16 GB RAM, pinned to CPU0. Ten rounds ran the candidate then baseline. Every observation retained five reported runs, each aggregating **all 20 fresh-book replays of the same 5M-command input** (100M throughput commands per reported run), plus a separate single-input latency pass. Every observation passed the independent 5 × 100K differential correctness check.

## Independently reconstructed outcome

The following are descriptive measurements from an ineligible, noisy confirmation; they are not validated speedup claims.

| Metric | GCC baseline | Fixed agent nominee |
|---|---:|---:|
| Median commands/s across ten observations | 25,308,189.1693 | 26,486,095.24595 |
| Across-observation CV | 2.7584694995% | 1.8694714246% |
| Maximum within-observation run CV | 1.0924936931% | 1.8323368493% |
| Baseline first-half/second-half drift | 1.9033241292% | — |

All within-observation CVs were below 2%, but that did not satisfy the separate across-observation gate. Baseline noise sigma was the larger of across-observation sample SD and the median within-observation `throughput × CV`: **700,292.6892543683 commands/s**. Three times that value was **2,100,878.067763105 commands/s**, or **8.3011789335%** of baseline median throughput. The descriptive candidate difference was **1,177,906.0766499974 commands/s** (4.6542487444%), below that requirement. Both significance flags are false.

The [confirmation](gha-replication-41131249122-1/confirmation.json) and [status](gha-replication-41131249122-1/status.json) correctly record `noisy`; winner, recommendation, recommended build and full validation are null. No final-winner 100M-command or CTest validation ran. Historical baseline validation does not substitute for it.

## Evidence audit and claim boundary

The sealed directory contains **231 files**. All **230 manifest SHA-256 entries** match, with no missing or extra files. All **29 gzip archives** roundtrip to their recorded original hashes and sizes, totaling **116,403,252 original bytes**. The retained packet totals **14,799,014 bytes**. Manifest SHA-256: `0b480119494381cfbdc18010b92a99a888b4fae5d792a5b7c93aa412a5dd58f8`.

All **21 complete raw directories** independently pass Ledger's frozen verifier: 20 R=20 confirmation directories and one separate R=1 PGO training directory. Confirmation inventory comprises 300 engine rows, 6,000 replay blocks and 1.5 billion latency samples; training adds three rows, three replay blocks and 15 million latency samples. These inventory totals are not independent statistical samples and are not pooled across protocols.

Two independent reconstructions agree on the aggregate CV, drift, threshold and null outcome. The [audit snapshot](gha-replication-41131249122-1-audit.json), [append-only trace](gha-replication-41131249122-1/confirmation-trace.jsonl), [collection inventory](gha-replication-41131249122-1/collection.json) and [sealed manifest](gha-replication-41131249122-1/evidence-manifest.json) preserve the calculation inputs. Original executable and `.lob` bytes are not retained; offline hashes establish recorded continuity rather than a fresh rehash of those original binaries or feeds. This review and its audit snapshot are siblings of the sealed folder and do not change its manifest coverage.

The replication made **zero model calls**. The existing shared API allocation remains unchanged at conservative controller accounting of **$3.1319276**, including its uncertain-request reservation. No speedup or agent-win resume bullet is supported. A credible confirmation remains blocked on a Linux host stable across the full ten-round protocol. No further automatic host, precision or configuration attempt is scheduled.
