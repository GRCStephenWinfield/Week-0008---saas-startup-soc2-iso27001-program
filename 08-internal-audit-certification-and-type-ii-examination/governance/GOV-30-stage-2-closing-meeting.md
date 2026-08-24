# GOV-30 — ISO Stage 2 Closing Meeting

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2027-G30 |
| Version | 1.0 |
| Date | 2027-02-05 |
| Owner | Karim Haddad |
| Approver | Elise Fontaine |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


## 1. Matter

The **closing meeting of the ISO/IEC 27001:2022 Stage 2 certification audit**, held **2026-12-04**, 15:30 to
16:40, conducted by **Northgate Certification Services, Ltd.** It is **MS-15**.

For Northgate: **Ingrid Halvorsen**, lead auditor, and **Tomás Ferreira**, auditor. For CloudNimbus: Karim
Haddad, Rahul Bhargava, Elise Fontaine, Marisol Vega, Nathan Oyelaran and Wes Delacroix, with Tobias Lund
joining for the supplier findings.

**The audit ran 2026-11-30 to 2026-12-04 — five days, two auditors, ten auditor-days.** Audit criteria:
**ISO/IEC 27001:2022 clauses 4 to 10 and the Statement of Applicability.** One hundred and eighteen evidence
requests were answered across the Stage 2 and supplementary phases from the shared evidence store.

**Northgate is accredited by ANAB under ISO/IEC 17021-1 and ISO/IEC 27006-1:2024.** The closing meeting
presents findings and a recommendation. **It is not a certification decision**, which is taken by a
decision-maker at the certification body who did not conduct the audit, and which fell on 2027-01-20.

## 2. Findings presented

**1 major nonconformity · 4 minor nonconformities · 7 opportunities for improvement.**

| ID | Grade | Requirement | Raised |
|---|---|---|---|
| `MAJ-01` | **Major** | Clause **9.2.1**, clause **9.2.2 a)**, **A.5.22** | 2026-12-02 |
| `MIN-01` | Minor | Clause **7.5.3** | 2026-12-03 |
| `MIN-02` | Minor | **A.5.30**, clause **8.1** | 2026-12-03 |
| `MIN-03` | Minor | **A.8.16**, clause **9.1** | 2026-12-04 |
| `MIN-04` | Minor | **A.5.19**, **A.5.22** | 2026-12-04 |
| `OFI-01` to `OFI-07` | Opportunity | Clauses 6.2, 7.2, 7.4, 9.1 and A.5.7, A.5.36, A.8.16 | Across the five days |

The finding statements are retained **as Northgate wrote them** at **EV-811**, not as CloudNimbus
paraphrased them. `MAJ-01`'s statement is reproduced in 08.05 §2 from that record.

**An opportunity for improvement is not a nonconformity and carries no obligation.** Northgate stated so at
the meeting and the minute records it, because the seven were presented in the same session as the five
findings and the grade is the whole of the difference.

## 3. `MAJ-01` — the exchange

Halvorsen presented the finding: the internal audit of 2026-09-14 to 2026-09-25 covered the 93 Annex A
controls in the Statement of Applicability — the 91 determined necessary against their implementation status
and the 2 excluded against their justification; it did not cover clauses 4 to 10; it did not cover
`eu-central-1` operations;
and **CloudNimbus's own control `CNB-C-146` states a programme risk-weighted across clauses 4 to 10 and the
Annex A controls determined necessary.** She stated that the limitation was recorded in Camberwell's report
at §1.3, presented to the management review of 2026-09-30 under input d) 3), and deferred; and that the same
failure engages **A.5.22**, recorded as one nonconformity rather than two.

Karim Haddad was asked whether CloudNimbus wished to comment on the finding or its grade.

> **"No. We accept it."**

**That is the whole of the exchange, and it is DEC-806.** No comment was offered on the grade, no
reservation of position was entered, and no reasoned response was tabled. The twenty-day clock for a
correction and a corrective action plan started on the day.

**No dissent was recorded, because none was expressed.** The minute records that the chair asked whether any
attendee wished to record a differing view and that none did. **ADR-0037** carries why the alternative — a
case for a minor, which was available and had been prepared — was not put.

Halvorsen confirmed the requirements attaching to a major nonconformity: **a correction and a corrective
action plan within twenty days of this meeting, by 2026-12-24**, and **evidence of implementation and
effectiveness before a certification decision can be taken.** A major nonconformity blocks certification
until both are satisfied.

## 4. The four minors, and what CloudNimbus said about each

| ID | What Northgate stated | What CloudNimbus said at the meeting |
|---|---|---|
| `MIN-01` | Two further items of documented information past their review date | That Camberwell had raised the same clause in September as `NC-INT-01`, that three items had been brought current on 2026-10-09, and that **nothing had been done to the mechanism** |
| `MIN-02` | A.5.30's implementation and maintenance limbs are carried by no control in the library | That the gap was CloudNimbus's own `IS-24`, raised in September, **referred rather than closed**, and that the referral had produced no treatment in three months |
| `MIN-03` | The clause 9.1 evaluation-methods gap remained open for four of the sixteen calendar items | That `NC-INT-02` had been recorded **partially closed** and that the four remaining were named in the register |
| `MIN-04` | One Tier 1 vendor held no current assurance artefact at two consecutive quarterly refreshes | That `CNB-C-092` had **detected it at both refreshes** and completed the negative reading form each time, and that nothing escalates on a second consecutive negative |

**Three of the four were confirmed at the meeting as already being in CloudNimbus's own records**, with
their internal identifiers and dates given. Northgate recorded the fact in the audit report; it does not
change a grade, and it was not offered in order to.

**No minor was contested either.** Where a finding was already in the auditee's records, contesting it would
have required arguing against the auditee's own register.

## 5. The recommendation

Halvorsen stated that she would **recommend certification subject to the closure of `MAJ-01`**, and that the
four minor nonconformities would be closed on evidence of implementation verified at the **first
surveillance audit** rather than before a decision.

**The recommendation is the auditor's and the decision is not.** The minute records the distinction because
it is the one an auditee most often collapses: leaving a closing meeting with a recommendation is not
leaving with a certificate, and the seven weeks between 2026-12-04 and 2027-01-20 were the interval in which
the correction had to be delivered and verified.

## 6. Actions arising

| Action | Owner | Date |
|---|---|---|
| Scope the correction — a full clause 4 to 10 and `eu-central-1` audit rather than a documentation review | Karim Haddad | **DEC-807**, 2026-12-11 |
| Rewrite the audit programme document; adopt a three-year coverage matrix | Karim Haddad | **DEC-808**, 2026-12-18 |
| Submit the correction, root cause analysis and corrective action plan to Northgate | Karim Haddad | **2026-12-19** — GOV-31, inside the limit of 2026-12-24 |
| Submit corrective action plans for `MIN-01` to `MIN-04` to Northgate; **Northgate accepted them 2026-12-19** | Rahul Bhargava | 2026-12-19 |
| Brief the Audit &amp; Risk Committee on the major nonconformity and the remediation timetable | Karim Haddad | CAL-03, Q4 occurrence |

## 7. What this meeting did not do

**It did not decide anything about certification.** No certificate, no decision, and no date for one; the
decision fell on 2027-01-20 and the certificate issued on 2027-01-22.

**It did not close any finding.** `MAJ-01` was verified closed on 2027-01-15 after the supplementary audit
of 2027-01-13. The four minors are not closed at this vantage.

**It did not produce a finding about the platform.** Nothing presented at this meeting says a control failed
in production, that data was exposed, or that a customer was affected.

**And it produced nothing about the examination.** The observation window had twenty-seven days left to run,
the service auditor was not present, and no finding presented here is a deviation, an exception or a
conclusion about an opinion. What the collision between the two engagements does is **08.12**'s subject, and
it was not discussed at this meeting.

## Cross-References

| Document | Relationship |
|---|---|
| [08.05 Stage 2 and the Major Nonconformity](../08.05-stage-2-and-the-major-nonconformity.md) | The chapter this record belongs to; `MAJ-01` in full and why major |
| [08.06 The Minor Nonconformities and the Opportunities](../08.06-the-minor-nonconformities-and-the-opportunities.md) | `MIN-01` to `MIN-04` and `OFI-01` to `OFI-07` |
| [08.07 Correction, Corrective Action and the Certificate](../08.07-correction-corrective-action-and-the-certificate.md) | The twenty days, the correction and the certification sequence |
| [08.12 The Scheduling Collision](../08.12-the-scheduling-collision.md) | What this finding became in the other engagement |
| [adr/ADR-0037](../adr/ADR-0037-the-major-is-accepted-not-argued.md) | DEC-806, and the case for a minor that was not put |
| [governance/GOV-31](GOV-31-maj-01-correction-root-cause-and-corrective-action.md) | The submission of 2026-12-19 |
| [logs/finding-log.md](../logs/finding-log.md) | Every finding presented here, with status and classification |
| [logs/decision-log.md](../logs/decision-log.md) | DEC-806, DEC-807 and DEC-808 |
| [logs/evidence-index.md](../logs/evidence-index.md) | EV-811, the finding statements as written |
| [04.07 ISO-Only Controls and ISMS Machinery](../../04-unified-control-framework-and-policy-architecture/04.07-iso-only-controls-and-isms-machinery.md) | `CNB-C-146` as published |
| [04.05 Controls for the Common Criteria CC6 to CC9](../../04-unified-control-framework-and-policy-architecture/04.05-controls-for-the-common-criteria-cc6-to-cc9.md) | `CNB-C-092`, which `MIN-04` concerns |
| [01.03 ISO/IEC 27001:2022 Landscape and Certification Route](../../01-program-foundation-dual-framework-governance/01.03-iso-iec-27001-2022-landscape-and-certification-route.md) | Stage 2, the grades, and who takes a certification decision |
