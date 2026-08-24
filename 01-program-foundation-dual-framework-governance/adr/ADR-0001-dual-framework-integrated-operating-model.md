# ADR-0001 — Dual-framework integrated operating model: one control library, one evidence store, two deliverables

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-A01 |
| Version | 1.0 |
| Date | 2026-08-11 |
| Owner | Rahul Bhargava |
| Approver | Karim Haddad |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


| Field | Value |
|---|---|
| Status | Accepted |
| Date | 2026-01-19 |
| Decider | Board |
| Phase | 01 — Programme Foundation &amp; Dual-Framework Governance |

## Context

CloudNimbus needs a SOC 2 Type II examination report to satisfy obligation O1 and an ISO/IEC 27001 certificate to satisfy European enterprise buyers who treat the certificate as a procurement gate. Run as two programmes they would duplicate the risk assessment, the control documentation, the evidence collection and most of the internal effort, against a 4.6 FTE-equivalent resource pool.

## Decision

Run one programme. One risk assessment serving clause 6.1 and CC3. One control library of 148 controls, of which 112 serve both frameworks, 21 serve SOC 2 alone and 15 serve ISO 27001 alone. One evidence store, indexed by control rather than by framework. Two deliverables, produced separately and never merged.

## Consequences

Evidence collected once serves both audits, which is the whole return on the decision. The control library becomes a single point of failure: an error in the mapping propagates to both deliverables. The mapping is CloudNimbus's own assertion and no authority blesses it, so its defensibility is CloudNimbus's problem and the reasoning is documented per mapped pair.

## Alternatives considered and rejected

Two independent programmes, sequenced — rejected as unaffordable at 4.6 FTE and as guaranteeing two divergent descriptions of the same controls. A single merged report — rejected because no such deliverable exists; an opinion and a certificate are different instruments issued under different authority.

## Related

| Reference | Relationship |
|---|---|
| [01.06 Dual-Framework Strategy and Integration Model](../01.06-dual-framework-strategy-and-integration-model.md) | Programme-level context |
| [logs/decision-log.md](../logs/decision-log.md) | Decision log entry |
| [01.13 Phase Summary and Transition](../01.13-phase-summary-and-transition.md) | Carries this decision forward |
