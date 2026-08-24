# Template — Retention Rule Change Record

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-T25 |
| Version | 1.0 |
| Date | 2026-11-27 |
| Owner | Devon Ashby |
| Approver | Tobias Lund |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


Introduced by clause 10.2 corrective action **`CA-07-02`** and applied from **2026-11-01**. It is completed
in **two** circumstances, and the second is the one that exists because of `D-07-01`:

1. **A retention rule in RT-01 to RT-08 changes** — its period, its scope, the categories it governs, or the
   stores it runs against.
2. **A schema change is made to any store that sits under a retention rule** — a table is partitioned,
   renamed, split, moved between schemas, replaced by a view, or **rebuilt as a new relation that takes the
   old name while the old relation survives under a new one**; a column the predicate reads is altered; or
   a store is added to or removed from the set a rule addresses.

**Nobody would have completed this form on 2026-08-17.** The migration that partitioned the geolocation
capture table in `eu-central-1` was a schema change, correctly reviewed and correctly deployed. It built a
new partitioned relation, copied the rows, truncated the original and swapped the names — and nothing
required anybody to ask what that did to the eight deletion jobs generated from the retention schedule. The
form exists to make that question unavoidable, and the fields in bold are the ones the August migration would
have failed.

| Field | Guidance |
|---|---|
| Record identifier and date | |
| Trigger | **Rule change** or **schema change beneath a rule**. Say which — the two have different verification steps |
| Change ticket | The `CHG-` reference the change was deployed under. A retention-affecting change with no ticket is not a change, it is an incident |
| Rules affected | Every rule in RT-01 to RT-08 the change touches. A rule is touched if its predicate reads any object the change alters, whether or not the rule's wording moves |
| Categories affected | The PD-01 to PD-12 categories governed by those rules |
| Regions affected | **`us-east-1`, `us-west-2`, `eu-central-1` — name each separately.** A migration applied region by region is a different change in each region on a different date, and the RT-02 failure existed in one region for two months while the other two were correct |
| Stores affected | Per region, per rule |
| **Predicate before** | The delete predicate as generated before the change, in full |
| **Predicate after** | The predicate as generated after it, in full. **If these are identical and the schema moved, say so explicitly and explain why the predicate still reaches the rows** |
| **Object the job resolves to, after the change** | The table, partition set or view the statement actually reaches, named as the database names it. **Does any generated job resolve this rule to a physical object by an identifier that a rename or a swap would not invalidate? Name the object and the resolution method** |
| **Old objects left in place** | Any relation the change empties, truncates, renames or supersedes but does not drop, with the name it now carries. An emptied object that survives under a new name is the object a stale resolution keeps addressing |
| **Eligible population computed independently** | The count of rows due for deletion under the rule on the night after the change, computed **without using the deletion job's own predicate**. This is the same computation `CNB-C-149` performs and it is the only field on this form that can detect a predicate which has stopped seeing its rows |
| **Rows deleted on the first run after the change** | Compare against the field above. **A zero on both is a legitimate light night; a non-zero eligible population and a zero deletion is the condition `D-07-01` describes** |
| First three nights verified | Dates and row counts. One night is a coincidence, three is a pattern |
| Notice implication | Whether the change alters anything the in-product privacy notice states. If yes, the reconciliation under `CNB-C-120` is brought forward rather than waiting for its annual occurrence |
| Certificate implication | Whether the change alters what a deletion certificate under `CNB-C-118` states, including the residue window |
| Backup residue | Whether any deletion arising from the change carries a residue window under `CNB-C-128`, and the date it expires |
| Data platform owner sign-off | Named person and date |
| Data Protection Officer sign-off | Required where the change alters a period, a category, or anything the notice states |

## Why the eligible-population field is on this form and not only in a control

`CNB-C-149` computes the eligible population every night and alerts where it is non-zero and the deletion is
zero. That is a detective control operating continuously, and it is the right primary answer.

**This form asks the same question once, at the moment of change, from a person rather than a job.** The two
are deliberately redundant, and the redundancy is the point. `CNB-C-149` depends on a second implementation
of every retention rule agreeing with the first, which ADR-0031 records as a maintenance cost and a source of
a different failure; a change record that requires a human to state the expected count and compare it against
the first run is the thing that catches the night the second implementation itself goes wrong.

**It is also the field that would have made the August migration visible.** The eligible population on
**2026-08-17**, the first affected night, was **not zero** — RT-02's nightly delete volume ran from **4,118
to 41,902**, those being the capture volumes of the days thirteen months earlier — and the deletion was.
One line, on one form, on one day.

## What this form does not do

**It does not approve the change.** Approval runs through the ordinary change path under `CNB-C-081` and
`CNB-C-079`, and this record attaches to that ticket rather than replacing any part of it.

**It does not amend a retention rule.** RT-01 to RT-08 live in `POL-07` and a change to a period, a scope or
a category is a policy change with the Data Protection Officer's sign-off behind it. This form records what a
change did to the machinery.

**It is not evidence that a rule was enforced.** That is `CNB-C-127`'s completion record, filed as **EC-17**,
every night, per store. This form records one change; the completion record records every night, and the
lesson of `D-07-01` is that **a record nobody reads is a log rather than a control** — which applies to this
form as much as to that one.

## Cross-References

| Document | Relationship |
|---|---|
| [07.02 The Retention Schedule and the Deletion Machinery](../07.02-the-retention-schedule-and-the-deletion-machinery.md) | RT-01 to RT-08, the three controls and `CNB-C-149` |
| [07.03 The RT-02 Retention Failure](../07.03-the-rt-02-retention-failure.md) | `D-07-01`, and the change this form exists because of |
| [governance/GOV-26](../governance/GOV-26-rt02-over-retention-investigation-and-notification.md) | `CA-07-02` and its two halves |
| [ADR-0031](../adr/ADR-0031-a-new-control-admitted-mid-window.md) | The two-implementation cost this form is redundant against |
| [diagrams/07-the-retention-schedule-against-the-inventory](../diagrams/07-the-retention-schedule-against-the-inventory.md) | Which rules govern which categories, and which stores a change can reach |
| [04.06 Controls for Availability, Processing Integrity, Confidentiality and Privacy](../../04-unified-control-framework-and-policy-architecture/04.06-controls-for-availability-processing-integrity-confidentiality-and-privacy.md) | `CNB-C-126`, `CNB-C-127`, `CNB-C-128` and `CNB-C-120` as published |
| [04.12 Evidence Architecture](../../04-unified-control-framework-and-policy-architecture/04.12-evidence-architecture.md) | EC-17, the retention job record this form sits alongside |
