#!/bin/sh
set -eu

SEATS=${SEATS:-10}
MONTHS=${MONTHS:-12}
HOURLY_RATE=${HOURLY_RATE:-100}
PIPEDRIVE_SEAT_MONTHLY=${PIPEDRIVE_SEAT_MONTHLY:-14}
PIPEDRIVE_ADMIN_HOURS_MONTHLY=${PIPEDRIVE_ADMIN_HOURS_MONTHLY:-4}
PIPEDRIVE_MIGRATION_HOURS=${PIPEDRIVE_MIGRATION_HOURS:-20}
HUBSPOT_LICENSE_YEARLY=${HUBSPOT_LICENSE_YEARLY:-}
HUBSPOT_ADMIN_HOURS_MONTHLY=${HUBSPOT_ADMIN_HOURS_MONTHLY:-8}
HUBSPOT_MIGRATION_HOURS=${HUBSPOT_MIGRATION_HOURS:-30}
SALESFORCE_SEAT_MONTHLY=${SALESFORCE_SEAT_MONTHLY:-25}
SALESFORCE_ADMIN_HOURS_MONTHLY=${SALESFORCE_ADMIN_HOURS_MONTHLY:-16}
SALESFORCE_MIGRATION_HOURS=${SALESFORCE_MIGRATION_HOURS:-60}

for value in "$SEATS" "$MONTHS" "$HOURLY_RATE" "$PIPEDRIVE_SEAT_MONTHLY" "$PIPEDRIVE_ADMIN_HOURS_MONTHLY" "$PIPEDRIVE_MIGRATION_HOURS" "$HUBSPOT_ADMIN_HOURS_MONTHLY" "$HUBSPOT_MIGRATION_HOURS" "$SALESFORCE_SEAT_MONTHLY" "$SALESFORCE_ADMIN_HOURS_MONTHLY" "$SALESFORCE_MIGRATION_HOURS"; do
  case "$value" in ''|*[!0-9.]*|*.*.*) echo "Inputs must be non-negative numbers." >&2; exit 1;; esac
done
case "$HUBSPOT_LICENSE_YEARLY" in *[!0-9.]*|*.*.*) echo "HUBSPOT_LICENSE_YEARLY must be empty or a non-negative number." >&2; exit 1;; esac

calculate() { awk -v a="$1" -v b="$2" -v c="$3" -v d="$4" -v e="$5" 'BEGIN { printf "%.2f", (a*b*c)+(d*c*e) }'; }
money() { awk -v amount="$1" 'BEGIN { printf "$%.2f", amount }'; }

pipedrive=$(calculate "$SEATS" "$PIPEDRIVE_SEAT_MONTHLY" "$MONTHS" "$PIPEDRIVE_ADMIN_HOURS_MONTHLY" "$HOURLY_RATE")
pipedrive=$(awk -v total="$pipedrive" -v migration="$PIPEDRIVE_MIGRATION_HOURS" -v rate="$HOURLY_RATE" 'BEGIN { printf "%.2f", total+(migration*rate) }')
salesforce=$(calculate "$SEATS" "$SALESFORCE_SEAT_MONTHLY" "$MONTHS" "$SALESFORCE_ADMIN_HOURS_MONTHLY" "$HOURLY_RATE")
salesforce=$(awk -v total="$salesforce" -v migration="$SALESFORCE_MIGRATION_HOURS" -v rate="$HOURLY_RATE" 'BEGIN { printf "%.2f", total+(migration*rate) }')
hubspot_labor=$(awk -v months="$MONTHS" -v admin="$HUBSPOT_ADMIN_HOURS_MONTHLY" -v migration="$HUBSPOT_MIGRATION_HOURS" -v rate="$HOURLY_RATE" 'BEGIN { printf "%.2f", ((admin*months)+migration)*rate }')

echo "Illustrative year-one scenario — replace every assumption before procurement"
echo "Pipedrive Lite: $(money "$pipedrive") including listed base license and modeled labor"
if [ -n "$HUBSPOT_LICENSE_YEARLY" ]; then
  hubspot=$(awk -v license="$HUBSPOT_LICENSE_YEARLY" -v labor="$hubspot_labor" 'BEGIN { printf "%.2f", license+labor }')
  echo "HubSpot: $(money "$hubspot") including supplied annual license and modeled labor"
else
  echo "HubSpot: quote required; $(money "$hubspot_labor") modeled labor before license"
fi
echo "Salesforce Starter: $(money "$salesforce") including listed base license and modeled labor"
