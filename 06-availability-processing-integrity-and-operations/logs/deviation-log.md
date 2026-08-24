# Deviation Log — Phase 06

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-L23 |
| Version | 1.0 |
| Date | 2026-09-30 |
| Owner | Rahul Bhargava |
| Approver | Karim Haddad |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


**This is the first log in the portfolio that records controls not operating as described.** It exists
because Phase 06 is the first phase with a quarter of operation behind it, and because a programme that
waits until the sample is drawn to write these down is a programme reconstructing them from memory in
January.

**Two vocabularies are in use here and they are not interchangeable.** A **deviation** — used
interchangeably with **exception** — is the SOC 2 term for a control that did not operate as described,
disclosed in Section IV of the report with the service auditor's evaluation alongside it. A
**nonconformity** is the ISO/IEC 27001 term for a failure to meet a requirement of the management system,
handled under **clause 10.2** with a correction, a root cause and a corrective action. The same underlying
fact can be both, and **four of the five below are**. **Swapping the words hides which framework is being
spoken about, and each has its own consequences.**

## The five deviations

The table is printed in full at **06.12 §6**, which is the chapter that owns the quarter's record. What this
log adds is the column 06.12 does not carry: the clause 10.2 test applied to each entry, with the working
shown rather than a bare yes or no.

| ID | Control | What happened | Population | Criteria the control serves |
|---|---|---|---|---|
| `D-06-01` | `CNB-C-098` | The August monthly restore test was not performed. The team treated the 2026-08-19 disaster recovery exercise as satisfying it; it does not | **1 of 3 occurrences to date** | **A1.2 and A.8.13** — the criterion and the Annex A control `04.06` gives `CNB-C-098`. The Annex A citation is the one that must not be dropped: the clause 10.2 test turns on an unfulfilled ISMS requirement, and 06.10 §6 reports the missed occurrence under A.8.13 |
| `D-06-02` | `CNB-C-096` | `CNB-C-096`'s probes reported healthy through all 71 minutes of `INC-2026-031` and recorded no burn against the error budget, because the probe performs a read, so September's availability figure had to be derived from the error-rate record. **The control operated exactly as designed; the design was wrong** | 1 event | **A1.1, A1.2 and A.8.16** — the criteria and Annex A control `CNB-C-096` cites. Whether the deficiency also bears on **CC4.2** is management's separate consideration and is not asserted here as a fact |
| `D-06-03` | `CNB-C-108` | One reconciliation exception, raised 2026-08-27 at 23:41, was cleared on 2026-09-02 — four business days against a two-business-day service level | **1 of 26** | PI1.3 |
| `D-06-04` | `CNB-C-082` | Two emergency changes, `CHG-2026-1147` and `CHG-2026-1149`, were retrospectively approved on 2026-09-16 and 2026-09-17 — the sixth and seventh business day against a due date of 2026-09-15, five business days from deployment | **2 of 9** | CC8.1 |
| `D-06-05` | `CNB-C-136` | The re-scheduled 2026-08 occurrence of the annual re-derivation of ICT continuity requirements from the business impact analysis was not performed | **1 of 1 occurrence in the window** | A.5.30 — `CNB-C-136` serves no trust services criterion and is the sole carrier of A.5.30's planning limb |

## The clause 10.2 test, applied to each

**The test is one question: is this a non-fulfilment of a requirement of the information security management
system?** Clause 10.2 opens "when a nonconformity occurs", and a nonconformity is a requirement not
fulfilled. A documented control that the ISMS requires to operate and that did not operate is a requirement
not fulfilled. A control whose **design** was inadequate is something else, and the difference decides
whether what follows is a **correction** or a **corrective action**.

| ID | Non-fulfilment of an ISMS requirement? | The working | Clause 10.2 response |
|---|---|---|---|
| `D-06-01` | **Yes** | `CNB-C-098` is a documented control with a monthly cadence. The August occurrence was required and did not happen. A documented control that did not operate is the clearest form of the non-fulfilment clause 10.2 names | **Corrective action `CA-06-01`.** Correction: none available — the occurrence cannot be recovered and was deliberately not back-dated, ADR-0026 |
| `D-06-02` | **No** | `CNB-C-096` operated on every one of its occurrences and satisfied every word of its statement. Nothing the ISMS required was left undone. What was inadequate was the **requirement itself** — the statement was silent on what a probe must exercise. **An inadequate design corrected by amendment is a correction, not a corrective action**, because there is no recurrence to prevent: the amended statement cannot produce the same result | **Correction by amendment — DEC-609, 2026-09-15, Phase 04 re-issued.** No corrective action, and the log states why rather than leaving a bare "No" |
| `D-06-03` | **Yes** | `CNB-C-108`'s two-business-day service level is a stated requirement and one exception took four. `CA-06-02` is open against it, so the log could not answer no without contradicting its own action register | **Corrective action `CA-06-02`**, which asks which of the service level and the weekly Tuesday review is wrong rather than proposing a fix |
| `D-06-04` | **Yes** | `CNB-C-082` requires retrospective approval within five business days and **POL-10** carries the same requirement. Two changes were approved outside it. Both a control and a policy of the ISMS were not followed | **Corrective action `CA-06-03`**, owner Junia Okonkwo: bring the emergency change path within a recorded-review discipline |
| `D-06-05` | **Yes** | `CNB-C-136` is a documented control whose occurrence was re-scheduled to 2026-08 by DEC-409 and did not take place. Same shape as `D-06-01`, on a control with a population of one | **Corrective action `CA-06-04`**, owner Wes Delacroix. Correction: none available; not back-dated, on `D-06-01`'s reasoning |

**Four of the five are nonconformities in the ISO sense and one is not.** That distribution is stated
because the alternative — recording all five, or none — is the shape a log takes when nobody applied the
test. `D-06-02` is the interesting entry and the one a reader should push on: it is the most consequential
finding in the phase and the only one that is not a nonconformity, because a control that did everything
asked of it has not failed to fulfil a requirement. **The requirement was wrong, and a wrong requirement is
amended, not corrected against.**

**None of the five has been raised by a certification body.** No certification body has audited the
management system at this vantage; all five were identified internally, which is what clause 10.2 is for and
is a different thing from an audit finding.

### And one service commitment failure, which is not a control deviation

| Commitment | What happened | Period |
|---|---|---|
| **SC-01** — 99.9% monthly availability of the platform, excluding maintenance windows announced at least fourteen days in advance, as `02.12` reads following DEC-613 | **Not met in September 2026.** None of the 71 minutes fell in an announced window. 71 minutes of unavailability against a monthly allowance of 43.2 minutes in a 30-day month; the month closed at **99.84%**. The commitment was breached at 15:05 UTC on 2026-09-08, twenty-eight minutes before service was restored. **Service credits were applied under the master services agreement to affected tenants on request** | September 2026 |

**A commitment failure and a control deviation are different findings and are listed apart deliberately.**
A deviation is a control that did not operate as described, evaluated against the applicable trust services
criteria by the service auditor. A commitment failure is a promise to a customer that was not kept,
evaluated against the contract by the customer. They are also disclosed in different places: the five
deviations belong in **Section IV** of the report, and the September incident is a **DC4** disclosure in the
description of the system in Section III, because it resulted in a significant failure in the achievement
of a service commitment during the period.

## Five notes the log carries

**`D-06-01` is a deviation and not a system incident, and the distinction decides where it is filed.**
Nothing failed on 19 August; a control did not operate. Filing a control that did not operate under the
incident criterion puts it where no reader of a description looks for it — the same argument 04.11 made
about the re-scheduled annual controls and DC5. **`D-06-01` therefore appears in Section IV and does not
appear in the DC4 disclosure.**

**`D-06-01` states occurrences to date and not a rate, and this log will not compute one.** Three of the six
monthly occurrences in the observation window have not happened. A deviation rate over a population that
does not yet exist would be invented, and it would be invented in the direction that flatters, because one
in six reads better than one in three. **The honest number is the one the service auditor will compute in
January**, from a population that will exist by then.

**`D-06-02` is a design deficiency, not an operating failure, and the distinction is not a softening.**
`CNB-C-096` fixes the probe's frequency, its regions and its paging condition, and says nothing about what
a probe must exercise. Every word of it was satisfied on 8 September. An operating failure is corrected by
running the control; a design deficiency can only be corrected by rewriting it, which is what DEC-609 did on
2026-09-15. The deviation is recorded against the criteria the control cites — **A1.1, A1.2 and A.8.16**.
**Whether it also bears on CC4.2, the entity's evaluation and communication of control deficiencies, is
management's separate consideration and is not stated here as fact.** That is the one formulation this
phase uses.

**`D-06-05` is `D-06-01`'s twin on a worse denominator.** A monthly control that misses one occurrence has
five more inside the window; an annual control that misses its single re-scheduled occurrence has none. The
window's population for `CNB-C-136` is one and it is empty, and the sting is what sits behind it: A.5.30
reads `Implemented` on the current issue of the Statement of Applicability, and `CNB-C-136` is the only row
in the library carrying its planning limb. 06.10 §3 sets that out.

**`D-06-03` and `D-06-04` are the two whose populations are small enough to be quoted as percentages, and
the percentages are stated rather than left to the sample.** One in twenty-six is 3.8%. Two in nine is 22%.
Neither figure is a rate over the window, and both are stated because a reader who has to compute them is a
reader who has been left to discover them. `D-06-05` is one of one, and a percentage on a population of one
is a rhetorical device rather than a measurement.

## What this log does not do

**It offers no view on the service auditor's opinion, and none of the six findings above should be read as
one.** Test deviations are disclosed and evaluated; the auditor modifies an opinion only where the
deviations mean a criterion was not met. That evaluation has not been performed and will not be performed
inside this phase. This is ADR-0015's rule — no forecast until it has been proved reachable — applied to an
opinion instead of a register.

**It does not close anything.** `CA-06-01`, `CA-06-02`, `CA-06-03` and `CA-06-04` are all open at this
vantage. `DR-F6` is open. The occurrence `CNB-C-098` missed in August and the occurrence `CNB-C-136` missed
in August are both unrecoverable and both deliberately not re-performed and back-dated, under **ADR-0026**'s
reasoning, because a test or a re-derivation performed in October is not evidence of a control operating in
August.

## Cross-References

| Document | Relationship |
|---|---|
| [06.12 Quarter Three Operating Record](../06.12-quarter-three-operating-record.md) | The five deviations and the commitment failure printed in full in the quarter's record |
| [06.03 Backup, Restore and Data Durability](../06.03-backup-restore-and-data-durability.md) | `D-06-01`, CA-06-01 and the CAL-09 / CAL-10 distinction |
| [06.05 The Severity-1 Incident of 2026-09-08](../06.05-the-severity-1-incident-of-2026-09-08.md) | `D-06-02`, and the week in which `D-06-04` arose |
| [06.10 Business Continuity and ICT Readiness](../06.10-business-continuity-and-ict-readiness.md) | `D-06-05`, `CA-06-04` and A.5.30's planning limb |
| [06.09 Output Accuracy, Reconciliation and the Export](../06.09-output-accuracy-reconciliation-and-the-export.md) | `D-06-03` and the cadence diagnosis behind CA-06-02 |
| [06.06 Incident Management and the DC4 Disclosure](../06.06-incident-management-and-the-dc4-disclosure.md) | Why the SC-01 failure is a DC4 matter and `D-06-01` is not |
| [adr/ADR-0026](../adr/ADR-0026-the-missed-restore-test-is-not-back-dated.md) | The decision not to re-perform and back-date |
| [governance/GOV-23](../governance/GOV-23-quarter-three-operating-review.md) | The Trust Committee's treatment of all five |
