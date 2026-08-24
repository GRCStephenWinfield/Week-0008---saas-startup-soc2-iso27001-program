# ADR-0015 — No close forecast is published until the harness has proved it reachable

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-A15 |
| Version | 1.0 |
| Date | 2026-08-11 |
| Owner | Rahul Bhargava |
| Approver | Karim Haddad |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


| Field | Value |
|---|---|
| Status | Accepted |
| Date | 2026-04-24 |
| Decider | Karim Haddad |
| Phase | 03 — Risk Assessment, Treatment &amp; Statement of Applicability |

## Context

Programmes of this kind publish a forecast of where the risk profile will be at close. In a previous engagement of this shape a close position was published that the register's own movement rules made unreachable, and the closing phase had to report the miss. The rules that made it unreachable — impact does not move, likelihood 1 is reserved, eight is a floor — are the rules that make the register honest.

## Decision

A forecast is published **only after the arithmetic has been re-derived from the register, entry by entry, and shown to produce it**. The derivation is published as working rather than kept. The forecast published is **0 High · 16 Moderate · 22 Low = 38**.

## Consequences

The corrective is not better forecasting; it is a refusal to publish an unverified one. Twelve entries are named in advance as forecast not to move, which makes it much harder to quietly assume improvement in an entry the committee has already been told cannot improve. The forecast remains a forecast: Phase 09 reports the actual, and the two may differ for reasons that are **events rather than errors**.

## Alternatives considered and rejected

Publishing no forecast at all — rejected as an over-correction; a programme that will not say where it expects to end has not planned. Publishing a directional statement without numbers — rejected, because an unfalsifiable forecast is not a forecast.

## Related

| Reference | Relationship |
|---|---|
| [03.01 Risk Management Methodology](../03.01-risk-management-methodology.md) | Phase-level context |
| [logs/decision-log.md](../logs/decision-log.md) | Decision log entry |
| [03.13 Phase Summary and Transition](../03.13-phase-summary-and-transition.md) | Carries this decision forward |
