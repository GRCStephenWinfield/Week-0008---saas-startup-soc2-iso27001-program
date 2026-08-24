# ADR-0013 — Ninety-one of ninety-three Annex A controls determined necessary; two excluded; four argued and refused

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-A13 |
| Version | 1.0 |
| Date | 2026-08-11 |
| Owner | Rahul Bhargava |
| Approver | Karim Haddad |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


| Field | Value |
|---|---|
| Status | Accepted |
| Date | 2026-04-20 |
| Decider | Karim Haddad |
| Phase | 03 — Risk Assessment, Treatment &amp; Statement of Applicability |

## Context

Annex A of ISO/IEC 27001:2022 contains 93 controls. A remote-first company with no data centre has an obvious case for excluding several of the fourteen physical controls, and exclusions are permitted provided clause 6.1.3 d) justifies them.

## Decision

**91 determined necessary. Two excluded** — A.7.11 supporting utilities and A.7.12 cabling security — **on the ground that CloudNimbus operates no facility containing information processing equipment.** **Four proposed for exclusion and refused**: A.7.4, A.7.8, A.7.10 and A.7.13.

## Consequences

Four control implementations that could have been argued away are instead in scope, and each has to be operated and evidenced. In exchange the Statement of Applicability survives the question a Stage 1 auditor asks first, which is not *why did you exclude this* but *did you think about it*. The two exclusions are also conditional and falsifiable: a rack in the Denver suite makes both necessary immediately, and the change is notifiable under obligation O10.

## Alternatives considered and rejected

Excluding the four as well — rejected control by control. A.7.4: the suite has controlled entry and a visitor log, and excluding a control because it is implemented lightly is a category error. A.7.8: 231 laptops are equipment and 187 are sited in homes. **A.7.10: a prohibition on removable media is an implementation of the control, not a reason to exclude it.** A.7.13: endpoints are patched, repaired and re-imaged, and excluding maintenance while retaining A.7.14 disposal would have covered the end of the lifecycle and not the middle.

## Related

| Reference | Relationship |
|---|---|
| [03.01 Risk Management Methodology](../03.01-risk-management-methodology.md) | Phase-level context |
| [logs/decision-log.md](../logs/decision-log.md) | Decision log entry |
| [03.13 Phase Summary and Transition](../03.13-phase-summary-and-transition.md) | Carries this decision forward |
