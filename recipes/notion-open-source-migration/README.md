# Notion to an open-source knowledge base

Evaluate a move from Notion to Outline or AppFlowy without mistaking a ZIP
archive for a working knowledge system. This kit records counts, decisions, and
test results only; it does not automate a migration or contain workspace data.

## Run the plan

1. Copy [`migration-ledger.md`](migration-ledger.md) into an approved private
   workspace. Inventory authorized content and workflows without pasting page
   text, user data, tokens, or export contents into the ledger.
2. Confirm the Notion export scope. The exporter cannot include pages the
   operator cannot access, some teamspace settings can exclude content, only
   one database view can be selected per export, and an export cannot instantly
   recreate the workspace.
3. Choose Outline, AppFlowy, or stop by testing a representative workspace.
   Outline warns that import fidelity is not guaranteed; AppFlowy accepts a
   Notion ZIP into a new workspace. Neither statement proves your workflows.
4. Reconcile content, hierarchy, databases, properties, files, links, users,
   permissions, comments, automations, integrations, search, clients, and
   export/restore behavior.
5. Decide hosted versus self-hosted separately. Assign identity, SMTP, database,
   object storage, backups, restore, monitoring, upgrades, security, support,
   and incident-response ownership before self-hosting.
6. Run `./verify.sh`, obtain owner sign-off, freeze changes, run the final delta,
   and retain Notion through the rollback window.

Primary references reviewed September 3, 2026:

- https://www.notion.com/help/export-your-content
- https://docs.getoutline.com/s/guide/doc/import-D2ZvLqz411
- https://docs.getoutline.com/s/hosting/doc/notion-2v6g7WY3l3
- https://docs.appflowy.io/docs/guides/import-from-notion
- https://docs.appflowy.io/docs/documentation/appflowy-cloud/deployment

Companion field note:
https://softwaresausage.com/blog/notion-to-open-source-knowledge-base
