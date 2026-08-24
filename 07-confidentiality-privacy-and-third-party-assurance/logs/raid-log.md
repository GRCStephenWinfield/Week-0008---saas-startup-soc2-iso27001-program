# RAID Log — Phase 07

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-L26 |
| Version | 1.0 |
| Date | 2026-11-27 |
| Owner | Rahul Bhargava |
| Approver | Karim Haddad |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


**Programme delivery risks, continuing the Phase 01 to Phase 06 series.** Not the information security risk
register, which stands at **38 entries — 8 High · 18 Moderate · 12 Low** following the admission of **R-38**
on **2026-10-23**. 8 + 18 + 12 = 38.

**R-38 was admitted between quarterly reviews, which DEC-306 expressly permits.** **No CAL-06 review falls
in this period** — the Q4 register review is **2026-12-29** and has not been held. **R-06 is held at
4 × 4 = 16** and was tested upward at GOV-27: its described event, a job that fails silently, did not occur.

**Two entries changed in the period, and only one of them is visible in the band counts.** **R-24** —
geolocation retained or used beyond the purpose the individual was told about, owner **Tobias Lund** — moved
from **2 × 4 = 8 to 3 × 4 = 12** at GOV-27 on 2026-10-28 under **DEC-715**, on likelihood alone. Both
ratings are Moderate, so the position stays at 38 — 8 High · 18 Moderate · 12 Low. **A movement that does
not change a band is still a movement, and a log that only records band changes has stopped measuring.**
Beyond R-38's admission and R-24's re-rating, nothing moved, nothing was closed and nothing was removed.

## Risks — PR-42 to PR-47

| ID | Risk | Owner | Status |
|---|---|---|---|
| PR-42 | **`CNB-C-149`'s population inside the window is 65 nights of 184, and its alerting limb has raised 0 alerts in the 31 that have run.** A control admitted in October cannot evidence October the first, and a detective limb that has never fired has not been shown to fire. Both facts are structural and neither can be improved before 2026-12-31 | Devon Ashby | Open — irreducible inside the window; ADR-0031 accepted it in advance |
| PR-43 | **The RT-02 correction is not certified complete at this vantage.** The backup residue window under `CNB-C-128` expires **2026-11-29**, two days after the phase closes, so the certification falls outside the record this phase can make | Devon Ashby | Open — DEC-705, ADR-0033; `CNB-C-128`'s monthly confirmation carries it |
| PR-44 | **Two months of the observation window are reached by no subservice organisation artefact, for both parties** — November, 27 of whose 30 days had elapsed at this vantage, and December, which has not begun. The final letters are requested **2026-12-15** from organisations under no obligation to be quick, escalating **2027-01-08**, against fieldwork that opens **2027-01-12**. AWS's October letter took **thirty-five days** to arrive and Halcyon's **twenty-eight**, so **thirty-five days from 2026-12-15 is 2027-01-19 and on AWS's own precedent the final letter is expected after fieldwork opens** | Rahul Bhargava | Open — `IS-31`, `CA-07-06`; the request date is the only variable CloudNimbus controls and it is now set, and the position is stated to Ashcombe &amp; Doyle in advance rather than discovered in fieldwork |
| PR-45 | **`CA-07-05` may have no good answer.** The tenant scoping predicate that made a cross-employer assembly slow is the control that keeps one employer's data away from another, and a cross-tenant assembly path that depends on neither tenant seeing the other's data is harder than it sounds | Tobias Lund | Open — 07.06 says so rather than promising a fix |
| PR-46 | **"Not applicable to the services in use" has a shelf life.** Nine of the other side's complementary user entity controls — seven at AWS, two at Halcyon Identity — were dispositioned on the services in use on 2026-10-07, and nothing prompts a re-read on the day an engineer adopts a new service. `CNB-C-093` reviews a new cloud service against the baseline and does not ask about a subservice organisation's complementary controls | Wes Delacroix | Open — `CA-07-01` has to leave this better than it found it |
| PR-47 | **Fourteen privacy enquiries from 1.24 million end users cannot distinguish a working channel from an unknown one**, and no measurement available to CloudNimbus resolves it without reaching individuals it can only reach through their employers. The rate is one per **88,000 end users across the fifty-eight days**, which is one per about **171,000 per month** — two figures for one count, and the entry states both because stating one as the other is how a normalisation becomes an argument | Tobias Lund | Open — the same shape as PR-41; recorded rather than answered |

**PR-42 is a risk about a denominator rather than about a control.** `CNB-C-149` was admitted on 2026-10-28
and its first evidence is thin by construction. The programme cannot improve the entry by doing anything other than running the control
nightly and letting the population accumulate — which is PR-35's shape from Phase 06, on a control that is
new rather than one that missed an occurrence.

**A disposition of "not applicable" is a judgement with a date on it**, and the day it becomes wrong is a
day nobody is looking. It is the third entry in three phases whose substance is that
an activity depends on somebody remembering, and TH-14 in the Phase 03 taxonomy — an activity not performed,
performed late, or not evidenced — remains the threat that generates more of the register than any
attacker-driven one.

### Risks carried forward from Phase 06

| ID | Position at 2026-11-27 |
|---|---|
| PR-35 | **Open, and improved.** `CNB-C-098` was performed 2026-10-21 and 2026-11-18; the position is **4 of 5 occurrences to date** with December's remaining. The August occurrence is still absent and always will be |
| PR-36 | **Open.** `CNB-C-108`'s two-business-day service level and weekly Tuesday queue still disagree; `CA-06-02` is unresolved |
| PR-37 | **Open, and tested by this period.** The CAL-16 exercise of 2026-11-12 and the `CNB-C-088` plan reissue of 2026-11-05 were both performed and **neither cites A.5.30** — both cite A.5.29. A.5.30 still reads `Implemented` with its planning limb's population empty and two limbs unattributed. See `IS-24` |
| PR-38 | **Open.** The quarterly in-region failover game day is an availability matter owned by Wes Delacroix; this phase states no outcome for it |
| PR-39 | **Open.** `DR-F6`'s failback timing is due **2026-11-30**, three days after this vantage. Not late, and not reported here |
| PR-40 | **Open.** `03.02` §6's reporting limb for R-08's High-band retention falls at CAL-03's Q4 occurrence, which `01.11` §6 places in **2026-12**. Not yet due |
| PR-41 | **Open.** The 229 CUEC-05 non-responses are unchanged; no control or cadence governs the outreach — `IS-26` |

## Assumptions — AS-35 to AS-38

| ID | Assumption | Owner | Status |
|---|---|---|---|
| AS-35 | `CNB-C-149`'s computation of the eligible population is correct, and correct **independently** of the job that performs the deletion | Devon Ashby | **Unverified.** The second implementation has never disagreed with the first because it has never had to, and two implementations of one rule are a maintenance cost and a source of a different failure |
| AS-36 | **RT-01 and RT-03 to RT-08 ran correctly throughout the period, in all three regions** | Devon Ashby | **Asserted from the completion records — which is the same class of record that reported success for sixty-eight nights on RT-02.** The eligible-population check now covers the other seven rules prospectively; it says nothing about the nights already past. **The RT-02 catch-up count of 1,847,206 is outside this assumption's scope**, because that figure was corroborated independently — pre-deletion partition row counts taken 2026-10-25 before the run, reconciled to the completion record on 2026-10-27 and agreeing exactly (EV-703). The seven rules have had no such corroboration, and that is the whole of what this entry says |
| AS-37 | The 49 AWS and 17 Halcyon Identity complementary user entity controls judged **already performed** are genuinely discharged by the library rows cited against them | Rahul Bhargava | **Unverified — a mapping is an assertion by the mapper.** No auditor, certification body or subservice organisation has agreed these matches, and a match that is generous by one row is indistinguishable in the register from an exact one |
| AS-38 | The two bridge letters' statements that management is not aware of material changes are accurate | Rahul Bhargava | **Unverifiable by CloudNimbus.** They are statements by the parties whose controls are in question, unexamined by anybody, and CloudNimbus has no means of testing either |

**AS-36 deserves reading twice.** The evidence that seven of the eight retention rules ran correctly is the
completion record each job writes, and the completion record is precisely the instrument that said "rows
deleted: 0" for sixty-eight nights and meant nothing by it. The assertion is not baseless — the other seven
rules were not affected by the `eu-central-1` partitioning migration, and their record counts are non-zero
and vary with volume in the way a working rule's do — but **the strongest available evidence for the seven
is the instrument that was wrong about the eighth**, and a log that recorded it as verified would be
claiming a check nobody performed. **The one figure that was checked against something else is the catch-up
count**, and it is deliberately held outside this entry so that the corroborated number and the
uncorroborated assertion are not read as resting on the same thing.

## Issues — IS-29 to IS-34

**There is no `IS-28`.** The identifier was allocated in draft during the RT-02 investigation to a matter
that was closed by DEC-705 rather than referred, and it has not been reused. **Renumbering the series to
close the gap would make the gap invisible rather than absent**, which is the same reasoning that keeps the
Phase 06 deviation series at `D-06-01` to `D-06-05`.

**`IS-32`, `IS-33` and `IS-34` were opened in the correction round rather than in the drafting**, and two of
the three exist because a claim that had been made in prose had no identifier, no owner and no number behind
it. That is worth recording as plainly as the issues themselves.

| ID | Issue | Owner | Status |
|---|---|---|---|
| IS-29 | **P3.2's single control does not reach leave-type inference.** `CNB-C-121` is about the operating-system location permission at first clock-in, and P3.2 is served by that control alone. CloudNimbus collects a **leave type** from a list the employer configures, and **327 of 640 tenants have configured at least one leave type whose label names a medical or health circumstance.** CloudNimbus never asks for a reason and holds no diagnosis, and **information from which health may be inferred is still information about health to the person it concerns.** Ties to **R-35** | Tobias Lund | Open — **referred**, and a candidate for the next Statement of Applicability and control library issue. **No conclusion is drawn about whether anything is or is not special-category data**; that is not this programme's determination to make |
| IS-30 | **No control requires the other side's complementary user entity controls to be enumerated, dispositioned and owned.** AWS's report states 58 and Halcyon Identity's 19; two AWS obligations had no owner at CloudNimbus until 2026-10-23. `CNB-C-092`'s "reading of what that document does and does not cover" is the closest the library comes and is **not the same requirement** — a reading produces a conclusion in a register, an obligation produces an owner and a cadence | Rahul Bhargava | Open — **referred**; `CA-07-01` assigns the two, and the missing requirement is carried to the next library issue rather than written into the chapter that found it |
| IS-31 | **Two months of the observation window are reached by no subservice organisation artefact, for either party.** AWS: 3 months covered by a practitioner's opinion, 1 by an unaudited bridge letter, 2 by nothing. Halcyon Identity: **0 months covered by a practitioner's opinion**, 4 by an unaudited bridge letter, 2 by nothing. Its report period ends the day before the window opens — **which was knowable in March**, when `02.10` was written against a window whose dates were already fixed | Rahul Bhargava | Open — **referred**, with the plan recorded: final bridge letters requested **2026-12-15**, escalating 2027-01-08, and **no forecast of what the service auditor will make of it**. `CA-07-06` creates the period-against-window comparison whose absence is why nobody did the subtraction for eight months |
| IS-32 | **`CNB-C-117` compares export events against the tenant's support case history, and a disclosure that arrives through the disclosure path is invisible to it.** Two of the forty-one events reviewed on 2026-10-14 were bulk exports run at two tenants' written instruction in response to those customers' own auditors — lawful, instructed, and recorded in the **disclosure register**, which is not the register the control reads. **This is not a deviation**: `CNB-C-117` did what it says, and what it says is the problem. Every export arriving through the disclosure path will present as an unmatched event for as long as the comparison knows only about support cases | Karim Haddad | Open — **referred**, and a candidate for the next control library issue |
| IS-33 | **The library has not been examined for controls whose operating condition is that a record exists rather than what the record says.** `CNB-C-127` is one: it alerts on a job that **does not report**, and a job reporting "rows deleted: 0" has reported. The RT-02 episode generalises past that one rule, and 07.03 §4 says so. **The number of such controls cannot be stated at this vantage** — the enumeration has not been performed, and no estimate is offered in its place. The referral is to enumerate them across all 149 rows and decide, for each, whether the condition is the right one | Rahul Bhargava | Open — **referred** to the next control library issue, with the count owed rather than guessed. **A claim about "a number of controls" with no number and no owner is what this referral exists to stop being** |
| IS-34 | **No control required the published sub-processor list to be updated at the change.** The list named the outgoing outbound email delivery provider for fourteen days after the change took effect on 2026-11-05; found at the `CNB-C-120` reconciliation of 2026-11-19 and corrected 2026-11-20. **O5** requires a current published list and the currency of that list was the subject of an annual reconciliation and of nothing else. Recorded as a deviation in draft and re-recorded here, because `CNB-C-120` operated on its date and found the divergence | Tobias Lund | Open — **referred**, with clause 10.2 corrective action **`CA-07-04`** attached and **DEC-712** moving the currency check into the sub-processor change record |

**IS-30 and IS-26 are the same issue seen from the two ends of one relationship**, and carrying both without
closing either is deliberate. `IS-26` records that no control or cadence governs the communication of
CloudNimbus's eleven complementary user entity controls to its 640 customers; `IS-30` records that no control
required CloudNimbus to read the 58 and 19 addressed to it. 07.10 §5 states the consequence in one sentence
and does not soften it.

**IS-31 is a finding about coverage and not about either subservice organisation.** Nothing in it says
anything about how AWS or Halcyon Identity operate their controls, and nothing in it could: under the
carve-out their controls are excluded from the description and are not tested. It is a statement about what
CloudNimbus holds and what it does not.

**IS-33 is the only entry in this log that owes a number.** The other five state a position; this one states
that a position cannot yet be stated and names the person who has to produce it. That is a worse-looking
entry and a better one: the alternative — "a number of controls in the library share this design" — reads as
analysis and commits nobody to anything, and it is exactly the sentence 07.03 §4 was left with before this
issue was opened.

### Issues carried forward from Phase 06

| ID | Position at 2026-11-27 |
|---|---|
| IS-19 | **Open — irreducible.** The August `CNB-C-098` occurrence cannot be recovered; 4 of 5 occurrences performed to date and the window population is six |
| IS-20 | **Open — referred.** `CNB-C-102` and `CNB-C-075` still carry different post-incident review windows for the same artefact; nothing in this period touched it, and no Severity-1 or Severity-2 incident occurred to exercise either |
| IS-21 | **Open — referred.** No control measures the interval between a page and a declaration. No incident occurred in this period; the matter falls to the December CAL-06 review, which has not been held |
| IS-22 | **Open as a record.** A.5.30's status was asserted ahead of its evidence in June and overtaken by it in August; the entry stands as the clause 7.5 lesson |
| IS-23 | **Open — `CA-06-03`.** The emergency change path was used **three times** in this period, and each use is an accepted departure from SR-11 |
| IS-24 | **Open, and reinforced.** The CAL-16 exercise of 2026-11-12 and the `CNB-C-088` reissue of 2026-11-05 were both performed and **both cite A.5.29, not A.5.30.** Two of A.5.30's four limbs still have no citing row, and nothing before 2026-12-31 changes it |
| IS-25 | **Open — referred.** No control governs application connection pool configuration |
| IS-26 | **Open — referred.** No control or cadence governs the CUEC-05 outreach or its annual reconfirmation; see `IS-30` at the other end of the same relationship |
| IS-27 | **Open — referred.** The 278 refused writes never resubmitted are owned by no control, no deviation and no register entry |

## Dependencies — DP-31 to DP-34

| ID | Dependency | Owner |
|---|---|---|
| DP-31 | Certification that the RT-02 catch-up deletion is complete depends on the backup residue window expiring on **2026-11-29** and on `CNB-C-128`'s monthly confirmation recording it | Devon Ashby |
| DP-32 | `IS-30`'s closure depends on the next issue of the control library carrying a row that requires the other side's complementary controls to be owned; that issue is not this phase's | Karim Haddad |
| DP-33 | The window's subservice organisation coverage depends on two bridge letters that do not yet exist, requested **2026-12-15** and escalating **2027-01-08**, from parties under no obligation to produce them quickly | Rahul Bhargava |
| DP-34 | Phase 08's sampling depends on the Q4 evidence classes producing the units 04.12 declared — including a unit for `CNB-C-149`'s **empty alert population**, which is a class the store had to be asked for in the same way Phase 06 asked for a unit recording a control that did not operate | Rahul Bhargava |

**Total new entries: 20** — 6 risks, 4 assumptions, 6 issues, 4 dependencies. Seven Phase 06 risks and nine
Phase 06 issues are carried forward with their status and are not renumbered.

## Cross-References

| Document | Relationship |
|---|---|
| [07.13 Phase Summary and Transition](../07.13-phase-summary-and-transition.md) | Carries the open entries forward to Phase 08 |
| [07.03 The RT-02 Retention Failure](../07.03-the-rt-02-retention-failure.md) | R-38, R-24, DEC-705, DEC-713 and the residue window behind PR-43; §4's generalisation behind `IS-33` |
| [07.05 Collection, Use and the Inference Problem](../07.05-collection-use-and-the-inference-problem.md) | `IS-29` and R-35 |
| [07.01 The Confidentiality Criteria and the Single Control](../07.01-the-confidentiality-criteria-and-the-single-control.md) | `CNB-C-117`'s Q4 export review and the two unmatched events behind `IS-32` |
| [07.07 Disclosure and the Sub-Processor Notice](../07.07-disclosure-and-the-sub-processor-notice.md) | `IS-34` and `CA-07-04` |
| [07.10 Reading the Other Side's Complementary Controls](../07.10-reading-the-other-sides-complementary-controls.md) | `IS-30`, `CA-07-01`, PR-46 and §4's doctrine |
| [07.11 Subservice Organisations and the Uncovered Months](../07.11-subservice-organisations-and-the-uncovered-months.md) | `IS-31`, `CA-07-06` and PR-44 |
| [07.12 Quarter Four to Date — Operating Record](../07.12-quarter-four-to-date-operating-record.md) | The occurrences behind the carried-forward statuses |
| [governance/GOV-27](../governance/GOV-27-q4-privacy-review-and-the-admission-of-cnb-c-149.md) | R-24's re-rating under DEC-715, and R-06 held |
| [logs/deviation-log.md](deviation-log.md) | The three deviations, the clause 10.2 test and the three corrective actions with no deviation behind them |
| [06-availability-processing-integrity-and-operations/logs/raid-log.md](../../06-availability-processing-integrity-and-operations/logs/raid-log.md) | PR-35 to PR-41 and IS-19 to IS-27 as Phase 06 recorded them |
| [03.04 Risk Register — Baseline](../../03-risk-assessment-treatment-and-statement-of-applicability/03.04-risk-register-baseline.md) | R-06, R-35, DEC-306 and the movement rules |
| [03.03 Threat Analysis and Risk Sources](../../03-risk-assessment-treatment-and-statement-of-applicability/03.03-threat-analysis-and-risk-sources.md) | TH-14, the threat behind PR-46 |
