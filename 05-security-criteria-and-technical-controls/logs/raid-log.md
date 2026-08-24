# RAID Log — Phase 05

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-L18 |
| Version | 1.0 |
| Date | 2026-08-11 |
| Owner | Rahul Bhargava |
| Approver | Karim Haddad |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


**Programme delivery risks, continuing the Phase 01 to Phase 04 series.** Not the information security risk
register, which stands at 37 entries.

## Risks — PR-29 to PR-34

| ID | Risk | Owner | Status |
|---|---|---|---|
| PR-29 | A remediated finding regresses, and the isolation suite's path coverage does not reach the regression | Junia Okonkwo | Open — the second test in October is the check |
| PR-30 | The 2026-08-14 mobile release slips past 2026-08-20 and PT-09 goes past target | Junia Okonkwo | Open — the falsifying condition recorded at GOV-18 |
| PR-31 | The nine unexamined months become material because later evidence changes the picture | Tobias Lund | Open — the committee agreed to revisit |
| PR-32 | Small populations: three access provisioning requests in July means one late approval is a large percentage | Wes Delacroix | Open |
| PR-33 | Non-relational stores are outside the build-time check and rest on the suite's path coverage | Junia Okonkwo | Open — a stated limit, not a discovered one |
| PR-34 | The July change population and the remediation timeline describe some of the same events, and a reader double-counts | Rahul Bhargava | Open — stated wherever both are given |

## Assumptions — AS-27 to AS-30

| ID | Assumption | Owner | Status |
|---|---|---|---|
| AS-27 | The isolation suite's 214 access paths are all the access paths there are | Junia Okonkwo | Unverified — this is the assumption PT-01 disproved in its previous form |
| AS-28 | No request matching the PT-01 pattern was made in the nine months before the logs begin | Devon Ashby | Unverifiable, and recorded as such rather than assumed |
| AS-29 | The build-time check cannot be disabled without review | Junia Okonkwo | To be tested in the October engagement |
| AS-30 | July is representative of the five months that follow | Karim Haddad | Unverified, and 05.13 declines to rely on it |

**AS-27 deserves reading twice.** Phase 01 recorded AS-02 — that row-level security was uniformly enforced
across every data access path — and PT-01 disproved it. The replacement assumption is that the isolation
suite's 214 paths are all the paths there are, which is **the same kind of claim in a different place**.
Writing it down here is the only honest thing available; the alternative is to believe the second one
because the first was tested.

## Issues — IS-16 to IS-18

| ID | Issue | Owner | Status |
|---|---|---|---|
| IS-16 | PT-15 accepted rather than closed; the enumeration surface remains | Nathan Oyelaran | Open — revisited at the second test |
| IS-17 | The forensic search cannot reach nine of the twenty-two months the defect existed | Devon Ashby | Open — RT-05 retention under review at ADR-0024 |
| IS-18 | Two published controls carried different Critical remediation targets and different alert triage parameters | Karim Haddad | Closed — reconciled at source and Phase 04 re-issued |

## Dependencies — DP-23 to DP-26

| ID | Dependency | Owner |
|---|---|---|
| DP-23 | The October penetration test depends on the mobile release closing PT-09 and PT-14 first | Junia Okonkwo |
| DP-24 | Phase 08's sampling depends on the evidence classes producing what they declared, from July onward | Rahul Bhargava |
| DP-25 | Revisiting the disclosure decision depends on evidence the October test may or may not produce | Tobias Lund |
| DP-26 | RT-05's retention review depends on a privacy assessment of holding more personal data for longer | Tobias Lund |

**Total entries: 17** — 6 risks, 4 assumptions, 3 issues, 4 dependencies.

## Cross-References

| Document | Relationship |
|---|---|
| [05.13 Phase Summary and Transition](../05.13-phase-summary-and-transition.md) | Carries the open entries into Phase 06 |
