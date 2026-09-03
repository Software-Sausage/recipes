#!/bin/sh
set -eu

root=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
output=$("$root/calculate.sh")
printf '%s\n' "$output" | grep -q 'Pipedrive Lite: $8480.00'
printf '%s\n' "$output" | grep -q 'HubSpot: quote required; $12600.00 modeled labor before license'
printf '%s\n' "$output" | grep -q 'Salesforce Starter: $28200.00'
HUBSPOT_LICENSE_YEARLY=12000 "$root/calculate.sh" | grep -q 'HubSpot: $24600.00'
if SEATS=private "$root/calculate.sh" >/dev/null 2>&1; then
  echo "Invalid numeric input was accepted." >&2
  exit 1
fi
grep -q 'Twenty (open source)' "$root/decision-ledger.md"
grep -q 'An archive is not a migration' "$root/exit-test.md"
echo "CRM decision kit checks passed."
