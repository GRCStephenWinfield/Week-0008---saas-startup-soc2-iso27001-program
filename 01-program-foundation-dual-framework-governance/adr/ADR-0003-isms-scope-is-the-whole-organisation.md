# ADR-0003 — ISMS scope is the whole organisation, not platform engineering

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-A03 |
| Version | 1.0 |
| Date | 2026-08-11 |
| Owner | Rahul Bhargava |
| Approver | Karim Haddad |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


| Field | Value |
|---|---|
| Status | Accepted |
| Date | 2026-02-04 |
| Decider | Karim Haddad, VP Security &amp; Trust |
| Phase | 01 — Programme Foundation &amp; Dual-Framework Governance |

## Context

ISO/IEC 27001 clause 4.3 requires the boundaries and applicability of the ISMS to be determined and documented. A narrower boundary is cheaper to certify and is common practice. CloudNimbus considered scoping the ISMS to platform engineering and operations.

## Decision

The ISMS scope is the whole organisation: all 187 staff, all locations including home working, all information assets. Nothing is excluded from the boundary.

## Consequences

The certificate answers the question enterprise buyers actually ask, which is whether the company is managed securely, not whether one department is. It also means sales, customer success and finance fall inside the ISMS and absorb control friction they would otherwise have escaped. Annex A physical controls must be addressed for a company with no data centre, which is worked through in the Statement of Applicability rather than waved away.

## Alternatives considered and rejected

Platform engineering and operations only — rejected. In a 187-person remote-first company where customer data reaches the CRM and the support tooling, a boundary drawn around engineering is a boundary drawn around the wrong risk, and a buyer reading the scope statement on the certificate would see that immediately.

## Related

| Reference | Relationship |
|---|---|
| [01.06 Dual-Framework Strategy and Integration Model](../01.06-dual-framework-strategy-and-integration-model.md) | Programme-level context |
| [logs/decision-log.md](../logs/decision-log.md) | Decision log entry |
| [01.13 Phase Summary and Transition](../01.13-phase-summary-and-transition.md) | Carries this decision forward |
