# GOV-28 — Annual Notice Reconciliation under `CNB-C-120`

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-G28 |
| Version | 1.0 |
| Date | 2026-11-27 |
| Owner | Tobias Lund |
| Approver | Karim Haddad |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


## 1. Matter

The annual reconciliation required by **`CNB-C-120`**, performed and signed by Tobias Lund as Data
Protection Officer on **2026-11-19**.

The control requires the Data Protection Officer, once a year, to reconcile the privacy notice against
**the personal-information inventory PD-01 to PD-12**, **the retention schedule RT-01 to RT-08** and **the
published sub-processor list**, and to sign the reconciliation. It is one of the four Privacy controls with
nothing to cite in Annex A, it serves **P1.1**, and its cadence gives it a population of **one** inside the
observation window.

**It was performed in November against a re-scheduled date of 2026-12, and the movement has a decision
record.** `04.11` §4.2 moved `CNB-C-120` from
its natural 2026-06 anniversary into the window under **DEC-409**, and placed it in December. **DEC-714**,
taken by **Tobias Lund on 2026-11-02**, moved it again — three weeks forward, into November — for a stated
reason: the sub-processor change of **2026-11-05** was about to take effect,
and a reconciliation of the published sub-processor list held in the last fortnight of December would have
tested a list that had been wrong or right for the best part of two months without anybody being able to say
which. **An occurrence performed early is not a deviation**, and it is recorded here rather than left for a
reader to notice that a control described as due in December carries a November date. The same disclosure
discipline `04.11` §4.4 applies to the re-scheduling itself applies to a movement inside it —
**and a movement inside a re-scheduling with no decision record is the kind of thing that later reads as
luck.** §3 is where that matters.

## 2. What was reconciled, and against what

| Reconciled | Source of truth | Outcome |
|---|---|---|
| The categories of personal information described in the notice | **PD-01 to PD-12**, 02.07 | **Agreed** |
| The retention periods stated in the notice, including geolocation at thirteen months | **RT-01 to RT-08**, 02.07 | **Agreed** |
| The published sub-processor list | The vendor register — 11 sub-processors under a data processing addendum | **One divergence** — §3 |

**One divergence in three limbs**, and the two that agreed are worth a sentence each so that the record is
not read as a single-issue document.

The category reconciliation agreed against the inventory, which is the limb `CNB-C-125`'s quarterly field
reconciliation of 2026-10-16 had already tested from the other direction, finding **0 divergences** between
the fields actually populated in production and PD-01 to PD-12. Two controls at two cadences reaching the
same answer is worth more than either alone: `CNB-C-125` compares production against the inventory and
`CNB-C-120` compares the inventory against what the notice tells the individual, and a field could pass
either test on its own while the notice remained wrong.

The retention reconciliation agreed against the schedule, and §4 is about what that does and does not mean.

## 3. The divergence — `IS-34`, and fourteen days that were not luck

**The published sub-processor list still named the outgoing outbound email delivery provider.** The change
took effect on **2026-11-05**; the reconciliation was performed on **2026-11-19**; the list had named the
wrong party for **fourteen days**. Corrected **2026-11-20**.

> **`IS-34` — No control required the published sub-processor list to be updated at the change.** `O5`
> requires the list to be current; its currency was the subject of an annual reconciliation and of nothing
> else. Referred; owner Tobias Lund; clause 10.2 corrective action **`CA-07-04`** attached.

**It is not recorded as a deviation, and the reason is the doctrine rather than the discomfort.**
`CNB-C-120`'s occurrence was performed on its date, against the three sources its statement names, and it is
the control that **found** the divergence. 07.10 §4 states that a finding with no failing control behind it
is a referred issue, and 07.07 §5 sets out why `CNB-C-131` is not the alternative attribution either: its
addendum, register review and thirty-four days of notice were all delivered. **What failed is the currency
of an artefact no control was required to keep current.**

**The fourteen days were fourteen and not forty because the control's owner brought his own control
forward.** `CNB-C-120` sat in December under DEC-409. Tobias Lund moved it into November on **2026-11-02**
under **DEC-714**, three days before the change took effect, precisely because a December reconciliation
would have tested a list nobody could speak for. Had it kept its December date the exposure would have run
past forty days; had `CNB-C-120` sat on its natural June anniversary it would have run seven months.
**That is a judgement, and it must be visible as one.** Calling fourteen days an accident of the calendar
credits the calendar with a decision a named person took and takes the credit away from the only part of
this episode that worked.

**What the fourteen days do measure is the cadence, and that is the finding.** The interval between a change
and the next occurrence of an annual control is not a detection time; it is a scheduling coincidence with a
decision on top of it. **DEC-712**, Tobias Lund, 2026-11-20, accordingly moves the currency check **to the
change itself**: updating
the published list becomes a step in the sub-processor change record, with the annual reconciliation
retained as a check on that step rather than as the mechanism. `CA-07-04` is the clause 10.2 corrective
action and is open at this vantage.

## 4. What a reconciliation compares, and what it cannot

This record has to state one limit plainly, because the reconciliation was performed four weeks after the
programme's largest retention failure and agreed on the retention limb.

**`CNB-C-120` compares the notice against the schedule. It does not compare the schedule against what the
machinery did.** The notice states that clock-in location is kept for thirteen months. **RT-02** states that
geolocation at clock-in is deleted at thirteen months irrespective of contract term. Those two statements
agreed on 2026-11-19 and they agreed on every day of the sixty-eight nights on which the generated deletion
job in `eu-central-1` matched no rows and deleted nothing. **A reconciliation between two documents is
satisfied when the documents agree, and both documents were right.**

That is not a criticism of the control, which does what it says and does it usefully — a notice that has
drifted from the inventory is a real and common defect, and this occurrence found a real one on the third
limb. It is a statement about where the assurance sits. **The notice is a promise, the schedule is a rule,
and the deletion job is the only one of the three that touches data.** `CNB-C-126` and `CNB-C-127` are the
controls on the third, and 07.03 is the record of what happened to them. The control admitted at GOV-27 on
2026-10-28, `CNB-C-149`, exists in the gap the previous sentence describes.

## 5. Actions arising

| Action | Owner | Position at 2026-11-27 |
|---|---|---|
| Publish the corrected sub-processor list | Tobias Lund | **Complete** — 2026-11-20 |
| `CA-07-04` — move the currency check into the sub-processor change record and retain the annual reconciliation as a check on it | Tobias Lund | **Open** — DEC-712 |
| Retain the signed reconciliation as the single occurrence of `CNB-C-120` inside the observation window | Rahul Bhargava | **Complete** — evidence index |

## 6. What this reconciliation did not do

It made no assessment of whether the notice is **read**. `CNB-C-119` records that the current version was
displayed at first session to 1,109,442 end users, and 07.04 is where the difference between a notice
provided and a notice landed is set out and deliberately not resolved.

It reached **no legal conclusion of any kind** about the notice, its content, or the processing it
describes. It compared three documents, recorded one divergence, and was signed.

## Cross-References

| Document | Relationship |
|---|---|
| [07.07 Disclosure and the Sub-Processor Notice](../07.07-disclosure-and-the-sub-processor-notice.md) | `IS-34` in full, the sub-processor change and DEC-712 |
| [07.04 Notice, Choice and the Limits of Consent](../07.04-notice-choice-and-the-limits-of-consent.md) | P1.1, `CNB-C-119` and the notice itself |
| [07.05 Collection, Use and the Inference Problem](../07.05-collection-use-and-the-inference-problem.md) | `CNB-C-125`'s field reconciliation of 2026-10-16 |
| [07.03 The RT-02 Retention Failure](../07.03-the-rt-02-retention-failure.md) | Why the retention limb agreed while the rule was not being enforced |
| [governance/GOV-27](GOV-27-q4-privacy-review-and-the-admission-of-cnb-c-149.md) | `CNB-C-149`, admitted into the gap §4 describes |
| [logs/deviation-log.md](../logs/deviation-log.md) | `CA-07-04` among the corrective actions with no deviation behind them, and the clause 10.2 working |
| [logs/raid-log.md](../logs/raid-log.md) | `IS-34`, referred |
| [logs/decision-log.md](../logs/decision-log.md) | DEC-712 and DEC-714 |
| [04.06 Controls for Availability, Processing Integrity, Confidentiality and Privacy](../../04-unified-control-framework-and-policy-architecture/04.06-controls-for-availability-processing-integrity-confidentiality-and-privacy.md) | `CNB-C-119`, `CNB-C-120` and `CNB-C-125` as published |
| [04.11 Control Ownership and Operating Cadence](../../04-unified-control-framework-and-policy-architecture/04.11-control-ownership-and-operating-cadence.md) | `CNB-C-120` among the ten re-scheduled annual controls, and the disclosure discipline |
| [02.07 Personal Information Inventory and Data Subjects](../../02-system-scope-isms-boundary-and-description/02.07-personal-information-inventory-and-data-subjects.md) | PD-01 to PD-12 and RT-01 to RT-08 |
| [01.11 Assurance Calendar and Obligations](../../01-program-foundation-dual-framework-governance/01.11-assurance-calendar-and-obligations.md) | O5, the current-list obligation |
