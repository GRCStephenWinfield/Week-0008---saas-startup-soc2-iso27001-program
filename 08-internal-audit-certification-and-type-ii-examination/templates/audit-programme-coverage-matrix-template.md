# Template — Internal Audit Programme Coverage Matrix

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2027-T32 |
| Version | 1.0 |
| Date | 2027-02-05 |
| Owner | Karim Haddad |
| Approver | Elise Fontaine |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


Completed once a year when the clause 9.2 audit programme is set, and reviewed annually against the ISMS
scope and the Statement of Applicability under **`CNB-C-150`**. **It exists because CloudNimbus did not have
one**, and the absence produced `MAJ-01`.

**Clause 9.2.2 is what this form discharges**, and it is worth quoting the obligation rather than
paraphrasing it: the organisation shall plan, establish, implement and maintain an audit programme including
the **frequency, methods, responsibilities, planning requirements and reporting**, and shall **define the
audit criteria and scope for each audit**. `01.11` §7 recorded in January 2026 that CAL-14 fixed frequency
and prioritisation basis and fixed **nothing about coverage**, that defining coverage had been deferred to
the internal audit charter, and that the deferral was a decision rather than an oversight. The matrix is what
the deferral was deferring.

## 1. The matrix

**One row per auditable object. One column per year of the certification cycle.** A row with no planned
audit inside the cycle is the finding the form exists to produce.

| Auditable object | Type | Risk weight | Year 1 | Year 2 | Year 3 | Last audited | Gap? |
|---|---|---|---|---|---|---|---|
| Clause 4 — Context of the organisation | Clause | | | | | | |
| Clause 5 — Leadership | Clause | | | | | | |
| Clause 6 — Planning | Clause | | | | | | |
| Clause 7 — Support | Clause | | | | | | |
| Clause 8 — Operation | Clause | | | | | | |
| Clause 9 — Performance evaluation | Clause | | | | | | |
| Clause 10 — Improvement | Clause | | | | | | |
| A.5 Organizational — 37 controls | Annex A theme | | | | | | |
| A.6 People — 8 controls | Annex A theme | | | | | | |
| A.7 Physical — 12 determined necessary | Annex A theme | | | | | | |
| A.8 Technological — 34 controls | Annex A theme | | | | | | |
| `us-east-1` operations | Location | | | | | | |
| `us-west-2` operations | Location | | | | | | |
| **`eu-central-1` operations** | Location | | | | | | |
| Denver suite | Location | | | | | | |
| Home-working population — 187 staff across 31 US states and 4 countries | Location | | | | | | |
| CloudNimbus, Inc. — Delaware C-corp | Legal entity | | | | | | |

**Four rules govern how it is filled in.**

**Every clause of 4 to 10 gets its own row.** Not "the management system", not "clauses 4–10". Clause 9.2's
own failure at CloudNimbus was that a programme scoped by reference to the Statement of Applicability had
**no row for any clause at all**, and a single row saying "clauses 4 to 10" would have been marked complete
by the same audit that produced `MAJ-01`.

**Every location and every legal entity inside the ISMS scope gets its own row.** The ISMS scope is the
**whole organisation** — all 187 staff, all locations including home-working, all information assets — and
`eu-central-1` is in it. The 2026 programme's omission of `eu-central-1` was not a decision anybody took; it
was a consequence of scoping by a document that has no location dimension.

**Risk weight is recorded and does not license an empty cell.** CAL-14 says the programme is risk-weighted,
and it is: a high-weight object is audited more often and in more depth. **A low weight changes the
frequency and never changes it to zero inside the cycle**, because clause 9.2.1 asks whether the management
system conforms to the requirements of the document, and an object never audited answers nothing.

**The Gap column is computed, not asserted.** A row with no planned audit in Year 1, Year 2 or Year 3 reads
**Gap**, and a Gap is escalated to the Audit &amp; Risk Committee **before the programme is set** — not
reported afterwards, which is the whole of `CNB-C-150`'s condition.

## 2. Per-audit definition, which the matrix does not replace

Clause 9.2.2 a) requires the audit **criteria and scope** to be defined **for each audit**, and a completed
matrix does not do that. Each audit in the programme carries its own record.

| Field | Guidance |
|---|---|
| Audit reference and dates | |
| **Objects covered** | The matrix rows this audit discharges, by name |
| **Audit criteria** | What conformity is assessed against — the clauses, the Statement of Applicability, documented procedures, contractual requirements. **Not "ISO 27001"**, which is not a criterion, it is a standard with three parts and only one of them is requirements |
| **Scope** | Locations, entities, processes, systems and the period. **The scope statement is written by CloudNimbus and given to the auditor**, not proposed by the auditor and approved by CloudNimbus. `PR-06` recorded in January 2026 that where the client has not defined coverage the supplier will define it |
| **Auditor and independence check** | Named, with the recorded check `CNB-C-146` requires. **Camberwell Risk Partners may not audit what it advised on**, and Solstice Trust Advisors may not perform the clause 9.2 audit of its own work |
| **Exclusions, and the reason for each** | The field that would have caught this. An exclusion with a reason is a decision; an exclusion with no field to record it is a scope nobody examined |
| **Findings** | Entered in the improvement register with the clause or control each is raised against |
| **Reporting** | To whom, when, and where the report is retained. Clause 9.2.2 c) requires results to be reported to relevant management |

## 3. The two failures this form is built against

**The first is the one that happened.** The audit programme document was written at chartering in **January
2026** and defined its scope by reference to the **Statement of Applicability**, because in January the SoA
was the only complete inventory of auditable things the organisation had. **`CNB-C-146` was written in
June**, when the control library was built, and it describes a programme risk-weighted **across clauses 4 to
10 and the Annex A controls determined necessary**.

Both documents were correct. Neither was wrong on its own face. **Nothing read them together**, and nothing
required anybody to. That is `IS-35`, and it is recorded as the **class** of failure rather than the
instance — because the same shape can exist anywhere in a library of 150 rows and **reading the library
tells you nothing is missing.**

**The second is the failure this form could still produce.** A completed matrix with every cell populated is
a plan for a cycle that has not been traversed. At this vantage the rewritten programme has produced exactly
one audit — the correction audit of 2027-01-05 to 2027-01-09 — and `CNB-C-150`, the annual review that would
detect the matrix becoming incomplete, **has never operated and cannot until the 2028 programme is set.**
`PR-50` and `IS-36` carry both halves. **A matrix that is complete on paper for a cycle nobody has walked is
exactly the artefact the January 2026 programme document also was.**

## 4. The supplier half, which is not the auditor's fault

The internal audit is a **supplier service**, and **A.5.22 — monitoring, review and change management of
supplier services** — requires the organisation to regularly monitor, review, evaluate and manage change in
supplier **information security practices and** service delivery. **The three dropped words are what make an
audit supplier's scope an A.5.22 matter at all**: a scope that cannot reach one region and seven clauses is a
deficiency in the supplier's information security practice as CloudNimbus specified it, not in the delivery
of what was ordered. CloudNimbus defined the scope it gave Camberwell Risk Partners and never reviewed
whether that scope was adequate to the requirement it existed to satisfy.

**Camberwell audited what it was asked to audit, and that is what an outsourced auditor does.** It also
stated the limitation on the face of its report at §1.3 and recommended the exclusion be reconsidered before
the certification audit. **Outsourcing the work did not outsource the accountability**, which is why
`MAJ-01` is recorded as one nonconformity against clause 9.2 and A.5.22 rather than as two, and why
**DEC-812** attached an annual adequacy review of the scope CloudNimbus sets to **`CNB-C-092`**, the
quarterly Tier 1 assurance refresh, which is the library's A.5.22 row.

**It is not attached to `CNB-C-090`, and the distinction is the point of the limb.** `CNB-C-090` is a
**pre-engagement gate** — no vendor receives production data or a system integration until a security
assessment proportionate to its tier is complete and the outcome and tier are recorded in the vendor register
— **Preventive, Continuous, A.5.19 and A.5.21**. It contains no periodic review, and Camberwell, which
receives neither production data nor a system integration, would never have passed through it.

**And the finding that falls out of that is better than the misattribution would have been.** Camberwell is a
Tier 1 vendor in the register and `CNB-C-092` read its assurance artefact every quarter of the window.
**Reading a supplier's assurance artefact is not the same as reviewing whether the scope you gave it was
adequate.** The control operated throughout and could not have caught this, which is why the corrective
action **extends** `CNB-C-092` rather than relying on it.

So this form carries one field that belongs to the supplier relationship rather than to the audit:
**the date the scope given to the auditor was last reviewed for adequacy, and by whom.** A scope reviewed
once at chartering and never again is the exposure `PR-06` named in January 2026, **eleven months before it
was raised as a major nonconformity on 2026-12-02**.

## Cross-References

| Document | Relationship |
|---|---|
| [08.07 Correction, Corrective Action and the Certificate](../08.07-correction-corrective-action-and-the-certificate.md) | §3's root cause, DEC-808's three-year matrix and the three-part corrective action |
| [08.05 Stage 2 and the Major Nonconformity](../08.05-stage-2-and-the-major-nonconformity.md) | `MAJ-01` as Northgate stated it, and the A.5.22 limb |
| [08.01 The Clause 9.2 Internal Audit](../08.01-the-clause-9-2-internal-audit.md) | The 2026 programme as it ran, and Camberwell's scope note |
| [adr/ADR-0040](../adr/ADR-0040-cnb-c-150-is-admitted-outside-the-window.md) | `CNB-C-150`, and why it has no population inside the observation window |
| [logs/raid-log.md](../logs/raid-log.md) | `IS-35`, `IS-36`, PR-50 and AS-40 |
| [logs/evidence-index.md](../logs/evidence-index.md) | EV-802, EV-813 and EV-814 |
| [01.11 Assurance Calendar and Obligations](../../01-program-foundation-dual-framework-governance/01.11-assurance-calendar-and-obligations.md) | §7, CAL-14's undefined coverage recorded as a known gap, and `PR-06` |
| [04.07 ISO-Only Controls and ISMS Machinery](../../04-unified-control-framework-and-policy-architecture/04.07-iso-only-controls-and-isms-machinery.md) | `CNB-C-146` as published, and why clause 9.2 has no Annex A control |
| [02.08 ISMS Scope Statement (Clause 4.3)](../../02-system-scope-isms-boundary-and-description/02.08-isms-scope-statement-clause-4-3.md) | The whole-organisation scope every location row is derived from |
| [03.08 Statement of Applicability Methodology](../../03-risk-assessment-treatment-and-statement-of-applicability/03.08-statement-of-applicability-methodology.md) | The 91 necessary controls the Annex A rows carry |
