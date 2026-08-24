# ADR-0009 — Geolocation retained and its retention cut to thirteen months

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-A09 |
| Version | 1.0 |
| Date | 2026-08-11 |
| Owner | Rahul Bhargava |
| Approver | Karim Haddad |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


| Field | Value |
|---|---|
| Status | Accepted |
| Date | 2026-03-10 |
| Decider | Tobias Lund |
| Phase | 02 — System Scope, ISMS Boundary &amp; Description |

## Context

PD-05 captures geolocation at clock-in where the employer enables it, which 387 of 640 customers have. It is collected directly from the individual, which is part of why the Privacy category was kept at ADR-0002. Removing the feature would simplify the privacy position materially.

## Decision

The feature is retained. Its retention is set at 13 months, irrespective of the contract term that governs every other category, and it is treated as the most sensitive item in the inventory.

## Consequences

The 387 customers who enabled it keep a capability they turned on deliberately, and CloudNimbus keeps a direct-collection relationship it must answer for under the Privacy criteria. Retention at 13 months is the shortest period that still permits a year-on-year comparison — this month against the same month last year — and it stops a second one. Any shorter and the feature loses the comparison customers enabled it for; any longer and the most sensitive category in the inventory is held past the point where anybody uses it.

## Alternatives considered and rejected

Removing geolocation entirely — rejected. Withdrawing a capability customers enabled deliberately, in order to make a compliance argument easier, is a decision taken for the wrong party's benefit. Retaining it under the contract term like every other category — rejected as treating the most sensitive category exactly like the least.

## Related

| Reference | Relationship |
|---|---|
| [02.01 Scope Methodology and the Two Boundaries](../02.01-scope-methodology-and-two-boundaries.md) | Phase-level context |
| [logs/decision-log.md](../logs/decision-log.md) | Decision log entry |
| [02.13 Phase Summary and Transition](../02.13-phase-summary-and-transition.md) | Carries this decision forward |
