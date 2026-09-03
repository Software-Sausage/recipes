# Browser performance regression ledger

## Reproduction contract

- Affected URL and revision:
- User action and expected result:
- Fixture or data state:
- Browser and Playwright versions:
- Viewport and device settings:
- CPU and network conditions:
- Warm or cold cache:
- Run count:

## Privacy and tooling

- Isolated browser profile:
- Chrome DevTools MCP version and flags:
- Allowed URL patterns:
- CrUX lookup enabled or disabled:
- Usage statistics enabled or disabled:
- Credentials and personal data absent:

## Comparable runs

| Run | Revision | Functional result | LCP | INP | CLS | Other timing | Console/network finding | Trace path |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Before 1 |  |  |  |  |  |  |  |  |
| Before 2 |  |  |  |  |  |  |  |  |
| Before 3 |  |  |  |  |  |  |  |  |
| After 1 |  |  |  |  |  |  |  |  |
| After 2 |  |  |  |  |  |  |  |  |
| After 3 |  |  |  |  |  |  |  |  |

## Fix and review

- Root cause:
- Changed files and explanation:
- Accessibility and functional checks:
- Different-model review findings:
- Representative real-device result:
- Rollback trigger:

## Final gate

- [ ] Before and after runs use identical recorded conditions.
- [ ] Functional checks pass before performance is compared.
- [ ] Raw traces and console or network evidence are retained.
- [ ] The connected browser profile contains no unrelated sensitive data.
- [ ] Several runs support the comparison; failed runs were not discarded.
- [ ] A reviewer checked the root cause, diff, evidence, and accessibility.
- [ ] The conclusion distinguishes laboratory results from field performance.

Do not ship a faster trace that breaks the user flow, accessibility, correctness,
or security.
