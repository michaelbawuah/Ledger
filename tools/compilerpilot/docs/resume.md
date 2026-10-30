# Resume wording supported by the current evidence

**CompilerPilot (in Ledger) | AI Agent for Compiler Optimization** — Python, C++, GCC/Clang, LLVM, PGO, ThinLTO, scikit-learn

- Built Ledger's in-repository compiler-tuning component over 11 typed choices, with random, genetic, random-forest surrogate and LLM tool-use policies sharing build budgets, reproducible inputs and correctness gates.
- Qualified GCC PGO and Clang ThinLTO/PGO pipelines against a C++ matching-engine oracle; validated the baseline across 100 million differential commands and 15 CTest suites, and demonstrated rejection of a deliberately broken matching rule.
- Executed a real OpenAI tool-using compiler search under a shared API spending cap, retaining 20 unique builds, 19 correct measurements and all incomplete-search and failed-confirmation evidence.

The [live-agent evidence](../results/studies/codespaces-agent-r5-20261030-01/review.md) comes from frozen Ledger source `7c43ec7`. Its requested 40-build search stopped after 20 builds and 19 measurements following a tool-use loop and provider HTTP 429; the study remains failed/incomplete. Separate R=5 and R=20 post-search confirmation protocols retained the same three nominees but exceeded the unchanged 2% baseline variability limit. Neither produced a recommendation or completed final-winner validation. A fixed-candidate independent-host validation is being prepared and supplies no result yet.

**No speedup bullet is currently supported.** Do not claim that the agent beats random/genetic/surrogate search, that the full 4-strategy × 3-seed × 40-build comparison completed, or that predictor accuracy was measured. For a short recruiting resume, the first two engineering bullets remain the strongest supported choices. The 100-million-command baseline validation in the second bullet is historical evidence, not validation of a newly winning compiler configuration.

The earlier qualification evidence from Ledger commit `c0dbffd6a036feb27e225362a92df9792d8e844a` and its failed 13.61% noise measurement remain preserved. The integrated component tracks live source identity for every new run.

Canonical source: [CompilerPilot in Ledger](https://github.com/michaelbawuah/Ledger/tree/main/tools/compilerpilot). [Component overview](../README.md).
