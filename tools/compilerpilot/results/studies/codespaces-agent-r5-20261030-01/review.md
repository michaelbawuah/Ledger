# Live agent search and failed Codespaces confirmation

The first live `gpt-4.1-mini-2025-04-14` compiler search ran against frozen Ledger source **`7c43ec7346796040a6c8b8f8d3ad22d0bd7446d6`**. It produced **20 unique candidate builds and 19 correct measurements**, then stopped before its requested 40-build budget completed. Two separately declared post-search confirmation protocols exceeded the unchanged **2% maximum baseline variability limit**. The original study remains **failed/incomplete**, both confirmation recommendations are null, and **no compiler speedup, agent-versus-baselines win or predictor-accuracy result is established**.

## Live search coverage

The predeclared `agent-speedup` scope requested one seed-0 agent run with 40 unique builds. It did not request the four-policy × three-seed comparison or E4 predictor evaluation. The recorded multi-seed CLI default does not imply those runs occurred; `effective_strategy_runs` identifies the single requested agent run.

The host was a four-core, 16 GB Codespace with measurements pinned to CPU 0 and two build jobs. E1 passed at **1.9067% conservative CV**; the separate search baseline passed at **1.2236% CV**. The live semantic-mutation gate compiled a deliberately broken matching rule and correctly rejected its event/trade checksum or state divergence. These checks qualify the measurement and correctness machinery; they do not establish an optimization result.

Each R=5 reported throughput run replayed the fixed five-million-command evaluation stream into five fresh books, retaining all 25 million commands and every block duration. A separate single-input pass retained five million latency samples. Training used seed 20261012; evaluation used seed 20261011. Compiler source, input and host identities remained consistent through collection.

The model issued **89 provider requests**, with **88 settled responses**. After 20 builds, it entered a tool-use loop involving already evaluated or duplicate candidates and premature finish requests. One successful build, `3727815b92c90d90`, remained unmeasured. The next provider request returned HTTP 429; the runner stopped explicitly and preserved the incomplete history. All 19 recorded candidate measurements passed the correctness gate. No completed 40-build outcome is inferred from this partial search.

## Separate confirmation attempts

The failed search's observed candidates supplied nominations only. Before either independent confirmation began, its protocol and selection plan were recorded. Both plans selected the same three candidates by the frozen selection formula: median valid measured ratio above three times maximum relative baseline noise, then candidate-hash tie order and the earliest recorded build representative.

| Role | Candidate ID | Declared choices |
|---|---|---|
| Baseline | `be180963747c4559` | GCC O3, native ISA, baseline choices |
| Nominee A | `6d3511b71fcfb52d` | Clang O3/native, PGO, no LTO, loop unrolling, vectorization disabled, 64-byte alignment, semantic interposition disabled |
| Nominee B | `690ad140a9953cfe` | Clang O3/native, PGO + ThinLTO, inline threshold 500, loop unrolling, vectorization disabled, 64-byte alignment, semantic interposition disabled |
| Nominee C | `fa71d7b1dfba376e` | Clang O3/native, PGO + ThinLTO, default inline threshold, loop unrolling, vectorization disabled, 64-byte alignment, semantic interposition disabled |

Both protocols planned ten interleaved A/B/C/baseline rounds with five reported runs per observation, the existing three-spread significance requirement, less than 2% variability, at most 2% baseline drift, and final 100-seed × one-million-command differential validation plus all 15 CTests for any eligible winner. The final winner-validation stage was never reached.

| Protocol | Completed observations | Maximum baseline within-group CV | Outcome |
|---|---:|---:|---|
| R=5 | 12: three complete A/B/C/baseline rounds | **3.1357189979%** | Interrupted after the fixed maximum-CV gate had already failed; recommendation null |
| R=20 | 12: three complete A/B/C/baseline rounds | **2.1409460891%** | Interrupted after the same gate had already failed; recommendation null |

The maximum within-group CV includes every completed observation. Further rounds cannot undo an observed maximum above the limit. The stop decisions, completed groups and partial output remain retained. Neither interruption discards an unfavorable observation or creates a recommendation.

R=20 was one separately predeclared precision revision after the R=5 failure. It used **the exact same nominee and baseline binaries**, source, host and input, but replayed the five-million-command stream 20 times into fresh books: **100 million throughput commands per reported run**. Latency still used one input replay. Its physical output directories are `confirm-r20-*`; the frozen confirmer's logical labels remain `confirm-*`. No R=5 timings were reused in the R=20 calculations. There are no further Codespaces precision attempts.

## Accounting and retained evidence

The original shared allocation conservatively accounts for **$3.1319276**: $2.7063436 from 88 settled requests at the configured uncached token rates, plus a retained **$0.425584** reservation for the uncertain failed request. Settled usage was 6,723,355 input tokens and 10,626 output tokens. This is controller accounting rather than a statement about the provider's invoice. The original allocation and matching checkpoint have not been reset; both independent confirmations made **zero model calls**.

Collection retained **1,699 SHA-256-listed files**. A second audit verified every file hash, all **913 losslessly compressed artifacts** against their original hashes and sizes, and all **73 complete raw measurement directories** using the independent raw-results verifier. This inventory includes qualification, profile training, exploratory search and the two separate confirmation protocols; it is not a pooled statistical population. Missing or unmapped references to recorded-correct summaries were absent. Cross-attempt nominee order, build-file hashes and executable snapshots matched. The original failed-study and nomination hashes remained unchanged.

The pending-build visibility and repeated-tool-failure recovery change is prospective code added after collection. It was not used for this measured source and does not convert its failed search into a completed run. A separate independent-host validation of the fixed original top nomination is being prepared; it has no measured result yet. Its host-specific binaries and observations must remain separate from this Codespaces packet.

- [Original failed study and pinned protocol](study.json)
- [Agent history](runs/codespaces-agent-r5-20261030-01-E3-agent-0/history.json) and [complete tool-use trace](runs/codespaces-agent-r5-20261030-01-E3-agent-0/trace.jsonl)
- [R=5 predeclared protocol](postsearch-confirmation/protocol.json), [plan](postsearch-confirmation/plan.json), [stop decision](postsearch-confirmation/stop-decision.json), and [interrupted status](postsearch-confirmation/status.json)
- [R=20 predeclared protocol](postsearch-r20-confirmation/protocol.json), [plan](postsearch-r20-confirmation/plan.json), [stop decision](postsearch-r20-confirmation/stop-decision.json), and [interrupted status](postsearch-r20-confirmation/status.json)
- [Independent raw audit](independent-audit.json), [collection record](collection.json), and [retained-file hashes](evidence-manifest.json)
- [API budget snapshot](api-budget-snapshot.json)
