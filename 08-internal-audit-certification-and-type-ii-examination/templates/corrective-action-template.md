# Template — Corrective Action Record

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2027-T31 |
| Version | 1.0 |
| Date | 2027-02-05 |
| Owner | Karim Haddad |
| Approver | Rahul Bhargava |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


Completed under **clause 10.2** for every nonconformity, and carried in the improvement register alongside
the nonconformity record. `CNB-C-148` requires the record to hold the immediate reaction, the cause
analysis, the corrective action, the accountable person, the due date and an effectiveness check, and
**refuses closure until the effectiveness check is completed.**

**The form is built around one distinction and every section serves it.**

> **A correction controls and corrects the nonconformity and deals with its consequences. A corrective
> action eliminates the cause so that it does not recur or occur elsewhere.** They are different acts, they
> are evidenced by different artefacts, and clause 10.2 requires the second to be **evaluated for
> need** rather than assumed.

**CloudNimbus has a dated illustration of what happens when only the first is taken.** Camberwell raised
`NC-INT-01` on 2026-09-25 — three items of documented information more than thirty days past their review
date. The three were brought current and the record was closed on **2026-10-09**. Nothing determined why
they had gone stale, whether others were in the same condition, or what would stop the next ones. On
**2026-12-03** Northgate found two more and raised `MIN-01`. **Eight weeks, one correction, no corrective
action, and the same clause again.**

## 1. Identification and the correction

| Field | Guidance |
|---|---|
| Identifier | `CA-nn-nn`, in the phase series that raised it |
| Nonconformity | The `MAJ-`, `MIN-`, `NC-INT-` or internal identifier, and the requirement quoted |
| Accountable person | **A named individual.** ADR-0020's rule applies here as it applies to the library: a corrective action owned by a team is owned by nobody, and the person who has to explain it in an interview has to exist |
| Due date | For the plan and for each limb separately, where the limbs have different horizons |
| **The correction** | What was done to control and correct the nonconformity and deal with its consequences. Clause 10.2 a) |
| **Consequences dealt with** | The separate limb of 10.2 a), and the one most often skipped. `MAJ-01`'s consequence was that the ISMS had no information about conformity to clauses 4 to 10 for an annual cycle, and the correction that dealt with it was **an audit**, not a rewritten document. **A rewritten document does not supply information; it promises it** |
| **Is the correction sufficient on its own?** | **Yes / No**, with the reasoning, and this field is answered before the cause analysis rather than after it. **Yes** is a legitimate answer in one case and one only: where the nonconformity arose from a condition that cannot recur because the thing that produced it has ceased to exist. **A condition corrected on the items it was found on is not that case** |

## 2. Cause analysis — clause 10.2 b) 1) and 2)

| Field | Guidance |
|---|---|
| **Review of the nonconformity** | What happened, in the terms the requirement is written in. Where two documents describe the same activity, **set out what each of them said and when each was written** — that is how `MAJ-01`'s analysis found that both were correct and neither was compared |
| **The cause** | Stated so that a corrective action can be built against it. A cause is something a control, a procedure or a decision right could have prevented |
| **Rejected causes, and why** | Named rather than omitted. **"Human error" is almost never the cause and is the answer this field exists to refuse.** Nobody forgot to update the audit programme document, because nobody was ever required to. A cause analysis landing on individual attentiveness produces a corrective action about attentiveness, which is a corrective action about nothing |
| **Supplier causes** | Where a supplier performed the activity: **was the failure the supplier's delivery against the scope, or the scope itself?** The two have different corrective actions and only one of them is about the supplier. **A.5.22** — monitoring, review and change management of supplier services — requires supplier **information security practices and** service delivery to be regularly monitored, reviewed, evaluated and managed for change, and a review that only asks whether the supplier did what it was told cannot detect an instruction that was wrong |

## 3. Extent — clause 10.2 b) 3), and the section people leave blank

| Field | Guidance |
|---|---|
| **Do similar nonconformities exist?** | The population searched, the method, and the result. Not "none known" — **what was looked at** |
| **Could similar nonconformities occur elsewhere?** | The class of thing that could carry the same failure, and whether it has been enumerated |
| **If it has not been enumerated, say so and give it an owner** | The honest form. `MAJ-01`'s answer is that the same shape — a control statement and the procedure that carries it drifting apart silently, with **the library side giving no signal because the statement is correct** — can exist anywhere in a library of 150 rows and nothing has been enumerated. That is `IS-35`, owner Karim Haddad, referred to the next library issue. **A claim about "a number of controls" with no number and no owner is the thing this programme exists to refuse, and a referral with an owner and an admitted unknown is the smallest honest version of it** |
| Scope of any fix applied | The population the fix was deployed to, **and the population the defect could exist in**. A fix whose scope is the set of things that happened to break is a fix of unestablished scope: the September connection-pool remediation was deployed to the eleven services the incident found, and an estate-wide search across all 63 then found nine more |

## 4. The corrective action — clause 10.2 c)

| Field | Guidance |
|---|---|
| Limbs | One row per limb, each with an owner and a date. `MAJ-01` has three: the rewritten programme document with its three-year coverage matrix, `CNB-C-150`, and the annual adequacy review of the scope CloudNimbus gives its audit supplier |
| **Does any limb add or amend a control?** | If so, the identifier, the full statement, the family, type, cadence, owner, policy, criteria and Annex A citation — and a decision record. **Adding a control and amending one are different calls**: amend where the statement was wrong, add where the statement was right and nothing carried the requirement. `CNB-C-146` was **not wrong**, which is why `CNB-C-150` was added rather than `CNB-C-146` widened |
| **Date of admission or amendment** | The real date, from the decision record and the platform change history. **Where a control is admitted after an observation window has closed, the record says so on its face**: `CNB-C-150` was admitted on 2027-01-08, has no population inside the window, and is not part of the Type II examination |
| **Does the limb create a requirement with no cadence?** | If yes, it is not a corrective action limb. **A requirement without an operating cadence is a requirement nobody has scheduled**, which is why the coverage obligation became a control rather than a paragraph in a rewritten document |

## 5. Effectiveness — clause 10.2 d), and the limb that cannot be checked yet

| Field | Guidance |
|---|---|
| Effectiveness check, per limb | The date, the evidence and the result. **Per limb, not per action**: an action whose limbs have different cadences has different check dates and a single date would be the earliest one pretending to be all of them |
| **Limbs that cannot be checked yet** | Named, with the date on which they can be. An annual control admitted in January 2027 has its first occurrence when the 2028 programme is set, and **nobody — not the certification body at a surveillance audit, not the Audit &amp; Risk Committee, not CloudNimbus — can test it before then.** That is `IS-36` |
| **What an external party accepted, and what it rested on** | Where a certification body accepted the corrective action, **which limbs the acceptance rested on.** Northgate's acceptance of `MAJ-01`'s corrective action rested on the rewritten programme document and the January audit it produced, **not on `CNB-C-150`**, which had never operated. `AS-40` records the assumption that `CNB-C-150` would have detected the original divergence as unverified and unverifiable for a year |
| Register closure | Separate from any external verification, and later. `CNB-C-148` refuses closure until every effectiveness check is complete |

## 6. Changes to the ISMS — clause 10.2 e)

| Field | Guidance |
|---|---|
| Documented information changed | Every item, with its `CNB-C-145` merge record and effective date |
| Controls added or amended | The library position before and after, as a count. 148 at the window's opening, 149 at its close, 150 today |
| Statement of Applicability | Whether a determination changed. **A change of determination requires a reissue under clause 6.1.3 d) and `CNB-C-143`**; a change of implementation status requires the same |
| ISMS scope | Whether the scope statement or its clause 4.1, 4.2 or 4.3 c) determinations changed — and if so, whether **O10**'s thirty-day notification to the certification body has been despatched, with the despatch date |

## 7. Retention — clause 10.2, final limb

Clause 10.2 requires documented information to be retained as evidence of **the nature of the
nonconformities and any subsequent actions taken**, and of **the results of any corrective action**. Both
are named because they are different records and an organisation retaining only the first can show what it
found and not what happened.

| Field | Guidance |
|---|---|
| Nature and actions | The nonconformity record, this record, and the artefacts each limb produced |
| **Results** | What the effectiveness check found, including where it found nothing yet |
| Evidence class and unit | The EC class the artefacts belong to. Where the corrective action produces a record shape the store does not hold, **the class is extended before the action closes** — the store was extended twice in the window, once for a control that did not operate and once for a control that operated and had nothing to say |

## 8. What this form does not do

**It does not decide whether a corrective action is needed.** Clause 10.2 b) requires the organisation to
**evaluate** the need, and the honest answer is sometimes no. `D-06-02` — a control statement that fixed
cadence, regions and a paging condition and was silent on what a probe must exercise — was corrected by
amending the statement, and **an amendment is a correction rather than a corrective action**: nothing failed
to conform while it stood, so there was no cause to eliminate. That record carries §1's sufficiency field
answered **yes**, with the reasoning, and no limbs.

**It does not apply to opportunities for improvement or Stage 1 areas of concern.** Neither is a
nonconformity, neither engages clause 10.2, and an organisation that opens a corrective action for an
opportunity has invented an obligation nobody imposed. What it did with them anyway is recorded in the
finding log, which is a different thing from being required to.

**It does not repair a denominator.** An occurrence that did not happen did not happen; performing it later
is a correction and never a recovery, and **an annual control's occurrence is an event on a date.**
`CNB-C-136`'s August occurrence was performed on 2026-12-08 and the August deviation stands.

**And it does not say anything about an examination.** Where the nonconformity's fact is also a test
exception, the service auditor's evaluation of the deviation is the service auditor's, is performed after
fieldwork, and appears in no document on this form.

## Cross-References

| Document | Relationship |
|---|---|
| [08.07 Correction, Corrective Action and the Certificate](../08.07-correction-corrective-action-and-the-certificate.md) | Clause 10.2 applied limb by limb, and the root cause this form's §2 asks for |
| [08.06 The Minor Nonconformities and the Opportunities](../08.06-the-minor-nonconformities-and-the-opportunities.md) | `MIN-01`, the distinction with a date on it |
| [08.05 Stage 2 and the Major Nonconformity](../08.05-stage-2-and-the-major-nonconformity.md) | The nonconformity every worked example here comes from |
| [templates/nonconformity-record-template.md](nonconformity-record-template.md) | The record this one is raised against |
| [templates/audit-programme-coverage-matrix-template.md](audit-programme-coverage-matrix-template.md) | The artefact `MAJ-01`'s first limb produced |
| [governance/GOV-31](../governance/GOV-31-maj-01-correction-root-cause-and-corrective-action.md) | The completed instance, as submitted to Northgate |
| [adr/ADR-0040](../adr/ADR-0040-cnb-c-150-is-admitted-outside-the-window.md) | §4's admission date field, and why it is on the face of the record |
| [logs/raid-log.md](../logs/raid-log.md) | `IS-35`, `IS-36` and `AS-40` |
| [04.07 ISO-Only Controls and ISMS Machinery](../../04-unified-control-framework-and-policy-architecture/04.07-iso-only-controls-and-isms-machinery.md) | `CNB-C-143`, `CNB-C-145` and `CNB-C-148` as published |
| [04.12 Evidence Architecture](../../04-unified-control-framework-and-policy-architecture/04.12-evidence-architecture.md) | The EC classes §7 asks for, and the two extensions the window required |
| [06.05 The Severity-1 Incident of 2026-09-08](../../06-availability-processing-integrity-and-operations/06.05-the-severity-1-incident-of-2026-09-08.md) | §6.1, the fix of unestablished scope §3 asks about |
| [ADR-0026](../../06-availability-processing-integrity-and-operations/adr/ADR-0026-the-missed-restore-test-is-not-back-dated.md) | Why a correction is never a recovery |
