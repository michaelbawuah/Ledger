# Qualification status — October 30, 2026

CompilerPilot now lives under `tools/compilerpilot` in Ledger and automatically discovers the live engine source for new runs. The implementation is ready for a controlled research run. The historical performance study stopped at the required noise gate; the integration itself does not establish new performance numbers.

| Requirement | Evidence / status |
|---|---|
| Integrated component and provenance | [CompilerPilot in Ledger](https://github.com/michaelbawuah/Ledger/tree/main/tools/compilerpilot); new runs track the live Ledger commit, source/configuration fingerprint and dirty state |
| Historical qualification source | Ledger commit c0dbffd6a036feb27e225362a92df9792d8e844a; original raw evidence preserved, with no new speedup claim |
| Monorepo integration | 159 CompilerPilot tests pass; live-source replay, 5 × 100K differential and all 15 CTest suites pass; compiling semantic mutation rejected. Evidence: [tests](migration-python-tests.xml), [live validation](migration-validation.json), [mutation proof](migration-gate-check.json). The 88 historical result files remain byte-for-byte unchanged. |
| Flag allow-list, isolated builds, timeouts | Implemented and tested; no free-form shell flags or unsafe math |
| Correctness gates | Real buy-crossing mutation compiled and was rejected by the reference-checksum gate |
| GCC baseline | Replay checksums and 5 × 100K differential pass |
| GCC PGO | Instrument, separate-seed training and profile use pass; core profile-consumption evidence verified |
| Clang ThinLTO + PGO | Instrument, merge, lld link, profile use and correctness pass; core profile counts verified |
| Baseline full validation | 100M commands, zero mismatches; all 15 CTest suites complete and pass, checked via JUnit |
| E1: ten quiet baseline observations | Completed; conservative CV 13.61%, above 2% limit |
| New hosted-runner qualification | [5M-command attempt](studies/gha-41074339510-1/summary.md): 10 observations on AMD EPYC 9V45, CV **8.03%**; correctness passed, noise gate failed. E2–E5 and model calls did not run. |
| E2/E3: knob sweep and strategy comparison | Not run because E1 failed; no speedup or strategy ranking claimed |
| E4: predictor accuracy | Model and out-of-fold evaluation implemented; no measured training table available |
| E5: winning-build performance confirmation | Interleaved confirmer implemented/tested; no winner exists yet |
| Hardware counters | perf runs, but VM reports requested hardware events unsupported |
| Live provider compatibility | [One-request check](provider-checks/gha-41079447250-1/review.md) passed with `gpt-4.1-mini-2025-04-14`: authenticated request and expected harmless tool call; 72 input + 15 output tokens. This is not a tuning experiment. |
| Full LLM tuning experiment | Not run; the provider is reachable, but the full comparison still requires a host that passes E1 and an agreed API budget |
| Canonical source | [Ledger/tools/compilerpilot](https://github.com/michaelbawuah/Ledger/tree/main/tools/compilerpilot), with [setup commands](../README.md) |

`qualification-clang-pgo.json` retains an earlier failed attempt during toolchain setup. The later `clang-pgo-qualification.json` records the successful clean attempt. Both remain visible. Qualification timings are raw observations from a noisy host; they are not comparable speedup results.

To continue: use a quiet Linux host, supply the provider credential securely on that host, agree an API budget, rerun E1, and only proceed if the gate passes. `scripts/run_study.py` preflights credentials and stops on noise. Run from `Ledger/tools/compilerpilot`; no submodule is needed. New measurements use the live Ledger source and must pass the same gates. Both failed noise qualifications and the absent E2–E5 performance study remain explicit; the successful live provider check does not establish tuning performance.
