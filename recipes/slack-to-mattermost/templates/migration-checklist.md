# Slack to Mattermost migration checklist

## Scope and authority

- [ ] Name the business owner, technical owner, support owner, and go/no-go owner.
- [ ] Record the Slack plan, export type, legal authority, required history, and retention rules.
- [ ] Inventory active people, guests, channels, private channels, DMs, files, canvases, workflows, apps, bots, webhooks, calls, identity, and external organizations.
- [ ] Decide what will not migrate and tell affected users before cutover.

## Staging and transformation

- [ ] Provision a fresh Mattermost staging target and test backup restoration.
- [ ] Keep at least three times the Slack export size available during import.
- [ ] Preserve the original export archive; do not unzip and re-zip it.
- [ ] Run `mmetl check slack`, transform the export, and retain its logs.
- [ ] Validate the Mattermost import archive before processing it.

## Reconciliation

- [ ] Reconcile people, channels, posts, files, threads, timestamps, and permissions.
- [ ] Rebuild and test integrations separately; do not assume Slack apps migrate.
- [ ] Test search, notifications, mobile clients, calls, identity, and offboarding.
- [ ] Record exceptions and obtain the business owner's approval.

## Cutover and operations

- [ ] Publish the cutover window, freeze rules, user instructions, and support path.
- [ ] Take a final backup and prove the rollback path before cutover.
- [ ] Assign ongoing upgrades, backups, restore drills, monitoring, security response, and capacity.
- [ ] Review the first week of errors and user-reported gaps before retiring Slack.

Primary procedure:
https://docs.mattermost.com/administration-guide/onboard/migrate-from-slack.html
