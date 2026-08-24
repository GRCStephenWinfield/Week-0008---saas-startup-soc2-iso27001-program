# Template — Restore Test Record

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-T22 |
| Version | 1.0 |
| Date | 2026-09-30 |
| Owner | Wes Delacroix |
| Approver | Devon Ashby |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


Completed once per calendar month for `CNB-C-098` under **CAL-09**. It is the record a sampler selects as
one unit of **EC-08**, so every field below is a field somebody will ask for.

| Field | Guidance |
|---|---|
| Month of occurrence | **The month the test was performed in, not the month of the snapshot.** These can differ and the difference is the whole reason this field is first |
| Date and time performed | |
| Performer | A named person |
| **Snapshot identifier** | The specific snapshot restored. A failover exercise has no snapshot identifier, which is one reason it cannot fill this form |
| Snapshot timestamp | |
| **Target account** | The isolated AWS account the restore landed in. Must not be a production account |
| Volume restored | |
| Row counts — source | Per table, or per table group where the schema makes that the sensible unit |
| Row counts — restored | |
| Row count result | Match or mismatch, per comparison |
| Table checksums — source | |
| Table checksums — restored | |
| Checksum result | Match or mismatch, per comparison |
| **Source read pinned to the snapshot's point in time** | Yes or no. A comparison against a live source can produce a false mismatch when a partition or a row arrives mid-comparison |
| Disposition of any mismatch | What it was traced to, and **whether the correction was to the data or to the comparison method**. Say which |
| **Exception cleared, and how** | A mismatch that has been explained is not a mismatch that has been cleared. Record the date the comparison was re-run under the corrected method and whether it matched. September 2026 is the worked example: mismatch on 2026-09-23, re-run and matched on **2026-09-25** |
| Comparison output filed | The control requires the comparison output to be filed as the test record. Link it |
| Teardown | Confirmation that the restored copy was destroyed and the isolated account left empty |

## What this control is, and what it is not

**CAL-09 is a durability and integrity test.** It asks whether the copy CloudNimbus holds is a faithful and
complete copy of what was there, and whether it can be turned back into a database. Its output is a
comparison and its failure mode is a number that does not match.

**CAL-10 is an availability test.** It fails the platform to a standing replica and measures how long that
takes and how much data is lost. Its output is a clock.

> **A replica that has faithfully replicated corruption passes CAL-10 and fails CAL-09.**

**One cannot stand in for the other**, and in August 2026 it was assumed that it could. That is `D-06-01`,
clause 10.2 corrective action `CA-06-01`, and the reason this form now demands a snapshot identifier and a
target account in bold: they are the two fields a regional failover cannot supply, and a form that cannot be
completed by the wrong activity is a stronger control than a calendar note saying the two are different.

**A test performed in a later month is not the earlier month's occurrence.** If a month is missed, record it
as missed. Do not perform the test against that month's snapshot afterwards and file it under the earlier
month — ADR-0026.

## Cross-References

| Document | Relationship |
|---|---|
| [06.03 Backup, Restore and Data Durability](../06.03-backup-restore-and-data-durability.md) | The three occurrences, the September mismatch and the missing August |
| [ADR-0026](../adr/ADR-0026-the-missed-restore-test-is-not-back-dated.md) | The decision not to back-date |
| [06.04 Disaster Recovery and the August Exercise](../06.04-disaster-recovery-and-the-august-exercise.md) | The exercise that was mistaken for this occurrence |
