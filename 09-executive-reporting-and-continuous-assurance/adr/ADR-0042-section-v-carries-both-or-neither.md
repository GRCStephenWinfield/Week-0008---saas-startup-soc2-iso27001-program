# ADR-0042 — Section V carries the certificate and the major nonconformity together, or neither

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2027-A42 |
| Version | 1.0 |
| Date | 2027-03-11 |
| Owner | Marisol Vega |
| Approver | Elise Fontaine |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


| Field | Value |
|---|---|
| Status | Accepted |
| Date | 2027-02-09 |
| Decider | Marisol Vega |
| Phase | 09 — Executive Reporting &amp; Continuous Assurance |

## Context

**ADR-0038 and DEC-813 settled in January where the Stage 2 major nonconformity goes: Section V — other
information provided by management, which is not covered by the service auditor's opinion — reached by
structural elimination rather than by preference.** `MAJ-01` is not a component, a commitment, a criterion,
a control or an incident of the described system, so it is not Section III; clause 9.2 has no trust services
criterion and `CNB-C-146` is ISO-only, so there is no Section IV row for it.

**That decision answered where one fact goes. It did not answer what else goes with it.**

Section V is the only section of the report whose contents management chooses. Nothing in the attestation
standards obliges an entity to include anything there, and nothing tests what is included. By early February
three candidates were on the table for the section: the major nonconformity and its closure, the **ISO/IEC
27001:2022 certificate** issued 2027-01-22, and the **Statement of Applicability reissue of 2026-10-30 and
the ISMS scope statement reissue of 2026-10-28**, which `09.03` §5 had already refused to file under DC9
because neither is a change to the described system.

**The question was whether the certificate could travel without the finding.** It was a live question,
because the two facts were arriving in the same section with opposite commercial signs, and because a
certificate dated 2027-01-22 is the single most useful sentence in the report for a sales conversation.

## Decision

**Section V carries the certificate and the major nonconformity together, or neither. Including one without
the other is selective disclosure, and Section V is the one section where selectivity is the only thing a
reader can measure. The section states on its own face that it is not covered by the service auditor's
opinion. DEC-903, taken by Marisol Vega on 2027-02-09.**

**The rule binds in both directions and that is what makes it a rule.** A Section V carrying the certificate
alone would leave unanswered the question a reader who noticed the dates would ask — what happened between a
Stage 2 audit inside the observation window and a certificate seven weeks later. A Section V carrying the
finding alone would leave a reader with an unresolved major nonconformity against an entity that had in fact
closed it in forty-four days — 2026-12-02 to 2027-01-15.

**The test applied was whether the placement produces the same answer when the fact is flattering and when
it is not.** It does. Both are information a user of the report should have; neither is part of the
described system; neither is covered by the opinion. **A structural argument that produces the same answer
under both signs is a structural argument** — the same test ADR-0038 applied to placement, applied here to
contents.

**And the rule is written to bind the next report.** In 2028, **if the certificate has been maintained
through surveillance**, it will be a fact of a different kind and the nonconformity will be two years old,
and the temptation to carry the first without the second will be larger rather than smaller. The first
surveillance audit is scheduled for 2027-11 and this record assumes nothing about what it finds.

## Consequences

**The disclosure is stated flatly and the certificate gets no adjective.** It is described by issuer,
accreditation, standard, scope, date and validity: issued by **Northgate Certification Services, Ltd.**,
accredited by **ANAB** under ISO/IEC 17021-1 and ISO/IEC 27006-1:2024, valid to 2030-01-21. **ISO does not
certify anyone**, and the section does not say it does. It is not *achieved*, not *awarded*, and not held up
against the fourteen months behind it.

**The nonconformity is stated as Northgate stated it**, from the finding statement retained at **EV-811**
rather than from a CloudNimbus summary of it, with the correction, the corrective action, the closure
verification of 2027-01-15 and the certification decision of 2027-01-20. **The fact that four of the five
Stage 2 findings were already in CloudNimbus's own records is not offered in the section.** It is true, it
is in `08.12`, and it does not belong in a disclosure whose purpose is to tell a reader what an independent
body found.

**Section V is not a marketing surface, and the restraint has a cost.** Two further candidates were refused.
The **penetration test results** — sixteen findings in May and nine in October, all remediated — because a
report of testing performed by a party CloudNimbus engaged, disclosed in a section nobody examines, reads as
evidence and is not evidence. And a **summary of the 2027 position**, because the 2027 window had produced
no population, no rate and no outcome when the description was finalised. **Neither refusal is about
confidentiality. Both are about what an unexamined section can honestly carry.**

**And the accuracy of everything in it is management's exposure.** Nothing in Section V is tested by the
service auditor, which means nothing in it is corrected by the service auditor either. **A Section V that
overstated the remediation, or described the finding in terms Northgate would not recognise, would go out
with no independent check on it at all.**

## Alternatives considered and rejected

**Carry the certificate alone** — rejected, and it was the option with the clearest commercial case. It
would have been true, brief and entirely unobjectionable on its face. It was refused because the section's
premise is that management chose the contents: **a reader cannot audit a choice, and the only thing they can
measure is what a selective chooser would have left out.** An entity that puts a certificate in an
unexamined section and omits the finding that nearly stopped it has told the reader something about its
disclosure practice that is more damaging than the finding.

**Carry the finding alone** — rejected. Defensible as conservatism and wrong on the same principle. The
correction, the corrective action, the closure and the certificate are the half of the story that makes the
first half readable, and a disclosure stopping at a major nonconformity raised in December, in a report
issued in February by an entity holding a certificate dated January, would be incomplete in the direction
that most invites a question.

**Carry neither, and leave Section V empty** — rejected, but taken seriously. An empty Section V is
permissible and creates no obligation. It was refused because the collision was **known to the engagement
team from the second day of fieldwork**, was evaluated as contradictory evidence about the entity's
monitoring activities, and is discoverable by any reader with the assurance calendar and a certificate date.
**An entity that volunteers a fact to its auditor and then withholds it from the users of the auditor's
report has made a distinction it cannot defend.**

**Put the certificate in a covering note and the finding in Section V** — rejected as the same selectivity
with an extra envelope. **O2's distribution runs on the report**, a parallel communication reaches a
different set of recipients on a different schedule, and a fact split across two documents is a fact the
reader assembles or does not.

**Let the four minor nonconformities go unmentioned** — rejected. Their corrective action plans were
accepted on 2026-12-19 and **their implementation is verified at the first surveillance audit, scheduled for
2027-11.** A section listing the major as closed and saying nothing about the minors would let a reader
assume the same of both. **Using a closure as a claim is the failure mode this whole record is built to
avoid.**

## Related

| Reference | Relationship |
|---|---|
| [09.07 Section V and What the Opinion Does Not Cover](../09.07-section-v-and-what-the-opinion-does-not-cover.md) | The chapter this decision produces, and the three disclosures in full |
| [09.03 DC9 — Relevant Changes During the Period](../09.03-dc9-relevant-changes-during-the-period.md) | §5, the two ISO reissues kept out of DC9 and sent here |
| [09.04 The Report and the Opinion](../09.04-the-report-and-the-opinion.md) | The five sections, and where the opinion stops |
| [logs/decision-log.md](../logs/decision-log.md) | DEC-903 |
| [logs/evidence-index.md](../logs/evidence-index.md) | EV-908, Section V as published |
| [ADR-0038](../../08-internal-audit-certification-and-type-ii-examination/adr/ADR-0038-the-collision-is-disclosed-in-section-v.md) | DEC-813, the placement, and the not-covered statement on the section's face |
| [08.05 Stage 2 and the Major Nonconformity](../../08-internal-audit-certification-and-type-ii-examination/08.05-stage-2-and-the-major-nonconformity.md) | `MAJ-01` as Northgate stated it |
| [08.07 Correction, Corrective Action and the Certificate](../../08-internal-audit-certification-and-type-ii-examination/08.07-correction-corrective-action-and-the-certificate.md) | The correction sequence and the certification decision |
| [08.12 The Scheduling Collision](../../08-internal-audit-certification-and-type-ii-examination/08.12-the-scheduling-collision.md) | Contradictory evidence, and the four of five already in the records |
| [ADR-0001](../../01-program-foundation-dual-framework-governance/adr/ADR-0001-dual-framework-integrated-operating-model.md) | One evidence programme, two deliverables, and no combined report |
