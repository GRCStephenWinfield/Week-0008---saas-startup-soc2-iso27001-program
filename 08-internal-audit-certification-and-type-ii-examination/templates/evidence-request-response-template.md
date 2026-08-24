# Template — Evidence Request Response

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2027-T33 |
| Version | 1.0 |
| Date | 2027-02-05 |
| Owner | Rahul Bhargava |
| Approver | Karim Haddad |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


Completed once for **every** evidence request received from an assurance provider, whoever it is and
whatever the answer. **545 were completed in this phase** — 427 for Ashcombe &amp; Doyle LLP and 118 for
Northgate Certification Services — and **one of them says there is no artefact.** That one is the reason
this form has the shape it has.

| Field | Guidance |
|---|---|
| **Request identifier** | The requesting party's own reference, transcribed rather than re-invented — `AD-nnn` for Ashcombe &amp; Doyle, `NG-nnn` for Northgate. **CloudNimbus does not renumber somebody else's request list**, because the party chasing an item will chase it by their number |
| **Requesting party** | Named. The engagement, the audit stage, and the individual who raised it |
| **Request date, delivery date, interval in days** | Three fields, not one. The interval is derived and is the measure — median **1.4 days** across the 545, with **11 over five days** and one at **twelve** |
| **What was asked for, in the requester's words** | Transcribed. A request re-worded by the responder is a request the responder has already narrowed |
| **Control or criterion named** | The `CNB-C-` identifier, the trust services criterion, or the clause. Where the request names none, the responder records which the answer is drawn from — **and says so in the response**, so the requester can correct it |
| **Period requested** | Dates. "The window" and "the period" are not periods; **2026-07-01 to 2026-12-31** is |
| **Evidence class** | The `EC-nn` from `04.12`. If no class covers the request, the field records that and the request is escalated rather than answered from whatever is to hand |
| **Sampling unit** | The unit as `04.12` defines it for that class, restated on the response. **A response that does not say what one unit is has handed over a pile** |
| **Population stated** | The number of occurrences in the period, and how it was derived. **This is CloudNimbus's statement, and it is a record in its own right** |
| **Selection** | Which units were selected, **and by whom**. See §2 |
| **Artefacts produced** | Count, with the store references |
| **Framework tags** | `SOC 2`, `ISO`, or **both**. See §3 |
| **Response type** | **Artefact · partial · none.** Three values, and the third is not a failure state |
| **Where the answer is "none"** | Four things, all four attached to the response: **why there is no artefact**; the **deficiency or issue record**; the **clause 10.2 corrective action** if one exists; and the **decision record** for anything that was decided rather than discovered. See §1 |
| **Reviewer** | A second named person for any response of type *partial* or *none*, and for any response where the population was derived rather than counted |

## 1. The negative response is a first-class response

**A store that cannot answer "no" is a store that will eventually answer "yes" wrongly.**

The request the form was built for is `AD-118`: the August 2026 restore test record. There is none.
`CNB-C-098`'s August occurrence did not take place, `D-06-01` records it, **ADR-0026** records the decision
not to re-perform it in September and date it August, and `IS-19` records that the occurrence cannot be
recovered. The response went back on the second day carrying all four things and nothing else.

The alternatives are all worse and each fails differently.

**A slow negative reads as a search.** Two weeks of silence followed by "there is no artefact" tells the
requester that the entity did not know, which raises a question about the entity's own monitoring that is
larger than the missing test.

**A partial answer reads as an answer.** The September restore test, offered without comment against a
request for August, is true, responsive-looking, and misleading — and it is caught by anybody who compares a
timestamp against a calendar, at which point the entity is explaining a timestamp rather than a missed
control.

**And an artefact assembled in January describing an activity that did not happen in August is the failure
mode that ends programmes.** It is also the one this form makes hardest, because the response requires a
store reference, a production date and a reviewer.

**Filing the negative as a completed response rather than as an absence is the whole trick.** An absence
leaves a gap in the request register that looks identical to a request nobody answered. A completed response
of type *none*, with a reviewer's name on it, is a record that the question was asked, answered, and
answered fully.

## 2. Population and selection are two records, not one

**The entity produces the population. The assurance provider makes the selection.**

CloudNimbus stated 312 changes, 10,336 alerts, 40 provisioning requests, 6 restore tests, **24 EC-01 access
review units — twelve systems across two quarters — and the 47 revocations arising from them**, 24 Tier 1
assurance readings, 15 emergency changes. Ashcombe &amp; Doyle drew from each. **A control with two limbs
states two populations in the two units its limbs are counted in**, and `CNB-C-040` is the case: the
certification limb in EC-01 units, the revocation limb in revocations. Where the population was
at or below sixty it was tested in full; above that a sample was drawn.

**An entity that produces a sample has produced its own evidence about its own controls**, and the two
records exist separately so that nobody can later be unsure which happened. The population record carries
its derivation — the query, the register, the count and the date it was taken — because a population
asserted without a derivation is a number the entity would have to reproduce from memory if it were
challenged.

**Where the population was derived rather than counted, a second reviewer signs.** "312 changes" is a count
from the pipeline. "184 nights × 8 rules × 3 regions" is a derivation, and a derivation with an arithmetic
error in it will be found by the person computing a deviation rate against it.

## 3. The framework tag, and the number it produced

Every artefact carries `SOC 2`, `ISO` or **both**, and the tag is set when the artefact enters the store
rather than when it is requested. That is what makes the overlap countable at all.

**It counted 356 of 2,103 — 16.9% — against `OBJ-03`'s target of 70%.**

Two things follow that a responder should understand before treating the tag as a performance measure.
**An artefact counts as shared only if both parties asked for it**, and neither request list is CloudNimbus's
to write, so the measure describes two independent selections at least as much as it describes the store.
And **most evidence is framework-specific and always will be**: a clause 9.2 audit plan is not a SOC 2
artefact and a Section IV test population is not an ISO one. 08.09 §4 states the real number and then states
why it is the wrong number to look at. **The dividend was never in the artefacts; it is in the 112 controls
that serve both frameworks.**

## 4. Two rules about what a response may not do

**A response may not answer a different question from the one asked.** Where the request is unclear, the
responder records the reading taken and states it in the response, so that the requester can correct it in a
day rather than discover it in three weeks. Where the request asks for something the entity does not hold,
the answer is *none* with the reason, not the nearest thing.

**A response may not carry an argument.** The place for the entity's view of what an artefact shows is the
narrative, the deficiency record or the decision log — all of which can be referenced from the response and
none of which belongs inside it. A completed response that explains why a deviation is not serious has
converted a piece of evidence into a submission, and the requester will read it as one.

## 5. Where a request crosses a region boundary

The evidence store is **region-partitioned** and deliberately does not aggregate across `eu-central-1`,
because obligation **O8** requires personal data of the 41 EU-residency customers to stay at rest there and
`CNB-C-065` implements the partition for the security log archive.

**The longest response in this phase — twelve days — was the `eu-central-1` log residency evidence**, and
the interval is the architecture working rather than failing. A store that could have produced that artefact
in a day would have been a store that had already moved the data it exists to prove was not moved.

**So the form carries the reason on the response rather than leaving a twelve-day interval to be read as
slowness.** Any response over five days states which of three things caused it: a region boundary, a
requirement for a named individual rather than a stored artefact, or a request for something no evidence
class covers. The eleven long responses in this phase were four, five and two of those, in that order.

## Cross-References

| Document | Relationship |
|---|---|
| [08.09 Evidence Production and the Integration Dividend](../08.09-evidence-production-and-the-integration-dividend.md) | The 545 requests, the 2,103 artefacts, `AD-118` and the 16.9% |
| [08.10 The Type II Fieldwork](../08.10-the-type-ii-fieldwork.md) | The populations, the selections and the sampling rule |
| [logs/evidence-index.md](../logs/evidence-index.md) | EV-821, EV-822, EV-823 and EV-824 |
| [04.12 Evidence Architecture](../../04-unified-control-framework-and-policy-architecture/04.12-evidence-architecture.md) | EC-01 to EC-24, the sampling unit each defines, and ADR-0018 |
| [04.11 Control Ownership and Operating Cadence](../../04-unified-control-framework-and-policy-architecture/04.11-control-ownership-and-operating-cadence.md) | The population each cadence produces in a 184-day window |
| [06.13 Phase Summary and Transition](../../06-availability-processing-integrity-and-operations/06.13-phase-summary-and-transition.md) | ADR-0026, the reasoning attached to `AD-118`'s response |
| [01.04 Prior Type I Baseline and Carried Matters](../../01-program-foundation-dual-framework-governance/01.04-prior-type-i-baseline-and-carried-matters.md) | ML-1, the finding this whole apparatus answers |
| [01.07 Program Charter and Objectives](../../01-program-foundation-dual-framework-governance/01.07-program-charter-and-objectives.md) | `OBJ-03` and its 70% measure |
