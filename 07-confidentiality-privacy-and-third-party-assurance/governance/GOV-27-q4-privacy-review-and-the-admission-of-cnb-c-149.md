# GOV-27 — Quarter Four Privacy Review, the Admission of `CNB-C-149`, and R-24's Movement

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-G27 |
| Version | 1.0 |
| Date | 2026-11-27 |
| Owner | Tobias Lund |
| Approver | Karim Haddad |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


## 1. Matter

The **`CNB-C-133`** quarterly Data Protection Officer review of **2026-10-28**, held by Tobias Lund with
Devon Ashby, Rahul Bhargava and Karim Haddad in attendance, and minuted to the Trust Committee as the
control requires.

`CNB-C-133` requires four things to be reviewed **together** — the sub-processor assurance evidence, the
disclosure register, privacy incidents and open privacy cases — and the outcome and any required action to
be minuted. The conjunction is the control: three of the four were unremarkable, one was not, and the value
of reading them in the same hour is that the same person held all four when the question of what to do
arose.

This occurrence falls five days after the RT-02 over-retention was discovered on 2026-10-23 and two days
after the notification of 2026-10-26.

## 2. What was reviewed

| Limb | Position at 2026-10-28 |
|---|---|
| Sub-processor assurance evidence | The **CAL-08** review of 2026-10-07 and its Tier 1 refresh — 12 vendors, 8 holding a SOC 2 Type II report, 2 an ISO/IEC 27001 certificate only, 1 both and **1 neither** — the same vendor absent at the Q3 refresh of 2026-07-30, so `D-07-02`'s population is **2 of 24**. GOV-25 |
| The disclosure register | **6 entries** in the period — 4 customer-directed exports to a named third party at the tenant's instruction, 2 responses to requests made by a customer's own auditors. **0 unauthorised disclosures.** 07.07 §2 |
| Privacy incidents | The **RT-02 over-retention**: 68 nights, 1,847,206 geolocation capture points, job re-generated against the live relation 2026-10-24, catch-up run 2026-10-25, completion record verified 2026-10-27, all 41 EU-residency customers notified 2026-10-26. 07.03 and GOV-26 |
| Open privacy cases | The privacy case register — 14 enquiries and 0 complaints across the period, 12 routed to the employer inside two business days on the boundary CUEC-08 draws, 2 answered directly. None open past its due date. 07.08 §2 |

## 3. The admission of `CNB-C-149`

The review's substantive output was **a new control**, which is not what a quarterly review usually
produces.

> **`CNB-C-149`** — A retention job that reports success having deleted zero rows on a rule whose eligible
> population is non-zero raises an alert to the data platform owner, and the alert is dispositioned before
> the next run. Family `P`. Type **Detective**. Cadence **Daily**. Owner **Devon Ashby**. Policy `POL-07`.
> Criteria **P4.2, P4.3**. Annex A **A.8.10, A.8.16**.

**Decision: admitted. DEC-706, Karim Haddad, 2026-10-28. The control library is 149 controls from this
date, not 148.**

**The policy is `POL-07`, Data Retention and Deletion, and the minute records the correction.** The draft
row cited `POL-06`, which is Data Classification and Handling. `CNB-C-118`, `CNB-C-126`, `CNB-C-127` and
`CNB-C-128` all cite POL-07, and `CNB-C-149` is a detective control over the same rule set. `04.08` makes
the one-policy-per-control rule load-bearing for exactly this reason: **"when POL-07 changes, which controls
must be re-assessed?" is a question the library can only answer if every row that depends on POL-07 says
so.** A new row filed against the wrong policy is a row that will not be looked at when the right policy
changes.

The gap it answers is stated in the minute in the terms 07.03 §1 uses. `CNB-C-127` requires each scheduled
deletion job to write a completion record stating rows deleted per store and alerts the data platform
on-call engineer when **a job does not report inside its window**. A job that reports "rows deleted: 0" has
reported, and zero is a legitimate answer on a night when nothing is due. **Nothing in the library could
tell the difference between a rule with nothing to delete and a rule that could no longer see what was
due.**

The review attached three conditions to the admission rather than recording it as a clean improvement, and
all three are carried in the minute because they are the cost of the decision:

**The population is 65 nights, not 184.** A control admitted on 2026-10-28 cannot evidence 2026-10-01, still
less 2026-07-01. Its occurrences inside the observation window run from 2026-10-28 to 2026-12-31, and a
stated cadence of **Daily** against a window of 184 days will be sampled as what it is. **31 of the 65 have
run at this phase's vantage, with 0 alerts raised.**

**The eligible-population half is the hard half.** A rule whose population is genuinely zero on a given
night must not alert, so the control has to compute what was due **independently of the job that deletes
it** — two implementations of one rule, which is a maintenance cost and a source of a different failure. The
review accepted that rather than pretending it away, and **ADR-0031** records the decision and the
alternative that was rejected.

**The admission is a relevant change to the system during the period, and it belongs under DC9**, which
Phase 09 carries. It is **not** DC5's cadence question and it is not DC4. Naming the right description
criterion was minuted deliberately, on the reasoning `04.11` §5 used for the re-scheduled annual controls: a
disclosure filed under the wrong criterion is a disclosure put where no reader of the description looks for
it.

07.02 §5 carries the full analysis of what the library's growth costs. This record carries the decision.

## 4. Two register questions — R-06 held, R-24 moved

The review took the two register questions the RT-02 matter raises, alongside the admission of **R-38** on
2026-10-23 that 07.03 §7 owns.

### 4.1 R-24, tested upward, and moved

**`R-24` — "Geolocation is retained or used beyond the purpose the individual was told about"** — has been
in the register since the Phase 03 baseline of 2026-04-10, owner **Tobias Lund**, rated **2 × 4 = 8,
Moderate**. It is the entry whose described event occurred. The phase had spent two pages distinguishing
R-38 from R-06 and had not applied the same test to the entry where the answer is plainly yes, and the
review put it.

> **R-24 moves from 2 × 4 = 8 to 3 × 4 = 12.** It moves on **likelihood**; the consequence is unchanged, so
> the impact limb stays at 4 under the movement rule. Likelihood **2** is "foreseeable but not expected
> within the cycle" and **the event occurred within the cycle**, which contradicts the anchor. Likelihood
> **3** is "expected within the certification cycle — once in three years", and one occurrence in the first
> cycle is what that anchor describes.

**DEC-715**, 2026-10-28. Risk owner **Tobias Lund** accepts the residual under clause 6.1.3 f); the band is
Moderate at both ratings, so **Karim Haddad** accepts alongside per `03.02` §6. No escalation to the Chief
Executive Officer is engaged: the impact-5 rider does not apply and the band is not High.

**Both ratings are Moderate, so the band counts do not change: 38 — 8 High · 18 Moderate · 12 Low.**

> **A movement that does not change a band is still a movement, and a register that only records band
> changes is a register that has stopped measuring.** R-24's score rose by four and nothing in the summary
> arithmetic moved. **The entry, not the total, is where the change is visible**, and a reader who checks
> only the three band counts between Phase 03 and Phase 09 will see none of this.

One subtlety the minute records rather than leaves implicit. **R-24 was named in Phase 03 as an entry
sitting at the eight floor and unable to move.** That is true and it is only half a rule: the floor says a
3 × 4 entry moving on likelihood **stops** at 2 × 4, because an impact of 4 cannot be rated Low. **It could
not move down. Nothing stopped it moving up, and nobody had asked.** A floor is a limit in one direction and
the register had been reading it as a limit in both.

### 4.2 R-06, tested, and held

**R-06** — a scheduled retention or deletion job **fails silently** and data is kept past its rule — sits at
**4 × 4 = 16, High**. The proposal put to the review was that R-06's described event had occurred and the
entry should be tested upward.

**Declined, and R-06 is held at 4 × 4 = 16.** **DEC-708**, Devon Ashby, 2026-10-28. **The job did not fail.**
It succeeded, on all sixty-eight nights, and reported that it had. R-06 describes an absent alert on a
failure; **R-38 describes an alert condition that cannot see a success.** They are different exposures with
different mechanisms and different remedies, and the temptation to record R-06 as having occurred is strong
precisely because the outcome — data kept past its rule — is the same. **An outcome in common is not an
event in common.**

The review recorded that admitting a second entry rather than claiming the first is what **DEC-306** and
**ADR-0029**'s doctrine require: the register grows on an assumption disproved, and it has now done so twice
— R-37 in May and R-38 in October.

**No CAL-06 review falls in this period.** The Q4 register review is **2026-12-29**, and both R-38's
admission and R-24's re-rating between quarterly reviews are permitted on the same DEC-306 footing. **Two
entries changed in the period — R-38 admitted and R-24 re-rated — and one of the two is invisible in the
band counts.**

## 5. Actions arising

| Action | Owner | Position at 2026-11-27 |
|---|---|---|
| `CNB-C-149` implemented and running nightly | Devon Ashby | **Complete** — 31 nights run, 0 alerts raised |
| `CA-07-02` — clause 10.2 corrective action on `D-07-01`, addressing how a generated job resolves its target and the completion-record gap | Devon Ashby | **Open** |
| The catch-up deletion is not certified complete until the backup residue window expires under `CNB-C-128` | Devon Ashby | **Open** — DEC-705, ADR-0033; the residue expires **2026-11-29**, two days after this phase's vantage |
| `R-24` re-rated to 3 × 4 = 12 in the register workbook, with both acceptances recorded against the entry | Tobias Lund | **Complete** — DEC-715; the band counts are unchanged and the entry carries the movement |
| `CNB-C-149` and `IS-29` carried as candidates for the next control library and Statement of Applicability issue | Karim Haddad | **Open** |

## 6. What this review did not do

**It reached no conclusion on any of the six disclosure register entries** beyond confirming each carries the
requester, scope, stated basis and date `CNB-C-132` requires.

**It did not treat the clean registers as evidence that the monitoring worked.** The RT-02 failure produced
no entry in any of the four things this control reviews until it had already been found by somebody
assembling an evidence sample for the examination, and the minute says so: **monitoring that reads the
registers of things that went wrong cannot see the class of failure whose signature is that nothing went
wrong.** 07.08 §5 carries that argument.

**And it offered no view on the service auditor's evaluation of `D-07-01` or of anything else.** That work
has not been performed and this review is not the place it would be.

## Cross-References

| Document | Relationship |
|---|---|
| [07.08 Monitoring Privacy and the Quarterly Review](../07.08-monitoring-privacy-and-the-quarterly-review.md) | P8.1, `CNB-C-122`, `CNB-C-133` and this review |
| [07.02 The Retention Schedule and the Deletion Machinery](../07.02-the-retention-schedule-and-the-deletion-machinery.md) | `CNB-C-149` and what the library's growth costs |
| [07.03 The RT-02 Retention Failure](../07.03-the-rt-02-retention-failure.md) | The failure, R-38, and why R-38 is not R-06 |
| [07.07 Disclosure and the Sub-Processor Notice](../07.07-disclosure-and-the-sub-processor-notice.md) | The disclosure register this review read |
| [governance/GOV-25](GOV-25-cal-08-q4-vendor-and-sub-processor-review.md) | The sub-processor assurance evidence this review read |
| `governance/GOV-26` | The RT-02 investigation, the notification decision and the minuted dissent |
| [logs/decision-log.md](../logs/decision-log.md) | DEC-706, DEC-708 and DEC-715 |
| [logs/raid-log.md](../logs/raid-log.md) | `IS-29`, and R-38 and R-24 against the register position |
| [03.02 Risk Criteria and Scoring Scale](../../03-risk-assessment-treatment-and-statement-of-applicability/03.02-risk-criteria-and-scoring-scale.md) | The likelihood anchors, the eight floor, and §6's acceptance criteria |
| [04.08 Policy Architecture](../../04-unified-control-framework-and-policy-architecture/04.08-policy-architecture.md) | POL-06 and POL-07, and the one-policy-per-control rule |
| [04.06 Controls for Availability, Processing Integrity, Confidentiality and Privacy](../../04-unified-control-framework-and-policy-architecture/04.06-controls-for-availability-processing-integrity-confidentiality-and-privacy.md) | `CNB-C-126`, `CNB-C-127`, `CNB-C-128`, `CNB-C-132` and `CNB-C-133` as published |
| [03.04 Risk Register — Baseline](../../03-risk-assessment-treatment-and-statement-of-applicability/03.04-risk-register-baseline.md) | R-06 and DEC-306 |
