# ADR-0025 — A second penetration test inside the observation window

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-A25 |
| Version | 1.0 |
| Date | 2026-08-11 |
| Owner | Rahul Bhargava |
| Approver | Karim Haddad |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


| Field | Value |
|---|---|
| Status | Accepted |
| Date | 2026-06-25 |
| Decider | Karim Haddad |
| Phase | 05 — Security Criteria &amp; Technical Controls |

## Context

`CNB-C-026` operates annually and its 2026 occurrence was the May engagement, whose anniversary falls outside the observation window. Phase 04 re-scheduled it into the window under **DEC-409**, which committed the programme to a second engagement in the period.

## Decision

A second penetration test is scheduled for **October 2026**, inside the window. It re-tests the isolation stream, covers the mobile release that closes PT-09 and PT-14, and revisits the PT-15 acceptance.

## Consequences

The control acquires a population inside the period, which was the object of DEC-409. It also gives the Audit &amp; Risk Committee the evidence event it named when it agreed to revisit the disclosure decision. The cost is a second engagement fee inside one financial year and a second remediation cycle running against the end of the window.

## Alternatives considered and rejected

Leaving the annual occurrence where it fell — rejected: a control with no occurrence inside the period cannot be tested for operating effectiveness, whatever its design. Re-scheduling without disclosure — rejected under ADR-0019: re-performing a control so that it has a population is legitimate, and hiding that you did is not.

## Related

| Reference | Relationship |
|---|---|
| [05.12 R-37 Tenant Isolation Finding and Remediation](../05.12-r37-tenant-isolation-finding-and-remediation.md) | The finding this phase turns on |
| [logs/decision-log.md](../logs/decision-log.md) | Decision log entry |
| [05.13 Phase Summary and Transition](../05.13-phase-summary-and-transition.md) | Carries this decision forward |
