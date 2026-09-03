#!/bin/sh
set -eu

root=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
grep -q 'Baseline and candidate used identical frozen cases' "$root/regression-ledger.md"
grep -q 'Deterministic assertions represent real product requirements' "$root/regression-ledger.md"
grep -q 'without production secrets' "$root/regression-ledger.md"
grep -q 'Treat a downloaded configuration as code' "$root/README.md"
echo "AI workflow regression checks passed."
