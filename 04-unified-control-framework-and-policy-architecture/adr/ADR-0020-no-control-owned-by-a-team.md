# ADR-0020 — No control is owned by a team

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-A20 |
| Version | 1.0 |
| Date | 2026-08-11 |
| Owner | Rahul Bhargava |
| Approver | Karim Haddad |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


| Field | Value |
|---|---|
| Status | Accepted |
| Date | 2026-05-15 |
| Decider | Karim Haddad |
| Phase | 04 — Unified Control Framework &amp; Policy Architecture |

## Context

Control ownership can be assigned to a function — Platform Engineering, Security, People — or to a named individual. Functions are stable across staff changes and require no maintenance.

## Decision

Every one of the 148 controls names an individual. Twelve people carry the library between them.

## Consequences

The register has to be maintained when somebody changes role, which is real overhead. In exchange, every control has somebody who can be asked why it did not operate, and nobody can answer that the team was responsible. Ownership follows the ability to act, and the distribution is uneven because the ability to act is unevenly distributed — recorded rather than smoothed.

## Alternatives considered and rejected

Functional ownership — rejected. A control owned by Platform Engineering is a control nobody answers for, and the first occasion on which that matters is the one where a criterion is being tested against it. Dual ownership, an individual and a function — rejected as functional ownership with an extra column.

## Related

| Reference | Relationship |
|---|---|
| [04.01 Control Framework Architecture](../04.01-control-framework-architecture.md) | Phase-level context |
| [logs/decision-log.md](../logs/decision-log.md) | Decision log entry |
| [04.13 Phase Summary and Transition](../04.13-phase-summary-and-transition.md) | Carries this decision forward |
