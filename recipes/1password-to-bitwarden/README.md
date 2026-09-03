# 1Password to Bitwarden migration

Plan and verify a team password-manager migration without putting a plaintext
vault export in a repository, cloud drive, email, ticket, or AI prompt. This kit
is a decision and reconciliation worksheet, not an automated secret mover.

## Run the plan

1. Copy [`migration-ledger.md`](migration-ledger.md) into an approved private
   workspace. Record counts and owners, never passwords, item names, recovery
   codes, private keys, or export contents.
2. Decide the destination organization, collections, groups, administrators,
   identity path, policies, and recovery process before exporting anything.
3. Test the import once with synthetic items. Bitwarden does not deduplicate
   imports, and file attachments require separate handling.
4. On an approved, non-synced device, export only the authorized scope. Treat
   `.1pux` and CSV files as plaintext secrets from creation through deletion.
5. Reconcile counts, fields, access, TOTP, attachments, passkeys, mobile and
   browser use, offboarding, and recovery before changing the system of record.
6. Delete every export copy, record the cleanup, and rotate credentials whose
   exposure consequence warrants it. Keep the source service available until
   the rollback gate is signed off.
7. Run `./verify.sh` to check that the public worksheet retains the critical
   safety and completeness gates.

Choose hosted versus self-hosted Bitwarden as a separate operating decision.
Self-hosting adds server, database, TLS, backup, restore, monitoring, upgrade,
SMTP, identity, support, and incident-response ownership; it does not remove
organization licensing for paid features.

Primary references reviewed September 3, 2026:

- https://support.1password.com/export/
- https://bitwarden.com/help/import-from-1password/
- https://bitwarden.com/help/teams-enterprise-migration-guide/
- https://bitwarden.com/help/self-host-setup-checklist/

Companion field note:
https://softwaresausage.com/blog/1password-to-bitwarden-migration
