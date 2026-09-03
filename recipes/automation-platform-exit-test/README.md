# Automation platform reliability and exit test

Compare Zapier, Activepieces, n8n, or another workflow platform using one real
automation. The worksheet counts billing units, failure behavior, credential
work, and reconstruction—not connector logos alone.

## Run the test

1. Copy [`workflow-inventory.md`](workflow-inventory.md) into a private working
   directory and describe one representative automation.
2. Build the same behavior in each serious candidate.
3. Complete [`failure-and-exit-test.md`](failure-and-exit-test.md) with test
   accounts and synthetic data.
4. Run `./verify.sh` to confirm the public kit still contains the required
   decision gates.

Do not put credentials, customer payloads, webhook secrets, exports, or
production logs in this public repository. An exported workflow does not prove
that credentials, history, schedules, webhooks, or operational behavior can be
reconstructed.

Companion guide:
https://softwaresausage.com/blog/zapier-vs-activepieces-vs-n8n

Primary references reviewed September 3, 2026:

- https://zapier.com/pricing
- https://zapier.com/pricing/rates
- https://help.zapier.com/hc/en-us/articles/8496308481933-Import-and-export-Zaps-in-your-Team-or-Enterprise-account
- https://www.activepieces.com/pricing
- https://www.activepieces.com/docs/about/license
- https://www.activepieces.com/docs/install/options/docker-compose
- https://n8n.io/pricing/
- https://docs.n8n.io/privacy-and-security/sustainable-use-license/

