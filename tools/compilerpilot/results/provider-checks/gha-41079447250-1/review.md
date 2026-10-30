# Live provider compatibility check

The [manual GitHub run](https://github.com/michaelbawuah/Ledger/actions/runs/41079447250) passed on October 30, 2026, using source commit `9a0eb9b5916abfc56ce872b921392902a337336c`.

Exactly one request reached OpenAI Chat Completions. The requested and returned model were both `gpt-4.1-mini-2025-04-14`; the response contained the expected `compatibility_probe` function call with valid arguments. Sampling used temperature zero and seed zero, matching the current study path, with a reduced 512-token completion limit. The observed usage was **72 input tokens and 15 output tokens**. No retries occurred, and no tool action was executed.

This verifies authentication, model access and the request's tool-call format. No engine build, benchmark, compiler search or full LLM tuning experiment ran. It establishes no speedup, strategy ranking or study-completion claim. Seeded sampling does not guarantee deterministic model behavior.

- [Original compatibility report](provider-check.json)
- [Artifact digest and file hash](artifact-manifest.json)
- [Workflow implementation](../../../../../.github/workflows/compilerpilot-provider-check.yml)

The original report bytes were preserved after the downloaded archive's SHA-256 digest was verified against GitHub's artifact metadata. Only whitelisted metadata is retained; credentials and raw provider bodies are excluded. The snapshot is deprecated, with its shutdown scheduled for January 14, 2027; see the official [model documentation](https://developers.openai.com/api/docs/models/gpt-4.1-mini) and [deprecation notice](https://developers.openai.com/api/docs/deprecations).

The full comparison still requires a quiet Linux host that passes E1 and an agreed API spending budget. The previous 8.03% hosted-runner noise failure remains preserved.
