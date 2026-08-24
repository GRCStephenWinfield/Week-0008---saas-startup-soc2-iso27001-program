# Template — Nonconformity Record

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2027-T30 |
| Version | 1.0 |
| Date | 2027-02-05 |
| Owner | Rahul Bhargava |
| Approver | Karim Haddad |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


Completed for **every nonconformity**, whoever raises it: the certification body at Stage 2 or a
surveillance audit, the internal auditor under clause 9.2, or CloudNimbus itself under clause 10.2. It is
the entry form for the improvement register `CNB-C-148` governs, and the register record **cannot be closed
until the effectiveness check is completed.**

**A nonconformity is the non-fulfilment of a requirement.** That is all it is, and the requirement has to be
nameable: a clause of ISO/IEC 27001:2022, an Annex A control determined necessary in the Statement of
Applicability, a documented procedure, or a contractual requirement CloudNimbus has adopted into the ISMS.
**A finding with no nameable requirement behind it is an observation or an opportunity for improvement, and
this form is not the one for it.**

## 1. The vocabulary field, which comes first for a reason

**"Nonconformity" is ISO. "Exception" and "deviation" are SOC 2.** They are not synonyms, they are not
degrees of one another, and the same fact can be both, either or neither. This form records a
nonconformity. It carries one field about the other framework and that field is a cross-reference, never a
classification.

| Field | Guidance |
|---|---|
| Framework | **ISO/IEC 27001:2022.** This form has no other value for this field. A test exception is recorded in the deviation log against the control and the criterion, and the two records are linked, never merged |
| **Is the same fact also a test exception?** | **Yes / No**, with the reason. **Yes** where the control the nonconformity concerns cites a trust services criterion and the failure is one the service auditor's testing would select — `D-06-01`, the missed restore test, is both. **No** where the control is ISO-only or the requirement has no criterion — `MAJ-01` and `D-06-05` are nonconformities and not exceptions, because clause 9.2 has no criterion and `CNB-C-136` cites none |
| If yes, the deviation identifier | The `D-nn-nn` reference and the criterion. **This is a pointer and not a second classification** |
| Health warning | **Neither column can be derived from the other.** They are populated by different tests applied by different parties: ISO asks whether a requirement was not fulfilled; SOC 2 asks whether a control management stated did not operate as described on an occasion the auditor selected |

## 2. Identification

| Field | Guidance |
|---|---|
| Identifier | `MAJ-nn`, `MIN-nn` or `NC-INT-nn` where raised by an auditor; the internal series where raised by CloudNimbus |
| Raised by | The party, the individual and the engagement. **An accredited certification body, an internal auditor and the organisation itself are three different sources and the record says which** |
| Date raised | The date the finding was stated, not the date the report was received |
| **Grade** | **Major**, **minor**, or — where CloudNimbus raises it under clause 10.2 — ungraded. Grading is the raising party's, and where the raising party graded it the record carries **their grade in their words** |
| Where the finding statement is retained | Retained **as written by the party that raised it**. A paraphrase is not the finding, and an organisation that files its own summary has filed its own view of what it was told |

## 3. Requirement, evidence and extent

| Field | Guidance |
|---|---|
| **Requirement** | The clause, sub-clause and limb, or the Annex A control, **quoted rather than referenced**. Clause 9.2.1 has two limbs — conformity to the organisation's own requirements **and** to the requirements of the document — and a record citing "clause 9.2" loses which one failed |
| **Additional requirements engaged** | Where one failure engages more than one requirement, all of them, **on one record**. `MAJ-01` engages clause 9.2.1, clause 9.2.2 a) and A.5.22 and is **one nonconformity, not three**: the scope was inadequate, the scope was a supplier instruction, and the instruction was never reviewed. That is one thing that did not happen. **Recording one thing as three trebles a count and leaves three findings each of which looks more survivable than the one that occurred** — and a register carrying three minor-looking entries where one major belongs has lost the finding while keeping all of its words |
| **Evidence** | What the raising party relied on, named as artefacts. Where the evidence is the organisation's own records — a report, a decision, a minute — **say so**, because a finding built from the auditee's own documents cannot later be characterised as a difference of opinion |
| Objective evidence CloudNimbus disputes | Named, or **"none"**. If none, say none rather than leaving the field empty; an empty field reads as an unanswered question |
| **Extent** | The population and the occurrences. *Two of thirty-seven items*, *one of two consecutive refreshes*, *the whole of one annual cycle*. **A nonconformity with no extent is a nonconformity nobody can size** |
| Duration | When the condition began, when it was detected, and by whom. Where the organisation held the fact before the auditor raised it, **the record says so and gives the date** |

## 4. The uncomfortable field

| Field | Guidance |
|---|---|
| **Was this condition already in CloudNimbus's records before it was raised?** | **Yes / No.** If yes: as **what**, and with what date? |
| **As a finding, or as a decision?** | The field this form exists for. A condition already recorded **as a finding** — with an owner, a due date and a corrective action — evidences a working monitoring apparatus, and three of the four Stage 2 minors were in that position. A condition already recorded **as a decision** is worse than not having found it: an entity that failed to notice a gap has a detection problem; **an entity that noticed it, wrote it down, took it to its highest governance body and decided to leave it has a different problem**, and no amount of additional monitoring answers it |
| Where it was recorded | The decision identifier, the minute, the referral or the register entry. `MAJ-01`'s answer is DEC-801, DEC-802 and Camberwell's report §1.3 |

## 5. Immediate reaction and the clock

| Field | Guidance |
|---|---|
| Immediate reaction | What was done on the day, before any analysis. Clause 10.2 a) requires the organisation to react |
| **Was the finding contested?** | **Yes / No**, with the reasoning. Where a grade is accepted without contest, record that it was and that no dissent was expressed if none was — **an absence recorded is evidence; an absence unrecorded is a gap** |
| Response deadline | For a certification body finding, **the limit the certification body has set**, which ISO/IEC 17021-1 requires it to define rather than fixing itself. For `MAJ-01`, **Northgate set a correction and a corrective action plan within twenty days of the closing meeting**, with evidence of implementation and effectiveness before a certification decision. The record carries the number **and whose it is**, because a limit quoted as the standard's is a procedure mistaken for a requirement |
| Blocking effect | Whether the finding blocks a certification decision. **A major does. A minor does not**, and is verified at a subsequent audit |
| Corrective action reference | The `CA-nn-nn` identifier. **The corrective action is a separate record on its own form**, because the questions clause 10.2 b) asks are not the questions this form asks |

## 6. Closure, and the two closures that are not the same

| Field | Guidance |
|---|---|
| Correction complete | The date the condition itself was corrected. **This is not closure** |
| Corrective action effectiveness check | The date, the evidence and the result. `CNB-C-148` will not let the register record close without it |
| **External verification** | Where an outside party verified closure: the party, the date and the method. `MAJ-01` was verified closed by Northgate on 2027-01-15 after a supplementary audit on 2027-01-13 |
| **Internal register status** | Separately from the above. **The two can differ and did**: Northgate verified `MAJ-01` closed on 2027-01-15 while the improvement register entry remained open, because one limb of the corrective action — `CNB-C-150` — had never operated and its effectiveness check falls when the 2028 audit programme is set |
| Verified at | For a minor nonconformity from a certification audit, the audit at which implementation is verified — for the Stage 2 minors, the **first surveillance audit**, due within twelve months of the certification decision of 2027-01-20 and scheduled for 2027-11 |

## 7. What this form does not do

**It does not grade the finding for the party that raised it.** Where a certification body has graded, the
grade is theirs and is recorded in their words. Where CloudNimbus raises a nonconformity itself under clause
10.2, the record carries the requirement, the extent and the treatment and does not assign a grade nobody
outside the organisation would recognise.

**It does not record opportunities for improvement or areas of concern.** An **opportunity for improvement
is not a nonconformity and carries no obligation**; a Stage 1 **area of concern** is a statement that
something will be found if unchanged, and belongs to neither vocabulary. Both are logged in the finding log
with their own classification and neither gets a clause 10.2 record, because there is no requirement to
determine the cause of.

**It does not decide what happens in the other framework.** Where the same fact is also a test exception,
the deviation record carries the criterion, the control, the population and the corrective action, and the
service auditor's evaluation of it is **the service auditor's** and appears in no CloudNimbus document.

**And it does not close itself.** Every field above can be complete while the condition persists. The
closure that matters is the effectiveness check, and `CNB-C-148` is the control that refuses to let anything
else count as one.

## Cross-References

| Document | Relationship |
|---|---|
| [08.05 Stage 2 and the Major Nonconformity](../08.05-stage-2-and-the-major-nonconformity.md) | `MAJ-01`, the worked instance of every field above |
| [08.06 The Minor Nonconformities and the Opportunities](../08.06-the-minor-nonconformities-and-the-opportunities.md) | `MIN-01` to `MIN-04`, and why an opportunity does not get this form |
| [08.01 The Clause 9.2 Internal Audit](../08.01-the-clause-9-2-internal-audit.md) | `NC-INT-01` and `NC-INT-02` |
| [08.12 The Scheduling Collision](../08.12-the-scheduling-collision.md) | The two vocabularies, and the four facts with four different answers |
| [templates/corrective-action-template.md](corrective-action-template.md) | The separate record clause 10.2 b) and c) require |
| [governance/GOV-31](../governance/GOV-31-maj-01-correction-root-cause-and-corrective-action.md) | `MAJ-01`'s correction and corrective action as submitted |
| [logs/finding-log.md](../logs/finding-log.md) | Every finding of the phase, with the classification column this form's §1 protects |
| [diagrams/08-two-frameworks-one-week.md](../diagrams/08-two-frameworks-one-week.md) | The routing decision §1 asks for, drawn |
| [04.07 ISO-Only Controls and ISMS Machinery](../../04-unified-control-framework-and-policy-architecture/04.07-iso-only-controls-and-isms-machinery.md) | `CNB-C-148` as published, and why an ISO-only control has no criterion |
| [06.12 Quarter Three Operating Record](../../06-availability-processing-integrity-and-operations/06.12-quarter-three-operating-record.md) | `D-06-01` to `D-06-05` with the clause 10.2 test applied to each |
