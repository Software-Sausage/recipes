# Self-hosted vs managed forge decision kit

Decide whether a repository belongs on a self-hosted Git forge, a managed
forge, or both. The kit starts with locally inspectable migration facts and
then assigns the operational work that pricing pages omit.

## Inventory a repository

```sh
./inventory.sh /path/to/repository > forge-inventory.txt
./verify.sh
```

The inventory reports counts and capability markers only: tracked files,
branches, tags, remote hosts, Git LFS attributes, submodules, GitLab CI, GitHub
Actions, and local object storage. It never prints remote URLs, branch names,
file names, commit messages, or source content.

Review the output before sharing it. A private hostname can still identify an
organization.

## Make the decision

1. Fill in [`decision-matrix.md`](decision-matrix.md) with named owners and
   evidence for identity, upgrades, backups, restore tests, runners, security,
   collaboration, and portability.
2. Use [`migration-checklist.md`](migration-checklist.md) for a staged move.
3. Read [`privacy-boundary.md`](privacy-boundary.md) before sharing an
   inventory or export.

Choose self-hosting when a concrete control or network requirement justifies
owning recovery and security. Choose managed hosting when the forge is not the
product and nobody is funded to operate it. A mirror can reduce repository
loss risk, but it does not automatically preserve issues, reviews, packages,
secrets, runners, or access policy.

This kit was derived from an anonymized comparison of a small private
self-hosted forge and a managed organization. It is a decision procedure, not
a performance, security, or vendor benchmark.

Companion field note:
https://softwaresausage.com/blog/self-hosted-forge-vs-managed-forge

Primary references:

- https://docs.gitlab.com/administration/backup_restore/backup_gitlab/
- https://docs.gitlab.com/administration/backup_restore/restore_gitlab/
- https://docs.gitlab.com/update/upgrade_paths/
- https://docs.github.com/en/actions/concepts/runners/self-hosted-runners
