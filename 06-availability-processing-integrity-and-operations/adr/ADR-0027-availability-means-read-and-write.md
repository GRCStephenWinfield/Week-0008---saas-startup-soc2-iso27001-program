# ADR-0027 — Availability means a read and a write succeeding in the measured minute

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-A27 |
| Version | 1.0 |
| Date | 2026-09-30 |
| Owner | Rahul Bhargava |
| Approver | Karim Haddad |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


| Field | Value |
|---|---|
| Status | Accepted |
| Date | 2026-09-11 |
| Decider | Nathan Oyelaran |
| Phase | 06 — Availability, Processing Integrity &amp; Operations |

## Context

**SC-01 commits CloudNimbus to 99.9% monthly availability and never defined what "available" means.**

On 2026-09-08 the platform served reads in `us-east-1` for seventy-one minutes and refused writes.
`CNB-C-096`'s synthetic probes ran every 60 seconds throughout and reported healthy, because the probe
performs a read. The control
statement as published fixed the probe's frequency, its regions and its paging condition, and said nothing
about **what a probe must exercise**. Every word of it was satisfied while the platform could not accept a
clock-in.

The platform has separate reader and writer endpoints. On such a platform the unexamined assumption that a
system which answers is a system that is up is not a simplification — it is false, and it is false in
exactly the direction that produces a green measurement during an outage.

## Decision

**Availability of the CloudNimbus Workforce Platform means that both a read and a write succeed in the
measured minute.** A minute in which a read succeeds and a write fails is an unavailable minute.

The definition is recorded in writing as `ACT-06-03` and is the premise for `ACT-06-02`. `CNB-C-096` was
**amended under DEC-609 on 2026-09-15** to require the synthetic probe to perform a **write**, with the read
probe retained as a **separate signal** so that a half-available condition is distinguishable rather than
invisible; **the write probe was deployed on 2026-09-19 as `ACT-06-02`.** The two dates are kept apart
deliberately: **a control statement is amended by the decision that changes it, not by the deployment that
implements it**, and a programme that dates an amendment from its deployment cannot say what its control
library required in the four days between. Because DEC-609 amends a published control statement, **Phase 04
was re-issued**.

## Consequences

Measured availability will be lower than it would have been under the old probe, and that is the intended
effect: the number now describes the service the commitment is about. The comparability of months before and
after 2026-09-19 is affected, and this is disclosed rather than smoothed.

The probe writes to production on every cycle in every region, so it writes into a bounded synthetic tenant
whose records are excluded from the calculation engine's population and from every tenant-facing count.

Retaining the read probe separately means the two signals disagree in exactly the condition that defeated
the old design, which is the point: **a disagreement between the read and write signals is itself the
detection.**

## Alternatives considered and rejected

**Replace the read probe with a write probe** — rejected. A single composite signal cannot distinguish a
total outage from a write-path outage, and the distinction drives a different response and a different
customer communication.

**Leave `CNB-C-096` and rely on the detection controls beside it** — rejected, and this is the option that
had to be argued down rather than dismissed. Detection was not the problem: `CNB-C-068`'s synthetic clock-in
paged at 14:24 and the `CNB-C-067` error-rate path corroborated at 14:29. But **a detection path is not a
measurement path.** `CNB-C-096` is the control the service-level figure is produced from and the control
EC-09 samples; leaving it reading means every future availability number is computed from an artefact the
control framework does not name, which is a provenance problem whether or not anyone is paged.

**Define availability in the master services agreement instead** — rejected as out of scope for this
decision and referred to the General Counsel. Changing a contractual definition is a commercial act with
customers on the other side of it; defining the internal measurement is not, and the internal measurement
was the thing that was wrong.

## Related

| Reference | Relationship |
|---|---|
| [06.01 Availability Architecture and Commitments](../06.01-availability-architecture-and-commitments.md) | The reader and writer endpoints, and what 99.9% costs in minutes |
| [06.05 The Severity-1 Incident of 2026-09-08](../06.05-the-severity-1-incident-of-2026-09-08.md) | The detection failure this decision answers |
| [logs/decision-log.md](../logs/decision-log.md) | DEC-607 and DEC-609 |
| [04.06 Controls for Availability, Processing Integrity, Confidentiality and Privacy](../../04-unified-control-framework-and-policy-architecture/04.06-controls-for-availability-processing-integrity-confidentiality-and-privacy.md) | `CNB-C-096`, re-issued |
