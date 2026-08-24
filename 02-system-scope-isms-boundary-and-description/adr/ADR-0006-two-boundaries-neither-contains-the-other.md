# ADR-0006 — Two boundaries, deliberately different, neither containing the other

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-A06 |
| Version | 1.0 |
| Date | 2026-08-11 |
| Owner | Rahul Bhargava |
| Approver | Karim Haddad |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


| Field | Value |
|---|---|
| Status | Accepted |
| Date | 2026-02-20 |
| Decider | Karim Haddad |
| Phase | 02 — System Scope, ISMS Boundary &amp; Description |

## Context

A SOC 2 examination is scoped to a system — infrastructure, software, people, procedures and data serving a defined service — described by management under DC section 200. An ISO/IEC 27001 ISMS is scoped to an organisational boundary under clause 4.3. The programme could define one boundary and use it for both, which is the common choice and produces one number instead of two.

## Decision

Two boundaries. The SOC 2 system is the CloudNimbus Workforce Platform: 800 of the 1,046 inventoried assets, 164 of 187 personnel, 78 of 130 documented procedures. The ISMS boundary is the whole of CloudNimbus, Inc., with nothing excluded. Neither contains the other.

## Consequences

Two populations must be maintained and two boundary flags carried on every asset, which is real overhead in the inventory. In exchange, the certificate answers the question enterprise buyers actually ask — is this company managed securely — while the examination report answers the question the criteria ask, about a defined system over a defined period. The 246-asset difference is the measurable size of the gap between the two questions.

## Alternatives considered and rejected

One boundary matching the platform — rejected, because it would have required excluding organisational units from the ISMS and producing a certificate narrower than the one buyers read. One boundary matching the organisation — rejected, because a SOC 2 system is not an organisation and describing the finance ledger as part of the platform would have made the description false.

## Related

| Reference | Relationship |
|---|---|
| [02.01 Scope Methodology and the Two Boundaries](../02.01-scope-methodology-and-two-boundaries.md) | Phase-level context |
| [logs/decision-log.md](../logs/decision-log.md) | Decision log entry |
| [02.13 Phase Summary and Transition](../02.13-phase-summary-and-transition.md) | Carries this decision forward |
