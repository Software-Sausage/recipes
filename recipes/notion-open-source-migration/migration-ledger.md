# Notion migration ledger

## Authority and decision

- Business owner:
- Knowledge-system owner:
- Migration operator:
- Authorized source workspace and teamspaces:
- Destination candidate: Outline / AppFlowy / stop
- Exact destination component, version, edition, and license:
- Hosting candidate: vendor-hosted / self-hosted / undecided
- Target cutover date:
- Rollback owner and deadline:
- Final decision: proceed / extend pilot / stop

Record counts, owners, decisions, and test results only. Do not add page text,
attachments, customer or employee data, user lists, access tokens, integration
credentials, export contents, or other private workspace data.

## Authorized inventory before export

| Object or workflow | Count | Owner | Pilot sample | Known export or rebuild path |
| --- | ---: | --- | --- | --- |
| Pages and nested pages |  |  |  |  |
| Teamspaces and top-level areas |  |  |  |  |
| Databases |  |  |  |  |
| Database views and filters |  |  |  |  |
| Properties, relations, rollups, and formulas |  |  |  |  |
| Files, images, video, and embeds |  |  |  |  |
| Internal, external, and shared links |  |  |  |  |
| Templates and recurring work |  |  |  |  |
| Comments, mentions, and authorship |  |  |  |  |
| Users, groups, guests, and permissions |  |  |  |  |
| Forms and database responses |  |  |  |  |
| Automations and integrations |  |  |  |  |
| Public pages and published links |  |  |  |  |
| Search, favorites, and navigation |  |  |  |  |

## Source-scope gate

- Export operator can access every approved page:
- Private pages outside operator access identified:
- Teamspace export restrictions reviewed:
- Database view selected and omitted views listed:
- Files and images included or excluded deliberately:
- Export format and reason: Markdown/CSV / HTML / other
- Export delivery and expiry understood:
- Long Windows paths tested or alternate extraction approved:
- Source count snapshot date:

Stop if the approved scope and the exportable scope do not match.

## Destination pilot

Use a synthetic workspace plus a small authorized representative sample. Do
not use the production destination for the first import.

| Check | Expected | Outline result | AppFlowy result | Exception owner |
| --- | --- | --- | --- | --- |
| Page text and formatting |  |  |  |  |
| Nested hierarchy |  |  |  |  |
| Databases and row pages |  |  |  |  |
| Views, filters, formulas, relations, and rollups |  |  |  |  |
| Files, images, video, and embeds |  |  |  |  |
| Internal and external links |  |  |  |  |
| Users, groups, guests, and permissions |  |  |  |  |
| Comments, mentions, and authorship |  |  |  |  |
| Templates, forms, and automations |  |  |  |  |
| Search and navigation |  |  |  |  |
| Desktop, web, and mobile clients |  |  |  |  |
| New-user and offboarding flow |  |  |  |  |
| Destination export and clean restore |  |  |  |  |

## License boundary

- Outline BSL 1.1 restrictions reviewed for the intended production use:
- AppFlowy AGPLv3 obligations reviewed for the exact components in scope:
- Hosted, self-hosted, client, and server components checked separately:
- Commercial features or licenses required by the intended use:
- License review owner and date:

### Outline path

- Import method: Notion file / Markdown / HTML / API / OAuth importer
- Workspace administrator:
- Import size checked against current limit:
- Import fidelity exceptions:
- Authorship and permission reconstruction plan:

### AppFlowy path

- Notion ZIP import destination and operator:
- New workspace creation confirmed:
- Import completion notification received:
- Unsupported or changed blocks:
- Cloud or self-hosted data path approved:

## Self-hosting ownership gate

Complete this section only for a self-hosted destination.

| Responsibility | Named owner | Implemented | Failure or restore proof |
| --- | --- | --- | --- |
| Identity and user lifecycle |  |  |  |
| SMTP and notifications |  |  |  |
| Database |  |  |  |
| Object/file storage |  |  |  |
| TLS, network, and DNS |  |  |  |
| Backups and off-site retention |  |  |  |
| Restore and disaster recovery |  |  |  |
| Monitoring and alerting |  |  |  |
| Upgrades and security response |  |  |  |
| User support and incident response |  |  |  |

If any production responsibility lacks a named owner and a tested failure
path, choose hosted service for the pilot or stop the self-hosting decision.

## Cutover and rollback

- Pilot acceptance signed by content, security, and system owners:
- Exceptions have owners and deadlines:
- Change freeze announced:
- Final delta method:
- Destination counts and representative records reconciled:
- Permissions reviewed by data owners:
- Integrations and automations rebuilt and tested:
- Public and shared links redirected or retired:
- User onboarding and support published:
- Source retained read-only through rollback deadline:
- Rollback trigger and procedure tested:
- Export files deleted after the rollback decision:

## Final gate

- [ ] Authorized and exportable source scope match.
- [ ] A representative pilot records destination-specific fidelity failures.
- [ ] The exact component, edition, and license fit the intended production use.
- [ ] Content, hierarchy, databases, assets, links, and search reconcile.
- [ ] Permissions, users, authorship, comments, integrations, and automations have explicit paths.
- [ ] Destination export and restore work on a clean test instance.
- [ ] Self-hosting responsibilities are assigned and tested, or hosted service is selected.
- [ ] Rollback remains possible until owner approval.
- [ ] No private workspace data entered the public kit, a ticket, or an AI prompt.

Stop the cutover when scope is incomplete, material workflows lack a rebuild
path, permissions are broader than approved, reconciliation fails, destination
restore is unproven, or the rollback window has closed prematurely.
