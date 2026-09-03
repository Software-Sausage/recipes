# Claude Code + Opus 5: Ponytail 4.8.4 comparison

This is a six-run comparison on one small repository task, not a general claim
about Claude Code, Opus 5, or Ponytail. Both arms passed every run. Ponytail's
median run used fewer turns, fewer output tokens, less elapsed time, and lower
reported list cost; median implementation size was identical.

## Result

| Median, three runs per arm | Claude Code only | + Ponytail 4.8.4 | Delta |
| --- | ---: | ---: | ---: |
| Task success | 3/3 | 3/3 | none |
| Label-blind artifact score | 10/10 | 10/10 | none |
| Elapsed time | 38.425 s | 27.231 s | -29.1% |
| Claude Code turns | 9 | 6 | -33.3% |
| Output tokens | 2,698 | 1,844 | -31.7% |
| Reported list cost | $0.2686005 | $0.191269 | -28.8% |
| Implementation lines | 7 | 7 | none |
| Dependencies added | 0 | 0 | none |
| Human interventions | 0 | 0 | none |

The account used a subscription. Dollar amounts are Claude Code's list-cost
estimates, not claims of incremental charges. Across all three runs, the
baseline totaled $0.7693615 and Ponytail totaled $0.588606, a 23.5% difference;
the median is reported above because one tiny task has visible run variance.

| Arm | Run | Pass | Seconds | Turns | Output tokens | List cost | Lines |
| --- | --- | ---: | ---: | ---: | ---: | ---: | ---: |
| Baseline | A1 | yes | 37.064 | 8 | 2,621 | $0.273781 | 9 |
| Baseline | B2 | yes | 40.298 | 9 | 2,825 | $0.2686005 | 7 |
| Baseline | A3 | yes | 38.425 | 9 | 2,698 | $0.226980 | 3 |
| Ponytail | B1 | yes | 21.916 | 5 | 1,552 | $0.230683 | 7 |
| Ponytail | A2 | yes | 27.231 | 6 | 1,844 | $0.166654 | 7 |
| Ponytail | B3 | yes | 31.699 | 8 | 2,218 | $0.191269 | 3 |

All three baseline runs reported a small Claude Haiku 4.5 auxiliary call. None
of the Ponytail runs did. All six implementation calls reported
`claude-opus-5`, standard service tier, and zero web searches.

## Frozen protocol

- Recipe starting commit: `864230d8099302b48c074e4b5cebcba4c5caa79e`
- Claude Code: `2.1.259`
- Requested model: `opus`; reported implementation model: `claude-opus-5`
- Effort: `high`
- Runs: three per arm
- Prompt SHA-256: `eb2b3dc52de535ac4e82a7922ca8770afcf502cb2cb67a560f7d63c864b46fe9`
- Input README SHA-256: `64adfc3315cb60396d949df6c2544e886b2edcac29ec8c083df45f80d6f91a4e`
- Input implementation SHA-256: `37ddc624d1b3ee535f3b4d8fe08642d492ef492bd1f028b56d21b571815da7dc`
- Input test SHA-256: `133a9f2badc8f200be648cee1cf19fb7172776966b0b4cfdb0bd7126b7cb6649`
- Ponytail: local Claude plugin directory at version `4.8.4`, full mode
- Ponytail skill SHA-256: `d1ffcddbc486ab787d5797441e8b6e4717da3249c6786b83fc2abd2f12803c29`
- Allowed tools: Bash, Read, Edit, Write, Glob, and Grep
- MCP servers: none
- Budget: $1 reported-list-cost cap per run

Each run started from a fresh archive of the pinned commit. It ran as an
unprivileged user in a Docker container with a read-only root, dropped Linux
capabilities, `no-new-privileges`, and only the run workspace and temporary
Claude configuration writable. The Ponytail plugin was mounted read-only. Web
tools were unavailable and the shared repository rules prohibited network
use, installation, commits, and publishing. The container still needed network
access to reach Claude, so shell-level egress was not technically blocked.

## Artifact scoring and unblinding

The six workspaces used randomized A/B labels. The condition map stayed hidden
until every artifact had been independently rerun through `./verify.sh
workspace` and scored. The fixed ten-point artifact rubric was:

- six points: required verifier passes;
- two points: only `workspace/catalog.py` changes and no extra file appears;
- one point: no dependency is added; and
- one point: implementation is at most ten nonblank lines.

Every artifact scored 10/10. The review was label-blind, not perfectly blind:
wording and implementation style can hint that minimalism instructions were
present. Exact implementations and hashes are in
[`artifacts/2026-09-03-claude-opus-5-ponytail.md`](artifacts/2026-09-03-claude-opus-5-ponytail.md).

## Setup failures

Two setup attempts for the first pair failed before model execution and cost
nothing. The first dropped root capabilities without switching the container
to the writable mount's owner, so output redirection was denied. The second
passed `{}` where Claude Code required an MCP configuration with an explicit
empty `mcpServers` object. Both were corrected for every measured run; neither
created a workspace result.

## What this does and does not show

On this fixture, Ponytail preserved correctness and scope while the median run
was about 29% faster and 29% lower in reported list cost. It did not reduce
median code size: both arms produced seven lines. One cross-arm pair produced
byte-identical implementations, which is good evidence that the task is near
its natural minimum and poor evidence for a broad code-reduction claim.

The sample is one tiny Python task, three runs per arm, one harness version,
one model alias, and one day. It does not measure real-repository regressions,
long-session behavior, maintenance cost, or a universal winner. A larger fixed
task suite is required before using the efficiency deltas as a purchasing
claim.
