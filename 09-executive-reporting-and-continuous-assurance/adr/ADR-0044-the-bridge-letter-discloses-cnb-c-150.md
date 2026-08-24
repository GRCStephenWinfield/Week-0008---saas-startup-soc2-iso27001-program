# ADR-0044 — The bridge letter discloses `CNB-C-150`, and the form is written so that the omission would have been harder than the disclosure

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2027-A44 |
| Version | 1.0 |
| Date | 2027-03-11 |
| Owner | Marisol Vega |
| Approver | Tobias Lund |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


| Field | Value |
|---|---|
| Status | Accepted |
| Date | 2027-03-02 |
| Decider | Marisol Vega |
| Phase | 09 — Executive Reporting &amp; Continuous Assurance |

## Context

**O3** commits CloudNimbus to providing a bridge letter, on request, covering the gap between the report
period end and the requesting customer's own fiscal year end. **Eleven requests had been received by
2027-03-11 and nine letters were issued** — four covering 2027-01-01 to 2027-01-31 and five covering
2027-01-01 to 2027-02-28 — **and two remain open because their gap periods have not ended.**

A bridge letter is **management-issued and unaudited**. Ashcombe &amp; Doyle LLP does not sign it, does not
review it and is not named in it. Its substance is a statement, as at the date of signature, that management
is not aware of changes to the system or to the controls described in the report, or of incidents, in the
gap period, that would affect the description or the conclusions the report reaches. Its entire value is the
credibility of the management that signs it.

**`CNB-C-150` was admitted to the control library on 2027-01-08.** That date falls inside every one of the
nine gap periods. The control is the annual review of the three-year audit programme coverage matrix against
the ISMS scope and the Statement of Applicability, with any uncovered clause or location escalated to the
Audit &amp; Risk Committee; it is the third limb of `MAJ-01`'s corrective action, it was admitted eight days
after the observation window closed, it has no population inside that window, and ADR-0040 records that it
is deliberately not part of the Type II examination.

**So the first bridge letter this programme ever issued had something to disclose**, and a letter stating
that management was not aware of changes to the controls described in the report would have been false on
its face.

## Decision

**All nine letters disclose the admission of `CNB-C-150`, in three parts: that it is a control added rather
than removed or weakened; that it arises from the corrective action for the Stage 2 major nonconformity that
Section V of the report discloses; and that it has no bearing on the period the report covers, because it
did not exist in that period and has no population inside it. The bridge letter template asks the changes
question in a form that cannot be answered by leaving a field blank. DEC-905.**

The third part is load-bearing and is the reason this record exists rather than a decision-log line. A
disclosure that stopped at *a control was added since the period* would leave the recipient to draw the
inference that the control environment has improved since the period the report covers — which is an
improvement in the ISMS's audit programme, is not a change to any control the report tested, and cannot have
improved anything the opinion reaches. **A disclosure used as a claim is worse than a disclosure omitted**,
because it is harder to see and harder to correct.

The form change is the transferable half. `templates/bridge-letter-template.md` requires a **positive
statement** in the changes field — either what changed, or that nothing did, with the population searched
named in either case. **A blank field in a letter of representation is indistinguishable from a question
nobody asked**, and the first letter this programme issued is the evidence that the question is not
rhetorical.

## Consequences

**Nine customers hold a letter that discloses a change on the first occasion the instrument was used.** That
is unusual and it is the outcome the form was built to produce. It is not a claim about the character of the
management that signed it; it is a claim about a template that made the omission harder than the disclosure,
which is the only kind of claim another organisation can copy.

**The certificate is not in the letters, and the omission follows from the same rule.** The ISO/IEC
27001:2022 certificate was issued 2027-01-22, also inside every gap period, and it is the best fact about
CloudNimbus in those eight weeks. A bridge letter answers a question about changes to the system and the
controls the **report** describes; a certificate is a certification body's decision about a management
system with a different boundary and is neither. **A letter that answered the question it was asked and then
added a fact it was not asked for would be a marketing document with a signature block.** Customers who want
the certificate can have it, and seven of the nine already had.

**The two customers with 31 March fiscal year ends have open requests and no letters.** Management can state
what it is aware of to the date it signs and not one day further, and a letter dated in February covering a
gap ending 2027-03-31 would represent a state of knowledge nobody had. Their requests stay open on the
obligation register against their own year ends.

**And the covering note carries a correction the programme will keep making.** Three of the nine requests
asked for the letter to be signed off by the auditor. The instrument does not admit of that, and a bridge
letter with a practitioner's signature on it would be a different engagement with its own report. 01.11 §4
said in January 2026 that O3 is the obligation most often misunderstood by the parties who ask for it, and
nothing in fourteen months has changed that.

## Alternatives considered and rejected

**Issue the letters stating no changes.** Rejected, and it is the alternative that would have been easiest
to write and hardest to defend. `CNB-C-150`'s admission is in the GRC platform change history with a date on
it, the control appears in the corrective action plan Northgate accepted, and Section V of the report the
letter refers to describes the nonconformity the control answers. **A false representation whose evidence is
in the document it accompanies is not a risk that was taken; it is a document that had already failed.**

**Disclose the admission and describe it as strengthening the control environment since the period.**
Rejected on the reasoning in the decision. It is true that the ISMS is better for having the control, it is
irrelevant to the report, and stating it in an unaudited letter would convert a representation into an
assertion nobody tested.

**Disclose in the five letters covering to 2027-02-28 and not in the four covering to 2027-01-31.**
Considered briefly and rejected as arithmetic rather than judgement: 2027-01-08 falls inside both gap
periods, and the distinction does not exist.

**Add the certificate to the letters.** Rejected under the restraint 09.07 §4 applies to Section V and
DEC-903 records. A section or a letter whose premise is that management chose what to put in it is one where
selectivity is the only thing a reader can measure.

**Handle the disclosure in a covering email rather than in the letter.** Rejected on DEC-813's rule applied
to a different instrument: **the obligation to say what a document is worth, and what it discloses, belongs
to the party writing it.** `09.07` §1 owns the reasoning underneath that.

## Related

| Reference | Relationship |
|---|---|
| [09.09 The Bridge Letter](../09.09-the-bridge-letter.md) | The nine letters, what each says, and what was considered and not done |
| [09.08 Restricted Use and the Distribution](../09.08-restricted-use-and-the-distribution.md) | The 155 deliveries the eleven requests arrived alongside |
| [09.07 Section V and What the Opinion Does Not Cover](../09.07-section-v-and-what-the-opinion-does-not-cover.md) | The certificate and the major nonconformity, and DEC-903's restraint |
| [templates/bridge-letter-template.md](../templates/bridge-letter-template.md) | The form, and the field that cannot be left blank |
| [logs/decision-log.md](../logs/decision-log.md) | DEC-905 and DEC-909 |
| [logs/obligation-register.md](../logs/obligation-register.md) | O3, nine issued and two open |
| [01.11 Assurance Calendar and Obligations](../../01-program-foundation-dual-framework-governance/01.11-assurance-calendar-and-obligations.md) | O3 as registered, and §4's note on how it is misunderstood |
| [08.07 Correction, Corrective Action and the Certificate](../../08-internal-audit-certification-and-type-ii-examination/08.07-correction-corrective-action-and-the-certificate.md) | `CNB-C-150` as the corrective action's third limb |
| [ADR-0040](../../08-internal-audit-certification-and-type-ii-examination/adr/ADR-0040-cnb-c-150-is-admitted-outside-the-window.md) | Why the control has no population inside the observation window |
| [ADR-0038](../../08-internal-audit-certification-and-type-ii-examination/adr/ADR-0038-the-collision-is-disclosed-in-section-v.md) | DEC-813's rule about stating a document's standing on its own face |
