# Deviation Log — Phase 07

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-L27 |
| Version | 1.0 |
| Date | 2026-11-27 |
| Owner | Rahul Bhargava |
| Approver | Karim Haddad |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


**Two vocabularies are in use here and they are not interchangeable.** A **deviation** — used
interchangeably with **exception** — is the SOC 2 term for a control that did not operate as described,
presented for disclosure in Section IV of the report with the service auditor's evaluation alongside it. A
**nonconformity** is the ISO/IEC 27001 term for a requirement of the management system that was not
fulfilled, handled under **clause 10.2** with a correction, a root cause and a corrective action. The same
underlying fact can be both, and **all three below are**. Swapping the words hides which framework is being
spoken about, and each has its own consequences.

This is the second such log in the portfolio. Phase 06's carried five deviations of which four were
nonconformities; **Phase 07's carries three, of which three are.**

**A fourth was drafted and is not here.** The stale published sub-processor list was drafted
against `CNB-C-120` — a control that operated on its scheduled date and **found** the divergence —
while 07.10 §4 states that a finding with no failing control behind it is a referred issue and not a
deviation. It is **`IS-34`**, referred, with **`CA-07-04`** attached, and the last section of
this log carries it alongside `CA-07-01` and `CA-07-06`.

## The three deviations

The table is printed in full at **07.12 §5**, which is the chapter that owns the period's record. What this
log adds is the column 07.12 does not carry — the criteria and Annex A controls each control cites — and the
clause 10.2 test applied to each entry, with the working shown rather than a bare yes or no.

| ID | Control | What happened | Population | Criteria the control serves |
|---|---|---|---|---|
| `D-07-01` | `CNB-C-126`, `CNB-C-127` | The migration of **2026-08-17** could not partition the geolocation capture table in `eu-central-1` in place. It created a new partitioned relation, copied thirteen months of rows into it, **truncated the original**, and swapped the names. `CNB-C-126` generates the job set from the retention schedule and the generator resolves each rule to a physical relation **by object identifier, recorded when the job was generated** — and an object identifier survives a rename. **After the swap the RT-02 job still addressed the original relation, which the migration had emptied and retained.** It executed correctly against an empty table for 68 consecutive nights and reported what it found: rows deleted, zero. 1,847,206 geolocation capture points were retained past RT-02's thirteen-month rule. **The job was not wrong. It was pointed at the wrong object, and nothing in the library compares a job's target to the rule's** | **68 of 68 nights on 1 of 8 rules in 1 of 3 regions** | **P4.2 and P4.3**, and **A.5.33, A.8.10, A.8.16** — the criteria and Annex A controls the two rows cite between them |
| `D-07-02` | `CNB-C-092` | One Tier 1 vendor held no current assurance artefact at **two consecutive quarterly refreshes** — 2026-07-30 and 2026-10-07. Its service auditor's report lapsed on 2026-06-30 and it holds no certificate; the same vendor was absent at both, and the Q3 review recorded the absence against a replacement targeted for 2026-11-05 | **2 of 24** — two refreshes, twelve readings each | **CC9.2**, and **A.5.19, A.5.22** |
| `D-07-03` | `CNB-C-129` | One data subject request assistance was assembled in twelve business days against the control's ten. Received Thursday 2026-10-29, due 2026-11-12, delivered Monday 2026-11-16 | **1 of 31** | **P5.1, P5.2, P6.7**, and **A.5.34** |

## The clause 10.2 test, applied to each

**The test is one question: is this a non-fulfilment of a requirement of the information security management
system?** Clause 10.2 opens "when a nonconformity occurs", and a nonconformity is a requirement not
fulfilled. A documented control that the ISMS requires to operate and that did not operate is a requirement
not fulfilled. A control whose **design** was inadequate is something else, and the difference decides
whether what follows is a **correction** or a **corrective action**.

| ID | Non-fulfilment of an ISMS requirement? | The working | Clause 10.2 response |
|---|---|---|---|
| `D-07-01` | **Yes** | **`CNB-C-126` names the very rule that was not enforced.** Its statement requires scheduled deletion jobs to run nightly against each store to enforce RT-01 to RT-08, **"including deletion of geolocation at 13 months irrespective of contract term"**. Geolocation was not deleted at thirteen months in `eu-central-1` for sixty-eight nights. That is a documented requirement of the ISMS not fulfilled, and it does not depend on the separate question of whether `CNB-C-127`'s alert condition was well designed | **Corrective action `CA-07-02`**, owner Devon Ashby, the two controls' owner. **Corrections already made:** the job re-generated against the live relation and deployed 2026-10-24; the catch-up deletion run 2026-10-25 removing all 1,847,206; the completion record verified 2026-10-27 under `CNB-C-127`'s catch-up path. The catch-up is **not certified complete** until the backup residue window expires on 2026-11-29 — DEC-705, ADR-0033 |
| `D-07-02` | **Yes** | `CNB-C-092` requires the **current** assurance artefact for every Tier 1 vendor to be held, read and concluded on each quarter. For one of the twelve there was no current artefact to hold, from 2026-06-30 until the vendor left the estate on 2026-11-05, and **both quarterly refreshes inside the window fell in that interval**. The requirement is to hold a current artefact and it was not fulfilled twice; a vendor's failure to produce one does not transfer the requirement to the vendor | **Corrective action `CA-07-03`**, owner Tobias Lund. It addresses the cadence rather than the instance: an artefact's expiry date is knowable on the day it is first read, and a refresh that discovers a lapse up to three months later is doing at a quarterly cadence what its own data could do on the day. **The second occurrence is the one that makes it a corrective action rather than a correction** — the Q3 review found the lapse, recorded a remediation date, and the Q4 review found the same lapse still open |
| `D-07-03` | **Yes** | `CNB-C-129` requires the individual's record set to be assembled inside **10 business days**, and **SC-09** and **O6** carry the same period as a commitment to the customer. One assembly took twelve. A stated period exceeded is the plainest form of the non-fulfilment clause 10.2 names, and the structural cause — the record set spanned two employers and the assembly is tenant-scoped by design — is an explanation and not a defence | **Corrective action `CA-07-05`**, owner Tobias Lund. It asks for a cross-tenant assembly path that does not depend on either tenant seeing the other's data, and 07.06 records that this is harder than it sounds and may not have a good answer |

**All three are nonconformities, and the contrast with Phase 06's `D-06-02` is the point of running the test
rather than assuming the answer.** `CNB-C-096` satisfied every word of its own statement through a
seventy-one-minute write outage, which is why amending the statement was a **correction** and no corrective
action followed. **`CNB-C-126` does not have that defence.** Its statement names deletion of geolocation at
thirteen months, and geolocation was not deleted at thirteen months.

That distinction is worth holding on to because `D-07-01` also contains a genuine design deficiency, and the
two coexist rather than one absorbing the other. **`CNB-C-127`'s alert condition could not detect the
failure mode that occurred** — it alerts on a job that does not report, and this job reported. That
deficiency is real, it is what the DC4 disclosure at 07.03 §8 discloses under the criterion's **first** limb
— **the disclosure engages both**, the second on the failure to achieve **SR-08**, retention enforced by
scheduled deletion jobs — and it is what `CNB-C-149` was admitted on 2026-10-28 to answer. **A design
deficiency alongside an
operating failure does not convert the operating failure into a design question.** Recording `D-07-01` as
"not a nonconformity, corrected by admitting a new control" would have been the Phase 06 answer applied to a
case that does not fit it, and it would have removed the one fact that is not in dispute: the rule was not
enforced.

**None of the three has been raised by a certification body.** No certification body has audited the
management system at this vantage; all three were identified internally, which is what clause 10.2 is for
and is a different thing from an audit finding.

## And one service commitment failure, which is not a control deviation

| Commitment | What happened | Period |
|---|---|---|
| **SC-09** — assistance with a data subject request within 10 business days, sourced from **O6** | **Not met once in thirty-one.** Received Thursday 2026-10-29, due 2026-11-12, delivered Monday 2026-11-16 — twelve business days. The individual had changed employer and both employers use CloudNimbus; `CNB-C-129`'s assembly is tenant-scoped because the scoping predicate `CNB-C-115` applies is the control that keeps one employer's data away from another. **Management determined that this was not a significant failure in the achievement of SC-09 for the purposes of DC4** — one instance in thirty-one, the employer's own response window unaffected, and the individual's record set delivered complete. **The determination is management's, it is written down rather than left implicit, and the service auditor may reach a different view.** ADR-0034, DEC-711 | 2026-10-29 to 2026-11-16 |

**A commitment failure and a control deviation are different findings and are listed apart deliberately.** A
deviation is a control that did not operate as described, evaluated against the applicable trust services
criteria by the service auditor. A commitment failure is a promise to a customer that was not kept,
evaluated against the contract by the customer. Phase 06 listed **SC-01** the same way for the same reason.

**`D-07-03` and the SC-09 miss arise from the same request and are two findings, not one.** They are
placed in different places — the deviation **will be presented for disclosure in Section IV**, the
commitment in the description — and they
are evaluated by different people against different things. Merging them would lose whichever reader was
looking for the other. What is presented in Section IV, and how, is the service auditor's business rather
than CloudNimbus's, and this log does not speak for that decision.

## Three corrective actions with no deviation behind them

**Six clause 10.2 corrective actions are open in this phase and three of them have no deviation above
them** — `CA-07-01`, `CA-07-04` and `CA-07-06`. That is a higher proportion than the phase set out to
record, and it is the arithmetic that falls out of applying 07.10 §4's doctrine to every finding rather than
to the convenient ones.

| Corrective action | The issue behind it | Why there is no deviation | Owner |
|---|---|---|---|
| **`CA-07-01`** | **`IS-30`** — the two AWS complementary user entity controls with no owner at CloudNimbus: a scheduled review of pending customer-managed key deletions, and a review of service health notifications for the services in use. Recorded at 07.10 §3, assigned 2026-10-23 under **DEC-703** | No control in the library required anybody to own the other side's complementary controls. Recording one against `CNB-C-092` would attach a failure to a control that did exactly what its statement says — it read the artefact for what it does and does not cover, and this is what the reading found | Wes Delacroix |
| **`CA-07-04`** | **`IS-34`** — no control required the published sub-processor list to be updated **at the change**. The list named the outgoing provider for fourteen days after 2026-11-05; corrected 2026-11-20. **DEC-712** moves the currency check into the sub-processor change record | `CNB-C-120`'s reconciliation was performed on its date and is the control that **found** the divergence. `CNB-C-131` was considered and refused — its addendum, register review and thirty-day notice commitments were all met. **The ISMS requirement engaged is O5's current published list**, and no control carried it to the event that makes the list stale | Tobias Lund |
| **`CA-07-06`** | **`IS-31`**, in part — no control compares a Tier 1 vendor's assurance artefact **period** against CloudNimbus's own observation window. Halcyon Identity's report period ended 2026-06-30, the day before the window opened, and that was knowable when `02.10` was written in March | `CNB-C-092` requires a reading of what the artefact does and does not cover and that reading was performed. It does not require the period arithmetic, and the arithmetic is what nobody did for eight months | Rahul Bhargava |

**Clause 10.2 is engaged in all three, and the reason is the unusual half of each entry.** Clause 10.2 asks
what caused the nonconformity and what stops it recurring. **The cause in each case is the absence of a
requirement**, not the breach of one, and the action is therefore to create the requirement — an owner, a
cadence, and in `CA-07-01`'s case a connection between the "not applicable to the services in use"
disposition and `CNB-C-093`'s review of a service new to CloudNimbus. **A corrective action whose subject is
a gap in the management system rather than a lapse against it is still a corrective action**, and filing any
of the three as a deviation to make the paperwork symmetrical would have made the record wrong in order to
make it tidy.

**The reverse error is the one this phase came closest to making.** `IS-34` was drafted as a
deviation because the subject matter looked like a failure and a fourth row made the log look more rigorous.
It would have attached a failure to a control that operated on time and found the problem, in a phase whose
own doctrine forbids exactly that. **A log that can mark a control as having failed at something it
never promised cannot be trusted in the other direction either**, and the controls with no deviations
against them would then have been shown only to have escaped attention.

## What this log does not do

**It offers no view on the service auditor's opinion**, and none of the four findings above — three
deviations, one commitment failure — should be read as one. Deviations **will be presented for disclosure**
and evaluated; the
auditor modifies an opinion only where the deviations mean a criterion was not met. That evaluation has not
been performed and will not be performed inside this phase. **Eight deviations across the window to date is
a count, not a conclusion.** This is ADR-0015's rule — no forecast until it has been proved reachable —
applied to an opinion instead of a register.

**It states populations and not rates over the window.** `2 of 24` and `1 of 31` are the
populations as they stand at 2026-11-27; `CNB-C-092` has one refresh left inside the window and `CNB-C-129`
will have more requests. **`68 of 68` is a rate of one hundred per cent on one rule in one region and is not
a rate across eight rules or three regions** — RT-01 and RT-03 to RT-08 ran correctly throughout, in all
three regions, and a reader who takes 68 of 68 as a statement about the deletion machinery as a whole has
taken it further than it goes.

**And it does not close anything.** `CA-07-01` to `CA-07-06` are all open at this vantage, and so are Phase
06's `CA-06-01` to `CA-06-04`. The RT-02 correction itself is **not certified complete**: the backup residue
window under `CNB-C-128` expires on **2026-11-29**, two days after this log is issued.

## Cross-References

| Document | Relationship |
|---|---|
| [07.12 Quarter Four to Date — Operating Record](../07.12-quarter-four-to-date-operating-record.md) | The three deviations and the commitment failure printed in full in the period's record |
| [07.03 The RT-02 Retention Failure](../07.03-the-rt-02-retention-failure.md) | `D-07-01`, the object-identifier mechanism, the DC4 disclosure on both limbs, R-38 and DEC-713 |
| [07.02 The Retention Schedule and the Deletion Machinery](../07.02-the-retention-schedule-and-the-deletion-machinery.md) | `CNB-C-126` to `CNB-C-128`, and `CNB-C-149` |
| [07.06 Access, Correction and Data Subject Requests](../07.06-access-correction-and-data-subject-requests.md) | `D-07-03`, the SC-09 miss and ADR-0034 |
| [07.09 The Vendor Register, Tiering and Assurance](../07.09-the-vendor-register-tiering-and-assurance.md) | `D-07-02`, the two Tier 1 refreshes and the 2 of 24 |
| [07.07 Disclosure and the Sub-Processor Notice](../07.07-disclosure-and-the-sub-processor-notice.md) | `IS-34`, and why it is recorded against no control at all |
| [07.10 Reading the Other Side's Complementary Controls](../07.10-reading-the-other-sides-complementary-controls.md) | §4's doctrine, `CA-07-01` and `IS-30` |
| [07.11 Subservice Organisations and the Uncovered Months](../07.11-subservice-organisations-and-the-uncovered-months.md) | `CA-07-06` and the period-against-window arithmetic |
| [logs/raid-log.md](raid-log.md) | `IS-29` to `IS-34`, and Phase 06's entries carried forward |
| [06.12 Quarter Three Operating Record](../../06-availability-processing-integrity-and-operations/06.12-quarter-three-operating-record.md) | `D-06-01` to `D-06-05`, the closed populations this log does not renumber |
| [04.06 Controls for Availability, Processing Integrity, Confidentiality and Privacy](../../04-unified-control-framework-and-policy-architecture/04.06-controls-for-availability-processing-integrity-confidentiality-and-privacy.md) | `CNB-C-120`, `CNB-C-126`, `CNB-C-127` and `CNB-C-129` as published |
| [04.05 Controls for the Common Criteria CC6 to CC9](../../04-unified-control-framework-and-policy-architecture/04.05-controls-for-the-common-criteria-cc6-to-cc9.md) | `CNB-C-092` as published |
