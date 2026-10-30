# Free Codespaces R=5 qualification

The single measured E1 attempt passed the existing noise gate: conservative CV **1.5284948093%**, below **2%**, with correctness passing throughout. It ran at source commit `c298117bd0a429fefd130bb45d45a83f84cebec1` on a four-core, 16 GB GitHub Codespace, pinned to CPU 0 with two build jobs. Shared physical hardware is not assumed to be exclusive.

The predeclared protocol used the same five-million-command input with **R=5**. Each reported throughput run replayed it five times into fresh books, dividing all 25 million processed commands by the sum of every block duration. A separate single-input pass measured five million latency samples. Ten observations each retained five reported runs for all three engines: **150 engine rows, 750 throughput blocks and 750 million latency samples**. No block or outlier was removed or selected by speed; the noise limit and three-spread significance requirement were unchanged.

The offline verifier independently reconstructed all ten raw evidence directories, including replay identities, summed throughput time, checksums, final state, exact latency frequencies and reported quantiles. All **81 files** listed in the collected evidence manifest matched their SHA-256 hashes. Source, input and recorded host identities remained consistent through collection. E1 took **491.990 seconds**; its baseline compile took **22.259 seconds**. Median bitmap throughput was 16.667 million commands/second, an observation on this host and protocol rather than an optimization result.

The earlier R=1 Codespaces qualification remains [preserved](../codespaces-20261030-01/review.md), including its failed 2.53% CV. R=5 is a separately declared measurement protocol, not a reinterpretation of that failed data. The R=5 attempt was measured once, with no automatic retry. Before any manifest, build, data generation or measurement existed, the first external `tee` wrapper created a log inside the new results directory and preflight rejected that nonempty directory. The [setup rejection](setup-checks/codespaces-r5-20261030-01-log-placement.log) is retained separately; moving the log outside the study directory corrected that setup issue before the measured attempt.

E2–E5 have **not started**. Using observed E1 intervals and baseline compile time, a planning estimate for the remaining protocol is approximately **11.85 hours**: 689 measurement groups at a mean 45.519 seconds (8.71 hours), plus 507 builds at 22.259 seconds (3.13 hours). This extrapolation is not a runtime lower bound: candidate builds and measurements can differ. It excludes configuration, additional PGO/LTO work, model inference, predictor evaluation and final validation. The Codespace has a [12-hour active-session limit](https://github.com/github/docs/blob/main/content/codespaces/about-codespaces/understanding-the-codespace-lifecycle.md#maximum-lifetime-of-a-codespace) and qualification/setup already consumed part of that session, so the full run lacks a sufficient planning margin. A longer uninterrupted runtime arrangement is needed before starting the full comparison.

No API credential was transferred to this Codespace and **zero new model calls** were made. The prior one-request provider compatibility result remains separate. This packet establishes baseline qualification only: **no compiler speedup, performance winner or agent-versus-baselines ranking is claimed**.

- [Measured baseline and observations](runs/codespaces-r5-20261030-01-E1/baseline.json)
- [Study protocol, source and host](study.json)
- [Independent raw audit](independent-audit.json)
- [Collected file hashes](evidence-manifest.json)
- [Collection record and setup explanation](collection.json)
- [Original measured launch log](launch.log)
- [Generated results report](summary.md)
