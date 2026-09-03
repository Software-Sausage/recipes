#!/bin/sh
set -eu

root=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
grep -q 'Record counts, owners, decisions, and test results only' "$root/migration-ledger.md"
grep -q 'Private pages outside operator access identified' "$root/migration-ledger.md"
grep -q 'Views, filters, formulas, relations, and rollups' "$root/migration-ledger.md"
grep -q 'Authorship and permission reconstruction plan' "$root/migration-ledger.md"
grep -q 'Destination export and clean restore' "$root/migration-ledger.md"
grep -q 'Outline BSL 1.1 restrictions reviewed' "$root/migration-ledger.md"
grep -q 'AppFlowy AGPLv3 obligations reviewed' "$root/migration-ledger.md"
grep -q 'Self-hosting responsibilities are assigned and tested' "$root/migration-ledger.md"
grep -q 'No private workspace data entered the public kit' "$root/migration-ledger.md"
grep -q 'does not automate a migration' "$root/README.md"
grep -q 'not an open-source' "$root/README.md"
echo "Notion migration checks passed."
