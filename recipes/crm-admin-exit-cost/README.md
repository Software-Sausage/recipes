# CRM admin and exit-cost decision kit

Compare Pipedrive, HubSpot, and Salesforce without treating the displayed
license price as total cost. The calculator adds editable administration and
migration labor. The worksheet tests what an export can actually reconstruct.

## Run the fixed example

```sh
./calculate.sh
./verify.sh
```

The defaults model ten seats, a $100 hourly labor rate, and illustrative—not
measured—administration and migration hours. Pipedrive Lite and Salesforce
Starter use the vendor-listed base prices reviewed September 3, 2026. HubSpot
stays **unpriced** until you provide a real annual quote because hubs, seats,
contacts, credits, onboarding, and promotions make a generic multiplication
misleading.

## Replace the assumptions

```sh
SEATS=20 \
HOURLY_RATE=125 \
PIPEDRIVE_ADMIN_HOURS_MONTHLY=6 \
PIPEDRIVE_MIGRATION_HOURS=30 \
HUBSPOT_LICENSE_YEARLY=12000 \
HUBSPOT_ADMIN_HOURS_MONTHLY=12 \
HUBSPOT_MIGRATION_HOURS=60 \
SALESFORCE_ADMIN_HOURS_MONTHLY=30 \
SALESFORCE_MIGRATION_HOURS=120 \
./calculate.sh
```

Also editable: `MONTHS`, `PIPEDRIVE_SEAT_MONTHLY`, and
`SALESFORCE_SEAT_MONTHLY`. Use current written quotes before procurement.

Complete [`decision-ledger.md`](decision-ledger.md) and
[`exit-test.md`](exit-test.md) with a representative pipeline. Do not put
customer records, credentials, exports, or contract documents in this public
repository.

Companion field note:
https://softwaresausage.com/blog/hubspot-vs-pipedrive-vs-salesforce

Primary references:

- https://www.pipedrive.com/en/pricing
- https://support.pipedrive.com/en/article/exporting-data-from-pipedrive
- https://www.hubspot.com/pricing/sales
- https://knowledge.hubspot.com/import-and-export/export-records
- https://www.salesforce.com/sales/pricing/
- https://help.salesforce.com/s/articleView?id=sf.admin_exportdata.htm&language=en_US

