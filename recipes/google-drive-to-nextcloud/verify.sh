#!/bin/sh
set -eu

root=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)

grep -q 'Source authority: individual Takeout / Workspace administrator export' "$root/migration-ledger.md"
grep -q 'Shared drives and organization-owned files' "$root/migration-ledger.md"
grep -q 'Google Docs conversion format' "$root/migration-ledger.md"
grep -q 'Comments, suggestions, and version history' "$root/migration-ledger.md"
grep -q 'File-size, temporary-space, timeout, and quota limits' "$root/migration-ledger.md"
grep -q 'Configuration, apps, data, theme, and database backup' "$root/migration-ledger.md"
grep -q 'Destination export plus clean backup restore' "$root/migration-ledger.md"
grep -q 'No production data, credentials, user lists, or private links' "$root/migration-ledger.md"
grep -q 'does not move production data' "$root/README.md"
grep -q 'AGPL-3.0-or-later' "$root/README.md"
echo "Google Drive migration checks passed."
