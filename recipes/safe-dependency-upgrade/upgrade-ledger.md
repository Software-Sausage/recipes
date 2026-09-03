# Safe dependency upgrade ledger

## Upgrade scope

- Repository and starting revision:
- Package and current version:
- Proposed pinned version:
- Direct or transitive:
- Renovate version and configuration revision:
- Reason for upgrading:
- Rollback version and command:

## Provenance and compatibility

- Primary release notes and migration guide:
- Publisher and repository:
- Package digest or lockfile integrity change:
- Maintainer or ownership change:
- Install, prepare, or lifecycle scripts:
- License before and after:
- Supported runtime and platform range:
- Direct and transitive dependency changes:

## Evidence

| Check | Command and version | Result | Finding disposition |
| --- | --- | --- | --- |
| OSV-Scanner |  |  |  |
| Semgrep |  |  |  |
| Unit tests |  |  |  |
| Integration tests |  |  |  |
| Build |  |  |  |
| Representative runtime |  |  |  |

## Agent change and review

- Compatibility change requested:
- Files changed beyond dependency metadata:
- Unsupported migration assumptions:
- Independent reviewer and findings:
- Resolutions:

## Final gate

- [ ] The update is narrow and unrelated major upgrades are separate.
- [ ] Release notes, provenance, integrity, scripts, licenses, and runtime support were reviewed.
- [ ] Direct and transitive lockfile changes are understood.
- [ ] Scanner findings were reviewed as evidence, not verdicts.
- [ ] Agent-authored compatibility changes are limited to documented breakage.
- [ ] Clean-state tests, build, and representative runtime checks pass.
- [ ] A person approved the merge and can execute the rollback.

Do not merge because automation opened a pull request or scanners reported no
known findings. Neither proves compatibility, safety, or trustworthy provenance.
