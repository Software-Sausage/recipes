#!/usr/bin/env sh
set -eu

root=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)

for file in README.md calculate.sh privacy-boundary.md outputs/example/cost-summary.txt templates/migration-checklist.md; do
  test -s "$root/$file" || { echo "Missing or empty file: $file" >&2; exit 1; }
done

actual=$(mktemp)
trap 'rm -f "$actual"' EXIT HUP INT TERM
"$root/calculate.sh" > "$actual"
diff -u "$root/outputs/example/cost-summary.txt" "$actual"

if TEAM_SIZE=twenty-five "$root/calculate.sh" >/dev/null 2>&1; then
  echo "Calculator accepted invalid input." >&2
  exit 1
fi

echo "Decision-kit verification passed."
