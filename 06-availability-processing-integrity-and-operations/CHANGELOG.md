# Phase 06 — Changelog

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-6CL |
| Version | 1.0 |
| Date | 2026-09-30 |
| Owner | Rahul Bhargava |
| Approver | Karim Haddad |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


## 1.0 — Phase 06 issued

**Availability, processing integrity and operations, written from 2026-09-30.** Fourteen numbered
documents, five architectural decision records, four governance records, four logs, four diagrams, four
templates and four workbooks.

### What this phase carries

| Item | Where |
|---|---|
| SC-01 not met in September 2026, and the arithmetic that made it certain at 15:05 on 8 September | 06.01, 06.05 |
| `INC-2026-031` — the Severity-1 incident of 2026-09-08 in full | 06.05, GOV-22 |
| The **DC4** disclosure Phase 02 promised to this phase, drafted at the vantage | 06.06, ADR-0028 |
| The CAL-10 exercise, its six findings, and what it could not have tested | 06.04, GOV-21 |
| The August restore test that did not happen, and was not back-dated | 06.03, ADR-0026, CA-06-01 |
| The calculation engine's quarter, and the one exception a weekly cadence could not clear in two business days | 06.07, 06.09, CA-06-02 |
| CUEC-05 answered: 411 of 640, and why that is not a number the description will carry | 06.09 |
| The September CAL-06 review — six reductions proposed, none accepted, and one rating raised that nobody proposed | 06.11, GOV-24 |
| Five deviations and one service commitment failure, kept apart | 06.12, deviation log |
| A.5.30's four limbs against the two library rows that actually carry them | 06.10, `IS-24` |

### Corrections made at source in this phase

| # | Correction |
|---|---|
| 0 | **`02.12` published SC-01 without the exclusion the master services agreement carries.** The programme relied on the exclusion **twice in the quarter** — a four-hour window on 2026-08-19 for the CAL-10 exercise, notified 2026-08-05, and a shorter one on 2026-07-15 for TP-20, notified 2026-07-01 — for **twenty-seven customer-visible minutes** in total. A 99.9% figure measured with an undisclosed exclusion is not the figure the customer reads, and a description carrying the headline without the carve-out is incomplete under **DC2**. Corrected under DEC-613 and **Phase 02 re-issued** |
| 1 | **`CNB-C-096` was silent on what a probe must exercise.** `CNB-C-068`, beside it in the same library, names sign-in, clock-in and report generation and therefore paged two minutes into the incident; `CNB-C-096` fixed only cadence, regions and the paging condition, and its probe read. Amended under DEC-609 and **Phase 04 re-issued**. **A control that says how often and does not say what is a control that cannot be tested** |
| 2 | **04.11 committed the programme to scheduling quarterly controls early in their period and named CAL-06 among them.** CAL-06 has operated **late in its quarter wherever a register existed to review** — 2026-06-15, scheduled to the ISMS operational declaration at MS-09, and 2026-09-29 — the 2026-03 occurrence having reviewed the risk assessment **method** rather than a register. That is right for CAL-06, because a register review evaluates a quarter's accumulated evidence and one held in the first month of a quarter reviews the previous quarter's. The line is corrected to name CAL-03 and CAL-07 to CAL-09, with CAL-06 deliberately late. DEC-602; **Phase 04 re-issued** |
| 3 | **`CNB-C-102` and `CNB-C-075` carry different post-incident review windows for the same artefact** — five business days and ten. Recorded and referred to the clause 9.2 internal audit rather than quietly edited. **A library that corrects itself silently cannot demonstrate that it was ever wrong** |
| 4 | **A.5.30 reads `Implemented` on the Statement of Applicability and was moved there before the control carrying its testing limb had operated.** Nothing in the library implements its maintenance limb at all. Both recorded and referred — `IS-24` — rather than corrected by the people who noticed them |

### What this phase deliberately does not do

It does not state a window deviation rate for `CNB-C-098`, because three of the six occurrences have not
happened. It does not report the clause 9.2 internal audit that ran 2026-09-14 to 2026-09-25 or the
management review of 2026-09-30, both of which belong to Phase 08. It does not admit a new risk for the
September incident, because R-18 already describes it. It does not reduce a single register entry on three
months of evidence, and it says why for each of the six proposals it declined. And it does not forecast the
service auditor's opinion from five deviations, because a deviation is disclosed and evaluated, not
counted.
