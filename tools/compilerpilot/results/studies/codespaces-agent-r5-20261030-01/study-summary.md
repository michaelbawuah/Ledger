# Study codespaces-agent-r5-20261030-01

Status: **failed**.

Scope: **agent-speedup**. Effective strategy runs: `[{"build_budget": 40, "seed": 0, "strategy": "agent"}]`.

Protocol: 5,000,000 commands; one agent run, seed 0, 40 candidate builds. Each throughput run replays the input 5 time(s) from fresh books; latency replays it once. Full E3 protocol: no — focused speedup scope.

| Phase | Status | Outcome |
|---|---|---|
| E1 | passed | noise gate passed |
| Gate | passed | recorded |
| E3-agent-0 | failed | E3-agent-0 stopped with exit code 1; its evidence remains in /workspaces/Ledger-focused/tools/compilerpilot/results/studies/codespaces-agent-r5-20261030-01/runs/codespaces-agent-r5-20261030-01-E3-agent-0 |

Every run ID names one attempt. Failed or interrupted phases are preserved and never rerun under this study ID. Only a confirmed E5 recommendation establishes a performance winner. Smaller smoke budgets do not establish the full 4 × 3 × 40 comparison.

E2, E4 and all other E3 policies/seeds were not requested by this focused scope. A confirmed result measures compiler speedup on the declared workload; it does not establish an agent-versus-baselines ranking.
