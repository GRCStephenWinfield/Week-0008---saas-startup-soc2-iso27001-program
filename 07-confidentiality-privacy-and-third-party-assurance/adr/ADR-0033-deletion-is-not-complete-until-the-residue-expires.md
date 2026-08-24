# ADR-0033 — The catch-up deletion is not certified complete until the backup residue expires

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-A33 |
| Version | 1.0 |
| Date | 2026-11-27 |
| Owner | Devon Ashby |
| Approver | Tobias Lund |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


| Field | Value |
|---|---|
| Status | Accepted |
| Date | 2026-10-27 |
| Decider | Devon Ashby |
| Phase | 07 — Confidentiality, Privacy &amp; Third-Party Assurance |

## Context

The catch-up deletion for the RT-02 failure ran on **2026-10-25** and removed all **1,847,206** over-retained
geolocation capture points from the primary stores in `eu-central-1`. `CNB-C-127`'s catch-up path produced a
completion record, and that record was **verified on 2026-10-27**.

At that point the correction looks finished, and there is an obvious and attractive sentence available:
*the over-retained records have been deleted.*

**RT-07 holds backups and snapshots on a 35-day rolling cycle.** The last backup capable of containing an
over-retained row is the one taken on 2026-10-25, the day the catch-up ran, and it does not expire until
**2026-11-29**. Until then the records are gone from every store a query can reach and present in encrypted
backups that have not aged out.

This is the same arithmetic Phase 02 disclosed for the deletion commitment — RT-08's thirty days and RT-07's
thirty-five give **30 + 35 = 65 days of residue** — and `CNB-C-128` exists because of it: deletions in
primary stores are tracked against the backup cycle, the residue window is confirmed monthly, and it is
printed on the deletion certificate the customer receives.

Nothing in `CNB-C-128` says what to do when the deletion being tracked is a **correction** rather than a
customer offboarding. The question at the investigation close on 2026-10-27 was whether the correction could
be reported complete.

## Decision

**The catch-up deletion is not certified complete until the backup residue window expires. DEC-705.**

The recorded position, used verbatim wherever the correction is reported in this phase, is: **the records
were removed from the primary stores on 2026-10-25, the completion record was verified on 2026-10-27, and
the 35-day backup residue under `CNB-C-128` expires on 2026-11-29.** The last of those dates is **two days
after this phase's vantage**, so **Phase 07 reports the correction as incomplete.**

`CNB-C-128`'s residue tracking is applied to the catch-up deletion on the same terms it is applied to an
offboarding deletion: the window is recorded, its expiry is confirmed by the data platform owner, and the
date is stated in the customer notification of 2026-10-26 rather than withheld until it passes.

## Consequences

**A phase that could have reported a closed remediation reports an open one.** This is the whole cost of the
decision and it is worth naming precisely: on 27 November the honest sentence is *the correction has not
finished*, two days before it does. There is no version of this document written a week later, and the
temptation to write one was real.

**The customer notification of 2026-10-26 carries a future date.** Forty-one customers were told, three days
after discovery, that the residue expires on 2026-11-29 — a date that had not arrived when they read it.
That is a slightly awkward thing to put in a notification and it is better than the alternative, which is a
notification implying the matter is closed followed by a second one thirty-four days later correcting the
implication, or no second one at all.

**It aligns the correction with the certificate.** CloudNimbus already tells a terminating customer that its
data is deleted from the live production stores, that a residue exists, what its maximum period is, and when
it expires. **A correction reported to a more generous standard than a certificate would be the programme
holding itself to a lower bar in the case where it had made the mistake**, which is the wrong way round.

**It confirms that the residue clears without intervention, and does not rely on that.** The 35-day cycle is
self-clearing and no person has to remember to complete anything. What the decision adds is a confirmation
under `CNB-C-128` that it did, performed by a named owner, because the failure mode of a self-clearing
mechanism is that nobody ever checks it cleared — which is a sentence the RT-02 failure earns the right to
say.

**And R-33 is engaged if a restoration occurs inside the window.** A restoration from a snapshot predating
2026-10-25 would reintroduce over-retained rows, and the documented post-restoration re-deletion procedure —
**TP-31**, proven at the CAL-10 exercise of 2026-08-19 — would have to run against them. No restoration
occurred in the period. The dependency is recorded because it is the only path by which the residue becomes
something other than an arithmetic fact.

## Alternatives considered and rejected

**Report the correction complete on 2026-10-27, when the completion record was verified** — rejected. It is
the ordinary practice, it is what most remediation trackers record, and it is what the completion record
itself supports on its face. It was refused because the completion record covers the stores the deletion
orchestrator enumerates and says nothing about backups, and a programme that has just disclosed a
sixty-eight-night gap between what a record said and what was true is not the programme to close a second
gap of the same shape four days later.

**Treat the backup residue as out of scope because RT-07 is a separate rule** — rejected as an argument that
proves too much. RT-07 is a separate rule and the residue is a genuine consequence of holding backups at all.
But Phase 02 already declined to hide behind that for the deletion certificate, on the ground that the first
sophisticated reader to ask "and your backups?" discovers both the residue and the concealment at the same
moment, and the second discovery is the expensive one. The same reasoning applies with more force to a
correction.

**Expire the affected backups early so the correction could be reported closed** — rejected without
hesitation. Deleting backups to make a remediation date look better would subordinate SR-10's fifteen-minute
recovery point objective to a reporting convenience, and would do it in the region where obligation O8
forbids cross-region recovery and `eu-central-1` recovers intra-region only. **The recovery position is not
available as a lever for tidying a remediation.**

**Wait and publish Phase 07 after 2026-11-29** — rejected on vantage discipline. The phase speaks as at
2026-11-27 because that is the last working day before Stage 2 opens, and moving a vantage to make a fact
land inside it is the reverse of how a vantage works.

## Related

| Reference | Relationship |
|---|---|
| [07.03 The RT-02 Retention Failure](../07.03-the-rt-02-retention-failure.md) | §3 and §8.2, the residue date and the claim the chapter does not make |
| [07.02 The Retention Schedule and the Deletion Machinery](../07.02-the-retention-schedule-and-the-deletion-machinery.md) | §4, RT-07 and RT-08's 65 days, `CNB-C-128` and R-15 |
| [ADR-0032](ADR-0032-notification-with-no-obligation-to-notify.md) | The notification that states the residue expiry as a future date |
| [governance/GOV-26](../governance/GOV-26-rt02-over-retention-investigation-and-notification.md) | The investigation close of 2026-10-27 |
| [logs/decision-log.md](../logs/decision-log.md) | DEC-705 |
| [04.06 Controls for Availability, Processing Integrity, Confidentiality and Privacy](../../04-unified-control-framework-and-policy-architecture/04.06-controls-for-availability-processing-integrity-confidentiality-and-privacy.md) | `CNB-C-128` as published, and §5.2 on the residue disclosed rather than engineered away |
| [02.07 Personal Information Inventory and Data Subjects](../../02-system-scope-isms-boundary-and-description/02.07-personal-information-inventory-and-data-subjects.md) | §6.2, the 65-day arithmetic and the four-part honest treatment |
| [06.03 Backup, Restore and Data Durability](../../06-availability-processing-integrity-and-operations/06.03-backup-restore-and-data-durability.md) | RT-07's 35-day cycle and why a faithful replica is faithful about everything |
