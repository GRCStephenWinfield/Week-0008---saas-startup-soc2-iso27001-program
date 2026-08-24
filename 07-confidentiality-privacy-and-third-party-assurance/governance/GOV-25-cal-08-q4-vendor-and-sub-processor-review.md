# GOV-25 — CAL-08 Vendor and Sub-Processor Assurance Review, Quarter Four — with the Quarter Three Occurrence Recorded

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-G25 |
| Version | 1.0 |
| Date | 2026-11-27 |
| Owner | Tobias Lund |
| Approver | Marisol Vega |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


## 1. Matter

The **CAL-08** quarterly sub-processor and vendor assurance review of **2026-10-07**, held by Tobias Lund as
General Counsel and Data Protection Officer, with Rahul Bhargava, Karim Haddad and Wes Delacroix in
attendance for the assurance artefact readings.

**Held in the first fortnight of the quarter.** `01.11` §6's month-by-month view places the quarterly items
in the closing month of each quarter, as the calendar was drawn in January; **DEC-602** corrected `04.11`'s
cadence commitment to name **CAL-03 and CAL-07 to CAL-09** as the items properly scheduled early in their
period, with CAL-06 deliberately late because a register review needs a quarter of accumulated evidence.
This occurrence follows the corrected discipline.

**Phase 06 deferred CAL-08's Q3 occurrence to Phase 07**, which owns third-party assurance, and recorded no
fact about it. This record covers the Q4 occurrence in full and **records the Q3 occurrence rather than
declining it in turn**, because a review that falls inside the observation window and is reported by neither
phase is a review the examination cannot reach.

**CAL-08's Q3 occurrence was held on 2026-07-30**, in the first fortnight of that quarter. **That date is
reported as the fact it is and not as compliance with a discipline that did not yet exist: DEC-602 was taken
on 2026-09-02, five weeks later**, and it is what made early-in-quarter the stated discipline. **The Q4
occurrence of 2026-10-07 is the first held under it.** `CNB-C-092`'s Tier 1 refresh at the Q3 review
produced **twelve readings against the same twelve vendors and the same four counts** — 8 / 2 / 1 / 1 — and
**the same one holding neither**: the outgoing outbound email delivery provider, whose service auditor's
report had lapsed on **2026-06-30**, thirty days earlier. **The Q3 review recorded the absence, and a
replacement was then in procurement**; the effective date of 2026-11-05 did not exist until DEC-701 chose a
thirty-four-day notice on 2026-10-02, and the Q3 record could not and did not name it. §4 states what two
consecutive refreshes finding the same gap does to the deviation's population.

## 2. Position of the register

| Population | Count |
|---|---|
| Vendors in the register | **84** |
| Sub-processors under a data processing addendum | **11** |
| — of which subservice organisations — AWS and Halcyon Identity | **2** |
| Ordinary vendors — neither | **73** |
| | **11 + 73 = 84** |

| Tier | Vendors |
|---|---|
| Tier 1 | **12** |
| Tier 2 | **27** |
| Tier 3 | **45** |
| **Total** | **84** |

Unchanged from the position Phase 02 published. The sub-processor change in progress at the date of this
review — notice issued 2026-10-02, effective 2026-11-05 — **adds one and removes one on the same day and
leaves the population at eleven throughout.**

## 3. The tier question, settled

The review settled a question the ML-3 remediation had left open: whether the tier is a fourth
classification alongside sub-processor, subservice organisation and ordinary vendor, or an independent axis
over the same population.

**Decided: an axis.** Nine of the eleven sub-processors are Tier 1 and two are Tier 2; three Tier 1 vendors
are not sub-processors, receive no personal data, and hold a system integration whose failure carries a Tier
1 consequence. 9 + 2 = 11 and 9 + 3 = 12, and neither figure is reachable from a partition.

**DEC-702**, Tobias Lund, 2026-10-07. Argued at **ADR-0035**, including the single-classification
alternative that was rejected and why. `CNB-C-090`'s requirement to record **the outcome and the tier** is
read as structural rather than as a detail of the form.

## 4. `CNB-C-092` — the Tier 1 assurance refresh

Twelve Tier 1 vendors, twelve readings, each recorded in the vendor register with a conclusion on what the
artefact does and does not cover.

| What the vendor holds | Count |
|---|---|
| A current SOC 2 Type II report | **8** |
| An ISO/IEC 27001 certificate only | **2** |
| Both | **1** |
| **Neither** | **1** |
| **Total** | **12** |

8 + 2 + 1 + 1 = 12, and the Q3 refresh of 2026-07-30 produced the same four counts.

**One deviation recorded across the two reviews.**

> **`D-07-02` · `CNB-C-092` · One Tier 1 vendor held no current assurance artefact at two consecutive
> quarterly refreshes, 2026-07-30 and 2026-10-07 · **2 of 24** — two refreshes, twelve readings each ·
> Clause 10.2 corrective action `CA-07-03`.**

The vendor is the **outgoing outbound email delivery provider**, whose report lapsed on **2026-06-30** and
which is being replaced with effect from 2026-11-05. **The review declined to treat the replacement as
answering the finding**, and the Q3 occurrence is the reason the refusal has force. A remediation in flight
answers what is being done and does not answer how long the
position had been true or what told the programme about it, and the honest answer to the second is: the
quarterly refresh, up to three months after the artefact expired — **and then the same quarterly refresh
again, three months after that, finding the same thing.** `CA-07-03` addresses the cadence problem
rather than the instance — an artefact's expiry date is knowable on the day it is first read — and the
second occurrence is what makes it a corrective action rather than a correction.

The review also recorded that **an ISO/IEC 27001 certificate and a SOC 2 Type II report are not
substitutes**, that the scope statement on a certificate and the period of a report are both read rather
than assumed, and that a register row reading "certified" against a vendor holding a report has recorded the
wrong instrument. 07.09 §4 carries the argument.

## 5. The other side's complementary user entity controls

The reading obligation in `CNB-C-092` — *what that document does and does not cover* — was applied at this
review to the **complementary user entity controls** the two subservice organisation reports state, which
had not previously been enumerated.

| | AWS | Halcyon Identity |
|---|---|---|
| Complementary user entity controls stated | **58** | **19** |
| Already performed by a control in the library | **49** | **17** |
| Not applicable to the services in use | **7** | **2** |
| **With no owner at CloudNimbus** | **2** | **0** |
| | 49 + 7 + 2 = 58 | 17 + 2 = 19 |

The two with no owner: **a scheduled review of pending customer-managed key deletions**, and **a review of
service health notifications for the services in use.**

**No deviation was recorded**, and the review minuted the reasoning rather than leaving it to be inferred:
no control in the library required anybody to own the other side's complementary controls, so no control
failed, and attaching a deviation to `CNB-C-092` would attach a failure to a control that did what it says.
**The absence is the finding**, carried as **`IS-30`** and referred.

The two obligations were **assigned rather than deemed covered** on **2026-10-23** — **DEC-703**, owner
**Wes Delacroix**, clause 10.2 corrective action **`CA-07-01`**. 07.10 is the chapter.

## 6. Bridge letters

| Party | Report period | Action at this review | Outcome |
|---|---|---|---|
| AWS | 2025-10-01 to 2026-09-30 | Bridge letter to be requested | **Requested 2026-10-09, received 2026-11-13** — thirty-five days — covering 2026-10-01 to 2026-10-31 |
| Halcyon Identity | 2025-07-01 to 2026-06-30 | Bridge letter to be requested; the report period ends before the observation window opens | **Requested 2026-10-09, received 2026-11-06** — twenty-eight days — covering to 2026-10-31 |

**Both were requested on 2026-10-09 and the request date is recorded for both**, because the interval
between asking and receiving is the only part of a bridge letter's value that the requester can be examined
on. The coverage arithmetic those two letters produce is derived once, at **07.11 §3**, and is not restated
here. **DEC-710** accepts Halcyon's letter and records the uncovered months rather than waiving them.

**The review also recorded what it had not been asked to do and should have been.** Halcyon Identity's
report period ends on 2026-06-30, the day before the observation window opens, and that arithmetic was
available in March when `02.10` was written. Nothing in the library required a Tier 1 artefact's **period**
to be compared against CloudNimbus's own window, so nobody did the subtraction until this review.
**`CA-07-06`** is opened for it, owner Rahul Bhargava; 07.11 §3 states it and no deviation is recorded,
because no control made the promise.

## 7. Actions arising

| Action | Owner | Position at 2026-11-27 |
|---|---|---|
| `CA-07-01` — assign and cadence the two unowned complementary user entity controls, and connect the disposition of "not applicable to the services in use" to `CNB-C-093`'s new-service review | Wes Delacroix | **Open** |
| `CA-07-03` — bring `CNB-C-092`'s refresh forward from a quarterly cadence to an expiry-driven one | Tobias Lund | **Open** |
| `CA-07-06` — compare every Tier 1 artefact's period against the observation window at each CAL-08 occurrence, and record the months covered, bridged and uncovered on the reading form | Rahul Bhargava | **Open** |
| Request bridge letters from both subservice organisations | Rahul Bhargava | **Complete** — both requested 2026-10-09; received 2026-11-06 and 2026-11-13 |
| Record the tier axis determination in the register schema and in the assurance reading form | Tobias Lund | **Complete** — ADR-0035; the reading template carries a tier field and a disposition section |

## 8. What this review did not do

It reached no conclusion about the eleven Tier 1 artefacts that were current, beyond recording each reading's
conclusion in the register. It made no assessment of any Tier 2 or Tier 3 vendor, whose assurance is not
refreshed quarterly and whose exposure 07.09 §5 states. And it drew no inference from a clean artefact about
CloudNimbus's own configuration of the service behind it, which is the carve-out point 07.11 §5 makes once.

## Cross-References

| Document | Relationship |
|---|---|
| [07.09 The Vendor Register, Tiering and Assurance](../07.09-the-vendor-register-tiering-and-assurance.md) | The register, the tiers, both refreshes and `D-07-02` at 2 of 24 |
| [logs/deviation-log.md](../logs/deviation-log.md) | The clause 10.2 working on `D-07-02`, and `CA-07-06` among the corrective actions with no deviation behind them |
| [07.10 Reading the Other Side's Complementary Controls](../07.10-reading-the-other-sides-complementary-controls.md) | The 58 and the 19 in full, and `IS-30` |
| [07.11 Subservice Organisations and the Uncovered Months](../07.11-subservice-organisations-and-the-uncovered-months.md) | The bridge letters and the coverage arithmetic |
| [07.07 Disclosure and the Sub-Processor Notice](../07.07-disclosure-and-the-sub-processor-notice.md) | The sub-processor change in progress at the date of this review |
| [adr/ADR-0035](../adr/ADR-0035-tier-is-an-axis-not-a-classification.md) | The tier determination and the rejected alternative |
| [logs/decision-log.md](../logs/decision-log.md) | DEC-702, DEC-703, DEC-710 |
| [templates/vendor-assurance-reading-template.md](../templates/vendor-assurance-reading-template.md) | The form the twelve readings were recorded on |
| [02.10 Subservice Organisations and the Carve-Out](../../02-system-scope-isms-boundary-and-description/02.10-subservice-organisations-and-carve-out.md) | The 84 / 11 / 73 arithmetic and the two tests |
| [01.11 Assurance Calendar and Obligations](../../01-program-foundation-dual-framework-governance/01.11-assurance-calendar-and-obligations.md) | CAL-08, O3 and O5 |
