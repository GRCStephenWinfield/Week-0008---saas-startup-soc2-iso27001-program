# ADR-0030 — A quarterly in-region failover game day

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-A30 |
| Version | 1.0 |
| Date | 2026-09-30 |
| Owner | Rahul Bhargava |
| Approver | Karim Haddad |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


| Field | Value |
|---|---|
| Status | Accepted |
| Date | 2026-09-30 |
| Decider | Wes Delacroix |
| Phase | 06 — Availability, Processing Integrity &amp; Operations |

## Context

The CAL-10 disaster recovery exercise of 2026-08-19 met both recovery objectives. Twenty days later
`INC-2026-031` took the write path down for seventy-one minutes on a mechanism the exercise could not have
found.

The reason is structural rather than a failing of the exercise. **A regional failover replaces the entire
application tier.** Pods are scheduled fresh in `us-west-2`, connection pools are created against the
endpoints as they resolve at that moment, and nothing in the run exercises a **live** application tier's
reaction to a data-layer failover beneath it. The exercise tested the recovery mechanism. The incident
tested the application's assumption about the recovery mechanism — that a pooled connection to a reachable
instance is a connection that can write. **Those are different tests, and only one of them was on the
calendar.**

The gap is therefore not covered by running CAL-10 more often. CAL-10 costs a scheduled window, a full
participant roster and a failback, and running it quarterly would buy four repetitions of a test that
already passes and none of the test that failed.

## Decision

**A quarterly in-region failover game day is added to the assurance calendar from Q4 2026, distinct from
CAL-10.** It exercises a **data-layer failover beneath a running application tier**: an Aurora writer
failover in `us-east-1` with the application tier left in place, measuring how long the live services take
to resume writes and whether any operator action is required.

It is recorded as **`ACT-06-04`**, owned by Wes Delacroix, **scheduled for 2026-11-05 and not performed at
this vantage.** `DR-F6` — failback was not timed on 19 August and took place unmeasured over the two
following days — is scheduled against the same event, due 2026-11-30.

## Consequences

The programme acquires a recurring test of the property that failed, at a cadence — quarterly — that gives
it four occurrences a year. **Inside this observation window it gives exactly one**, on 2026-11-05, because
the decision is taken on 2026-09-30 and the window closes on 2026-12-31. A quarterly cadence would carry two
occurrences across a full six months; this one starts three months in, so the remainder of the window holds
one, and one occurrence is a sample of one.

Three consequences are accepted openly.

**It is a test performed on production.** An in-region failover exercised anywhere but production tests a
connection pool configuration that is not the one serving customers, which is the whole defect this
exercise exists to catch. It will be run in a low-load window with the incident process on standby, and it
carries a real, small probability of causing the condition it is looking for.

**It does not become a CAL entry in the 2026 calendar.** The assurance calendar CAL-01 to CAL-16 was set in
January and 01.11 treats a frequency as a commitment; adding a seventeenth entry mid-year, with one
occurrence before the window closes, would create a control with a population of one and a stated cadence
of quarterly. It is carried as a post-incident action with a date until the 2027 calendar is set, and that
is the honest form of it.

**It changes nothing about `CNB-C-100`.** The annual disaster recovery exercise remains the A1.3 control and
remains the testing limb of A.5.30. The game day is an additional exercise, not a substitution, and a phase
that presented it as an upgrade to the existing control would be claiming coverage for something that has
not yet run once.

## Alternatives considered and rejected

**Run CAL-10 quarterly instead** — rejected: it is expensive, it requires a failback each time, and it
repeats the test that passed rather than adding the one that was missing. Frequency is not coverage.

**Rely on `ACT-06-01` and `ACT-06-02` alone** — the pool write probe with `max_lifetime` at 900 seconds, and
the amended `CNB-C-096` — rejected as the more tempting option and the weaker one. Both are corrections to a
known defect, verified by the change that deployed them; neither is a test of the *class* of defect, and the
next instance of the class will not be a connection pool. **A fix that is never exercised is a belief about
the system, which is exactly what failed on 8 September.**

**Wait for the November CAL-16 business continuity exercise to cover it** — rejected: CAL-16 exercises the
crisis team against a scenario under `CNB-C-101`, which cites **A.5.29**. It is not a technical failover
test, it touches no limb of A.5.30, and it cannot stand in for one, for the same reason CAL-10 could not
stand in for the CAL-09 restore test.

## Related

| Reference | Relationship |
|---|---|
| [06.04 Disaster Recovery and the August Exercise](../06.04-disaster-recovery-and-the-august-exercise.md) | What the exercise tested and what it did not, and DR-F6 |
| [06.05 The Severity-1 Incident of 2026-09-08](../06.05-the-severity-1-incident-of-2026-09-08.md) | `INC-2026-031` and the five actions |
| [06.10 Business Continuity and ICT Readiness](../06.10-business-continuity-and-ict-readiness.md) | A.5.30, CAL-16 and why this is not a substitute |
| [logs/decision-log.md](../logs/decision-log.md) | DEC-612 |
| [governance/GOV-22](../governance/GOV-22-post-incident-review-inc-2026-031.md) | The post-incident review that raised `ACT-06-04` |
