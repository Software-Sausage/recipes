# Codex CLI + GPT-5.6-sol: Ponytail 4.8.4 comparison

This is a six-run comparison on one small repository task, not a general claim
about Codex, GPT-5.6-sol, or Ponytail. Both arms passed every run. Ponytail's
median implementation was four nonblank lines shorter, but its median run used
more time and tokens.

## Result

| Median, three runs per arm | Codex only | + Ponytail 4.8.4 | Delta |
| --- | ---: | ---: | ---: |
| Task success | 3/3 | 3/3 | none |
| Label-blind artifact score | 10/10 | 10/10 | none |
| Elapsed time | 57.055 s | 68.281 s | +19.7% |
| Input tokens reported by CLI | 125,343 | 154,389 | +23.2% |
| Cached input tokens | 112,512 | 140,416 | +24.8% |
| Output tokens | 1,420 | 1,632 | +14.9% |
| Reasoning output tokens | 463 | 658 | +42.1% |
| Command executions | 6 | 7 | +16.7% |
| Agent messages | 4 | 3 | -25.0% |
| Implementation lines | 7 | 3 | -57.1% |
| Dependencies added | 0 | 0 | none |
| Human interventions | 0 | 0 | none |

The account used a subscription and Codex CLI did not report a dollar cost, so
none is estimated here. Input-token and cached-input fields are reproduced as
the CLI reported them; they must not be added together as if they were
independent billable totals.

| Arm | Run | Pass | Seconds | Input | Cached | Output | Reasoning | Commands | Messages | Lines |
| --- | --- | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: |
| Ponytail | R1 | yes | 68.281 | 154,389 | 140,416 | 1,632 | 658 | 7 | 3 | 3 |
| Baseline | R2 | yes | 57.055 | 125,195 | 112,512 | 1,493 | 463 | 6 | 4 | 8 |
| Ponytail | R3 | yes | 71.401 | 174,275 | 156,544 | 1,896 | 689 | 8 | 3 | 3 |
| Ponytail | R4 | yes | 58.517 | 134,474 | 116,992 | 1,530 | 560 | 6 | 4 | 5 |
| Baseline | R5 | yes | 55.942 | 125,343 | 111,616 | 1,420 | 481 | 6 | 3 | 7 |
| Baseline | R6 | yes | 57.972 | 142,300 | 131,200 | 1,380 | 319 | 7 | 4 | 7 |

## Frozen protocol

- Recipe starting commit: `864230d8099302b48c074e4b5cebcba4c5caa79e`
- Codex CLI: `0.152.1`
- Requested model: `gpt-5.6-sol`
- Reasoning effort: `high`
- Runs: three per arm
- Prompt SHA-256: `eb2b3dc52de535ac4e82a7922ca8770afcf502cb2cb67a560f7d63c864b46fe9`
- Ponytail: repository-local Agent Skill at version `4.8.4`, full mode
- Ponytail skill SHA-256: `d1ffcddbc486ab787d5797441e8b6e4717da3249c6786b83fc2abd2f12803c29`
- MCP servers and user configuration: ignored
- Session persistence: disabled with `--ephemeral`

Each run started from a fresh archive of the pinned commit. It ran as an
unprivileged user in a Docker container with a read-only root, dropped Linux
capabilities, `no-new-privileges`, and only the run workspace and temporary
Codex configuration writable. Codex's own sandbox and approvals were bypassed
inside that external boundary. The container still needed network access to
reach the model, so shell-level egress was not technically blocked.

The Ponytail arm added only `.agents/skills/ponytail/SKILL.md`; the task prompt
was identical. Codex explicitly read the skill in all three Ponytail runs and
in none of the baseline runs.

## Artifact scoring and unblinding

The six workspaces used randomized R1–R6 labels. The condition map stayed
hidden until every artifact had been independently rerun through `./verify.sh
workspace` and scored. The fixed ten-point artifact rubric was:

- six points: required verifier passes;
- two points: only `workspace/catalog.py` changes and no extra file appears;
- one point: no dependency is added; and
- one point: implementation is at most ten nonblank lines.

Every artifact scored 10/10. The review was label-blind, not perfectly blind:
implementation style can hint that minimalism instructions were present.
Exact implementations and hashes are in
[`artifacts/2026-09-03-codex-gpt-5-6-sol-ponytail.md`](artifacts/2026-09-03-codex-gpt-5-6-sol-ponytail.md).

## Setup failure

An initial six-run batch mounted the Codex executable but omitted its separate
`codex-code-mode-host` helper. Codex failed closed on the first command in all
six attempts and produced no workspace. Those attempts scored 0/10 and are
excluded from the comparison. Fresh fixtures were created and both pinned
executables were mounted for every measured run. Temporary authentication and
state copies were securely removed after aggregation.

## What this does and does not show

On this fixture, Ponytail preserved correctness and reduced median source size
from seven to three nonblank lines. The tradeoff was a roughly 20% slower
median run and roughly 15% more output tokens. That differs from the Claude
Code/Opus 5 comparison on the same fixture, where median code size was equal
and Ponytail's median run was faster and used fewer output tokens.

One tiny task, three runs per arm, one harness version, one requested model,
and one day cannot establish a universal winner. A harder fixed suite is
required before treating either harness-specific delta as a purchasing claim.
