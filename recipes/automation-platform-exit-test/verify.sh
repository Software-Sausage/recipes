#!/bin/sh
set -eu

root=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
grep -q 'Maximum acceptable duplicate rate' "$root/workflow-inventory.md"
grep -q 'HTTP 429' "$root/failure-and-exit-test.md"
grep -q 'idempotent' "$root/failure-and-exit-test.md"
grep -q 'An archive is not a migration' "$root/failure-and-exit-test.md"
grep -q 'Do not put credentials' "$root/README.md"
echo "Automation platform decision kit checks passed."

