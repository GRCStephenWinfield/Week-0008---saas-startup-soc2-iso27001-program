# ADR-0024 — Query log retention reviewed after the nine-month forensic gap

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-A24 |
| Version | 1.0 |
| Date | 2026-08-11 |
| Owner | Rahul Bhargava |
| Approver | Karim Haddad |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


| Field | Value |
|---|---|
| Status | Accepted |
| Date | 2026-06-22 |
| Decider | Devon Ashby |
| Phase | 05 — Security Criteria &amp; Technical Controls |

## Context

The forensic search that followed PT-01 could reach thirteen months. The code path had existed for twenty-two. **Nine months — 41% of the period — could not be searched**, and the seven-year archive could not close the gap because the archived form is pseudonymised and does not retain request-level parameters.

## Decision

RT-05's retention is reviewed rather than changed by reflex, and the review is scoped to the question the gap actually raised: what retention would have answered it, what that would cost in storage and in the volume of personal data held longer, and whether the answer is retention at all rather than a different artefact.

## Consequences

The review is open at this vantage and its outcome belongs to a later phase. Recording it as open is the point: a programme that responds to a forensic gap by immediately extending retention has chosen the first available answer, and extending retention means holding more personal data for longer, which is a privacy decision made to solve a security problem.

## Alternatives considered and rejected

Extending RT-05 to twenty-four months immediately — rejected as a reflex. Accepting the gap without review — rejected because the gap is the substance of a minuted dissent and leaving it unexamined would make the dissent unanswerable.

## Related

| Reference | Relationship |
|---|---|
| [05.12 R-37 Tenant Isolation Finding and Remediation](../05.12-r37-tenant-isolation-finding-and-remediation.md) | The finding this phase turns on |
| [logs/decision-log.md](../logs/decision-log.md) | Decision log entry |
| [05.13 Phase Summary and Transition](../05.13-phase-summary-and-transition.md) | Carries this decision forward |
