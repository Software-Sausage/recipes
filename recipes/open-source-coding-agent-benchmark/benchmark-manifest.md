# Open-source coding-agent benchmark manifest

## Fixed job

- Repository fixture revision and hash:
- Prompt revision and hash:
- Visible acceptance criteria:
- Hidden verifier command:
- Environment image or manifest:
- Run count per arm:
- Randomization and label-blinding method:

## Configuration arms

| Field | Arm A | Arm B | Arm C |
| --- | --- | --- | --- |
| Harness and version | Qwen Code | Goose | OpenCode |
| Harness license |  |  |  |
| Provider and model ID |  |  |  |
| Model or weights license |  |  |  |
| Instructions and hash |  |  |  |
| Tools and MCP servers |  |  |  |
| Permissions and network |  |  |  |
| Add-ons |  |  |  |
| Budget and timeout |  |  |  |

## Per-run evidence

| Run | Exit state | Verifier | Human intervention | Time | Tokens/cost | Commands | Files changed |
| --- | --- | --- | --- | --- | --- | --- | --- |
| A1 |  |  |  |  |  |  |  |
| A2 |  |  |  |  |  |  |  |
| A3 |  |  |  |  |  |  |  |
| B1 |  |  |  |  |  |  |  |
| B2 |  |  |  |  |  |  |  |
| B3 |  |  |  |  |  |  |  |
| C1 |  |  |  |  |  |  |  |
| C2 |  |  |  |  |  |  |  |
| C3 |  |  |  |  |  |  |  |

## Blind artifact review

| Label | Correctness | Maintainability | Security | Unnecessary scope | Notes |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  |  |  |

## Final gate

- [ ] Every arm started from the identical fixture and prompt.
- [ ] Only the named comparison variable changed.
- [ ] Every arm received the same budget, permissions, and verifier.
- [ ] Raw successes, failures, and interventions are retained.
- [ ] Review labels were hidden until scoring finished.
- [ ] Harness, model, provider, extension, and license claims are separate.
- [ ] The conclusion is limited to this task and environment.

Do not publish a winner when prompts, budgets, permissions, or starting states
differ, or when failed runs were silently discarded.
