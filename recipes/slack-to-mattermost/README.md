# Slack to Mattermost decision kit

Compare a fixed 25-person Slack subscription with a self-managed Mattermost
scenario. The default models a limited technical evaluation with no product
fee; it is not a production license quote. The calculator counts
infrastructure, backups, operator labor, and migration.

## Run the default scenario

```sh
./calculate.sh
./verify.sh
```

Default result:

- Slack Pro year one: **$2,175**
- Slack Business+ year one: **$4,500**
- Mattermost self-managed evaluation year one: **$5,160**
- Mattermost self-managed evaluation following year: **$3,360**

These are calculated planning figures, not a customer quote or migration
benchmark. Slack prices are public annual list prices reviewed September 2,
2026. Mattermost infrastructure, backup, labor, and migration values are
editable assumptions. Confirm the edition and set `MATTERMOST_LICENSE_YEARLY`
to an applicable production quote before using the result for procurement.

## Use your own inputs

Pass numeric environment variables for the values you know:

```sh
TEAM_SIZE=40 \
HOSTING_MONTHLY=80 \
BACKUPS_MONTHLY=25 \
ADMIN_HOURS_MONTHLY=5 \
HOURLY_RATE=100 \
MIGRATION_HOURS=40 \
./calculate.sh
```

Also available: `SLACK_PRO_MONTHLY`, `SLACK_BUSINESS_MONTHLY`, and
`MATTERMOST_LICENSE_YEARLY`. Temporary Slack promotions are deliberately
excluded.

Use [`templates/migration-checklist.md`](templates/migration-checklist.md) to
scope export rights, history, integrations, staging, validation, rollback, and
ongoing ownership. Read [`privacy-boundary.md`](privacy-boundary.md) before
handling a real workspace export.

## Decision boundary

Choose self-hosting for a concrete control, sovereignty, network, or
customization requirement with a funded operator. Choose managed software when
the collaboration server is not your differentiator and nobody owns its
recovery and security work.

The companion guide includes the source ledger and limitations:
https://softwaresausage.com/guides/slack-to-mattermost
