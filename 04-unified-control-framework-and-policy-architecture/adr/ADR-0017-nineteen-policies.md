# ADR-0017 — Nineteen policies, and every control cites exactly one

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-A17 |
| Version | 1.0 |
| Date | 2026-08-11 |
| Owner | Rahul Bhargava |
| Approver | Karim Haddad |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


| Field | Value |
|---|---|
| Status | Accepted |
| Date | 2026-05-11 |
| Decider | Rahul Bhargava |
| Phase | 04 — Unified Control Framework &amp; Policy Architecture |

## Context

The 148 controls need documented authority. That authority could live in one manual, in nineteen policies, or in a document per control.

## Decision

Nineteen policies, POL-01 to POL-19, each with a single accountable owner. **Every control cites exactly one policy, and every policy is cited by at least one control.** Both directions are verified mechanically at each reissue.

## Consequences

The check has teeth in both directions. Controls that existed only because somebody had always done them had to acquire policy text authorising them or be removed; draft policy sections mandating things nobody had built had to acquire a control or be deleted. **A control with no policy behind it is a habit, and a policy with no control under it is a wish.**

## Alternatives considered and rejected

A single information security manual — rejected: one document, one approver, reissued whole for any change, in an organisation where the owner of cryptography is not the owner of screening. A policy per control — rejected: 148 documents nobody reads, each with its own review cycle, consuming the effort the controls need.

## Related

| Reference | Relationship |
|---|---|
| [04.01 Control Framework Architecture](../04.01-control-framework-architecture.md) | Phase-level context |
| [logs/decision-log.md](../logs/decision-log.md) | Decision log entry |
| [04.13 Phase Summary and Transition](../04.13-phase-summary-and-transition.md) | Carries this decision forward |
