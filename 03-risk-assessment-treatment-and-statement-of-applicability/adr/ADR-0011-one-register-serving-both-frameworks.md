# ADR-0011 — One risk register serving clause 6.1.2 and CC3, scoped to the ISMS boundary

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-A11 |
| Version | 1.0 |
| Date | 2026-08-11 |
| Owner | Rahul Bhargava |
| Approver | Karim Haddad |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


| Field | Value |
|---|---|
| Status | Accepted |
| Date | 2026-03-27 |
| Decider | Karim Haddad |
| Phase | 03 — Risk Assessment, Treatment &amp; Statement of Applicability |

## Context

ISO/IEC 27001 clause 6.1.2 requires an information security risk assessment process. The CC3 series requires the entity to specify objectives, identify risks to their achievement, consider fraud, and identify changes that could affect the system of internal control. The two could be satisfied separately, and frequently are.

## Decision

One register, scoped to the **ISMS boundary** rather than to the SOC 2 system — 1,046 assets, not 800. Thirty-six entries, one scale, one set of movement rules, one owner per entry.

## Consequences

The register reaches corporate risks that serve no trust services criterion, and the SOC 2 side inherits a population larger than its own scope. That is the correct direction of error: a criterion cannot be met by a control nobody built because the risk was out of scope, whereas an entry outside the system costs only the effort of carrying it. Scoping the register to the system would have produced an ISMS whose risk assessment did not reach half its own boundary — a clause 6.1.2 finding waiting to be raised.

## Alternatives considered and rejected

Two registers, one per framework — rejected. They diverge at the first amendment, and the divergence is invisible until somebody compares them. Scoping the single register to the SOC 2 system — rejected for the reason above.

## Related

| Reference | Relationship |
|---|---|
| [03.01 Risk Management Methodology](../03.01-risk-management-methodology.md) | Phase-level context |
| [logs/decision-log.md](../logs/decision-log.md) | Decision log entry |
| [03.13 Phase Summary and Transition](../03.13-phase-summary-and-transition.md) | Carries this decision forward |
