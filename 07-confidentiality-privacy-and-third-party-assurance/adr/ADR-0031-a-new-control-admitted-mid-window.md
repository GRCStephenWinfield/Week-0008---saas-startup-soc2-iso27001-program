# ADR-0031 — A new control is admitted mid-window, and the cost is recorded rather than the growth celebrated

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-A31 |
| Version | 1.0 |
| Date | 2026-11-27 |
| Owner | Devon Ashby |
| Approver | Karim Haddad |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


| Field | Value |
|---|---|
| Status | Accepted |
| Date | 2026-10-28 |
| Decider | Karim Haddad |
| Phase | 07 — Confidentiality, Privacy &amp; Third-Party Assurance |

## Context

`CNB-C-127` requires each scheduled deletion job to write a completion record stating rows deleted per
store, and alerts the data platform on-call engineer when **a job does not report inside its window**.
Between 2026-08-17 and 2026-10-23 the generated RT-02 job in `eu-central-1` reported inside its window on
every one of sixty-eight consecutive nights, stating **rows deleted: 0**. It had matched nothing because the
migration of 2026-08-17 built a new partitioned relation, copied the rows into it, truncated the original
and swapped the names — and `CNB-C-126`'s generator resolves each rule to a physical relation **by object
identifier, recorded when the job was generated**, an identifier a rename does not invalidate. The job went
on addressing the emptied original and executed correctly against it. 07.03 carries the mechanism and the
figures.

**Nothing in the library could tell the difference between a rule with nothing to delete and a rule that
could no longer see what was due.** That is a design gap rather than an operating failure: every word of
`CNB-C-127` was satisfied on every one of the sixty-eight nights.

The unified control library has stood at **148 controls** since Phase 04 published it on 2026-06-05. Phase 06
made three amendments at source and added no control: **one control statement** (`CNB-C-096`, DEC-609), **one
cadence line in `04.11`, which is prose and not a control statement**, and one Phase 02 commitment (SC-01's
exclusion, DEC-613). It recorded in terms that **no new control identifiers were created**. The observation window opened on 2026-07-01 and closes on 2026-12-31.

The decision before the `CNB-C-133` quarterly privacy review on 2026-10-28 was whether to close the gap now,
inside the window, or to carry it as a referred issue into the next library issue after the period closed —
which is the treatment `IS-24`, `IS-25`, `IS-26` and `IS-27` all received.

## Decision

**`CNB-C-149` is admitted to the control library on 2026-10-28, taking the library to 149 controls. DEC-706.**

> **`CNB-C-149`** — A retention job that reports success having deleted zero rows on a rule whose eligible
> population is non-zero raises an alert to the data platform owner, and the alert is dispositioned before
> the next run. Family `P`. Type **Detective**. Cadence **Daily**. Owner **Devon Ashby**. Policy `POL-07`.
> Criteria **P4.2, P4.3**. Annex A **A.8.10, A.8.16**.

**The policy is `POL-07`, Data Retention and Deletion.** `POL-06` is Data Classification and Handling, and
`CNB-C-118`, `CNB-C-126`, `CNB-C-127` and `CNB-C-128` all cite POL-07. `04.08` makes the
one-policy-per-control rule load-bearing so that *when POL-07 changes, which controls must be re-assessed?*
is a question with a computable answer, and a control filed under the wrong policy is a control the next
policy review does not know it owns.

**Every count in Phase 07 says 149 and says when it changed.** A library figure quoted without its date, in
a phase where the figure moved, is a figure that will be reconciled against Phase 04 and found wrong.

The distinction from the four referred issues is deliberate and is the reason this one was not referred. **A
referral is what happens where the gap is in the mapping; an admission is what happens where the gap is in a
mechanism on a path where a failure has actually occurred.** `IS-24` is two Annex A limbs with no row citing
them. `IS-29` is a criterion whose only control looks at a different collection. Neither describes a
condition that has produced 1,847,206 over-retained records. This one does.

## Consequences

**A control admitted in October cannot evidence October the first.** Its population inside the observation
window is **65 nights, 2026-10-28 to 2026-12-31**, of which **31 have run at this vantage with 0 alerts
raised**. A stated cadence of **Daily** against a window of **184 days** will be sampled as what it is: a
control that did not exist for the first 119 of them. Nothing about the admission repairs the sixty-eight
nights and nothing about it improves the earlier part of the window.

**The eligible-population half is the hard half, and it is a standing engineering cost.** A rule whose
eligible population is genuinely zero on a given night must not alert, or the control is muted within a
month. The control therefore has to compute **what was due** independently of the job that deletes it —
**two implementations of one retention rule**, maintained separately, expected to agree. That is a
maintenance cost and it is a source of a different failure: two implementations that drift produce either a
false alert every night or a silent agreement that both are wrong in the same way. **The library has bought
detection of one failure mode by creating the conditions for another**, and the honest form of this decision
says so on its face rather than in a footnote two issues later.

**It detects total non-deletion and not partial, and that is a limit on the face of the statement rather
than a discovery for somebody else to make.** The condition is *deleted zero on a non-zero eligible
population*. A thirteen-month rolling window over monthly partitions has thirteen partitions; **a predicate
that reaches twelve of them deletes a non-zero number of rows, under-deletes the rest, and `CNB-C-149` says
nothing, because the count is not zero.** The library has bought detection of the failure mode that
occurred, and not detection of its nearer neighbour. Anybody reading "the detection gap is closed" is
reading more than this decision delivers.

**A concentration of ownership is created and is named here rather than left to be assembled.** Devon Ashby
owns `CNB-C-126`, `CNB-C-127`, `CNB-C-128` and now `CNB-C-149`; owns `CA-07-02`; owns **R-38**; and took
**DEC-705**, **DEC-707**, **DEC-708** and **DEC-713**. **A detective control over a failed control, owned
by, alerting, and dispositioned by the person who owns the failed control, is a concentration worth
naming.** Two things are recorded about it. First, the **recipient is different by design**: `CNB-C-149`
alerts the **data platform owner** where `CNB-C-127` alerts the **on-call engineer**, because a job that did
not run is an operational restore and a job that ran and deleted nothing on a rule with a population is a
question about whether the rule is being enforced — and a rota acknowledges pages, it does not own answers.
Second, **no second disposition reviewer is named, and the acceptance is recorded instead**: at 187 people
there is one data platform owner, and a nominated reviewer from outside the data platform would be
evaluating an alert they are not equipped to evaluate. What exists is that every alert and its disposition
is a unit of **EC-17** read at the `CNB-C-133` quarterly privacy review, which Tobias Lund chairs. That is a
quarterly check on a daily control and it is weaker than a second pair of eyes on the night.

**A second control now cites A.8.10 and A.8.16 alongside `CNB-C-127`.** The Statement of Applicability's
implementation status for neither Annex A control changes on the strength of it — both already read
`Implemented` — and this decision does not touch the SoA. What it does is put a second row behind two
citations that previously had one apiece in this part of the family, which is a coverage improvement the
next SoA issue can record rather than a status change this one makes.

**And it is a relevant change to the system during the period.** That belongs under **DC9**, and Phase 09
carries the disclosure. It is **not** DC5, which concerns the aspects of the system the criteria are applied
against, and it is **not** DC4, which is engaged by the incident and not by the control admitted in response
to it. 04.11 made the same point about naming the right criterion, and a change disclosed under the wrong
description criterion is a change the reader looks for in the wrong section.

## Alternatives considered and rejected

**Refer the gap and close it in the next library issue after the period ends** — rejected. This is the
treatment the four Phase 06 issues received and it was right for them, because each described a mapping or
attribution question with no live failure behind it. Here the failure has occurred, the condition that
allowed it is still live on every other rule in the schedule, and referring it would mean running the
remainder of the window with a known, characterised, reproducible blind spot on the control that enforces
eight retention rules across three regions. **A gap you have already been bitten by is not a candidate for a
referral.**

**Amend `CNB-C-127` rather than add a control** — rejected, and this was the closest call. Widening
`CNB-C-127`'s alert condition to cover a zero-row success would have kept the library at 148 and produced one
control instead of two. It was refused for two reasons. `CNB-C-127`'s condition is **the arrival of a
record**; the new condition is **what the record says**; folding a content test into a completeness control
produces a statement with two unrelated triggers and a sampler who cannot tell which limb was tested. And
Phase 06 established that **an amendment is a correction rather than a corrective action** — amending
`CNB-C-127` would have made the sixty-eight nights look like a wording problem, when what is required under
clause 10.2 is a corrective action addressing a cause. `D-07-01` and `CA-07-02` are recorded on that basis.

**Derive the expected count from the deletion job itself** — rejected as self-defeating. It is cheaper, it
removes the two-implementation cost entirely, and it reproduces the original defect exactly. **The predicate
was never the thing that was wrong: it was correct, and it was evaluated against the wrong object.** What
was self-defeating is therefore the **target resolution**, not the predicate — a control that derived its
expectation from the same job would have resolved the same object and been told zero on all sixty-eight
nights, and would have agreed with the job.

**Alert on a divergence between the rows deleted and the rows expected, rather than on zero** — rejected,
and this is the alternative that would have caught partial non-deletion. A threshold on the gap between the
independently computed eligible population and the rows actually deleted covers the twelve-of-thirteen
partition case that the zero condition cannot see. **It was refused on the false-positive cost on light
nights, and the phase should say that this is a real trade rather than a clean win.** RT-02's nightly
eligible population ranges from four thousand to forty-two thousand and the other seven rules go far lower;
on a night when forty rows are due, a single row inserted between the two computations, a clock skew across
the boundary, or a rounding difference in the window arithmetic is a large proportional divergence. A
threshold tight enough to catch a missing partition on a heavy night fires nightly on the light ones and is
muted within a month; a threshold loose enough to survive the light nights would not have caught anything
materially smaller than the October condition. **Zero is the only divergence that means the same thing at
every volume**, and what the decision bought with that certainty is the blind spot recorded in the
Consequences above. The divergence design is not abandoned — it is the natural second issue, once there is a
season of eligible-population data to set a threshold against.

**Back-date the control's effective date to the start of the window** — rejected without discussion, on
ADR-0026's reasoning. A control's occurrence is an event on a date, not a document with a date on it, and the
surrounding evidence — the review minute, the change ticket, the first alert configuration — all say
2026-10-28.

## Related

| Reference | Relationship |
|---|---|
| [07.02 The Retention Schedule and the Deletion Machinery](../07.02-the-retention-schedule-and-the-deletion-machinery.md) | §5, `CNB-C-149` and what the growth costs |
| [07.03 The RT-02 Retention Failure](../07.03-the-rt-02-retention-failure.md) | The sixty-eight nights and the design gap this control answers |
| [governance/GOV-27](../governance/GOV-27-q4-privacy-review-and-the-admission-of-cnb-c-149.md) | The `CNB-C-133` review of 2026-10-28 at which it was admitted |
| [ADR-0033](ADR-0033-deletion-is-not-complete-until-the-residue-expires.md) | The other decision taken out of the same investigation |
| [logs/decision-log.md](../logs/decision-log.md) | DEC-706 |
| [04.02 The Unified Control Library](../../04-unified-control-framework-and-policy-architecture/04.02-the-unified-control-library.md) | The 148-control library and the ID scheme this extends |
| [04.08 Policy Architecture](../../04-unified-control-framework-and-policy-architecture/04.08-policy-architecture.md) | `POL-07` Data Retention and Deletion, and the one-policy-per-control rule |
| [04.06 Controls for Availability, Processing Integrity, Confidentiality and Privacy](../../04-unified-control-framework-and-policy-architecture/04.06-controls-for-availability-processing-integrity-confidentiality-and-privacy.md) | `CNB-C-126` and `CNB-C-127` as published |
| [06.05 The Severity-1 Incident of 2026-09-08](../../06-availability-processing-integrity-and-operations/06.05-the-severity-1-incident-of-2026-09-08.md) | `D-06-02`, the design deficiency corrected by amendment, and why this one was not |
