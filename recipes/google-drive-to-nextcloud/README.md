# Google Drive to Nextcloud

Plan a file-collaboration migration without mistaking a Google export for a
working Nextcloud deployment. This kit records counts, choices, owners, and test
results only. It does not move production data or contain exported files.

## Use it

1. Copy `migration-ledger.md` into a private, access-controlled project.
2. Choose the correct source-authority lane. Individual Google Takeout covers
   data available to one account; the Workspace Data Export tool requires an
   eligible super administrator and can include organization-owned Drive data.
3. Inventory My Drive, shared drives, Google-native documents, ordinary files,
   links, permissions, ownership, comments, versions, sizes, and name conflicts.
4. Record the exact Nextcloud server, apps, editions, and licenses. The server
   repository is AGPL-3.0-or-later; do not infer that every app, hosted service,
   office integration, or enterprise feature has the same terms.
5. Use a synthetic workspace first, then a small authorized sample. Test the
   chosen conversion formats and transfer method without writing into the final
   destination.
6. Reconcile content, hashes where meaningful, Google-native conversions,
   ownership, access, external shares, search, clients, large files, and a clean
   destination export.
7. If self-hosting, prove backups and restore for configuration, apps, data,
   theme, and database. Name owners for identity, storage, email, monitoring,
   upgrades, security response, support, and incidents.
8. Run `./verify.sh`, obtain owner approval, freeze changes, run the final delta,
   and retain the source through the documented rollback window.

Primary references reviewed September 3, 2026:

- https://support.google.com/accounts/answer/3024190
- https://support.google.com/a/answer/14339894
- https://support.google.com/drive/answer/9759608
- https://docs.nextcloud.com/server/stable/user_manual/en/desktop/index.html
- https://docs.nextcloud.com/server/stable/admin_manual/configuration_files/big_file_upload_configuration.html
- https://docs.nextcloud.com/server/stable/admin_manual/maintenance/backup.html
- https://docs.nextcloud.com/server/stable/admin_manual/maintenance/restore.html
- https://github.com/nextcloud/server/blob/master/COPYING-README

Companion field note:
https://softwaresausage.com/blog/google-drive-to-nextcloud-migration
