# ADR-0010 — Four proposed complementary user entity controls refused

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-A10 |
| Version | 1.0 |
| Date | 2026-08-11 |
| Owner | Rahul Bhargava |
| Approver | Karim Haddad |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


| Field | Value |
|---|---|
| Status | Accepted |
| Date | 2026-03-13 |
| Decider | Ana-Sofia Cruz |
| Phase | 02 — System Scope, ISMS Boundary &amp; Description |

## Context

Fifteen complementary user entity controls were proposed for disclosure under DC6. A longer list looks more thorough and moves obligations off CloudNimbus's side of the description.

## Decision

Eleven are disclosed. Four are refused: tenant monitoring for unauthorised access, customer verification of deletion, customer confirmation of encryption, and customer responsibility for credential sharing as drafted.

## Consequences

The description carries eleven disclosures that are genuinely necessary and none that are convenient. CUEC-05 — customer validation of the payroll export — is identified as both the most important and the least reliably performed, and the description must say what happens when it is not performed rather than disclose it and stop.

## Alternatives considered and rejected

Disclosing all fifteen — rejected. A complementary user entity control is a disclosure, not a control CloudNimbus operates; inflating the list transfers CloudNimbus's own obligations onto parties who never agreed to them and often will not perform them, and a reader who relies on a CUEC that nobody performs has been misled by a document that was technically accurate.

## Related

| Reference | Relationship |
|---|---|
| [02.01 Scope Methodology and the Two Boundaries](../02.01-scope-methodology-and-two-boundaries.md) | Phase-level context |
| [logs/decision-log.md](../logs/decision-log.md) | Decision log entry |
| [02.13 Phase Summary and Transition](../02.13-phase-summary-and-transition.md) | Carries this decision forward |
