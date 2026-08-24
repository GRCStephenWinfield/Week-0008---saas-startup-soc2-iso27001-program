# ADR-0018 — Every control declares its evidence class before it is built

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-A18 |
| Version | 1.0 |
| Date | 2026-08-11 |
| Owner | Rahul Bhargava |
| Approver | Karim Haddad |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


| Field | Value |
|---|---|
| Status | Accepted |
| Date | 2026-05-18 |
| Decider | Rahul Bhargava |
| Phase | 04 — Unified Control Framework &amp; Policy Architecture |

## Context

**ML-1** in the 2025 Type I management letter recorded access review evidence retained as email threads and screenshots. The control worked. It left behind nothing a sampler could use, and a Type II samples.

## Decision

A control is not admitted to the library until it names an evidence class from **EC-01 to EC-24**, and an evidence class is not admitted until it states four things: what the artefact is, where it is stored, how long it is kept, and **what one unit of it looks like**.

## Consequences

The fourth is the one that does the work. A sampler asks for a population and then for items from it, and an evidence class whose sampling unit is undefined cannot be sampled however carefully it is retained. Declaring it before the control is built also changes the design: a control designed to leave a sampleable artefact is frequently a different control from one designed only to work.

## Alternatives considered and rejected

Better retention alone — rejected as the answer to the wrong question. ML-1 was not a retention failure; the emails were retained. Documenting evidence after the control had been operating — rejected because by then the artefact exists in whatever form it happens to take, and the choice has been made by default.

## Related

| Reference | Relationship |
|---|---|
| [04.01 Control Framework Architecture](../04.01-control-framework-architecture.md) | Phase-level context |
| [logs/decision-log.md](../logs/decision-log.md) | Decision log entry |
| [04.13 Phase Summary and Transition](../04.13-phase-summary-and-transition.md) | Carries this decision forward |
