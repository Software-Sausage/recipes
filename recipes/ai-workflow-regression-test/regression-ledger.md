# AI workflow regression ledger

## Release question

- Behavior being changed:
- Baseline revision:
- Candidate revision:
- Decision owner:
- Maximum acceptable regression:

## Pinned configuration

| Field | Baseline | Candidate |
| --- | --- | --- |
| Prompt hash |  |  |
| Provider and model ID |  |  |
| Model settings |  |  |
| Tools and permissions |  |  |
| Agent instructions |  |  |
| Budget and timeout |  |  |
| Promptfoo version |  |  |
| Cache policy |  |  |

## Frozen cases

| Case | Requirement | Deterministic assertion | Human review needed | Data provenance |
| --- | --- | --- | --- | --- |
| Success |  |  |  | Synthetic |
| Edge |  |  |  | Synthetic |
| Refusal |  |  |  | Synthetic |

## Comparable results

| Measure | Baseline | Candidate | Accepted delta |
| --- | --- | --- | --- |
| Passed assertions |  |  |  |
| Human sample score |  |  |  |
| Median latency |  |  |  |
| Input/output tokens |  |  |  |
| Reported cost |  |  |  |
| Errors or retries |  |  |  |

## Final gate

- [ ] Baseline and candidate used identical frozen cases.
- [ ] Provider, model, prompt, tools, settings, and budget are recorded.
- [ ] Deterministic assertions represent real product requirements.
- [ ] Model-graded assertions identify the grader and receive human sampling.
- [ ] Untrusted configuration code ran without production secrets.
- [ ] Failures and a sample of passes received human review.
- [ ] The release decision and accepted tradeoffs are recorded.

Do not approve a change because one aggregate score improved while a required
refusal, safety boundary, or important customer case regressed.
