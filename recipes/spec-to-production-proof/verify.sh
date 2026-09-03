#!/bin/sh
set -eu

root=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
grep -q 'Explicit exclusions' "$root/proof-ledger.md"
grep -q 'Every changed behavior maps' "$root/proof-ledger.md"
grep -q 'fresh browser run' "$root/proof-ledger.md"
grep -q 'Rollback steps are executable' "$root/proof-ledger.md"
grep -q 'generated planning artifacts are correct' "$root/README.md"
echo "Spec-to-production proof checks passed."
