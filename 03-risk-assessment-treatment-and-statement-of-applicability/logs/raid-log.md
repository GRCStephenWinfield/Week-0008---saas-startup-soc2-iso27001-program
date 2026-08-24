# RAID Log — Phase 03

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-L10 |
| Version | 1.0 |
| Date | 2026-08-11 |
| Owner | Rahul Bhargava |
| Approver | Karim Haddad |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


**Programme delivery risks, continuing the Phase 01 and Phase 02 series.** These are **not** the information
security risk register that this phase establishes. That register uses `R-nn` and carries ratings; this log
uses `PR-nn` and carries none. The two are deliberately kept apart, and a reader who conflates them will
find nineteen entries that appear to have escaped the scoring scale.

## Risks — PR-15 to PR-20

| ID | Risk | Owner | Status |
|---|---|---|---|
| PR-15 | A risk is treated on paper and the treatment is not operating on 2026-07-01, so it cannot be tested across the full window | Karim Haddad | Open |
| PR-16 | The close forecast becomes a target and the register is made to agree with it | Lorraine Kessler | Open — the reason ADR-0015 exists |
| PR-17 | The Annex A to trust services criteria mapping is wrong, and both deliverables inherit the error | Rahul Bhargava | Open |
| PR-18 | Risk ownership concentration: one owner carries ten of the thirty-six entries | Marisol Vega | Open — recorded at GOV-09 §5 |
| PR-19 | A control determined necessary and shown as Planned at v1.0 is still Planned when Stage 1 reads the Statement | Karim Haddad | Open |
| PR-20 | An entry is added on evidence that neither the forecast nor the treatment plan provided for | Karim Haddad | Open — provided for, not eliminated |

**PR-16 is the reason ADR-0015 exists**, and it is a delivery risk rather than a security risk because the
thing at stake is the integrity of the reporting, not the security of the platform.

## Assumptions — AS-17 to AS-21

| ID | Assumption | Owner | Status |
|---|---|---|---|
| AS-17 | The thirty-six entries are a sufficient population — no material risk is absent from the register | Karim Haddad | Untestable directly; challenged at each quarterly review under CAL-06 |
| AS-18 | Every treatment in TP-01 to TP-34 will reduce likelihood by the step the forecast assumes | Karim Haddad | Unverified — the forecast's central assumption |
| AS-19 | The two exclusions remain true — no information processing equipment enters the Denver suite | Hannah Brill | Conditional and falsifiable; notifiable under O10 if it changes |
| AS-20 | The 74 risk-justified Annex A controls address the risks they cite | Rahul Bhargava | To be tested when the control library is built in Phase 04 |
| AS-21 | Impact scores are correctly calibrated — a 5 really is a different kind of event from a 4 | Elise Fontaine | Reviewed at management review under CAL-15 |

**AS-18 is the forecast's central assumption and is stated as one.** Every entry forecast to fall does so
because a treatment is assumed to work by the step the forecast claims. If a treatment underperforms, the
forecast is wrong for a reason that is an event and not an error, which is precisely the case GOV-12 asked
to have minuted.

## Issues — IS-08 to IS-10

| ID | Issue | Owner | Status |
|---|---|---|---|
| IS-08 | Twelve entries can never be rated Low, so band-count reporting will understate progress on the most serious risks | Karim Haddad | Open — accepted as the cost of ADR-0012 |
| IS-09 | Obligation O8 forbids the only treatment that would reduce R-20 | Wes Delacroix | Open — retained and accepted at GOV-10 |
| IS-10 | Twenty-nine of the ninety-one necessary controls are Partial or Planned at SoA v1.0 | Karim Haddad | Open until the 2026-06-15 reissue |

## Dependencies — DP-13 to DP-17

| ID | Dependency | Owner |
|---|---|---|
| DP-13 | The control library in Phase 04 depends on the 91 necessary controls and the 34 treatment items | Karim Haddad |
| DP-14 | The Statement of Applicability reissue depends on the control build completing by 2026-06-15 | Karim Haddad |
| DP-15 | The observation window opening on 2026-07-01 depends on 31 of the 34 treatment items landing first | Rahul Bhargava |
| DP-16 | Stage 1 depends on the Statement of Applicability being current at the date of the audit | Karim Haddad |
| DP-17 | Phase 09's close position depends on this phase's baseline being immutable | Rahul Bhargava |

**Total entries: 19** — 6 risks, 5 assumptions, 3 issues, 5 dependencies.

## Cross-References

| Document | Relationship |
|---|---|
| [03.13 Phase Summary and Transition](../03.13-phase-summary-and-transition.md) | Carries the open entries into Phase 04 |
