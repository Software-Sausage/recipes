# Password-manager migration ledger

## Authority and decision

- Business owner:
- Security owner:
- Migration operator:
- Authorized source organization and vault scope:
- Destination: Bitwarden cloud / approved self-hosted instance
- Target cutover date:
- Rollback owner and deadline:
- Final decision: proceed / extend pilot / stop

This ledger stores counts, owners, decisions, and test results only. Do not add
passwords, usernames, item titles, URLs that reveal accounts, recovery codes,
TOTP seeds, private keys, attachments, export contents, or real customer data.

## Inventory before export

| Type | Authorized count | Owner | Export or rebuild path | Exception |
| --- | ---: | --- | --- | --- |
| Shared vaults and folders |  |  |  |  |
| Personal items in migration scope |  |  |  |  |
| Logins |  |  |  |  |
| Secure notes and custom fields |  |  |  |  |
| TOTP items and recovery codes |  |  |  |  |
| Documents and file attachments |  |  | Manual upload where required |  |
| SSH keys and other key files |  |  |  |  |
| Passkeys |  |  | Mobile transfer or per-site recreation |  |
| Service and emergency accounts |  |  | Validate and rotate explicitly |  |

## Destination design

- Organization owners, including a second recovery owner:
- Administrator roles:
- Groups and collections:
- Source-vault to destination-collection mapping:
- Read-only, hidden-password, and edit permissions:
- SSO or Bitwarden authentication decision:
- Provisioning and deprovisioning path:
- Two-step-login and recovery policy:
- Audit/event-log owner:
- User training and support owner:

### Self-hosting gate

Complete only when self-hosting is under consideration.

| Responsibility | Named owner | Implemented | Restore or failure test |
| --- | --- | --- | --- |
| Server and database |  |  |  |
| TLS, network, and firewall |  |  |  |
| Backups and off-site retention |  |  |  |
| Restore and disaster recovery |  |  |  |
| Monitoring and alerts |  |  |  |
| Upgrades and security response |  |  |  |
| SMTP and identity integration |  |  |  |
| Licensing and renewal sync |  |  |  |
| User support and incident response |  |  |  |

If any production responsibility lacks an owner and a tested failure path,
use the hosted service for the pilot or stop the self-hosting decision.

## Synthetic pilot

- Synthetic item set and expected fields:
- Destination test organization:
- Import format:
- Import executed exactly once:
- Duplicate-import behavior observed:
- Custom fields preserved:
- TOTP works:
- Attachments handled separately:
- Passkey transfer or recreation path proven:
- Browser, desktop, and mobile use tested:
- Invite, accept, confirm, revoke, and remove paths tested:
- Recovery by a second owner tested:
- Pilot exceptions:

## Plaintext export controls

- Approved non-synced device and operator:
- Local full-disk encryption confirmed:
- Cloud sync, backup agents, indexing, and shared folders excluded:
- Export format and reason:
- Export start and deletion deadline:
- Expected export copies and exact locations:
- Import destination verified before selection:
- Screen sharing and recording disabled:
- No export sent to email, chat, tickets, repositories, or AI tools:

## Reconciliation

| Check | Source count | Destination count | Sample verified | Exception owner |
| --- | ---: | ---: | --- | --- |
| Logins and notes |  |  |  |  |
| Custom fields |  |  |  |  |
| TOTP items |  |  |  |  |
| Collections and group access |  |  |  |  |
| Attachments and documents |  |  |  |  |
| Passkeys recreated or transferred |  |  |  |  |
| Service and emergency access |  |  |  |  |
| Desktop, browser, and mobile clients |  |  |  |  |
| Provisioning and offboarding |  |  |  |  |
| Recovery and audit evidence |  |  |  |  |

## Cutover, cleanup, and rollback

- Change freeze communicated:
- Final delta reconciled:
- Destination access approved by data owners:
- Critical credentials selected for post-export rotation:
- Source cancellation date (after rollback gate):
- Rollback trigger and procedure tested:
- Every export copy deleted:
- Trash, temporary files, and removable media checked:
- Backup and sync systems checked for unintended copies:
- Cleanup witnessed or independently reviewed by:
- Exceptions, owners, and deadlines:

## Final gate

- [ ] Scope and authority are explicit.
- [ ] The destination access model and recovery owners are proven.
- [ ] A synthetic one-time import passed without duplicate ambiguity.
- [ ] Attachments, custom fields, TOTP, passkeys, and keys have explicit paths.
- [ ] Source and destination counts plus representative records reconcile.
- [ ] No plaintext export entered email, cloud sync, a repository, or an AI tool.
- [ ] Every export copy is deleted and high-consequence credentials are rotated.
- [ ] The source remains available until rollback approval.
- [ ] Self-hosting responsibilities are assigned and tested, or hosted service is selected.

Stop the cutover when authority is unclear, export copies cannot be accounted
for, privileged access is broader than approved, material item types are
missing, recovery is unproven, or the rollback window has closed prematurely.
