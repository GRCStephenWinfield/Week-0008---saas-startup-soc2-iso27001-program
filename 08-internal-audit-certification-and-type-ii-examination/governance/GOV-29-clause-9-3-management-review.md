# GOV-29 — Clause 9.3 Management Review

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2027-G29 |
| Version | 1.0 |
| Date | 2027-02-05 |
| Owner | Elise Fontaine |
| Approver | Lorraine Kessler |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


## 1. Matter

The **clause 9.3 management review** of the CloudNimbus information security management system, held
**2026-09-30**, 09:00 to 12:10, chaired by **Elise Fontaine, Chief Executive Officer**, secretary **Rahul
Bhargava**. It is **CAL-15** and **MS-13**, and it is the **first** management review the ISMS has held: the
management system was declared operational on 2026-06-15 and clause 9.3 requires review at planned
intervals, which POL-01 sets at annual as a minimum.

Present: Elise Fontaine (chair), Marisol Vega, Nathan Oyelaran, Karim Haddad, Rahul Bhargava, Tobias Lund,
Wes Delacroix. In attendance: **Lorraine Kessler**, Chair of the Audit &amp; Risk Committee. Junia Okonkwo,
Grete Lindqvist, Devon Ashby, Hannah Brill and Ana-Sofia Cruz were represented by written input against
the inputs their controls bear on.

**`CNB-C-147` is the control this occurrence evidences.** The review is held at least annually, chaired by
the Chief Executive Officer, with the agenda built from the clause 9.3.2 inputs and the minutes recording
the clause 9.3.3 outputs, and **an input line marked "not presented" cannot be closed.**

## 2. The agenda, and how it was built

The agenda was built from clause 9.3.2 and carries its seven inputs in the standard's own order, with input
d) split into its four named trends. **No item was added to the agenda and none was reordered.** Where an
input had no subject matter — a) — it was tabled and stated as empty rather than removed, because
`CNB-C-147`'s gate refuses an input marked "not presented" and says nothing about an input presented and
found to contain nothing.

Each input was tabled by a named person with a written pack circulated on 2026-09-25, five days before the
meeting. The packs are held with this minute.

## 3. Inputs a) to c)

**a) The status of actions from previous management reviews.** Tabled by Rahul Bhargava. **There is no
previous management review.** In its place the review received the action status from the ISMS operational
review of 2026-06-15 — the point at which the Statement of Applicability was reissued and 27 of 29 Partial
or Planned entries closed — and confirmed that two remained open, A.5.28 and A.8.32, both `Partial`.
**Resolved: noted, with the input recorded as presented and empty of its own subject matter.**

**b) Changes in external and internal issues relevant to the ISMS.** Tabled by Karim Haddad against the
clause 4.1 determination. Four changes were reported: headcount at **187** across 31 US states and 4
countries, with the people component of the system at 164; **DEC-512**'s region-partitioned `cnb-security`
archive, with an EU bucket in `eu-central-1` under EU-scoped keys; **`INC-2026-031`** of 2026-09-08 as an
internal issue about what the application tier assumes of the data layer; and the **ISO/IEC 27001:2022/Amd
1:2024 climate determination.**

The climate determination was reported as follows and confirmed by the review: **climate change is a
relevant issue for this ISMS**, to the extent of **physical infrastructure CloudNimbus does not own** — the
three AWS regions the platform runs in — and **a supplier concentration**, all seven accounts and six
database clusters sitting with one infrastructure provider, with `eu-central-1` unable to be failed over at
all under obligation **O8**. The determination connects to **R-19** and **R-20**, both at 2 × 5 = 10 and
both immovable.

**Resolved: the determination stands.** **Its location was not questioned at this review**, and it was
recorded in a decision log rather than in the clause 4.1 documented information. Northgate raised the
placement as `AOC-06` twelve working days later and it was moved into the clause 4.1 record on 2026-10-22.

**c) Changes in needs and expectations of interested parties relevant to the ISMS.** Tabled by Tobias Lund
against the clause 4.2 determination. **Reported as unchanged since the determination of 2026-02.**

**Resolved: accepted as unchanged.** The minute records that **no attendee asked when the determination had
last been reviewed**, and the answer was seven months. Northgate raised it as `AOC-05`; it was reviewed on
2026-11-13.

## 4. Input d) — feedback on information security performance

**d) 1) Trends in nonconformities and corrective actions.** Tabled by Rahul Bhargava. Five deviations
`D-06-01` to `D-06-05`, with the clause 10.2 test applied to each: **four are nonconformities in the ISO
sense and `D-06-02` is not**, because a control corrected by amending its statement is a correction rather
than a corrective action, with no requirement of the ISMS left unfulfilled while it stood. Corrective
actions `CA-06-01` to `CA-06-04`, all open.

**Resolved: accepted.** `CA-06-04` was noted as carrying **no dated closure**, and no date was set at this
review. Northgate raised that as `AOC-03`.

**d) 2) Trends in monitoring and measurement results.** Tabled by Wes Delacroix and Karim Haddad. The
third-quarter record: **92 days · 160 changes, of which 9 emergency, 7 approved inside five business days
and 2 late · 5,102 alerts, 148 high-severity, all triaged inside thirty minutes · 1 Severity-1 · 0
Severity-2 · 0 security incidents.** Availability reported per region: `us-east-1` **99.98 · 99.97 ·
99.84**, `eu-central-1` **100% in all three.**

**Resolved: accepted, and the reporting basis confirmed.** **SC-01 was missed in September for the 599
customers served from `us-east-1` and met for the 41 served from `eu-central-1`.** The review declined to
receive a blended platform figure, on the ground that `EC-09`'s sampling unit is one calendar month for one
region and a mean of six months is not what the commitment measures.

**d) 3) Trends in audit results.** Tabled by Karim Haddad. **Camberwell Risk Partners' internal audit report
of 2026-09-25 in full** — the audit of 2026-09-14 to 09-25, 2 minor nonconformities, 9 opportunities for
improvement — **including §1.3's statement of scope and its note that the programme excludes clauses 4 to 10
and one of the three regions in the ISMS scope, with a recommendation that the exclusion be reconsidered
before the certification audit.**

Karim Haddad reported that he had read the note on 2026-09-25, agreed with it, and scheduled clause coverage
into the **2027** programme under **DEC-801** of 2026-09-28. The chair asked what commissioning a second
audit inside the 2026 cycle would require: scoping, commissioning, resourcing and completion inside the
nine weeks before Stage 2 opened on 2026-11-30, against a programme already carrying a certification
audit, a penetration test and an observation window.

**Resolved: the deferral is confirmed. DEC-802, Elise Fontaine, 2026-09-30.** No attendee argued that the
exclusion was acceptable in principle. **The question put and answered was when, not whether.**

**d) 4) Fulfilment of information security objectives.** Tabled by Marisol Vega. OBJ-01 to OBJ-08 against
their measures, re-set two days earlier at `CNB-C-016`'s occurrence of **2026-09-28**. Two objectives carry
measures that cannot be evaluated until the observation window closes; **OBJ-03**, which measures the share
of evidence artefacts serving both deliverables against a target of **70%**, is one of them.

**Resolved: accepted.** The two unevaluable measures are carried to the quarterly objectives report under
`CNB-C-144` rather than re-set at this review.

## 5. Inputs e) to g)

**e) Feedback from interested parties.** Tabled by Marisol Vega and Ana-Sofia Cruz in writing. Three
sources: **Fairmount Ventures' board observer**, whose standing interest arises under **O9**; **requests
from enterprise-tier customers** arriving through Customer Success asking when the report answering **O1**
will exist; and **Northgate's Stage 1 planning correspondence** under **O11** — the audit plan, the
documented-information list and the Stage 2 resourcing question.

**Resolved: noted. O9 is recorded as not engaged.** It runs on a **material security incident** reported to
the board within five business days, and `INC-2026-031` was an availability incident with no security
characterisation; the quarter recorded 0 security incidents. The observer was briefed on the incident and on
the certification timetable under the ordinary CAL-04 cadence rather than under O9.

**f) Results of risk assessment and status of the risk treatment plan.** Tabled by Karim Haddad. The
register at **37 — 8 High · 17 Moderate · 12 Low** as at the CAL-06 review of **2026-09-29**, at which six
reductions were proposed and **none accepted**, and the only movement was upward: **R-08 from 4 × 3 = 12 to
5 × 3 = 15, Moderate to High.** Treatment plan TP-01 to TP-34, with 31 of 34 due before the observation
window opened and the three that were not — the disaster recovery exercise, the internal audit programme
and TP-20's availability architecture change — all delivered.

**Resolved: accepted. R-08's High residual is minuted by the Chief Executive Officer**, which `03.02` §6
requires over and above the risk owner Junia Okonkwo, on the reasoning that R-08's event occurred nine times
in ninety-two days and `03.02` §2 puts likelihood 5 at "occurring now, or expected more than once a year".
Reported to the Audit &amp; Risk Committee under CAL-03, Lorraine Kessler present.

**g) Opportunities for continual improvement.** Tabled by Rahul Bhargava. Camberwell's nine opportunities;
the six CAL-10 disaster recovery findings with `DR-F6` open to 2026-11-30; and the issues Phase 06 referred
rather than closed — `IS-20`, `IS-23`, `IS-24`, `IS-25` and `IS-26`.

**Resolved: accepted, and the referrals confirmed as referrals.** The review declined to convert any of them
into a control amendment, on the standing position that **a library that corrects itself silently cannot
demonstrate that it was ever wrong.**

## 6. Clause 9.3.3 outputs

Clause 9.3.3 requires the outputs to include **decisions related to continual improvement opportunities and
any need for changes to the information security management system.** They are minuted as decisions with
owners.

| Output | Owner | Due |
|---|---|---|
| The clause 9.2 audit programme is extended to clauses 4 to 10 and to all regions **in the 2027 programme** — DEC-802 | Karim Haddad | 2027 programme |
| `NC-INT-01`'s three stale documented-information items brought current and the review-date discipline re-stated to owners | Rahul Bhargava | 2026-10-31 |
| `NC-INT-02`'s evaluation methods documented for the six calendar items lacking them | Rahul Bhargava | 2026-11-30 |
| `CA-06-01` to `CA-06-04` carried with dated closures at the Trust Committee monthly | Karim Haddad | Monthly |
| Per-region availability reporting stands; no blended platform figure is produced | Wes Delacroix | Standing |
| The two objective measures that cannot yet be evaluated are carried to the quarterly report under `CNB-C-144` rather than re-set | Marisol Vega | Q4 report |
| **No change to the ISMS scope, the risk criteria or the Statement of Applicability arises from this review** | Karim Haddad | — |

## 7. What this review did, and what it did not

**It presented all seven inputs.** None was marked "not presented", so `CNB-C-147`'s gate never had anything
to refuse, and an auditor testing the control against this occurrence finds every limb operating.

**It received input d) 3) complete, correct and on the day**, three business days after the report was read
and two after DEC-801 was taken, with §1.3's scope note intact, to the highest governance body in the ISMS,
chaired by the Chief Executive Officer, with the chair of the Audit &amp; Risk Committee in the room.

**And it decided to leave the gap.** That decision is DEC-802. It was unanimous, it was unremarkable in the
room, and it is the decision `MAJ-01`'s evidence paragraph cites.

**The minute is retained unannotated.** No later explanation, correction or commentary is attached to it,
because a minute with an explanation appended is no longer the minute that was taken. What this record adds
at the vantage is this section and nothing else.

**It reached no conclusion about the examination**, and none was sought. Clause 9.3 has no trust services
criterion and `CNB-C-147` appears in no Section IV.

## Cross-References

| Document | Relationship |
|---|---|
| [08.02 The Clause 9.3 Management Review](../08.02-the-clause-9-3-management-review.md) | The chapter this minute belongs to, and the seven inputs argued |
| [08.01 The Clause 9.2 Internal Audit](../08.01-the-clause-9-2-internal-audit.md) | §5, and the report input d) 3) carried |
| [08.03 ISO Stage 1 and What a Readiness Review Does Not Do](../08.03-iso-stage-1-and-what-a-readiness-review-does-not-do.md) | `AOC-03`, `AOC-05` and `AOC-06`, all raised against matters this review accepted |
| [08.05 Stage 2 and the Major Nonconformity](../08.05-stage-2-and-the-major-nonconformity.md) | `MAJ-01`, whose evidence paragraph cites this minute |
| [logs/decision-log.md](../logs/decision-log.md) | DEC-802 |
| [logs/evidence-index.md](../logs/evidence-index.md) | EV-804, this minute, and EV-805, the clause 4.1 record as amended |
| [04.07 ISO-Only Controls and ISMS Machinery](../../04-unified-control-framework-and-policy-architecture/04.07-iso-only-controls-and-isms-machinery.md) | `CNB-C-147` as published |
| [06.12 Quarter Three Operating Record](../../06-availability-processing-integrity-and-operations/06.12-quarter-three-operating-record.md) | The figures input d) 2) carried |
| [06.05 The Severity-1 Incident of 2026-09-08](../../06-availability-processing-integrity-and-operations/06.05-the-severity-1-incident-of-2026-09-08.md) | `INC-2026-031`, tabled under input b) |
| [governance/GOV-24](../../06-availability-processing-integrity-and-operations/governance/GOV-24-september-risk-register-review.md) | The CAL-06 review of 2026-09-29 that input f) reported |
| [03.02 Risk Criteria and Scoring Scale](../../03-risk-assessment-treatment-and-statement-of-applicability/03.02-risk-criteria-and-scoring-scale.md) | §6's acceptance authority, engaged by R-08 |
| [02.09 Interested Parties and Requirements (Clause 4.2)](../../02-system-scope-isms-boundary-and-description/02.09-interested-parties-and-requirements-clause-4-2.md) | The determination input c) reported as unchanged |
| [01.11 Assurance Calendar and Obligations](../../01-program-foundation-dual-framework-governance/01.11-assurance-calendar-and-obligations.md) | CAL-15, and O1, O9 and O11 |
