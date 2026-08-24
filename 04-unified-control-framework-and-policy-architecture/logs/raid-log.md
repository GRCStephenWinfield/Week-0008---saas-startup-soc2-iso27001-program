# RAID Log — Phase 04

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-L14 |
| Version | 1.0 |
| Date | 2026-08-11 |
| Owner | Rahul Bhargava |
| Approver | Karim Haddad |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


**Programme delivery risks, continuing the Phase 01 to Phase 03 series.** Not the information security risk
register, which now stands at 37 entries and uses `R-nn`.

## Risks — PR-21 to PR-26

| ID | Risk | Owner | Status |
|---|---|---|---|
| PR-21 | A control is in the library, has an owner and a cadence, and does not actually operate | Karim Haddad | Open — the whole point of the observation window |
| PR-22 | A criterion served by one control loses it to a deviation, and has nothing to fall back on | Rahul Bhargava | Open — CC5.3, C1.2, P3.2 |
| PR-23 | A quarterly control operates once late and produces a 50% deviation rate on a population of two | Karim Haddad | Open |
| PR-24 | An evidence class is declared and the artefact it describes is not what the control actually leaves | Rahul Bhargava | Open |
| PR-25 | The re-scheduling of five annual controls is read as manufacturing a population rather than as disclosure | Karim Haddad | Open — mitigated by disclosing it |
| PR-26 | A policy is reissued and the controls citing it are not reviewed against the change | Rahul Bhargava | Open |
| PR-27 | Ten annual controls now cluster their operation inside a six-month period, and a reader infers a natural cadence that does not exist | Karim Haddad | Open — mitigated only by disclosure |
| PR-28 | CNB-C-026 re-scheduled into the window commits the programme to a second penetration test in the period | Karim Haddad | Open — carried into Phase 05 |

**PR-21 is the one the whole programme turns on.** A library is a set of claims about what happens. The
observation window is where the claims are tested, and nothing in this phase is evidence that any of them
is true.

## Assumptions — AS-22 to AS-26

| ID | Assumption | Owner | Status |
|---|---|---|---|
| AS-22 | Every one of the 148 controls will actually operate at its stated cadence from 2026-07-01 | Karim Haddad | Unverified — this is what the examination tests |
| AS-23 | The 24 evidence classes describe artefacts the controls will really produce | Rahul Bhargava | Unverified until the first sample is drawn |
| AS-24 | The mapping is right — the controls cited against a criterion genuinely meet it | Rahul Bhargava | CloudNimbus's own assertion; no authority blesses it |
| AS-25 | The five re-scheduled annual controls will operate inside the window as re-scheduled | Karim Haddad | Tracked at each Trust Committee |
| AS-26 | Twelve named owners can carry 148 controls alongside their day jobs at 4.6 FTE | Marisol Vega | Monitored monthly |

## Issues — IS-11 to IS-13

| ID | Issue | Owner | Status |
|---|---|---|---|
| IS-11 | Three criteria are served by a single control, and CC5.3's operates annually | Rahul Bhargava | Open — recorded rather than fixed, with the reason |
| IS-12 | Five annual controls had no population in the window before re-scheduling | Karim Haddad | Closed by DEC-409; the disclosure obligation is the residue |
| IS-13 | Twenty-nine controls were Partial or Planned at Statement of Applicability v1.0 | Karim Haddad | 27 of 29 closed at the 2026-06-15 reissue. A.5.28 and A.8.32 remain Partial — they are ML-1 and ML-2 relabelled, and 01.04 targets their closure for 2026-06-30 |
| IS-14 | A.8.30 outsourced development is implemented by a dependency-registry control that does not direct, monitor or review outsourced development | Junia Okonkwo | Open — either CloudNimbus outsources development and no control says so, or A.8.30 should have been argued for exclusion in Phase 03 |
| IS-15 | The criteria side of the library diverges from 03.12 by eleven while the Annex A side diverges by zero | Rahul Bhargava | Open — recorded at 04.03 §4.1 rather than reconciled away |

## Dependencies — DP-18 to DP-22

| ID | Dependency | Owner |
|---|---|---|
| DP-18 | The examination depends on every control operating from 2026-07-01, not from its build date | Karim Haddad |
| DP-19 | Evidence sampling depends on the 24 classes producing the sampling units they declare | Rahul Bhargava |
| DP-20 | Stage 1 depends on the Statement of Applicability reissue being current and version-controlled | Karim Haddad |
| DP-21 | Phase 05 depends on the CC6 to CC9 controls being the ones actually implemented | Wes Delacroix |
| DP-22 | Phase 07 depends on the fifteen privacy controls and the retention rules they enforce | Tobias Lund |

**Total entries: 23** — 8 risks, 5 assumptions, 5 issues, 5 dependencies.

## Cross-References

| Document | Relationship |
|---|---|
| [04.13 Phase Summary and Transition](../04.13-phase-summary-and-transition.md) | Carries the open entries into Phase 05 |
