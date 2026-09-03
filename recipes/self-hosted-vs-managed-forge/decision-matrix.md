# Forge ownership matrix

Record evidence and a named owner. “Included” is not an operating plan.

| Decision area | Self-hosted evidence and owner | Managed evidence and owner |
| --- | --- | --- |
| Identity, SSO, and offboarding |  |  |
| Upgrades and security patches |  |  |
| Backup scope and retention |  |  |
| Last successful restore test |  |  |
| CI runner patching and isolation |  |  |
| Secrets and protected environments |  |  |
| Issues, reviews, wiki, and packages |  |  |
| Availability and incident response |  |  |
| Export and exit procedure |  |  |
| Monthly infrastructure cost |  |  |
| Monthly operator hours and rate |  |  |
| Migration labor and rollback |  |  |

## Decision rule

- Choose self-hosted only when the control requirement and funded operator are
  both named.
- Choose managed only after verifying export, runner, identity, retention, and
  contract boundaries.
- Choose a mirror only after testing which repository and collaboration data it
  actually preserves.
