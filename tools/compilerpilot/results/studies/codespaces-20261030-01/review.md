# Free Codespaces qualification

This baseline-only attempt used a four-core GitHub Codespace with 16 GB RAM, pinned to CPU 0, at source commit 4c8525b5fcd1bd571de97293c26644847d6c70c3. It completed ten observations of five raw replays each, with five million commands per replay.

All fifty raw replays and the associated correctness checks passed. The conservative coefficient of variation was **2.53%**, exceeding the **2%** limit. The attempt stopped at E1. No compiler search, model call or E2-E5 study ran. No outliers were removed and the failed experiment was not retried.

A newline-quoting error in the external launch wrapper broke its metadata and completion-report blocks. The study harness still completed and preserved its own source, host, input, binary, raw measurement and correctness provenance. Collection happened afterward without rerunning or modifying those measurements. The original launch log remains visible. This result establishes no compiler speedup or agent advantage.

- [Measured baseline](runs/codespaces-20261030-01-E1/baseline.json)
- [Study manifest](study.json)
- [Generated report](summary.md)
- [Post-run collection record](collection.json)
- [Original launch log](launch.log)
- [Evidence hashes](evidence-manifest.json)
