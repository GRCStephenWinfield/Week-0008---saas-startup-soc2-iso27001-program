# ADR-0016 — One control library keyed to control identifiers, not to framework references

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-A16 |
| Version | 1.0 |
| Date | 2026-08-11 |
| Owner | Rahul Bhargava |
| Approver | Karim Haddad |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


| Field | Value |
|---|---|
| Status | Accepted |
| Date | 2026-05-04 |
| Decider | Karim Haddad |
| Phase | 04 — Unified Control Framework &amp; Policy Architecture |

## Context

The library has to serve two deliverables whose reference schemes have nothing in common. A control could be numbered by the criterion it serves, by the Annex A control it implements, or by neither.

## Decision

Controls are numbered `CNB-C-001` to `CNB-C-148` in a single sequence that encodes nothing. The criteria and Annex A references are attributes of a control, in columns, and a control may carry several of each or none of one.

## Consequences

A control can be re-mapped without being renumbered, which matters because the mapping is an assertion that will be revised. It also removes the temptation the alternative creates: a library numbered by criterion has one control per criterion by construction, whatever the risk assessment actually needed.

## Alternatives considered and rejected

Numbering by criterion — rejected. A control numbered for a criterion cannot be re-read against an Annex A control without renumbering, which breaks every citation, or without carrying a name that lies. Numbering by Annex A control — rejected for the same reason in the other direction, and because the 21 SOC 2-only controls would have no number at all.

## Related

| Reference | Relationship |
|---|---|
| [04.01 Control Framework Architecture](../04.01-control-framework-architecture.md) | Phase-level context |
| [logs/decision-log.md](../logs/decision-log.md) | Decision log entry |
| [04.13 Phase Summary and Transition](../04.13-phase-summary-and-transition.md) | Carries this decision forward |
