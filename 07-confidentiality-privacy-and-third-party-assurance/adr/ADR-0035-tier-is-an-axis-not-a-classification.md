# ADR-0035 — Tier is an axis, not a classification

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-A35 |
| Version | 1.0 |
| Date | 2026-11-27 |
| Owner | Tobias Lund |
| Approver | Marisol Vega |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


| Field | Value |
|---|---|
| Status | Accepted |
| Date | 2026-10-07 |
| Decider | Tobias Lund |
| Phase | 07 — Confidentiality, Privacy &amp; Third-Party Assurance |

## Context

**ML-3** in the 2025 Type I management letter recorded that the vendor register did not distinguish
subservice organisations from ordinary vendors. 02.10 §4 records the mechanism: the old register carried a
**single classification column**, Halcyon Identity was both a sub-processor and a subservice organisation,
the person completing the column recorded the label that was true and moved on, and **a single field cannot
represent a vendor that is two things at once.** The remediation was structural — independent flags, one
documented test per flag, and an owner competent to apply each test — and Phase 02 published the arithmetic
that follows from it: **84 vendors, 11 sub-processors under a data processing addendum with both subservice
organisations among them, 73 ordinary vendors, 11 + 73 = 84.**

At the **CAL-08** quarterly review of **2026-10-07** the register was operated in that shape for the first
time across a full quarter's assurance work, and the question the remediation had not answered surfaced
immediately. The register also carries a **tier** — Tier 1, Tier 2, Tier 3 — which drives the depth of the
assessment `CNB-C-090` requires and the quarterly assurance refresh `CNB-C-092` performs. **12 · 27 · 45 =
84.** Nobody had settled what the tier is in relation to the two flags, and two readings were in use in
different places: that the tier is a fourth classification alongside sub-processor, subservice organisation
and ordinary vendor, or that it is an independent axis over the same population.

The distinction is not academic, because the two readings produce different registers and only one of them
survives contact with the numbers. **Nine of the eleven sub-processors are Tier 1 and two are Tier 2. Three
Tier 1 vendors are not sub-processors at all** — they receive no personal data and hold a system integration
whose failure carries a Tier 1 consequence. 9 + 2 = 11. 9 + 3 = 12. Under the first reading those three
rows are unclassifiable and those two are contradictions; under the second they are ordinary facts about an
estate.

## Decision

**The tier is recorded as an independent axis of the vendor register and not as its classification.**

Every row in the register carries three independent determinations, each with its own documented test and
its own owner:

| Determination | The test | Recorded by |
|---|---|---|
| Is this vendor a **sub-processor**? | Does it process personal data on CloudNimbus's behalf under a data processing addendum? | `CNB-C-090`, `CNB-C-091` |
| Is this vendor a **subservice organisation**? | Does it perform controls that are necessary, in combination with CloudNimbus's own controls, for an applicable trust services criterion to be met? | 02.10 §2's documented test |
| What is its **tier**? | What is the consequence to CloudNimbus and to its customers if this vendor fails, is breached, or stops? | `CNB-C-090` records the outcome **and the tier** |

**None of the three may be derived from either of the others.** A sub-processor is not Tier 1 by virtue of
being a sub-processor; a Tier 1 vendor is not a sub-processor by virtue of being Tier 1; and neither flag
says anything about whether a criterion depends on what the vendor does.

`CNB-C-090`'s statement already requires the outcome **and** the tier to be recorded, and this decision reads
that conjunction as structural rather than as a detail of the form. **DEC-702** records the decision;
07.09 §2 carries the arithmetic and is the only place it is derived.

## Consequences

**The register answers questions a partition cannot.** "How many Tier 1 vendors receive no personal data?"
has an answer — three — and it is a question worth being able to answer, because those three are the rows
where a privacy-led review would find nothing and a continuity-led review would find everything.

**The tier column becomes the driver of work and the flags become the drivers of instruments.** The tier
determines assessment depth and whether `CNB-C-092`'s quarterly assurance refresh applies; the sub-processor
flag determines whether a data processing addendum is required under `CNB-C-091`, whether the vendor appears
on the published sub-processor list, and whether the thirty-day notice commitment in **SC-08** and **O5**
fires on a change. Those are different consequences attaching to different determinations, and a single
column would have forced one to stand in for the other.

**The cost is that the register is harder to summarise.** A three-way partition fits on a slide and this
does not. Any presentation of the estate now needs two statements rather than one — the population and its
flags, then the tier distribution — and a reader who wants a single number will be given three. That cost is
accepted, and it is the same cost 02.10 accepted when it refused to present 84 as a partition.

**And the failure mode is now visible rather than silent.** The defect ML-3 recorded did not announce
itself: the register looked complete and was wrong about its most important entry. A register with three
independent flags can still be wrong about any one of them, but a wrong flag is a wrong answer to a stated
question with a named owner, which is a thing an internal audit or a service auditor can test. **A single
classification column is wrong in a way nobody can sample for.**

## Alternatives considered and rejected

**Record a single "criticality classification" combining tier and vendor type** — rejected, and this is the
proposal the decision exists to refuse. It is attractive because it produces one column, one sort order and
one number per class, and it is the direct descendant of the field ML-3 was about. It would have had to
place the three Tier 1 vendors that receive no personal data somewhere, and every available answer is wrong:
"Tier 1 sub-processor" is false, "ordinary vendor" loses the consequence that made them Tier 1, and a new
hybrid class multiplies the categories until the classification is a list of the register's rows.

**Derive the tier from the sub-processor flag** — rejected on the numbers. Two sub-processors are Tier 2. A
rule that made every sub-processor Tier 1 would put two vendors into a quarterly assurance refresh they do
not need and would tell the programme nothing it did not already know, while a rule that made every Tier 1
vendor a sub-processor would create three data processing addenda for parties that receive no personal data.

**Drop the tier and assess every vendor to the same depth** — rejected as unaffordable and dishonest. A
4.6-FTE programme cannot perform a Tier 1 assurance reading on 84 vendors quarterly, and a register claiming
it did would be claiming an activity nobody performs. Proportionality is the honest position and the tier is
what makes it recordable.

**Keep the tier informal, outside the register** — rejected. An assessment depth driven by a judgement that
is not written down is a judgement nobody can be asked about, and `CNB-C-090` would then require an outcome
"proportionate to its tier" against a tier the register does not hold.

## Related

| Reference | Relationship |
|---|---|
| [07.09 The Vendor Register, Tiering and Assurance](../07.09-the-vendor-register-tiering-and-assurance.md) | The arithmetic, derived once, at §2 |
| [governance/GOV-25](../governance/GOV-25-cal-08-q4-vendor-and-sub-processor-review.md) | The CAL-08 review of 2026-10-07 at which the decision was taken |
| [logs/decision-log.md](../logs/decision-log.md) | DEC-702 |
| [02.10 Subservice Organisations and the Carve-Out](../../02-system-scope-isms-boundary-and-description/02.10-subservice-organisations-and-carve-out.md) | The 84 / 11 / 73 arithmetic, the two tests, and ML-3's mechanism |
| [04.05 Controls for the Common Criteria CC6 to CC9](../../04-unified-control-framework-and-policy-architecture/04.05-controls-for-the-common-criteria-cc6-to-cc9.md) | `CNB-C-090` to `CNB-C-093` as published |
| [01.04 Prior Type I Baseline and Carried Matters](../../01-program-foundation-dual-framework-governance/01.04-prior-type-i-baseline-and-carried-matters.md) | ML-3 as the management letter recorded it |
| `adr/ADR-0008` (Phase 02) | Halcyon Identity reclassified — the entry a single column could not hold |
