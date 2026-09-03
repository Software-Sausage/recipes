# Safe dependency upgrade

Review and land one dependency upgrade without delegating the merge decision to
Renovate, a scanner, or a coding agent. The kit preserves provenance, compatibility,
runtime proof, and rollback evidence.

## Run the recipe

1. Copy `upgrade-ledger.md` and configure Renovate to propose one narrow, pinned
   update. Avoid grouping unrelated major upgrades.
2. Record the before state, runtime support, direct and transitive changes,
   release notes, lockfile diff, install scripts, license, and rollback version.
3. Run OSV-Scanner on supported manifests and Semgrep on changed code. Review
   findings individually rather than treating a clean result as approval.
4. Ask a coding agent to make only compatibility changes required by documented
   breakage.
5. Run unit, integration, build, and representative runtime checks from a clean
   state, then obtain an independent review before a person merges.
6. Run `./verify.sh` to check that the ledger retains its required gates.

Primary references reviewed September 3, 2026:

- https://docs.renovatebot.com/
- https://github.com/google/osv-scanner/blob/main/docs/scan-source.md
- https://semgrep.dev/docs/category/local-and-cli-scans

Companion workflow:
https://softwaresausage.com/ai/recipes/safe-dependency-upgrade
