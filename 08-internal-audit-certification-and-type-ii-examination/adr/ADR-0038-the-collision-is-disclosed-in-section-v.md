# ADR-0038 — The collision is disclosed in Section V

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2027-A38 |
| Version | 1.0 |
| Date | 2027-02-05 |
| Owner | Marisol Vega |
| Approver | Elise Fontaine |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


| Field | Value |
|---|---|
| Status | Accepted |
| Date | 2027-01-19 |
| Decider | Marisol Vega |
| Phase | 08 — Internal Audit, Certification &amp; the Type II Examination |

## Context

**ISO Stage 2 ran 2026-11-30 to 2026-12-04, inside a Type II observation window that ran 2026-07-01 to
2026-12-31, and `MAJ-01` was raised on 2026-12-02 — twenty-nine days before the window closed.** ADR-0005
accepted that collision knowingly at chartering in January 2026 and named the risk it was accepting: that
the certification body would raise a finding inside the period and that the finding would become evidence in
the examination.

CloudNimbus disclosed the finding to Ashcombe &amp; Doyle on the second day of fieldwork, before it appeared
in any request response. The engagement team evaluated it as **contradictory evidence about the entity's
monitoring activities**, which is the subject matter of **CC4.1** and **CC4.2**, tested the seven
controls management states for those two criteria as a set, and **recorded that the seven had operated.**
That is what the engagement team did: it evaluated contradictory evidence and recorded a result of testing.
**It did not decide where the fact would sit in the report**, and nothing in this record should be read as
saying it did.

**What remained was management's own question: where the fact goes in a report management is responsible for
the description in.** The description of the system, the management assertion and the other information
provided by management are all management's; Sections I and IV are the service auditor's work. A decision
about placement had to be taken by CloudNimbus, and taken before the description was finalised.

**08.12 owns the structural argument in full** and it is not repeated here. This record carries the decision,
the alternatives that were available, and the one requirement the decision adds beyond placement.

## Decision

**The Stage 2 major nonconformity, its correction, its corrective action and the certification outcome are
disclosed in Section V — other information provided by management — and Section V states on its own face
that it is not covered by the service auditor's opinion. DEC-813, taken by Marisol Vega on 2027-01-19.**

The elimination runs in the standard's own structure and reaches Section V by exclusion rather than by
preference. **`MAJ-01` is not part of the description of the system**: it is not a component, a service
commitment, a system requirement, an applicable criterion, a control, a complementary control, or an
identified system incident under DC4 — nothing was disrupted, no commitment was missed and no data was
affected. **It is not a control or a test result**: clause 9.2 has no trust services criterion, `CNB-C-146`
is ISO-only and cites a dash in its `Criteria` column, and `04.07` §3.3 refused in advance to map it. **What
remains is information management believes a user of the report should have**, which is what Section V is.

**And the disclosure carries what happened next**, because a disclosure that stops at the finding is worse
than none: the correction and plan of 2026-12-19 inside Northgate's twenty-day limit, the clause 4 to 10 and
`eu-central-1` audit of 2027-01-05 to 2027-01-09, the supplementary audit of 2027-01-13, closure verified
2027-01-15, the certification decision of 2027-01-20 and the certificate issued 2027-01-22, with
`CNB-C-150` named as an ISO corrective action with no population inside the observation window.

## Consequences

**The added requirement is the one that will do the work: management states the section's standing in the
section itself.** Not in a transmittal letter, not in a footnote, and not by relying on the reader to know
which parts of a report an opinion reaches. A user entity's vendor risk analyst reading five reports in a
week does not reliably know that Section V sits outside the opinion, and **a disclosure whose standing
depends on the reader knowing something will be misread by exactly the readers who most need it.** The
obligation to say what a section is worth belongs to the party writing it.

**The placement is right whichever way the convenience runs, and that had to be established rather than
asserted.** Section V is the section not covered by the opinion, which makes it the section an entity might
prefer for an uncomfortable disclosure — so a placement decision reached by preference and a placement
decision reached by structure look identical from outside. The test applied was to ask where the fact would
go if it were flattering, and the answer is the same: it is still not a component, a control or an incident,
and clause 9.2 still has no criterion. **A structural argument that produces the same answer under both
signs is a structural argument.**

**Having refused a convenient mapping in June, the programme cannot claim it now.** `04.07` §3.3 declined to
cite CC4.1 against `CNB-C-146` on the ground that the citation would assert that the criterion requires an
ISO internal audit programme, which it does not. That refusal was made when it cost nothing. **A control
that is not in Section IV cannot have a deviation reported in Section IV**, and the discipline is only worth
anything if it holds in the month a finding needs somewhere to sit.

**The disclosure is management's and its accuracy is management's exposure.** Nothing in Section V is tested
by the service auditor, which means nothing in it is corrected by the service auditor either. A
Section V account that overstated the remediation, or that described the finding in terms Northgate would
not recognise, would go out with no independent check on it at all — which is why the text is drafted from
Northgate's own finding statement at EV-811 rather than from a CloudNimbus summary of it.

**And this record does not say what the engagement team concluded.** It records that `MAJ-01` was evaluated
as contradictory evidence, that the seven controls were tested and recorded as having operated, and that
the evaluation was performed — **and that the placement in Section V was determined by CloudNimbus under
DEC-813, not required by the engagement team.** **Whether the CC4.1 and CC4.2 evidence,
taken with everything else, supports a conclusion about the criteria is the service auditor's work, it is
not complete on this vantage, and the report is planned for issue on 2027-02-26.**

## Alternatives considered and rejected

**Disclose nothing** — rejected, and it was never seriously available. The Stage 2 dates are in the
assurance calendar, the certificate is dated 2027-01-22, and the finding is in the register of an accredited
certification body. An entity that let the service auditor discover it would have surrendered the only thing
it had to say about it, and the fact is contradictory evidence about the entity's monitoring activities
whether or not the entity mentions it. **A service auditor who read it and set it aside would be setting
aside evidence**, which is why it was volunteered on the second day of fieldwork.

**Section III, as part of the description** — rejected. Putting it there requires treating the ISMS's
internal audit programme as part of the described system, which it is not: the SOC 2 system is the
CloudNimbus Workforce Platform and the ISMS boundary is the whole organisation, **and neither contains the
other** — ADR-0006's position, applied to a finding rather than to a boundary. It would also place a fact
inside the subject matter the opinion reaches, which would attribute to the service auditor a view of an ISO
nonconformity the service auditor did not form.

**Section IV, as a deviation** — rejected for the reason above and for a second one. There is no Section IV
row for it: `CNB-C-146` appears in no criterion's control set, so a deviation against it has no place to be
recorded and no test to be recorded against. **Calling `MAJ-01` a test exception is a single word that
produces a document saying something untrue about which independent party concluded what.**

**Disclose it in a separate management communication rather than in the report** — rejected. A fact material
enough to volunteer to the engagement team on day two is a fact a user of the report should have when
reading the report, and a parallel letter reaches a different set of recipients on a different schedule with
no relationship to the document it is about. **O2's restricted-use distribution runs on the report**, and a
disclosure that travels separately will arrive separately or not at all.

**Disclose the finding without the outcome** — rejected. The correction, the corrective action, the closure
verification and the certificate are the half of the story that makes the first half readable, and a
disclosure that stops at a major nonconformity raised in December, in a report issued in February by an
entity holding a certificate dated January, would be incomplete in the direction that most invites a
question.

## Related

| Reference | Relationship |
|---|---|
| [08.12 The Scheduling Collision](../08.12-the-scheduling-collision.md) | The argument in full: contradictory evidence, CC4.1 and CC4.2, and the two vocabularies |
| [08.05 Stage 2 and the Major Nonconformity](../08.05-stage-2-and-the-major-nonconformity.md) | `MAJ-01` as Northgate stated it |
| [08.07 Correction, Corrective Action and the Certificate](../08.07-correction-corrective-action-and-the-certificate.md) | The sequence Section V carries |
| [08.11 The Nine Test Exceptions](../08.11-the-nine-test-exceptions.md) | What Section IV carries, and why this is not among it |
| [logs/decision-log.md](../logs/decision-log.md) | DEC-813 |
| [logs/evidence-index.md](../logs/evidence-index.md) | EV-811, Northgate's finding statement as written |
| [diagrams/08-two-frameworks-one-week.md](../diagrams/08-two-frameworks-one-week.md) | The four facts routed, and what a wrong word costs |
| [ADR-0005](../../01-program-foundation-dual-framework-governance/adr/ADR-0005-stage-2-inside-the-type-ii-observation-window.md) | The collision accepted knowingly in January 2026 |
| [ADR-0006](../../02-system-scope-isms-boundary-and-description/adr/ADR-0006-two-boundaries-neither-contains-the-other.md) | Why the ISMS's internal audit programme is not part of the described system |
| [04.07 ISO-Only Controls and ISMS Machinery](../../04-unified-control-framework-and-policy-architecture/04.07-iso-only-controls-and-isms-machinery.md) | §3.3's refusal to cite CC4.1 against `CNB-C-146` |
| [01.02 SOC 2 Landscape and Trust Services Criteria](../../01-program-foundation-dual-framework-governance/01.02-soc-2-landscape-and-trust-services-criteria.md) | The five report sections, and restricted use |
| [01.11 Assurance Calendar and Obligations](../../01-program-foundation-dual-framework-governance/01.11-assurance-calendar-and-obligations.md) | O2's distribution, which the disclosure travels on |
