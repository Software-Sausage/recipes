# Google Drive to Nextcloud migration ledger

Store this completed ledger privately. Record counts and decisions, not file
contents, credentials, access tokens, user lists, or confidential link URLs.

## Decision record

- Business owner:
- Data owner:
- Migration operator:
- Authorized source accounts, groups, organizational units, and shared drives:
- Source authority: individual Takeout / Workspace administrator export / other approved method
- Exact Nextcloud server version, edition, apps, and licenses:
- Hosting path: managed / self-hosted / integrator-operated
- Target cutover date:
- Rollback owner and deadline:

## Source authority and export

- Export operator and documented authority:
- Super-administrator eligibility and 2-Step Verification confirmed, if applicable:
- User-owned, organization-owned, suspended, archived, and former-employee scope:
- Shared-drive and customer-owned data scope:
- Export start, snapshot, completion, and error-remediation records:
- Changes after the export snapshot captured by final delta:
- Archive location, access list, encryption, expiry, and deletion owner:

Stop if the approved source scope and exportable source scope differ.

## Inventory

| Item | Source count/bytes | Owner | Included? | Destination path or decision |
| --- | ---: | --- | --- | --- |
| My Drive folders and ordinary files |  |  |  |  |
| Shared drives and organization-owned files |  |  |  |  |
| Google Docs |  |  |  |  |
| Google Sheets |  |  |  |  |
| Google Slides |  |  |  |  |
| Forms, Drawings, Sites, Vids, and shortcuts |  |  |  |  |
| Comments, resolved comments, and suggestions |  |  |  |  |
| File and folder versions |  |  |  |  |
| Internal users, groups, and permissions |  |  |  |  |
| External users and public or link shares |  |  |  |  |
| Large files, unsupported names, and duplicates |  |  |  |  |
| Desktop, mobile, API, automation, and office-editor dependencies |  |  |  |  |

## Conversion and access choices

| Source behavior | Chosen destination behavior | Pilot evidence | Owner | Accepted gap |
| --- | --- | --- | --- | --- |
| Google Docs conversion format |  |  |  |  |
| Google Sheets formulas, pivots, validation, and charts |  |  |  |  |
| Google Slides layout, media, fonts, and speaker notes |  |  |  |  |
| Comments, suggestions, and version history |  |  |  |  |
| Shortcuts, links, embedded items, and Forms |  |  |  |  |
| My Drive ownership |  |  |  |  |
| Shared-drive ownership and membership |  |  |  |  |
| Group and user permissions |  |  |  |  |
| External and public links |  |  |  |  |

## Destination operating gate

| Responsibility | Owner | Failure test | Recovery evidence | Ready? |
| --- | --- | --- | --- | --- |
| Identity, groups, provisioning, and offboarding |  |  |  |  |
| Database and primary/object storage |  |  |  |  |
| TLS, email, and external-sharing policy |  |  |  |  |
| File-size, temporary-space, timeout, and quota limits |  |  |  |  |
| Configuration, apps, data, theme, and database backup |  |  |  |  |
| Clean restore and recovery timing |  |  |  |  |
| Monitoring, upgrades, app compatibility, and incidents |  |  |  |  |
| Desktop/mobile clients and office integration |  |  |  |  |
| Security response, support, and user training |  |  |  |  |

## Representative pilot

Use a synthetic source first. Then use only a small authorized sample in a
non-production destination.

| Check | Expected | Observed | Pass/fail | Gap owner |
| --- | --- | --- | --- | --- |
| Folder tree, ordinary files, names, timestamps, and duplicates |  |  |  |  |
| Native Docs, Sheets, and Slides conversions |  |  |  |  |
| Comments, suggestions, versions, shortcuts, and links |  |  |  |  |
| My Drive and shared-drive ownership mapping |  |  |  |  |
| Internal groups, permissions, external shares, and public links |  |  |  |  |
| Desktop and mobile sync, conflicts, and offline behavior |  |  |  |  |
| Search, previews, editing, and office integration |  |  |  |  |
| Largest supported file and constrained network transfer |  |  |  |  |
| Destination export plus clean backup restore |  |  |  |  |
| New-user, offboarding, and ownership-transfer flow |  |  |  |  |

## Reconciliation

- Source snapshot counts and bytes:
- Destination counts and bytes:
- Missing, failed, quarantined, duplicated, or renamed items:
- Conversion differences reviewed by content owners:
- Permissions and external links reviewed by data owners:
- Sample hashes checked for ordinary binary files:
- Search and representative client behavior checked:
- Destination export and clean restore passed:
- Exceptions accepted by:

## Cutover and rollback

1. Announce the freeze, support route, and last source-write time.
2. Preserve the approved export and logs under the recorded access and deletion rules.
3. Run the final delta and reconcile before changing links or disabling writes.
4. Validate identities, groups, ownership, access, representative content,
   clients, sharing, search, office editing, backup, and restore.
5. Keep Google Drive read-only or otherwise available through the rollback window.
6. Roll back on missing scope, unaccepted conversion loss, access errors, failed
   restore, unstable clients, or an unowned operating responsibility.
7. Delete temporary exports and revoke transfer access only after the rollback
   decision and retention requirements permit it.

## Approval gate

- [ ] Export authority and source scope match the approved migration.
- [ ] A synthetic and small authorized pilot records conversion and access gaps.
- [ ] Exact server, app, edition, integration, and license boundaries are recorded.
- [ ] Content, ordinary-file hashes, ownership, access, clients, and search reconcile.
- [ ] Self-hosting responsibilities are assigned and backup restore is proven.
- [ ] Cutover, support, rollback, and temporary-export deletion have named owners.
- [ ] No production data, credentials, user lists, or private links entered the public kit.
- [ ] Data and business owners approved every remaining gap.
