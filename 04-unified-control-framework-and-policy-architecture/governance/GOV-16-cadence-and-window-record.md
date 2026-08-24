# GOV-16 — Operating Cadence and the Observation Window

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-G16 |
| Version | 1.0 |
| Date | 2026-08-11 |
| Owner | Karim Haddad |
| Approver | Marisol Vega |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


## 1. Matter

The consequence of control cadence for the Type II observation window, and the decision to re-schedule five
annual controls.

## 2. The problem, stated arithmetically

The window is six months. A control's cadence determines the population a sampler has to work with:

| Cadence | Controls | Population in the window |
|---|---|---|
| Continuous | 58 | Sampled from system records |
| Daily | 9 | About 184 |
| Weekly | 6 | About 26 |
| Monthly | 21 | 6 |
| Quarterly | 27 | **2** |
| Semi-annual | 5 | **1** |
| Annual | 22 | **1, or none** |

**Quarterly and semi-annual are where a single late occurrence becomes a deviation rate of 50% or 100%.**
Twenty-seven quarterly controls and five semi-annual controls carry that exposure, and it is the arithmetic
reason the treatment plan pushed 31 of its 34 items before 2026-07-01.

## 3. The five

Of the **22** annual controls, **twelve** fall naturally inside the window and **ten** do not.

Five were built between April and June 2026 and inherited a build date as their first operation, giving
them an anniversary in the first half of 2027. **The other five were missed when the analysis was first
performed**, and the committee asked for that to be minuted rather than smoothed over. Their anniversaries
come from the programme's own assurance calendar — penetration testing under CAL-11 in May, awareness
training under CAL-12 and policy review under CAL-13 in June, and the objectives set at kickoff in January
— and every one of those dates falls outside the window. **The five were missed precisely because they look
like established institutional rhythms**, and an established rhythm anchored to the wrong month is
indistinguishable from a safe one until somebody checks the calendar against the period.

**One of them is `CNB-C-031`, the sole control serving CC5.3.** Without re-scheduling it would have had no
occurrence in the window at all. The committee recorded that the concentration disclosed at GOV-13 §4 was
therefore worse than disclosed: not a criterion supported by a single annual control, but a criterion with
nothing testable behind it.

**All ten are re-scheduled to operate inside the window** (**DEC-409**, **ADR-0019**).

## 4. Why this is recorded rather than simply done

**Re-performing an annual control inside an observation window so that it has a population is a legitimate
thing to do and a dishonest thing to hide.**

It is legitimate because the control genuinely operates, genuinely produces evidence, and is genuinely
tested — the entity has not manufactured anything. It becomes dishonest the moment the re-scheduling is not
disclosed, because a reader seeing an operation dated inside the period infers a natural annual cadence
that lands there, and that inference is wrong.

The committee's decision was therefore not whether to re-schedule but whether to say so. It records that
the five are named, the reason is stated, and the service auditor will in any case see the re-scheduling in
the dates — an entity that leaves it to be discovered has chosen the worst of both outcomes.

## Cross-References

| Document | Relationship |
|---|---|
| [04.11 Control Ownership and Operating Cadence](../04.11-control-ownership-and-operating-cadence.md) | The argument |
| [diagrams/04-cadence-and-the-observation-window.md](../diagrams/04-cadence-and-the-observation-window.md) | The arithmetic |
| [ADR-0019](../adr/ADR-0019-annual-controls-rescheduled-and-disclosed.md) | Decision record |
