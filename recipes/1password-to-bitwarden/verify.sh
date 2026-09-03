#!/bin/sh
set -eu

root=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
grep -q 'This ledger stores counts, owners, decisions, and test results only' "$root/migration-ledger.md"
grep -q 'recovery codes' "$root/migration-ledger.md"
grep -q 'Duplicate-import behavior observed' "$root/migration-ledger.md"
grep -q 'Attachments handled separately' "$root/migration-ledger.md"
grep -q 'Passkey transfer or recreation path proven' "$root/migration-ledger.md"
grep -q 'No export sent to email, chat, tickets, repositories, or AI tools' "$root/migration-ledger.md"
grep -q 'Every export copy deleted' "$root/migration-ledger.md"
grep -q 'Self-hosting responsibilities are assigned and tested' "$root/migration-ledger.md"
grep -q 'Treat' "$root/README.md"
grep -q '1pux.*CSV files as plaintext secrets' "$root/README.md"
echo "Password-manager migration checks passed."
