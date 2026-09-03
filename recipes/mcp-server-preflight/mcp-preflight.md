# MCP server preflight

## Decision and owner

- Intended job:
- Decision: approve / limited pilot / reject
- Owner:
- Review date:
- Re-review trigger:
- Revocation and removal steps:

## Provenance

- Repository URL:
- Publisher identity and evidence:
- Revision or release tag:
- Commit, package, or image digest:
- License:
- Exact startup command, including every argument:
- Transport: stdio / Streamable HTTP / other
- Build or release provenance checked:

## Static review

- Manifests and lockfiles inspected:
- Install, prepare, and lifecycle hooks:
- Binaries or generated artifacts that could not be reviewed:
- OSV-Scanner command and version:
- OSV findings reviewed individually:
- OpenSSF Scorecard URL or command:
- Scorecard findings reviewed individually:
- Unresolved source or dependency questions:

Automated repository and dependency checks are incomplete signals. A clean
result is not approval, and a low aggregate score is not automatically a
rejection.

## Permission ledger

| Capability | Requested access | Minimum needed for the job | First-run grant | Denied behavior verified? |
| --- | --- | --- | --- | --- |
| Filesystem reads |  | Exact read-only roots |  |  |
| Filesystem writes |  | Exact disposable roots or none |  |  |
| Network |  | Exact hosts and methods or none |  |  |
| Credentials |  | Named test scopes or none |  |  |
| External mutations |  | Named operations with confirmation |  |  |
| Local commands |  | Exact executable and arguments |  |  |

No wildcard filesystem roots, broad production credentials, or unrestricted
network access are approved by this worksheet.

## Tool inventory and negative tests

| Tool | Claimed job | Reads | Writes or external effects | Normal test | Denied or malformed-input test | Confirmation shown before mutation? |
| --- | --- | --- | --- | --- | --- | --- |
|  |  |  |  |  |  |  |

Test with synthetic or disposable data. Include prompts or resource content
that asks the agent to reveal credentials, widen scope, ignore instructions, or
perform an unrelated mutation. The expected result is a refusal or a blocked
tool call, not silent compliance.

## Transport and authorization

- Local server uses stdio, or the reason it does not:
- HTTP endpoint uses HTTPS outside loopback development:
- Unauthenticated and invalid-token requests return the expected denial:
- Token audience is the MCP server; token passthrough is not used:
- Granted scopes are narrower than the complete tool surface:
- OAuth redirect and metadata destinations were validated:
- State or server-assigned handles are bound to the authenticated user:

## Disposable runtime evidence

- Isolation method:
- Test fixture and hash:
- Files visible before and after:
- Network destinations observed:
- Commands or child processes observed:
- Tool-list changes observed:
- Logs retained without secrets:
- Cleanup completed:

## Final gate

- [ ] Provenance and the exact command are pinned.
- [ ] No production secret was used during the first run.
- [ ] Filesystem, network, credential, and mutation scopes are explicit.
- [ ] Each tool has a normal test and a denied or malformed-input test.
- [ ] Destructive or external actions require visible human confirmation.
- [ ] Dependency and repository signals were reviewed as evidence, not verdicts.
- [ ] The revocation, removal, owner, and review date are recorded.

Reject or keep isolated when any required permission cannot be bounded, a
denied path still performs work, provenance is unclear, or observed behavior
does not match the declared tool surface.
