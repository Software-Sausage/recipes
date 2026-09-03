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
benchmark. Slack prices are public annual list prices reviewed September 3,
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

Copy [`templates/decision-inputs.md`](templates/decision-inputs.md) to keep the
requirements, evidence, owner, cost output, and remaining gaps in one reviewable
artifact.

## Compare the operating boundary

Do not choose from the totals alone. Record these differences during discovery:

| Area | Slack managed path | Mattermost self-managed path |
| --- | --- | --- |
| Product | Pro is $7.25 and Business+ is $15 per active user/month annually | Entry is a limited technical evaluation; production license and support need a quote |
| Infrastructure | Vendor operates the service | Customer operates PostgreSQL, file storage, backups, restores, upgrades, and monitoring |
| Calls | Paid plans include group huddles | Integrated media is simplest up to 50 users; paid editions unlock group calls, and network/TURN behavior needs testing |
| Search | Paid plans include searchable history | Database search has documented limits; enterprise search adds a paid-plan and search-service boundary |
| Apps | Hosted app directory and workflow tooling | Slack apps do not migrate; plugins, webhooks, bots, and workflows need replacements and tests |
| Identity and compliance | Capabilities rise by plan; Business+ and Enterprise carry different export and control boundaries | Capabilities vary by edition; self-hosting makes the buyer responsible for hardening and evidence |
| Migration | Export scope depends on plan, approval, retention, and legal authority | Transformation does not replace reconciliation of files, apps, calls, identity, permissions, and exceptions |
| Operations | Workspace administration remains, but server operations are vendor-owned | Default model uses three operator hours/month plus 24 one-time migration hours; replace with measured inputs |

Choose one delivery path explicitly:

- **Managed:** Slack Pro or Business+ at the plan that satisfies export,
  identity, retention, and support requirements.
- **Self-managed:** Mattermost in your infrastructure with named database,
  storage, calls, backup, upgrade, monitoring, and incident owners.
- **Hybrid:** Mattermost in your account, operated by an integrator; price the
  production license, cloud, and service contract separately.

Official inputs: [Slack pricing](https://slack.com/pricing), [Slack plan
features](https://slack.com/help/articles/115003205446-Slack-plans-and-features-),
[Slack exports](https://slack.com/help/articles/201658943-Export-your-workspace-data),
[Mattermost pricing](https://mattermost.com/pricing/), [Mattermost Calls
deployment](https://docs.mattermost.com/administration-guide/configure/calls-deployment-guide.html),
and [Mattermost upgrades](https://docs.mattermost.com/administration-guide/upgrade/upgrading-mattermost-server.html).

## Decision boundary

Choose self-hosting for a concrete control, sovereignty, network, or
customization requirement with a funded operator. Choose managed software when
the collaboration server is not your differentiator and nobody owns its
recovery and security work.

The companion guide includes the source ledger and limitations:
https://softwaresausage.com/guides/slack-to-mattermost
