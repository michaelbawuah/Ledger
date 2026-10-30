# Hosted-runner qualification review

This was a **baseline-only attempt**. It completed ten observations of five replays each, with five million commands per replay on an AMD EPYC 9V45 standard GitHub-hosted Linux VM, pinned to CPU 0. All observations passed the replay and differential correctness checks. The conservative coefficient of variation was **8.03%**, exceeding the **2%** limit.

The attempt stopped at E1. E2–E5, compiler search and model calls did not run. The four-strategy/three-seed/forty-build dimensions in the study manifest describe the planned study, not completed experiments. No outliers were removed and the failed attempt was not retried.

The raw median was 25.55M commands/s, with 201 ns p99. These values describe a different CPU and replay length from the original qualification; they are **not a compiler speedup**.

- [Raw baseline evidence](runs/gha-41074339510-1-E1/baseline.json)
- [Generated report](summary.md)
- [Study manifest](study.json)
- [Artifact digest and original-file hashes](artifact-manifest.json)
- [GitHub workflow run](https://github.com/michaelbawuah/Ledger/actions/runs/41074339510)

The downloaded archive was verified against GitHub's SHA-256 artifact digest before its contents were imported. A quiet user-controlled Linux host or a dedicated-CPU VM is needed for the next qualification attempt. A provider API credential and pinned model are also needed before the model comparison can run.
