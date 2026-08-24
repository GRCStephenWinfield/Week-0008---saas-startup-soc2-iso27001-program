# ADR-0004 — Four-way separation of readiness advisor, internal auditor, certification body and service auditor

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-A04 |
| Version | 1.0 |
| Date | 2026-08-11 |
| Owner | Rahul Bhargava |
| Approver | Karim Haddad |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


| Field | Value |
|---|---|
| Status | Accepted |
| Date | 2026-02-11 |
| Decider | Lorraine Kessler, Chair of the Audit &amp; Risk Committee |
| Phase | 01 — Programme Foundation &amp; Dual-Framework Governance |

## Context

Four distinct assurance functions are needed: control design support, the clause 9.2 internal audit, certification, and the SOC 2 examination. Firms exist that would supply the first three together, at a lower combined cost and with less coordination overhead.

## Decision

Four separate parties. Solstice Trust Advisors advises and is barred from the internal audit programme. Camberwell Risk Partners audits and did not advise on design. Northgate Certification Services certifies and does not consult, as ISO/IEC 17021-1 requires. Ashcombe &amp; Doyle LLP examines and does not design, implement or operate the controls it examines, as AICPA ET section 1.295 requires of nonattest services.

## Consequences

Higher cost across budget lines B-02, B-03 and B-04, and four relationships to manage instead of two. In exchange, no finding in the programme can be dismissed on the ground that the finder built the thing. CloudNimbus must also accept management responsibility explicitly for everything Solstice and Ashcombe &amp; Doyle touch, which is a named obligation on Karim Haddad and Marisol Vega rather than a formality in an engagement letter.

## Alternatives considered and rejected

A single provider offering readiness advisory, an outsourced internal audit function and certification through an affiliated certification body as one managed engagement — available, cheaper, and refused. It is impermissible for the certification arm in any event, and independence that rests on an internal firewall between affiliates is not independence. The value of an internal audit is entirely a function of its independence; a programme that buys assurance from its own advisor has bought nothing.

## Related

| Reference | Relationship |
|---|---|
| [01.06 Dual-Framework Strategy and Integration Model](../01.06-dual-framework-strategy-and-integration-model.md) | Programme-level context |
| [logs/decision-log.md](../logs/decision-log.md) | Decision log entry |
| [01.13 Phase Summary and Transition](../01.13-phase-summary-and-transition.md) | Carries this decision forward |
