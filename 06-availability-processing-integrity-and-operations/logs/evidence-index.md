# Evidence Index — Phase 06

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-L24 |
| Version | 1.0 |
| Date | 2026-09-30 |
| Owner | Rahul Bhargava |
| Approver | Karim Haddad |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


Twenty artefacts. Phase 05 was the first phase whose evidence a service auditor will actually sample;
**Phase 06 is the first whose evidence includes a record of a control that did not operate**, which is a
class 04.12 had to be asked for rather than one that arrived on its own.

| ID | Artefact | Owner | Location |
|---|---|---|---|
| EV-601 | CAL-10 disaster recovery exercise report, with measured recovery time and recovery point against SR-10 | Wes Delacroix | governance/GOV-21 |
| EV-602 | The six exercise findings DR-F1 to DR-F6, with owners, dates and closure evidence for the five closed | Wes Delacroix | 06.04 · trackers |
| EV-603 | `INC-2026-031` incident record — timeline, decisions, actions and communications to closure under `CNB-C-071` | Wes Delacroix | 06.05 |
| EV-604 | Post-incident review of 2026-09-11 and the five actions `ACT-06-01` to `ACT-06-05` | Wes Delacroix | governance/GOV-22 |
| EV-605 | The DC4 disclosure draft, written at the vantage rather than assembled later | Rahul Bhargava | 06.06 · ADR-0028 |
| EV-606 | Restore test records for 2026-07-16 and 2026-09-23, **and the record of the August non-occurrence** | Wes Delacroix | 06.03 · templates |
| EV-607 | Monthly capacity reviews of 2026-07-14, 2026-08-11 and 2026-09-15, the quarterly re-set of 2026-09-24, and tickets `CAP-07` and `CAP-09` | Wes Delacroix | 06.02 |
| EV-608 | Ninety-two nightly reconciliation records under `CNB-C-107` | Grete Lindqvist | 06.07 |
| EV-609 | The 26 reconciliation exception records, with raise and clearance timestamps and business-day elapsed | Grete Lindqvist | 06.09 · templates |
| EV-610 | Export delivery and acknowledgement record for the 5,171 files, with the 17 retries and the 31 band holds | Junia Okonkwo | 06.09 |
| EV-611 | Q3 alert triage record — 5,102 alerts, 148 high-severity dispositions inside thirty minutes, **38 progressed to investigation after disposition**, and **`CNB-C-067`'s automatic escalation limb with a population of zero**. Both are recorded: the 38 are a different activity from the escalation limb, and the empty population is a unit in its own right | Karim Haddad | 06.11 |
| EV-612 | Q3 change record — 160 changes with peer review, 9 emergency with their retrospective approvals, and 92 `CNB-C-087` reconciliations | Junia Okonkwo | 06.12 |
| EV-613 | CUEC-05 outreach record — 640 customers asked, 411 confirmed, 229 non-responses | Ana-Sofia Cruz | 06.09 |
| EV-614 | CAL-06 September register review record, with the six proposals, their outcomes and the R-08 re-rating | Karim Haddad | governance/GOV-24 |
| EV-615 | The `EC-09` availability record for July, August and September — sampling unit one calendar month for one region, with the minutes-excluded field populated: **July 4 · August 23 · September 0**, together with the maintenance notices of 2026-07-01 and 2026-08-05 the exclusions rest on — **and the 2026-09-24 re-derivation of all three months on the `ACT-06-03` definition** | Wes Delacroix | 06.01 |
| EV-616 | The service credit determination under the master services agreement and the records of credits applied to affected tenants on request | Marisol Vega | 06.05 · 06.06 |
| EV-617 | The `CNB-C-112` quarterly reconciliation occurrence of **2026-09-21**, including the two runs with no stored output and the 2026-09-22 re-execution records | Devon Ashby | 06.07 |
| EV-618 | The `CNB-C-113` semi-annual data model conformance check of **2026-07-09** across all three regions | Devon Ashby | 06.07 |
| EV-619 | The `CNB-C-103` semi-annual rule catalogue re-approval of **2026-08-06**, with the two rule types withdrawn | Grete Lindqvist | 06.07 |
| EV-620 | The twelve `CNB-C-109` on-demand re-executions — nine investigating a reconciliation exception, three at a customer's request — with the pinned rule version, the pinned input snapshot and the line-by-line comparison for each | Grete Lindqvist | 06.07 |

## Two of these are the ones an auditor will read hardest

**EV-606 is the strangest artefact in the store, because half of it records an absence.** July's and
September's restore tests produced comparison outputs — row counts and table checksums against the source,
for 1.9 TB and 2.1 TB respectively. August produced nothing, and the evidence class had to be extended to
hold a unit that says so: the date the occurrence was due, the fact that it did not take place, the reason
recorded at the time, and the decision at **ADR-0026** not to re-perform and back-date it. **Most evidence
stores have no unit for "the control did not operate"**, which is why a missing occurrence is normally
discovered by the sampler rather than disclosed by the entity. It is also why the September test's single
checksum mismatch — traced to a partition created between the snapshot and the comparison, with **the
comparison method corrected and not the data** — is retained in full, together with the re-run under the
corrected method on 2026-09-25, rather than summarised as a pass.

**The same unit had to be produced a second time, for `CNB-C-136`.** The re-scheduled 2026-08 occurrence of
the annual ICT continuity re-derivation did not take place, and the non-occurrence is recorded in the EC-11
continuity exercise class in the shape EV-606 established: the date the occurrence was due, the fact that it
did not happen, the reason, and the decision not to back-date. `D-06-05` and `CA-06-04`. **A unit invented
once for an exceptional case and used twice in the same quarter was not an exceptional case.**

**EV-605 is the artefact whose value depends entirely on its date.** A DC4 disclosure written in February
from an incident record and a memory is a reconstruction; one drafted on 2026-09-09, the day after the
event, is a contemporaneous statement of what management believed had happened and why it engaged the
criterion. ADR-0028 records the reasoning. **The incidents that go missing from descriptions of systems are
the ones nobody wrote down while the facts were fresh**, and the only defence against that is a dated draft.

## What the index does not contain

There is no artefact here for the clause 9.2 internal audit or the clause 9.3 management review. Both fall
inside this phase's period; **the operating record and the disclosures in this phase were supplied to the
internal audit as auditee evidence**, and everything the audit and the review produced belongs to Phase 08.

There is no artefact for CAL-16, `CNB-C-088`, `CNB-C-073`, `CNB-C-076`, the second penetration test or the
Q4 failover game day. All six are scheduled and none has been performed. **`CNB-C-136` is the one absence
in that list that is not a schedule**: its occurrence fell inside the quarter and did not happen, which is
why it has a unit recording the non-occurrence rather than no unit at all.

There is no artefact here for the CAL-08 Q3 sub-processor and vendor assurance review. The occurrence falls
in 2026-09 and **its evidence belongs to Phase 07**, which owns third-party assurance.

## Cross-References

| Document | Relationship |
|---|---|
| [06.12 Quarter Three Operating Record](../06.12-quarter-three-operating-record.md) | The figures these artefacts support |
| [06.13 Phase Summary and Transition](../06.13-phase-summary-and-transition.md) | What is carried forward |
| [04.12 Evidence Architecture](../../04-unified-control-framework-and-policy-architecture/04.12-evidence-architecture.md) | The evidence classes and the sampling unit each cadence produces |
| `07-confidentiality-privacy-and-third-party-assurance` | Continues the operating record from October |
