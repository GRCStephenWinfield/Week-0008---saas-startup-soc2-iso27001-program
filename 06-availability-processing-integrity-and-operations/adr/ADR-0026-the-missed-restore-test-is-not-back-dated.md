# ADR-0026 — The missed August restore test is recorded as a deficiency and is not back-dated

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-A26 |
| Version | 1.0 |
| Date | 2026-09-30 |
| Owner | Rahul Bhargava |
| Approver | Karim Haddad |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


| Field | Value |
|---|---|
| Status | Accepted |
| Date | 2026-09-14 |
| Decider | Karim Haddad |
| Phase | 06 — Availability, Processing Integrity &amp; Operations |

## Context

`CNB-C-098` requires a monthly restore test under **CAL-09**: a production snapshot restored into an
isolated AWS account, with row counts and table checksums compared against the source. July was performed on
2026-07-16 and September on 2026-09-23. **August was not performed** — the team treated the CAL-10 disaster
recovery exercise of 2026-08-19 as satisfying it.

It does not. **CAL-09 is a durability and integrity test and CAL-10 is an availability test**, and a replica
that has faithfully replicated corruption passes CAL-10 and fails CAL-09. The calendar placed both in the
same month and nobody owned the question of whether one discharged the other.

The 35-day retention of RT-07 meant **a snapshot taken in the last third of August** was still available in
late September — a 2026-08-01 snapshot had expired on 2026-09-05, so only the last third of the month
survived that far. Re-performing the test against one of those, and filing the result as the August record,
was technically possible.

## Decision

**The test is not re-performed and back-dated.** The August occurrence is recorded as a control deficiency,
`D-06-01`, and carries clause **10.2** corrective action **CA-06-01** against the calendar-design root
cause. Phase 06 reports `CNB-C-098` as **2 of 3 occurrences to date** and states **no window deviation
rate**, because three of the six occurrences have not happened.

## Consequences

The observation window's population for `CNB-C-098` is six and one occurrence is missing, and that is what
the record shows. **The honest number is the one the service auditor will compute** at the end of the
period, from the population that actually exists, and this programme does not compute it early to get ahead
of it.

The deficiency is visible in the deviation log, in 06.03, in 06.12 and in the Q3 operating review, which is
the cost of the decision and also the point of it.

**The same treatment governs `D-06-05`.** `CNB-C-136`'s re-scheduled 2026-08 occurrence — the annual
re-derivation of ICT continuity requirements from the business impact analysis — was also not performed, and
it is recorded, not back-dated, and carries clause 10.2 corrective action **`CA-06-04`**. This ADR settles
the doctrine once: **a missed occurrence of a periodic control is recorded as a missed occurrence, whatever
the control and whatever could technically be produced after the fact.** The quarter's deviation set is
`D-06-01` to `D-06-05`.

## Alternatives considered and rejected

**Restore the August snapshot in late September and file it as the August test** — rejected. A monthly
control's occurrence is an event in a month, not a document with a month's name on it. The ticket, the
calendar entry and the isolated account's own trail would all say September, and a party who asked for the
surrounding evidence would find the date on the record contradicted by every artefact underneath it. That
converts a recorded deficiency into a misrepresentation, to avoid one missing occurrence in a control with
five more to run.

**Treat the CAL-10 exercise as discharging CAL-09 and record no deficiency** — rejected, because it is the
error, not a defence of it.

**Amend `CNB-C-098` so that a disaster recovery exercise may satisfy a monthly restore test** — rejected. It
would remove the integrity comparison from the control set for any month in which an exercise runs, which is
the one property CAL-10 cannot supply.

## Related

| Reference | Relationship |
|---|---|
| [06.03 Backup, Restore and Data Durability](../06.03-backup-restore-and-data-durability.md) | The CAL-09 / CAL-10 distinction in full |
| [06.04 Disaster Recovery and the August Exercise](../06.04-disaster-recovery-and-the-august-exercise.md) | The exercise that was mistaken for the occurrence |
| [06.12 Quarter Three Operating Record](../06.12-quarter-three-operating-record.md) | `D-06-01` and its stated population |
| [logs/decision-log.md](../logs/decision-log.md) | DEC-608 |
| [templates/restore-test-record-template](../templates/restore-test-record-template.md) | The fields a failover exercise cannot fill |
