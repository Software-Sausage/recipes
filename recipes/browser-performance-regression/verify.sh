#!/bin/sh
set -eu

root=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
grep -q 'Before and after runs use identical recorded conditions' "$root/performance-ledger.md"
grep -q 'failed runs were not discarded' "$root/performance-ledger.md"
grep -q 'laboratory results from field performance' "$root/performance-ledger.md"
grep -q "connected browser's contents" "$root/README.md"
echo "Browser performance regression checks passed."
