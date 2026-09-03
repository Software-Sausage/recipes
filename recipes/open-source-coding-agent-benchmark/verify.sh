#!/bin/sh
set -eu

root=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
grep -q 'Only the named comparison variable changed' "$root/benchmark-manifest.md"
grep -q 'Review labels were hidden' "$root/benchmark-manifest.md"
grep -q 'conclusion is limited to this task' "$root/benchmark-manifest.md"
grep -q 'does not produce a universal leaderboard' "$root/README.md"
echo "Open-source coding-agent benchmark checks passed."
