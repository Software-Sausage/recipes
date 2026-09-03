#!/bin/sh
set -eu

root=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
grep -q 'unrelated major upgrades are separate' "$root/upgrade-ledger.md"
grep -q 'evidence, not verdicts' "$root/upgrade-ledger.md"
grep -q 'representative runtime checks pass' "$root/upgrade-ledger.md"
grep -q 'Neither proves compatibility' "$root/upgrade-ledger.md"
echo "Safe dependency upgrade checks passed."
