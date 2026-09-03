#!/bin/sh
set -eu

root=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
grep -q 'Both parsers ran on the identical fixture' "$root/fidelity-scorecard.md"
grep -q 'decision-changing claim was reopened' "$root/fidelity-scorecard.md"
grep -q 'only the required mounts and network access' "$root/fidelity-scorecard.md"
grep -q 'has no authentication' "$root/README.md"
echo "Document parser fidelity checks passed."
