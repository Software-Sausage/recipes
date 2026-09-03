# Forge migration checklist

- [ ] Freeze the source scope and name the migration owner.
- [ ] Inventory repositories, default branches, tags, LFS, submodules, wikis,
      issues, merge requests, releases, packages, webhooks, deploy keys,
      protected branches, secrets, environments, and runners.
- [ ] Confirm destination identity, organization, team, and permission mapping.
- [ ] Create a credential-free test repository and migrate it first.
- [ ] Recreate CI with least-privilege test credentials; do not copy production
      secrets into scripts or migration archives.
- [ ] Compare branch/tag counts and clone the destination into a clean directory.
- [ ] Run the repository's normal verification from the clean clone.
- [ ] Test LFS and submodule checkout separately.
- [ ] Reconcile issues, reviews, wiki, releases, packages, permissions, and audit
      requirements; a Git push does not carry them.
- [ ] Set a cutover window, read-only period, communication plan, and rollback
      trigger.
- [ ] Preserve the source until the destination backup and restore test passes.
- [ ] Record ongoing owners for billing, upgrades, backups, runners, security,
      and incident response.
