# Template — Disaster Recovery Exercise Report

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-T23 |
| Version | 1.0 |
| Date | 2026-09-30 |
| Owner | Wes Delacroix |
| Approver | Nathan Oyelaran |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


Completed for the annual exercise under `CNB-C-100` (**CAL-10**) and for the quarterly in-region failover
game day added by `ACT-06-04` from Q4 2026. One unit of **EC-11**.

| Field | Guidance |
|---|---|
| Exercise type | **Regional failover, in-region failover, or tabletop.** Say which, because it decides what the result can be read as evidence of |
| Scenario | The condition declared, and the time it was declared |
| Source and recovery regions | |
| **Regions deliberately excluded, and the reason** | `eu-central-1` is excluded from cross-region failover under obligation O8 and commitment SC-04. State the exclusion as an instruction, not as an understanding |
| Live production traffic | Yes or no. An exercise that served no real traffic proves less and must not be reported as if it proved the same |
| Window | Start and end, in UTC |
| Incident commander and participants | Named |
| **Recovery time achieved, against the 4-hour objective** | Elapsed wall-clock time, measured from the declaration to the acceptance checks completing, on one clock |
| **Recovery point achieved, against the 15-minute objective** | **A different measurement, and it must be stated as one.** The interval between the **last transaction committed in the source region before cutover** and the **last transaction applied on the promoted writer in the recovery region** — a replication lag, not an elapsed time. A recovery point objective is about how much committed work a failover leaves behind, not about how long it took |
| Shortfall against either objective | `CNB-C-100` requires any shortfall to be recorded here. "None" is an answer and must be written |
| **Announced maintenance window, if any** | Minutes, and the date customers were notified. The availability commitment excludes maintenance windows announced at least fourteen days in advance, so this figure is what populates EC-09's minutes-excluded field for the month. An exercise whose window is not recorded here is an exercise whose minutes cannot be reconciled against the monthly availability figure |
| **What the timed path excludes** | Anything between the entity's cutover and the customer's observed recovery — DNS propagation above all. If the runbook's clock stops before the customer's does, say by how much |
| Failback | Whether it was timed, and the result. **An untimed failback is half a round trip and must be recorded as a finding, not omitted** |
| Controls suspended during the exercise | Expect "none". If any control was relaxed, name it, because a continuity event is the commonest occasion for one to be |
| Break-glass elevations | Count, and confirmation each was reviewed inside 48 hours |
| Findings | Each with an identifier, a severity, **an owner and a due date assigned before the report is accepted** |
| Acceptance | Who accepted the report, on what date, under which decision identifier |
| **Status addendum, separately dated** | The report says nothing later than the date it was accepted. Finding closures, register outcomes and anything else that happened afterwards go in a **dated addendum** headed with the date it speaks as at. A record accepted in August that reports the outcome of a review held in September is not a record of what was accepted |
| **What this exercise cannot evidence** | The class of failure the method excludes. State it every time |

## The last field is the one that earns the report

A regional failover **replaces the entire application tier**: every service in the recovery region starts
from nothing, and every connection pool is created new and resolves its endpoint for the first time. It
therefore cannot exercise a **live** application tier's reaction to a data-layer failover beneath it,
because its own method destroys the precondition.

**The exercise tests the recovery mechanism. It does not test the application's assumption about the
recovery mechanism.** Those are different tests. CloudNimbus learned the distinction twenty days after an
exercise that met both objectives with margin, and this field exists so that the next report states the
limit before an incident does.

Findings assigned an owner and a due date **at acceptance** rather than afterwards is the other habit worth
enforcing on the form. A report accepted with findings still to be allocated is a report whose findings have
a good chance of never being allocated.

## Cross-References

| Document | Relationship |
|---|---|
| [governance/GOV-21](../governance/GOV-21-disaster-recovery-exercise-report.md) | The worked example, 2026-08-19 |
| [06.04 Disaster Recovery and the August Exercise](../06.04-disaster-recovery-and-the-august-exercise.md) | The exercise, the six findings and the coverage argument |
| [diagrams/06-what-the-exercise-tested-and-what-it-did-not](../diagrams/06-what-the-exercise-tested-and-what-it-did-not.md) | Why the method excludes the class it excludes |
