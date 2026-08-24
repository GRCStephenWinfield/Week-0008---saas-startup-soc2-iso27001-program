# ADR-0012 — The movement rules: likelihood only, likelihood 1 reserved, eight is a floor

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-A12 |
| Version | 1.0 |
| Date | 2026-08-11 |
| Owner | Rahul Bhargava |
| Approver | Karim Haddad |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


| Field | Value |
|---|---|
| Status | Accepted |
| Date | 2026-03-31 |
| Decider | Karim Haddad |
| Phase | 03 — Risk Assessment, Treatment &amp; Statement of Applicability |

## Context

A register whose ratings can move in any direction for any reason will show whatever the programme needs it to show. The scale itself does not prevent that; the rules governing movement on the scale do.

## Decision

Three rules. **A rating moves on likelihood, not impact, unless the consequence itself has changed.** **Likelihood 1 is reserved for the not reasonably foreseeable** and is not where a treated risk arrives. **Eight is a floor** — a 3 × 4 moving on likelihood alone reaches 2 × 4 = 8 and stops.

## Consequences

Twelve entries carrying impact 4 or 5 can never be rated Low, and that list was given to the Trust Committee at the point of approval rather than discovered at close. Progress on those entries is visible as a likelihood movement and not as a band change, which is less satisfying to report and more truthful. The rules also make the close forecast derivable, which is what ADR-0015 depends on.

## Alternatives considered and rejected

Allowing impact to fall when a control is implemented — rejected. Treatment makes events less likely; it rarely makes them less damaging when they happen, and a programme that reduces impact scores is reporting on its own optimism. Allowing likelihood 1 for well-treated risks — rejected, because it converts the bottom of the scale into a reward and empties it of meaning.

## Related

| Reference | Relationship |
|---|---|
| [03.01 Risk Management Methodology](../03.01-risk-management-methodology.md) | Phase-level context |
| [logs/decision-log.md](../logs/decision-log.md) | Decision log entry |
| [03.13 Phase Summary and Transition](../03.13-phase-summary-and-transition.md) | Carries this decision forward |
