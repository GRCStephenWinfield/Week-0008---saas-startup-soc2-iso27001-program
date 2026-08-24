# Decision Log — Phase 07

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-L25 |
| Version | 1.0 |
| Date | 2026-11-27 |
| Owner | Rahul Bhargava |
| Approver | Karim Haddad |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


This log records **who took a decision**. Where it names a different person from the RACI in `01.08`, both
are correct: the RACI governs accountability for the conduct of an activity, this log governs the decision.

| ID | Decision | Date | Decider | Recorded at |
|---|---|---|---|---|
| DEC-701 | Notice of the replacement email delivery sub-processor issued at **thirty-four days** against a thirty-day commitment | 2026-10-02 | Tobias Lund | 07.07 |
| DEC-702 | Tier recorded as an **axis** of the vendor register and not as its classification | 2026-10-07 | Tobias Lund | GOV-25 · ADR-0035 |
| DEC-703 | The two unowned AWS complementary user entity controls **assigned rather than deemed covered** | 2026-10-23 | Wes Delacroix | 07.10 |
| DEC-704 | All 41 EU-residency customers notified of the RT-02 over-retention, **with the dissent minuted** | 2026-10-26 | Tobias Lund | GOV-26 · ADR-0032 |
| DEC-705 | The catch-up deletion is **not certified complete** until the backup residue window expires | 2026-10-27 | Devon Ashby | ADR-0033 |
| DEC-706 | **`CNB-C-149` admitted** to the control library mid-window; the library is 149 | 2026-10-28 | Karim Haddad | GOV-27 · ADR-0031 |
| DEC-707 | **R-38 admitted** to the register between quarterly reviews under DEC-306 | 2026-10-23 | Devon Ashby | 07.03 |
| DEC-708 | **R-06 held at 4 × 4 = 16**; its described event did not occur | 2026-10-28 | Devon Ashby | GOV-27 |
| DEC-709 | The objecting customer's platform email **suppressed** rather than the change deferred | 2026-10-30 | Ana-Sofia Cruz | 07.07 |
| DEC-710 | Halcyon's bridge letter **accepted**, with the two uncovered months recorded rather than waived | 2026-11-06 | Rahul Bhargava | 07.11 |
| DEC-711 | The SC-09 miss determined **not to be a significant failure**, and the determination written down | 2026-11-17 | Tobias Lund | 07.06 · ADR-0034 |
| DEC-712 | The published sub-processor list corrected and the **currency check moved to the change itself** | 2026-11-20 | Tobias Lund | 07.07 · GOV-28 |
| DEC-713 | The rewrite of RT-02 as a **monthly partition drop deferred to 2027-01**, rather than change the shape of `CNB-C-127`'s completion record inside the observation window | 2026-10-24 | Devon Ashby | 07.03 |
| DEC-714 | **`CNB-C-120` moved from its DEC-409 month of 2026-12 into November** by its own owner, ahead of the reconciliation | 2026-11-02 | Tobias Lund | GOV-28 |
| DEC-715 | **R-24 re-rated from 2 × 4 = 8 to 3 × 4 = 12** on likelihood; the consequence and the band are unchanged | 2026-10-28 | Tobias Lund | GOV-27 |

**DEC-707 is dated before DEC-706 and the identifiers are still in order**, for the reason Phase 06 gave
about DEC-613. The series is allocated in the order decisions were **recorded in this log**, not in the
order they were taken, and the two register decisions were recorded together as a pair because they are one
argument in two halves: **R-38 admitted, R-06 held.** Splitting them across the sequence to make the dates
ascend would separate a decision from its own counterweight, and renumbering to tidy the dates would edit
the log to look more orderly than the process was.

**Two decisions share a date, and they have nothing to do with each other.** DEC-703 and DEC-707 were both
taken on **2026-10-23**, which is the day the RT-02 over-retention was discovered. DEC-703 assigns two
complementary user entity controls that a vendor review sixteen days earlier had found unowned; DEC-707
admits a risk on evidence produced that morning. A log that grouped them because they share a date would be
inventing a relationship, and the only thing they have in common is that a small programme does several
things in a week. **DEC-713 falls the following day and does belong to the same matter**, which is why it is
worth saying that the other two do not.

**DEC-704 is the only decision in this phase taken over a recorded objection.** Ana-Sofia Cruz's dissent —
that a notification with no action for the customer to take converts a four-day internal correction into a
permanent entry in forty-one procurement files, and will be read by some as an incident of a kind it is not
— is minuted at GOV-26 and is presented there as reasonable, because it is. It was overruled by Tobias Lund
as General Counsel and Data Protection Officer. **A dissent recorded and answered is worth more to a later
reader than unanimity**, and this log's purpose is to make sure the answer and the objection stay attached
to each other.

**DEC-709 was taken by the dissenter, three days later, on the consequences of a different decision.** The
customer whose objection to the sub-processor change could not be resolved had its platform-generated email
suppressed rather than the change deferred, and the Head of Customer Success owns both that call and the
relationship it lands in. **A dissent that disqualifies its author from the next decision is a dissent
nobody will record twice.**

**DEC-711 is dated the day after the request it concerns was delivered.** The data subject request assembly
that took twelve business days was delivered on 2026-11-16 and the significance determination was taken on
2026-11-17. That is deliberate, on ADR-0028's reasoning: a determination about whether a commitment failure
was significant, taken in February from a ticket and a memory, is a reconstruction. **Written at the vantage
and re-confirmed at period end** is the standing treatment, and it applies to a management determination as
much as to a disclosure draft.

**DEC-715 is the only decision in this phase that moved a risk rating upward, and nobody had asked for it.**
R-24 — geolocation retained or used beyond the purpose the individual was told about — was named in Phase 03
as an entry pinned at the eight floor, and the floor rule says an entry at 2 × 4 cannot move **down**.
Nothing in the rule stopped it moving **up**, and the event R-24 describes occurred inside the cycle its
likelihood anchor said it would not. **The band does not change and the register's summary arithmetic does
not move**, which is precisely why the decision needs a record: a movement that leaves the totals alone is a
movement only the entry can show. Risk owner **Tobias Lund** accepts under clause 6.1.3 f) and **Karim
Haddad** accepts alongside, the band being Moderate.

**DEC-714 records a control's owner bringing his own control forward, which is not the same thing as luck.**
`CNB-C-120` was placed in 2026-12 by DEC-409 and was performed on 2026-11-19. Without a decision record the
fourteen-day exposure at `IS-34` reads as an accident of the calendar; with one it reads as what it was — a
judgement by Tobias Lund, taken on 2026-11-02, that a reconciliation of the published sub-processor list
held in late December would test a list nobody could say had been right or wrong for two months. **A
defensible act performed without a record is indistinguishable from a lucky one.**

**DEC-713 declined an improvement, and a log that only records improvements is a marketing document.** The
corrected RT-02 job is still a row-wise delete and the partitioned schema makes it a monthly partition drop
— faster, cheaper, and with no predicate to be wrong. The rewrite was deferred to 2027-01 because a
partition drop changes the shape of `CNB-C-127`'s completion record inside an observation window, and
**changing the shape of an evidence artefact mid-window is a cost the programme declined to pay.**

**DEC-706 grew the library rather than amending it, and the two are different acts.** Phase 06 amended
`CNB-C-096` under DEC-609 because the statement was **silent** about something a neighbouring row was
explicit about, and a statement that is silent can be completed; Phase 04 was re-issued as a consequence.
`CNB-C-127` is not silent. It says what it does — it alerts on a job that does not report — and it does it.
What was missing was a control, not a clause, and **a missing control is admitted rather than legislated
into an existing row.** **Phase 07 amends nothing published in an earlier phase and re-issues nothing.**

## Cross-References

| Document | Relationship |
|---|---|
| [07.13 Phase Summary and Transition](../07.13-phase-summary-and-transition.md) | The fifteen decisions and the five architectural decisions tabulated |
| [07.03 The RT-02 Retention Failure](../07.03-the-rt-02-retention-failure.md) | DEC-704, DEC-705, DEC-707 and DEC-713 |
| [07.07 Disclosure and the Sub-Processor Notice](../07.07-disclosure-and-the-sub-processor-notice.md) | DEC-701, DEC-709 and DEC-712 |
| [07.09 The Vendor Register, Tiering and Assurance](../07.09-the-vendor-register-tiering-and-assurance.md) | DEC-702 |
| [07.10 Reading the Other Side's Complementary Controls](../07.10-reading-the-other-sides-complementary-controls.md) | DEC-703 |
| [07.11 Subservice Organisations and the Uncovered Months](../07.11-subservice-organisations-and-the-uncovered-months.md) | DEC-710 |
| [governance/GOV-25](../governance/GOV-25-cal-08-q4-vendor-and-sub-processor-review.md) | DEC-702, DEC-703 and DEC-710 in their review record |
| [governance/GOV-27](../governance/GOV-27-q4-privacy-review-and-the-admission-of-cnb-c-149.md) | DEC-706, DEC-708 and DEC-715 |
| [governance/GOV-28](../governance/GOV-28-annual-notice-reconciliation.md) | DEC-712 and DEC-714 |
| [03.02 Risk Criteria and Scoring Scale](../../03-risk-assessment-treatment-and-statement-of-applicability/03.02-risk-criteria-and-scoring-scale.md) | The likelihood anchors and the acceptance criteria DEC-715 was taken under |
| [06.13 Phase Summary and Transition](../../06-availability-processing-integrity-and-operations/06.13-phase-summary-and-transition.md) | DEC-609 and the amendment this phase did not have to make |
