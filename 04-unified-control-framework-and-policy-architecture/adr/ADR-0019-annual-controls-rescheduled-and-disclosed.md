# ADR-0019 — Five annual controls re-scheduled into the observation window, and disclosed

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-A19 |
| Version | 1.0 |
| Date | 2026-08-11 |
| Owner | Rahul Bhargava |
| Approver | Karim Haddad |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


| Field | Value |
|---|---|
| Status | Accepted |
| Date | 2026-06-01 |
| Decider | Karim Haddad |
| Phase | 04 — Unified Control Framework &amp; Policy Architecture |

## Context

22 of the 148 controls operate annually. The observation window is six months, so an annual control has a population of at most one inside it — and of none if its anniversary falls outside. **Ten controls have no occurrence in the window.** Five were built between April and June 2026 and inherited a build date as their first operation. The other five were missed on the first pass, because their anniversaries come from the programme's own assurance calendar — CAL-11 in May, CAL-12 and CAL-13 in June, the objectives set at kickoff in January — and an established rhythm anchored to the wrong month looks exactly like a safe one.

## Decision

All ten are re-scheduled to operate inside the window, they are named individually, and the re-scheduling is disclosed rather than left in the dates for a reader to notice. **One of the ten is `CNB-C-031`, the sole control serving CC5.3**, which without re-scheduling would have had no testable occurrence at all.

## Consequences

Ten controls acquire a population and can be tested for operating effectiveness. The programme acquires an obligation to explain why ten annual operations cluster inside a six-month period, which it discharges by saying so. It also acquires a downstream obligation: `CNB-C-026` is penetration testing, and re-scheduling it into the window commits the programme to a second engagement in the period.

## Alternatives considered and rejected

Leaving them where they fell — rejected: ten controls with a population of zero cannot be tested for operating effectiveness in the period, whatever their design, and the report would have to say so. Re-scheduling without disclosure — rejected, and it is the option worth naming because it is the one that costs nothing and is wrong. **Re-performing an annual control so that it has a population is legitimate; hiding that you did is not**, because the reader then infers a natural cadence that does not exist.

## Related

| Reference | Relationship |
|---|---|
| [04.01 Control Framework Architecture](../04.01-control-framework-architecture.md) | Phase-level context |
| [logs/decision-log.md](../logs/decision-log.md) | Decision log entry |
| [04.13 Phase Summary and Transition](../04.13-phase-summary-and-transition.md) | Carries this decision forward |
