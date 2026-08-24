# GOV-31 — `MAJ-01`: Correction, Root Cause and Corrective Action

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2027-G31 |
| Version | 1.0 |
| Date | 2027-02-05 |
| Owner | Karim Haddad |
| Approver | Elise Fontaine |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


## 1. Matter

**The correction, root cause analysis and corrective action plan for `MAJ-01`, submitted to Northgate
Certification Services on 2026-12-19**, fifteen days after the closing meeting of 2026-12-04 and five days
inside the twenty-day limit of 2026-12-24 **that Northgate set under ISO/IEC 17021-1** — the standard
requires the certification body to define the time for correction and corrective action, and twenty days is
what Northgate defined.

Prepared by Karim Haddad, reviewed by Rahul Bhargava, approved by Elise Fontaine. The submission as sent is
**EV-812**. This record is the submission's own structure with the outcome added at the vantage.

**The finding.** `MAJ-01`, raised 2026-12-02 against **clause 9.2.1**, **clause 9.2.2 a)** and **A.5.22**:
the internal audit of 2026-09-14 to 2026-09-25 covered the 93 Annex A controls in the Statement of
Applicability — the 91 determined necessary against their implementation status and the 2 excluded against
their justification — and did not cover clauses 4 to 10 or `eu-central-1` operations; `CNB-C-146` states a programme risk-weighted across
clauses 4 to 10 and the Annex A controls determined necessary; and the scope CloudNimbus gave its supplier
was never reviewed for adequacy. **One nonconformity, not two.**

## 2. Review of the nonconformity — what each document said

Clause 10.2 b) 1) requires the nonconformity to be **reviewed** before its causes are determined. The review
compared the two documents that describe the same activity.

| Document | Written | What it says about scope |
|---|---|---|
| **The audit programme document** — POL-19's annexe | **January 2026**, at chartering | The programme audits the controls determined necessary in the **Statement of Applicability**. No clause has a row. No location has a row |
| **`CNB-C-146`** — the control library row | **June 2026**, when the library was built | The programme is *"risk-weighted **across clauses 4 to 10 and the Annex A controls determined necessary**"* |
| **CAL-14** — the assurance calendar entry | **January 2026** | *"Annual programme, risk-weighted."* Frequency and prioritisation basis. **Nothing about coverage** |
| **`01.11` §7** — the recorded position | **January 2026** | Coverage is **undefined**; definition deferred to an internal audit charter; exposure carried as **`PR-06`** |

**Both operative documents were correct on their own faces.** The January document was the only programme
document anybody could have written in January, because the Statement of Applicability was the only complete
inventory of auditable things the organisation had. The June control statement is a correct description of
what a clause 9.2 programme should cover. **Nothing read them against each other, and nothing required
anybody to.**

**The internal audit charter that `01.11` §7 deferred coverage to did not exist when the audit ran.**

## 3. Root cause

> The audit programme document was written at chartering in **January 2026** and defined its scope by
> reference to the Statement of Applicability, because in January the SoA was **the only complete inventory
> of auditable things the organisation had.** `CNB-C-146` was written in **June**, when the control library
> was built, and it describes a programme audited across clauses 4 to 10. **Nothing required the programme
> document to be brought up to the control statement that described it, and nothing compared the two.**
>
> **The library got ahead of the practice and nothing checked that they still agreed.**

**Human error is not the cause and was rejected as one.** Nobody forgot to update the programme document,
because nobody was ever required to; the two documents were authored eight weeks apart by people who both
did their jobs correctly. A cause analysis landing on individual attentiveness would have produced a
corrective action about attentiveness, which is a corrective action about nothing.

**Supplier performance is not the cause either.** Camberwell Risk Partners audited what it was asked to
audit, stated the limitation on the face of its report at §1.3, and recommended that the exclusion be
reconsidered before the certification audit. **The cause on the supplier side is the instruction, not the
delivery**, which is what the A.5.22 limb is about and what the third part of the corrective action
addresses.

## 4. Whether similar nonconformities exist or could occur

Clause 10.2 b) 3) requires this question to be asked and the answer is recorded rather than avoided.

**The same shape can exist anywhere in a library of 150 rows, and nothing has been enumerated.** Every
earlier library defect this programme has found was findable **from the library**: Phase 05 read five
control statements and found that they did not say what a later phase needed; Phase 06 read `CNB-C-096` and
found a control that fixed cadence, regions and a paging condition and never said what a probe must
exercise; Phase 07 read `CNB-C-127` and found an alert condition about the arrival of a record rather than
its content. **`CNB-C-146` cannot be found that way, because there is nothing wrong with it.** A reader
auditing the library for gaps reads the row, ticks it, and moves on.

**That is `IS-35`, recorded as the class of failure and not the instance**, owner Karim Haddad, referred to
the next control library issue. The instance is closed. The class is open, no count is available, and
`DP-38` records that closing it depends on somebody enumerating where else the divergence could exist.

## 5. The correction

**An internal audit of clauses 4 to 10 and of `eu-central-1` operations**, conducted by **Camberwell Risk
Partners under a scope CloudNimbus rewrote**, run **2027-01-05 to 2027-01-09**.

**Scoped as a full audit rather than a documentation review — DEC-807, 2026-12-11.** The cheaper option was
put and refused: rewriting the programme document and letting the 2027 audit run in the ordinary course
would have corrected the process and supplied no information about conformity to clauses 4 to 10, which is
the thing the nonconformity says the ISMS did not have. **A rewritten document does not supply information;
it promises it.**

**The same supplier was retained deliberately.** The finding was never about Camberwell's competence, and
changing auditor would have implied it was while discarding a year of familiarity with the ISMS. **What
changed is the only thing that had been wrong: who wrote the scope, and against what.**

**Result: 1 minor nonconformity — clause 7.4, on how the ISMS communicates changes to interested parties —
and 4 opportunities for improvement.** The findings are entered in the improvement register under the
**2027** programme and carry that programme's identifiers.

**The audit that was supposed to exist found something, which is the point of it existing.** A correction
audit returning nothing would have raised the question of whether the scope had been rewritten or only
re-worded. `AS-41` records that one audit establishes that the scope reaches something and cannot establish
that it reaches everything clause 9.2.1 requires across a three-year cycle.

## 6. The corrective action, in three parts

**Part 1 — the audit programme document, rewritten. DEC-808, 2026-12-18.** The audit criteria are now
clauses 4 to 10, the Statement of Applicability, and **every region and legal entity inside the ISMS scope**,
carried on a **coverage matrix complete across the three-year certification cycle**, with a named gap
escalation. Every clause of 4 to 10 has its own row; every location and legal entity has its own row; risk
weight changes an object's frequency and never changes it to zero inside the cycle; and the Gap column is
computed rather than asserted. The form is
`templates/audit-programme-coverage-matrix-template.md`.

**Part 2 — `CNB-C-150`, admitted to the library. DEC-811, 2027-01-08.**

> *The internal audit programme's coverage matrix is reviewed annually against the ISMS scope and the
> Statement of Applicability, and a clause, a location or a legal entity with no planned audit inside the
> certification cycle is escalated to the Audit &amp; Risk Committee before the programme is set.*
>
> Family `ISO`. Type **Detective**. Cadence **Annual**. Owner **Karim Haddad**. Policy `POL-19`.
> Criteria **—**. Annex A **—**.

**Both columns are dashes, and the Annex A dash was argued rather than left blank.** A.5.35 is an
independent review of the approach to managing information security and is carried by **`CNB-C-024`**, an
annual review commissioned from a party that neither designed nor operates the controls. `CNB-C-150` is an
annual **self**-review of the audit programme's coverage by the person who owns the programme, and the
obligation it serves lives in clause 9.2. **That is the same reason `CNB-C-146` carries a dash** — `04.07`
§3.1 — and **a corrective action that claimed the citation its parent control was denied would have been
the easiest error in the submission to make and the hardest to notice.**

**Admitted after the observation window closed, with no population inside it, and not part of the Type II
examination.** ADR-0040 records the decision and the alternative that was refused.

**Part 3 — the A.5.22 limb. DEC-812, 2027-01-08, Tobias Lund.** **`CNB-C-092`** — the quarterly assurance
refresh for every Tier 1 vendor, which is the library's A.5.22 row and also cites A.5.19 — now carries an
**annual adequacy review of the scope CloudNimbus gives its audit supplier**. Not a review of Camberwell's
performance against the scope, which was never in question — **a review of whether the scope is adequate to
the requirement it exists to satisfy.** A review that only asks whether the supplier did what it was told
cannot detect an instruction that was wrong.

**The limb was attached to `CNB-C-092` and not to `CNB-C-090`.** `CNB-C-090` is the pre-engagement gate —
no vendor receives production data or a system integration until a security assessment proportionate to its
tier is complete and the outcome and tier are recorded in the vendor register. It is preventive and
continuous, it cites A.5.19 and A.5.21, it carries no periodic review, and Camberwell, which receives
neither production data nor a system integration, does not pass through it.

**And the fact that makes the limb necessary rather than tidy: Camberwell is a Tier 1 vendor in the register
and `CNB-C-092` read its assurance artefact every quarter throughout.** The control operated, on the right
vendor, at the right cadence, for the whole of the period in which the scope was inadequate. **Reading a
supplier's assurance artefact is not the same as reviewing whether the scope you gave that supplier was
adequate**, and the corrective action therefore extends `CNB-C-092` rather than relying on it.

## 7. Effectiveness, and the limb that has not been tested

Clause 10.2 d) requires the effectiveness of any corrective action taken to be **reviewed**.

**Two limbs have been exercised.** The rewritten programme document produced the January audit; the January
audit produced a finding. That is what Northgate accepted as evidence of implementation and effectiveness
before the certification decision.

**One limb has not, and the submission said so rather than letting it be assumed.** `CNB-C-150` is an annual
detective control admitted on 2027-01-08. **Its first occurrence falls when the 2028 audit programme is
set** — after the 2027-11 surveillance audit — and until then nobody can test whether it works: not
Northgate, not the Audit &amp; Risk Committee, not CloudNimbus. **`IS-36`** carries it and **`AS-40`**
records the assumption it rests on as unverified and unverifiable for a year.

**A corrective action whose most durable limb is untested is not a defective corrective action; it is a
corrective action whose effectiveness check is scheduled**, and the honest form of the record is to say
when.

## 8. Verification and outcome

| Date | Event |
|---|---|
| 2026-12-19 | Submission to Northgate — this record, EV-812 |
| 2027-01-05 to 01-09 | The correction audit: 1 minor nonconformity, 4 opportunities |
| 2027-01-08 | `CNB-C-150` admitted; `CNB-C-092` extended with the annual scope-adequacy review |
| **2027-01-13** | **Supplementary audit** — Ingrid Halvorsen, one auditor-day, remote |
| **2027-01-15** | **`MAJ-01` verified closed** |
| 2027-01-20 | Certification decision |
| 2027-01-22 | Certificate issued, valid to 2030-01-21 |

**The improvement register entry cannot be closed until the effectiveness check is completed**, which is
`CNB-C-148`'s condition, and Northgate's verification of `MAJ-01` and CloudNimbus's own closure of the
register entry are two different things. Northgate's closure is dated 2027-01-15. **The register entry
remains open on `CNB-C-150`'s limb.**

## Cross-References

| Document | Relationship |
|---|---|
| [08.07 Correction, Corrective Action and the Certificate](../08.07-correction-corrective-action-and-the-certificate.md) | The chapter this record belongs to; §3's root cause and the certification sequence |
| [08.05 Stage 2 and the Major Nonconformity](../08.05-stage-2-and-the-major-nonconformity.md) | `MAJ-01` as Northgate stated it |
| [08.01 The Clause 9.2 Internal Audit](../08.01-the-clause-9-2-internal-audit.md) | The 2026 programme, and Camberwell's scope note |
| [governance/GOV-30](GOV-30-stage-2-closing-meeting.md) | The closing meeting the twenty days ran from |
| [adr/ADR-0040](../adr/ADR-0040-cnb-c-150-is-admitted-outside-the-window.md) | DEC-811 and the alternative refused |
| [templates/corrective-action-template.md](../templates/corrective-action-template.md) | The form this submission is a completed instance of |
| [templates/audit-programme-coverage-matrix-template.md](../templates/audit-programme-coverage-matrix-template.md) | The matrix DEC-808 adopted |
| [logs/decision-log.md](../logs/decision-log.md) | DEC-807, DEC-808, DEC-811 and DEC-812 |
| [logs/raid-log.md](../logs/raid-log.md) | `IS-35`, `IS-36`, `AS-40`, `AS-41` and `DP-38` |
| [logs/evidence-index.md](../logs/evidence-index.md) | EV-812 to EV-816 |
| [04.07 ISO-Only Controls and ISMS Machinery](../../04-unified-control-framework-and-policy-architecture/04.07-iso-only-controls-and-isms-machinery.md) | `CNB-C-146` and `CNB-C-148` as published, and §3.1 on A.5.35 as a different activity |
| [04.05 Controls for the Common Criteria CC6 to CC9](../../04-unified-control-framework-and-policy-architecture/04.05-controls-for-the-common-criteria-cc6-to-cc9.md) | `CNB-C-090` and `CNB-C-092` as published, and which of them carries A.5.22 |
| [01.11 Assurance Calendar and Obligations](../../01-program-foundation-dual-framework-governance/01.11-assurance-calendar-and-obligations.md) | CAL-14, §7's deferral and `PR-06` |
