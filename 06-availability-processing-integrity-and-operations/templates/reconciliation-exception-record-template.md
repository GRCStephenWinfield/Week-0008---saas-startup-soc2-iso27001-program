# Template — Reconciliation Exception Record

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-T24 |
| Version | 1.0 |
| Date | 2026-09-30 |
| Owner | Grete Lindqvist |
| Approver | Nathan Oyelaran |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


The record every exception raised by `CNB-C-107` produces and `CNB-C-108` closes. Twenty-six were produced
in Q3 2026.

| Field | Guidance |
|---|---|
| Exception identifier | The reconciliation record it arose from, and the nightly cycle that wrote it |
| Tenant and pay period | Which employer, which period. An exception with no period cannot be matched to an export |
| **Raised** | Date **and time**, with the timezone stated. Not the date alone — see the note below |
| Rule version | The version pinned to the run under `CNB-C-109`. A version mismatch is itself a category of exception |
| Variance | The measured difference between input hours and rule version on one side and output amounts on the other, in the unit the reconciliation uses |
| Tolerance | The threshold in force for that tenant and period, stated alongside the variance rather than referenced |
| **Disposition** | **Inside tolerance** — raised as a queue item — or **outside tolerance**, in which case the export is blocked. These are different outcomes for the customer and must not share a field |
| Export impact | Whether an export was held, for how long, and when it was released. Blank is a value here and means no export was held |
| Cleared | Who cleared it, when, and what they changed or confirmed |
| **Elapsed** | **Both** the wall-clock interval and the count of **business days**, computed and stored rather than inferred |
| Service level outcome | Inside or outside the two-business-day clearance in `CNB-C-108`, stated as a fact and not as a judgement |
| Root cause | What produced the variance. "Investigated" is not a root cause |
| Linked change, incident or feed | Where the exception traces to a deployment, an incident record or a suspended employer feed under `CNB-C-106` |

## On the elapsed field, and why it carries two clocks

**One of the twenty-six exceptions in Q3 was cleared outside its service level, and the record is the only
reason anybody can say why.** It was raised at **23:41 on Thursday 2026-08-27** and cleared on **Wednesday
2026-09-02** — four business days against a two-business-day service level, recorded as **`D-06-03`**.

The wall-clock interval was six days and the business-day count was four, and neither number alone tells
you what happened. What tells you is the raise **time** against the queue's cadence: the calculation quality
review is held weekly on Tuesdays, business day one fell on Friday the 28th, business day two on Monday the
31st, and the review at which the queue is worked fell on Tuesday the 1st — **already business day three
before anybody looked at the item.** An exception raised late on a Thursday cannot be cleared within two
business days by a queue worked weekly on a Tuesday.

That is why the template requires the raise timestamp rather than the raise date, and both clocks rather
than one. **A record carrying only "raised 2026-08-27, cleared 2026-09-02, late" supports the conclusion
that somebody was slow**, which was not what happened and would have sent the corrective action to the
wrong place. Clause 10.2 corrective action **CA-06-02** asks which of the service level and the cadence is
wrong, and it could only be framed that way because the record held the arithmetic.

## On the disposition field

**A held export is the control working and must not be recorded as a failure.** Four of the twenty-six
exceptions were outside tolerance and blocked their export under `CNB-C-107`; all four were cleared and
exported the same day, with delivery delayed by between forty minutes and six hours. **SC-07 carries no
timing commitment** — it commits to output that is complete, accurate and reproducible against the
configured rules — so a delayed export is not a breach of anything, and a record that files it as one
creates pressure in exactly one direction: widen the tolerance.

A tolerance wide enough never to block an export has stopped being a control while continuing to produce a
nightly artefact that looks like evidence. Keeping the disposition field separate from the service-level
field is what stops the two being read together as a single count of "problems".

## On the root cause field

"Investigated and resolved" closes a ticket and teaches nobody anything. The Q3 population shows why the
field is mandatory: the late exception's root cause was a **rule-version pin mismatch after a customer
changed an overtime rule mid-period**, which is a recurring class rather than a one-off, and it is
identifiable as a class only because more than one record names the mechanism rather than the outcome.

## Cross-References

| Document | Relationship |
|---|---|
| [06.09 Output Accuracy, Reconciliation and the Export](../06.09-output-accuracy-reconciliation-and-the-export.md) | The 26 exceptions, the late one and CA-06-02 |
| [06.07 The Calculation Engine and Processing Integrity](../06.07-the-calculation-engine-and-processing-integrity.md) | `CNB-C-107` and `CNB-C-109`, and the 92 nightly records |
| [logs/deviation-log.md](../logs/deviation-log.md) | `D-06-03` |
| [04.06 Controls for Availability, Processing Integrity, Confidentiality and Privacy](../../04-unified-control-framework-and-policy-architecture/04.06-controls-for-availability-processing-integrity-confidentiality-and-privacy.md) | `CNB-C-107` and `CNB-C-108` as published |
| [04.12 Evidence Architecture](../../04-unified-control-framework-and-policy-architecture/04.12-evidence-architecture.md) | The evidence class this record satisfies |
