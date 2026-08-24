# Working — Derivation of the Published Close Forecast

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-D10 |
| Version | 1.0 |
| Date | 2026-08-11 |
| Owner | Karim Haddad |
| Approver | Elise Fontaine |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


This is the working, published rather than kept. **ADR-0015 forbids publishing a close forecast until the
arithmetic has been re-derived from the register and shown to produce it**, and a derivation nobody can see
is a derivation nobody can check.

Rules applied to every entry, without exception: **impact does not move** unless the consequence itself has
changed, and no consequence has; **likelihood 1 is unavailable**, being reserved for the not reasonably
foreseeable; and **eight is a floor** — a 2 × 4 stops there.

| ID | Baseline | Band | Forecast | Band | Movement |
|---|---|---|---|---|---|
| R-01 | 4 × 5 = 20 | High | 2 × 5 = 10 | Moderate | L 4 → 2 |
| R-02 | 3 × 5 = 15 | High | 2 × 5 = 10 | Moderate | L 3 → 2 |
| R-03 | 3 × 5 = 15 | High | 2 × 5 = 10 | Moderate | L 3 → 2 |
| R-04 | 4 × 4 = 16 | High | 3 × 4 = 12 | Moderate | L 4 → 3 |
| R-05 | 4 × 4 = 16 | High | 2 × 4 = 8 | Moderate | L 4 → 2 |
| R-06 | 4 × 4 = 16 | High | 2 × 4 = 8 | Moderate | L 4 → 2 |
| R-07 | 3 × 5 = 15 | High | 2 × 5 = 10 | Moderate | L 3 → 2 |
| R-08 | 4 × 3 = 12 | Moderate | 2 × 3 = 6 | Low | L 4 → 2 |
| R-09 | 4 × 3 = 12 | Moderate | 2 × 3 = 6 | Low | L 4 → 2 |
| R-10 | 4 × 3 = 12 | Moderate | 2 × 3 = 6 | Low | L 4 → 2 |
| R-11 | 3 × 4 = 12 | Moderate | 2 × 4 = 8 | Moderate | L 3 → 2 |
| R-12 | 3 × 4 = 12 | Moderate | 2 × 4 = 8 | Moderate | L 3 → 2 |
| R-13 | 4 × 3 = 12 | Moderate | 3 × 3 = 9 | Moderate | L 4 → 3 |
| R-14 | 4 × 3 = 12 | Moderate | 3 × 3 = 9 | Moderate | L 4 → 3 |
| R-15 | 4 × 2 = 8 | Moderate | 2 × 2 = 4 | Low | L 4 → 2 |
| R-16 | 3 × 3 = 9 | Moderate | 2 × 3 = 6 | Low | L 3 → 2 |
| R-17 | 3 × 3 = 9 | Moderate | 2 × 3 = 6 | Low | L 3 → 2 |
| R-18 | 3 × 3 = 9 | Moderate | 2 × 3 = 6 | Low | L 3 → 2 |
| R-19 | 2 × 5 = 10 | Moderate | 2 × 5 = 10 | Moderate | no movement |
| R-20 | 2 × 5 = 10 | Moderate | 2 × 5 = 10 | Moderate | no movement |
| R-21 | 3 × 3 = 9 | Moderate | 2 × 3 = 6 | Low | L 3 → 2 |
| R-22 | 3 × 3 = 9 | Moderate | 2 × 3 = 6 | Low | L 3 → 2 |
| R-23 | 3 × 3 = 9 | Moderate | 2 × 3 = 6 | Low | L 3 → 2 |
| R-24 | 2 × 4 = 8 | Moderate | 2 × 4 = 8 | Moderate | no movement |
| R-25 | 3 × 2 = 6 | Low | 2 × 2 = 4 | Low | L 3 → 2 |
| R-26 | 2 × 3 = 6 | Low | 2 × 3 = 6 | Low | no movement |
| R-27 | 2 × 3 = 6 | Low | 2 × 3 = 6 | Low | no movement |
| R-28 | 2 × 2 = 4 | Low | 2 × 2 = 4 | Low | no movement |
| R-29 | 2 × 3 = 6 | Low | 2 × 3 = 6 | Low | no movement |
| R-30 | 3 × 2 = 6 | Low | 2 × 2 = 4 | Low | L 3 → 2 |
| R-31 | 2 × 2 = 4 | Low | 2 × 2 = 4 | Low | no movement |
| R-32 | 2 × 2 = 4 | Low | 2 × 2 = 4 | Low | no movement |
| R-33 | 2 × 3 = 6 | Low | 2 × 3 = 6 | Low | no movement |
| R-34 | 3 × 2 = 6 | Low | 2 × 2 = 4 | Low | L 3 → 2 |
| R-35 | 2 × 3 = 6 | Low | 2 × 3 = 6 | Low | no movement |
| R-36 | 2 × 2 = 4 | Low | 2 × 2 = 4 | Low | no movement |

**Result for the 36 baseline entries: 0 High · 14 Moderate · 22 Low.**

Two entries are provided for as **additions on evidence** during the programme — the register is not closed
to additions, per DEC-306 — entering as one Moderate and one High that treatment is expected to bring to
Moderate. That takes Moderate to **16** and the population to **38**.

**Published forecast: 0 High · 16 Moderate · 22 Low = 38.**

Three entries stop above their band's floor for reasons worth naming rather than burying. **R-04** stops at
3 × 4 = 12 because CloudNimbus does not operate Halcyon Identity's availability controls and cannot forecast
an improvement it will not make. **R-13** stops at 3 × 3 = 9 because phishing across 187 people over a
three-year cycle cannot honestly be called "not expected within the cycle". **R-14** stops at 3 × 3 = 9
because CUEC-05 is a control CloudNimbus does not operate, and Phase 02 has already said it will not be
reliably performed.

**This is a forecast.** Phase 09 reports the actual, and the two may differ for reasons that are events
rather than errors.

## Cross-References

| Document | Relationship |
|---|---|
| [03.07 Risk Acceptance and Residual Risk](../03.07-risk-acceptance-and-residual-risk.md) | Where the forecast is published |
| [ADR-0015](../adr/ADR-0015-no-forecast-until-proved-reachable.md) | The discipline |
