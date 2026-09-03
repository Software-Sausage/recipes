# Spec to production proof ledger

## Pinned configuration

- Repository and starting revision:
- Spec Kit version:
- Coding agent and version:
- Model identifier and settings:
- Repository instructions hash:
- Allowed tools and permissions:
- Playwright and browser versions:
- Chrome DevTools MCP version and flags:

## Outcome and boundaries

- User outcome:
- Explicit exclusions:
- Acceptance criteria:
- Maximum budget and elapsed time:
- Rollback trigger and procedure:

## Artifact review

| Artifact | Revision or hash | Unsupported assumptions removed | Human approval |
| --- | --- | --- | --- |
| Specification |  |  |  |
| Plan |  |  |  |
| Tasks |  |  |  |

## Implementation and proof

- Worktree or isolation method:
- Files changed:
- Existing checks and results:
- Playwright command and result:
- Browser scenario and data state:
- Console and network findings:
- Performance trace path and conditions:
- Manual accessibility or device check:

## Independent review

- Reviewer model and configuration:
- Acceptance criteria not demonstrated:
- Scope additions or regressions:
- Security, privacy, and accessibility findings:
- Resolutions:

## Final gate

- [ ] Every changed behavior maps to an approved acceptance criterion.
- [ ] Generated planning artifacts received human review.
- [ ] The repository's real checks pass from a clean state.
- [ ] A fresh browser run proves the user-visible path.
- [ ] The browser profile contains no unrelated credentials or personal data.
- [ ] Independent findings are resolved or explicitly accepted.
- [ ] Rollback steps are executable.

Do not merge when the proof depends on stale screenshots, a privileged browser
profile, hidden manual state, or generated claims that were not checked.
