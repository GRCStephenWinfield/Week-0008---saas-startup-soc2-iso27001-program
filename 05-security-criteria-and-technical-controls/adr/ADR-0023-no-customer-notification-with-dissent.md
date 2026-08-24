# ADR-0023 — No customer notification for the isolation finding, with the dissent recorded

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-A23 |
| Version | 1.0 |
| Date | 2026-08-11 |
| Owner | Rahul Bhargava |
| Approver | Karim Haddad |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


| Field | Value |
|---|---|
| Status | Accepted |
| Date | 2026-06-03 |
| Decider | Audit &amp; Risk Committee |
| Phase | 05 — Security Criteria &amp; Technical Controls |

## Context

PT-01 was found in a pre-production environment seeded with synthetic tenants, so no customer data was exposed by the test. The same code path existed in production. The retained query logs showed no request matching the pattern — across thirteen months, against a code path that had existed for twenty-two.

## Decision

**No customer notification.** The contractual assessment under SC-02 and obligation O4 concluded no notification obligation was engaged; voluntary disclosure was considered separately and refused. The finding was disclosed proactively to the service auditor and the certification body.

## Consequences

The decision rests on an absence of evidence over a period shorter than the period the defect existed, and the record says so rather than rounding it off. **Lorraine Kessler's dissent is minuted in substance**: nine unexamined months are exactly the reason a customer might want to know, and a customer told nothing cannot decide for itself whether to look at its own records. The committee agreed to revisit if the October test or any later evidence changes the picture.

## Alternatives considered and rejected

Notifying all 640 customers — rejected on the ground that a disclosure describing a vulnerability with no exposed data and no evidence of exploitation would alarm without informing, and would leave the customer holding a question with no available answer. Notifying only the 118 enterprise-tier customers — rejected as worse than either alternative: it would create two classes of customer on a matter of fact rather than of contract. **This record reaches no conclusion about any statutory notification regime**; that is a question for counsel.

## Related

| Reference | Relationship |
|---|---|
| [05.12 R-37 Tenant Isolation Finding and Remediation](../05.12-r37-tenant-isolation-finding-and-remediation.md) | The finding this phase turns on |
| [logs/decision-log.md](../logs/decision-log.md) | Decision log entry |
| [05.13 Phase Summary and Transition](../05.13-phase-summary-and-transition.md) | Carries this decision forward |
