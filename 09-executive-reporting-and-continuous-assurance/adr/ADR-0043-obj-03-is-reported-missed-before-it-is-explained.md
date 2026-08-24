# ADR-0043 — OBJ-03 is reported missed before it is explained, and the better measure is published beside it rather than in place of it

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2027-A43 |
| Version | 1.0 |
| Date | 2027-03-11 |
| Owner | Marisol Vega |
| Approver | Elise Fontaine |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


| Field | Value |
|---|---|
| Status | Accepted |
| Date | 2027-03-10 |
| Decider | Marisol Vega |
| Phase | 09 — Executive Reporting &amp; Continuous Assurance |

## Context

**OBJ-03** was set at kickoff in January 2026: *one control library and one evidence store serving both
frameworks*, measured as **the share of evidence artefacts serving both deliverables**, target **≥ 70%**,
owner Rahul Bhargava. It is the objective attached to ADR-0001, which is the decision the entire programme
architecture rests on.

The window produced **356 artefacts of 2,103 requested by both Ashcombe &amp; Doyle LLP and Northgate
Certification Services — 16.9%.** The objective missed its own stated target by a factor of four, on the
measure the objective itself names, computed from the evidence store the objective was written about.

**The measure is also wrong, and that is a separate fact rather than a mitigating one.** Most evidence is
framework-specific and always will be: a clause 9.2 audit plan is not a SOC 2 artefact, a Section IV test
population is not an ISO one, and an integration design producing a high artefact overlap would be a design
that had flattened one framework into the other. The dividend the objective was reaching for sits in the
**113 of 150 controls that serve both frameworks — 75.3%**, which clears the same 70% bar on the measure the
objective should have used.

**That figure had to be re-derived before it could be used, and the re-derivation is itself a small
finding.** `04.03` published the split as **112 dual, 21 SOC 2-only and 15 ISO-only out of 148** and `08.09`
restated it; then `CNB-C-149` was admitted on 2026-10-28 citing **P4.2, P4.3, A.8.10 and A.8.16** — dual —
and `CNB-C-150` on 2027-01-08 citing **neither a trust services criterion nor an Annex A control** —
ISO-only. **Two controls were added mid-programme and nobody re-derived the split**, which is `IS-39`'s
failure mode in a second place: a number that was correct when it was written, describing a population that
moved without it. The split at 150 is **113 · 21 · 16**.

Two further facts belong in the context because they bear on who is entitled to say any of this.

**The better measure was identified in Phase 08, by an adversarial reader of that phase, and not by the
people who wrote the objective.** Fourteen months of Trust Committee meetings tracked OBJ-03 against 70%
without anybody asking whether 70% of artefacts was the thing the objective was about. 08.09 §4 stated the
real number first and the reason it is the wrong number second, and `PR-48` has carried the position since.

**And the overlap figure is partly a property of two independent request lists.** An artefact counts as
shared only if both parties asked for it, and neither party's request list is CloudNimbus's to write.
Several hundred further units in the store would have satisfied both had both requested them. That makes
16.9% a floor rather than a ceiling — and it is not a reason to report a different number, because the
objective as written measures exactly what was measured.

## Decision

**OBJ-03 is scored `Missed` in the close-out scorecard, on its stated measure, and 09.11 reports the miss in
its first paragraph — before the scorecard, before the seven objectives that were met, and before any
explanation. The better measure of 113 of 150 controls at 75.3% is published beside it and not in place of
it. The measure itself is not restated here; it is referred to the annual objective-setting occurrence under
`CNB-C-016`. DEC-911 carries the scoring; DEC-912 carries the referral.**

Three conditions attach to the decision and all three are visible in 09.11.

**The order is fixed and is not a presentational choice.** The chapter that scores the objectives opens with
the sentence *OBJ-03 was missed*, states the two figures, and states that the missed objective is the one
the programme was designed around. Everything else in the chapter comes after it.

**The explanation is presented as a second finding, not as an excuse.** *The measure was wrong* is a failure
of the people who wrote the objective in January 2026, and it is the harder of the two admissions because
the alternative reading — that the integration model did not work — is less flattering to the design and
more flattering to the judgement.

**And the provenance of the better measure is stated.** It was found by somebody reading Phase 08 against
the grain, not by the objective's owner, not by the Trust Committee that tracked it monthly, and not by the
Audit &amp; Risk Committee that received the tracker quarterly.

## Consequences

**The scorecard reads seven met and one missed, and it will keep reading that way.** No later document
re-scores OBJ-03 against the control measure, because the objective as approved in the charter measured
artefacts. A programme that scores itself against a measure it invented after the result is a programme with
no measure at all.

**The re-measurement is somebody else's decision and lands outside this vantage.** `CNB-C-144` requires an
objective whose measure cannot be evaluated from evidence to be given one that can be, or withdrawn, with
the decision minuted. **OBJ-03's measure *can* be evaluated from evidence — that is how 16.9% was produced —
so withdrawal is not the available answer and re-measurement is.** The objectives are re-set annually under
`CNB-C-016`; the window's occurrence was 2026-09-28 and the next falls after 2027-03-11. `PR-48` carries it
into that occurrence with Marisol Vega as owner.

**The board received the miss as a miss.** GOV-36 records the objective scorecard as reported on 2027-03-11,
including OBJ-03 at 16.9% against 70%, the better measure beside it, and the provenance of the better
measure. Nothing was pre-briefed as a re-measurement.

**And the integration argument now rests where it can survive.** 113 of 150 controls is a number about
controls, which is what the programme actually unified, and it is where the design cost, the ownership, the
scheduling and the operating cost were saved. **An integration argument defended on artefact counts is an
integration argument that will lose**, because the artefact count is the one number in the design a sceptic
can compute and it goes the sceptic's way.

## Alternatives considered and rejected

**Restate the measure in the close-out and score OBJ-03 as met.** Rejected, and this is the whole of the
decision. The restated measure is defensible on the merits — it is the better measure and this record says
so twice — and using it to convert a red row into a green one in the document that grades the programme
would be marking its own homework. **A measure changed in the chapter that scores it has not been changed;
it has been chosen.**

**Score OBJ-03 as `Partially met`.** Rejected. There is no partial band in the charter's scorecard and
inventing one for the single objective that failed would be inventing it for a reason. 16.9% against 70% is
not partial performance on any reading.

**Withdraw OBJ-03 and report seven objectives.** Rejected on `CNB-C-144`'s own terms: withdrawal is the
answer for a measure that cannot be evaluated from evidence, and this one was evaluated from evidence. It is
also the alternative that would leave the least trace — an objective that disappears between the charter and
the close-out is an objective nobody can be shown to have missed.

**Report the miss and omit the better measure.** Rejected as the opposite failure. The 16.9% on its own
invites the conclusion that the single-library, single-store design did not deliver, which is not what the
evidence shows and would mislead a reader in the other direction. Both numbers, in that order, with the
reason each is what it is.

**Explain first and report second.** Rejected without much discussion, and it is the version that would have
been written by default. Every explanation available for OBJ-03 is more comfortable than the number, and a
chapter that reaches the number after two paragraphs of context has told the reader how to feel about it
before telling them what it is.

## Related

| Reference | Relationship |
|---|---|
| [09.11 The Programme Against Its Objectives](../09.11-the-programme-against-its-objectives.md) | §1's opening statement of the miss, §2's scorecard and §4's full treatment |
| [09.12 Continuous Assurance and the Board Report](../09.12-continuous-assurance-and-the-board-report.md) | The scorecard as reported to the board on 2027-03-11 |
| [09.13 What This Portfolio Claims and What It Does Not](../09.13-what-this-portfolio-claims-and-what-it-does-not.md) | Seven of eight objectives met, stated flatly |
| [templates/objective-scorecard-template.md](../templates/objective-scorecard-template.md) | The form, including the field that refuses a measure restated at scoring time |
| [logs/decision-log.md](../logs/decision-log.md) | DEC-911 and DEC-912 |
| [logs/raid-log.md](../logs/raid-log.md) | `PR-48`, carried into the 2027 objective set |
| [governance/GOV-36](../governance/GOV-36-board-and-audit-risk-committee-report.md) | The report at which the miss was presented |
| [01.07 Programme Charter and Objectives](../../01-program-foundation-dual-framework-governance/01.07-program-charter-and-objectives.md) | OBJ-03 as set, with its measure, target and owner |
| [08.09 Evidence Production and the Integration Dividend](../../08-internal-audit-certification-and-type-ii-examination/08.09-evidence-production-and-the-integration-dividend.md) | §4, where the real number was stated first and `PR-48` was raised |
| [04.03 Mapping Methodology and Its Limits](../../04-unified-control-framework-and-policy-architecture/04.03-mapping-methodology-and-its-limits.md) | The 112-of-148 split this record re-derives at 150, and what a dual citation asserts |
| [04.12 Evidence Architecture](../../04-unified-control-framework-and-policy-architecture/04.12-evidence-architecture.md) | EC-01 to EC-24 and OBJ-03's 70% as 04.12 §5 restated it |
