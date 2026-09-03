# Failure and exit test

Use synthetic records and test accounts. Record evidence beside every result.

## Reliability drills

- [ ] Expire one credential and confirm the alert names the failed connection.
- [ ] Return HTTP 429 and verify bounded retry/backoff behavior.
- [ ] Deliver the same webhook twice and verify the final state is idempotent.
- [ ] Fail a middle step after an earlier write and document recovery.
- [ ] Exceed the planned billing allowance and record stop/overage behavior.
- [ ] Restore the workflow after a platform or worker restart.

## Exit drill

- [ ] Export the workflow definition using the intended plan and permissions.
- [ ] Inspect the export for secrets before storing or sharing it.
- [ ] Import it into a clean account or instance.
- [ ] Recreate credentials without copying secret values into the workflow.
- [ ] Recreate schedules, webhooks, variables, roles, and alert destinations.
- [ ] Run the same fixture and reconcile every output and side effect.
- [ ] Record what required manual rebuilding and the labor time.

An archive is not a migration. The test passes only when a clean destination
produces the expected state and a named operator can diagnose a failed run.

## Decision record

- Candidate:
- License and edition:
- Hosting owner:
- Monthly platform cost:
- Monthly infrastructure cost:
- Monthly operator hours and rate:
- Expected billing units:
- Reconstruction result:
- Failure-drill result:
- Decision and review date:

