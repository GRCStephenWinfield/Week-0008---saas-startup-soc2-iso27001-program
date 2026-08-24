# GOV-23 — Quarter Three Operating Review

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-G23 |
| Version | 1.0 |
| Date | 2026-09-30 |
| Owner | Karim Haddad |
| Approver | Marisol Vega |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


## 1. Matter

Review of control operation across July, August and September 2026 — the first three months of the
observation window — by the Trust Committee on **2026-09-28**, chaired by Marisol Vega with Rahul Bhargava
as secretary. This is the direct successor to **GOV-20**, the first-month review of July.

The review was held with two days of the quarter remaining. The material findings below were settled by
that date; the volumetric figures were tabled in draft and are recorded here as finalised at month end.
They are tabulated in full at 06.12.

## 2. The record

| Measure | July | August | September | Q3 |
|---|---|---|---|---|
| Days | 31 | 31 | 30 | **92** |
| Changes deployed | 47 | 51 | 62 | **160** |
| — of which emergency | 2 | 3 | 4 | **9** |
| Alerts triaged | 1,412 | 1,656 | 2,034 | **5,102** |
| — high-severity | 39 | 47 | 62 | **148** |
| Severity-1 or Severity-2 incidents | 0 | 0 | 1 | **1** |
| Security incidents | 0 | 0 | 0 | **0** |
| Nightly calculation cycles | 31 | 31 | 30 | **92** |
| Restore tests (`CNB-C-098`) | 1 | **0** | 1 | **2 of 3** |

**July's row is GOV-20's row.** 47 changes, 2 emergency, 1,412 alerts, 0 incidents — reported at the
first-month review and unchanged here.

## 3. Availability against SC-01

**`EC-09`'s sampling unit is one calendar month for one region**, and the committee required the table to be
reported that way, with the minutes-excluded field shown rather than folded into the result. A blended,
region-blind figure would have concealed the miss.

| Month | Region | Days | Downtime | Minutes excluded | Availability | Allowance at 99.9% |
|---|---|---|---|---|---|---|
| July | `us-east-1` | 31 | 9 minutes | **4** — the TP-20 window of 2026-07-15, notified 2026-07-01 | 99.98% | 44.64 minutes |
| July | `eu-central-1` | 31 | 0 minutes | 0 | 100% | 44.64 minutes |
| August | `us-east-1` | 31 | 13 minutes | **23** — the customer-visible minutes of the CAL-10 exercise, inside the 06:00–10:00 UTC window of 2026-08-19 notified 2026-08-05 | 99.97% | 44.64 minutes |
| August | `eu-central-1` | 31 | 0 minutes | 0 | 100% | 44.64 minutes |
| September | `us-east-1` | 30 | **71 minutes** | **0** | **99.84%** | **43.20 minutes** |
| September | `eu-central-1` | 30 | 0 minutes | 0 | 100% | 43.20 minutes |

**SC-01 was met for the 41 EU-residency customers served from `eu-central-1` and missed for the 599 served
from `us-east-1`.** The committee recorded that distinction in terms: a single platform figure would have
averaged a region that met the commitment in all three months against a region that did not, and the
customers who experienced the miss are named by the region rather than by the mean.

**Twenty-three minutes did not change August's result, and four did not change July's** — both months clear
the allowance with or without the carve-out. That is the reason the omission in `02.12` was corrected at
DEC-613 rather than left: **a carve-out is worth disclosing in the quarter it is trivial, because the quarter
it is not trivial is the quarter nobody will believe the disclosure.**

**The committee recorded that SC-01 was missed in September and that it had been missed since 15:05 UTC on
2026-09-08** — the arithmetic is set out once, at 06.05 §4.1. At the review date, with two days of the month
remaining, September stood to close at 99.84% absent further downtime. **The committee did not record that
it would**, and this record does not say so either: a review held on 2026-09-28 cannot report a month-end
figure, and the outcome is carried in the addendum at §9 rather than back-dated into the minute.

**The mean of the three months is 99.93%.** What the committee decided is narrower and more useful than
"the mean was not reported", since this record has just reported it: **the mean may not stand instead of
the months.** SC-01 is a monthly commitment, a quarter that averages above the line contains a month that
did not meet it, and averaging is the arithmetic by which a breach is talked away. 06.01 owns that argument
in full.

## 4. What the committee declined to conclude

That the controls are operating effectively, and that five deviations in three months is a rate.

> **Three months is half a period, and half a period is not a period.** Five deviations across three months
> is a fact about three months. The population the service auditor samples is six months, and a control
> with one missing occurrence in three has five occurrences still to run — which can improve the rate or
> worsen it, and this committee does not know which.

The committee also declined to characterise any of the deviations as material or immaterial. **That
characterisation belongs to the service auditor**, is made against the applicable trust services criteria
rather than against management's view of its own quarter, and nothing in this record anticipates it.

## 5. What it did conclude

**That the controls produced their evidence, including where they failed.** The August restore test did not
happen and the record says so; the re-scheduled August occurrence of `CNB-C-136` did not happen and the
record says so; the availability probe reported healthy through a seventy-one-minute outage and the record
says why; two emergency approvals landed on the sixth and seventh business day and the record names the
week in which they did. **A quarter in which nothing went wrong would have told the committee
less**, because the only thing it can establish about an evidence architecture is whether it produces a
usable record when the answer is uncomfortable.

**That the disaster recovery objectives were met and measured** — 2h51m against four hours, 4m12s against
fifteen minutes, on 2026-08-19 — and that this is the strongest availability evidence the programme holds.

**That the exercise could not have found the incident**, and that the quarterly in-region failover game day
accepted at `ACT-06-04` is the response to a gap in coverage rather than to a gap in diligence.

## 6. The five deviations and the one commitment failure

**Printed in full once, at 06.12 §6.** The committee's record carries the identifiers and one line each,
worded as 06.12 words them.

| ID | Control | Deviation |
|---|---|---|
| `D-06-01` | `CNB-C-098` | The August monthly restore test was not performed |
| `D-06-02` | `CNB-C-096` | `CNB-C-096`'s probe performs a read, so no burn registered against the error budget through a 71-minute write outage — a design deficiency, not an operating failure |
| `D-06-03` | `CNB-C-108` | One reconciliation exception cleared in four business days against a two-business-day service level |
| `D-06-04` | `CNB-C-082` | Two emergency changes retrospectively approved on the sixth and seventh business day |
| `D-06-05` | `CNB-C-136` | The re-scheduled 2026-08 occurrence of the annual ICT continuity re-derivation was not performed |

**Separately: SC-01, September 2026, not met.** A commitment failure is not a control deviation and the
committee required it to be listed apart from the five.

**The committee noted that four of the five are also nonconformities under clause 10.2** and that `D-06-02`
is not, a design deficiency corrected by amendment being a **correction** rather than a corrective action.
The working is in the deviation log; the committee did not restate it.

## 7. Three figures the committee asked about

**`2 of 3` is not a deviation rate.** The committee required that the phrase "2 of 3 occurrences to date"
be used wherever the restore test is reported, and that **no rate over the window be stated anywhere**.
Three of the six monthly occurrences have not happened. A rate computed over a population that does not yet
exist would be invented, and it would be invented in the flattering direction, because one in six reads
better than one in three.

**Two late emergency approvals in a population of nine is 22%.** The committee asked for the percentage to
be written down rather than left to the sample, and asked that the explanation — the team was writing the
post-incident review — be recorded as an explanation and not as mitigation. An emergency change procedure
that is completed in ordinary weeks and missed in the week of an incident is a procedure that works when
nothing is happening.

**Fourteen access provisioning requests is still a small denominator.** GOV-20 flagged three in July; the
quarter produced fourteen, all with recorded manager approval before provisioning, and one late approval
would be seven per cent of the quarter. The exposure has improved and has not gone away.

## 8. Actions recorded at the review

| Action | Owner | Position |
|---|---|---|
| CA-06-01 — clause 10.2 corrective action on the missed restore test; root cause recorded as the calendar naming CAL-09 and CAL-10 in the same month with nobody owning whether one discharged the other | Wes Delacroix | Open |
| CA-06-02 — clause 10.2 corrective action on `CNB-C-108`; asks which of the two-business-day service level and the weekly Tuesday review is wrong | Grete Lindqvist | Open |
| The two post-incident review windows (`CNB-C-102` five business days, `CNB-C-075` ten) referred rather than amended | Karim Haddad | Referred to the clause 9.2 internal audit |
| `DR-F6` failback timing, scheduled against the Q4 game day | Wes Delacroix | Open, due 2026-11-30 |

The **CAL-06 quarterly register review** fell the following day, **2026-09-29**, and this committee took no
register decision and had none of its outcomes in front of it. They are recorded at **GOV-24**, and so far
as they bear on this record they are carried in the dated addendum at **§9** rather than written back into
a minute taken the day before.

## 9. Status at 2026-09-30

**This addendum is dated and is not part of the record accepted on 2026-09-28.** It exists because a minute
that reports outcomes settled after the meeting is a minute that has been edited rather than a minute that
was taken.

| Matter open at the review | Position at 2026-09-30 |
|---|---|
| September's month-end availability figure | **99.84%** on 71 minutes of unavailability. No further downtime fell in the remaining two days |
| The CAL-06 register review of 2026-09-29 | Held; six reduction proposals put and none accepted; one entry, **R-08, re-rated upward from 4 × 3 = 12 to 5 × 3 = 15**, Moderate to High, on nine counted occurrences that nobody had proposed, with the Chief Executive Officer's High-band retention minuted. **The reporting limb to the Audit &amp; Risk Committee is not complete at this vantage** — CAL-03's Q3 occurrence fell on 2026-09-24, five days earlier; carried as `PR-40` |
| `CA-06-03` — clause 10.2 corrective action on the emergency change path; a change reaching production outside branch protection is to carry a code-owner review after the fact as well as a retrospective approval | **Opened 2026-09-29 at the CAL-06 review**, after this committee had risen. Owner Junia Okonkwo. **Open** |
| `CA-06-04` — clause 10.2 corrective action on the `CNB-C-136` occurrence that was not performed; not back-dated | **Opened after the review**, once the 2026-08 occurrence was confirmed absent. Owner Wes Delacroix. **Open** |
| `D-06-05` | Recorded against `CNB-C-136` once the 2026-08 occurrence was confirmed absent; not back-dated |

## Cross-References

| Document | Relationship |
|---|---|
| [06.12 Quarter Three Operating Record](../06.12-quarter-three-operating-record.md) | The record in full, including the deviation table printed once |
| [06.11 Operations, Monitoring and the Quarterly Review](../06.11-operations-monitoring-and-the-quarterly-review.md) | The review and the two recorded divergences |
| [06.01 Availability Architecture and Commitments](../06.01-availability-architecture-and-commitments.md) | The per-region measurement, `EC-09` and the mean-is-not-the-test argument |
| [06.05 The Severity-1 Incident of 2026-09-08](../06.05-the-severity-1-incident-of-2026-09-08.md) | The 15:05 breach-point arithmetic, stated in full at §4.1 |
| [GOV-24 September Risk Register Review](GOV-24-september-risk-register-review.md) | The CAL-06 review of the following day, and the R-08 re-rating |
| [logs/deviation-log.md](../logs/deviation-log.md) | `D-06-01` to `D-06-05`, the clause 10.2 test, and the SC-01 failure |
| [05.13 Phase Summary and Transition](../../05-security-criteria-and-technical-controls/05.13-phase-summary-and-transition.md) | GOV-20 and the argument this review succeeds |
