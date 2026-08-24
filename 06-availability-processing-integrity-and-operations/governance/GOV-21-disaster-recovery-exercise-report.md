# GOV-21 — CAL-10 Disaster Recovery Exercise Report

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-G21 |
| Version | 1.0 |
| Date | 2026-09-30 |
| Owner | Wes Delacroix |
| Approver | Nathan Oyelaran |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


## 1. Matter

The annual disaster recovery exercise required by `CNB-C-100` under **CAL-10**, performed **2026-08-19**,
and its acceptance by the Trust Committee on **2026-08-24** under **DEC-601**. Milestone **MS-11**.

**Sections 2 to 9 are the report as accepted on 2026-08-24 and say nothing that was not known on that
date**, with one exception: the closing paragraph of §9 is expressly dated 2026-09-30 and marked as such.
Everything that happened afterwards — finding closures, the September register outcome, the position on
A.5.30 — is carried in the dated addendum at §10. A record cannot be accepted on one date and also report
the outcome of a review held five weeks later, and splitting it is cheaper than pretending otherwise.

## 2. Scenario and scope

| Item | Value |
|---|---|
| Scenario | Total loss of the `us-east-1` region, declared at 06:00 UTC |
| Type | **Full failover with production traffic**, not a tabletop or a paper walkthrough |
| Source region | `us-east-1` |
| Recovery region | `us-west-2` |
| In scope | EKS workloads for the in-boundary clusters, Aurora global-database promotion, object-store replicas, ingress and DNS, status page posture |
| **Out of scope, deliberately** | **`eu-central-1`** — obligation O8 and commitment SC-04 hold EU personal data at rest in region; it recovers intra-region across availability zones only |
| Exercise, declaration to acceptance checks | **06:00 to 08:51 UTC**, Wednesday 2026-08-19 — **171 minutes** |
| **Announced maintenance window** | **06:00 to 10:00 UTC — four hours**, notified to every customer on **2026-08-05**, fourteen days ahead. **A window is a notified interval, not an achieved duration**; the exercise finished 69 minutes inside it |
| **Customer-visible unavailability inside the window** | **23 minutes** — **14** at the failover cutover to `us-west-2`, of which DR-F1's four are the DNS overrun, and **9** at the read-path re-point on failback into the same window. **Production traffic was served from `us-west-2` for the other 148 minutes** |
| Effect on the August SC-01 measurement | **23 minutes excluded.** The master services agreement excludes maintenance windows announced at least fourteen days in advance. EC-09's minutes-excluded field reads **July 4 · August 23 · September 0**, July's four being the `TP-20` window of 2026-07-15 notified 2026-07-01 |
| Incident commander | Wes Delacroix |
| Participants | Infrastructure &amp; SRE on-call rotation, Platform engineering, Customer Success duty lead, Compliance observer |
| Break-glass elevations | 1, reviewed and closed inside 48 hours |

## 3. Result against SR-10

| Objective | Target | Achieved | Met |
|---|---|---|---|
| Recovery time objective | 4 hours | **2 hours 51 minutes** | **Yes** |
| Recovery point objective | 15 minutes | **4 minutes 12 seconds** | **Yes** |

`CNB-C-100` requires the achieved figures and any shortfall to be recorded in this report. **There was no
shortfall against either objective.** The two figures are not measured the same way, and this report states
both bases rather than implying that one clock served for both.

**The recovery time** was measured from the declaration at **06:00 UTC** to the acceptance checks
completing, on a single clock — elapsed wall-clock time, the thing a four-hour objective is about.

**The recovery point** was measured as the interval between the **last transaction committed in
`us-east-1` before the cutover** and the **last transaction applied on the promoted `us-west-2` writer**.
That is a replication lag rather than an elapsed time, and it is the only basis on which a recovery point
figure means anything: a fifteen-minute recovery point objective is a statement about how much committed
work a failover may leave behind, not about how long the failover took.

**`TP-31` was proven at this exercise.** The treatment plan item for **R-33** — re-execution of
post-restoration deletion, so that records deleted before a failover do not reappear in the recovered
region — was scheduled to 2026-08-19 *because* CAL-10 runs then. It was executed against the promoted
`us-west-2` estate and returned no reappearing records.

## 4. Findings, as entered at acceptance on 2026-08-24

| ID | Finding | Severity | Owner |
|---|---|---|---|
| **DR-F1** | The runbook assumed a 60-second DNS TTL; the record is published at 300, adding roughly four minutes to observed customer recovery | **Material** | Wes Delacroix |
| DR-F2 | The runbook did not state in terms that `eu-central-1` must not be failed over | Moderate | Wes Delacroix |
| DR-F3 | Aurora global-database promotion required a manual approval step absent from the runbook's critical path timing | Moderate | Junia Okonkwo |
| DR-F4 | The status page notice was drafted live rather than from a template | Minor | Ana-Sofia Cruz |
| DR-F5 | Two service runbook links pointed at a retired wiki | Minor | Wes Delacroix |
| DR-F6 | Failback was not timed; it took place over the two following days unmeasured | Moderate | Wes Delacroix |

Every finding was entered with an owner and a due date **at the point of acceptance on 2026-08-24**, not
afterwards. A report accepted with findings still to be assigned is a report whose findings have a good
chance of never being assigned. **Closure dates are not in this section**, because on 2026-08-24 there were
none; they are in the addendum at §10.

## 5. What the committee accepted, and what it declined to conclude, on 2026-08-24

**Accepted:** that the exercise was performed to the scenario, that both recovery objectives were met and
measured on their own bases, that the exclusion of `eu-central-1` was correct and contractually required,
that `TP-31` was proven, and that six findings were raised against a document rather than against people.

**Declined:** that R-19 — disaster recovery fails to meet the four-hour objective in a real event — should
be reduced on the result. The committee did not itself re-rate the entry; it **referred the proposal to the
September CAL-06 review**, which is where a register moves. Its own reasoning, minuted, was that **an
exercise is not a real event** and that the next likelihood step is 1, which is reserved for the
not-reasonably-foreseeable.

**Declined:** that the exercise be read as evidence for the whole of **A.5.30**. A.5.30 already read
`Implemented` on the Statement of Applicability reissued **2026-06-15**, moved there on the strength of
`CNB-C-100` having been given the control **before `CNB-C-100` had operated**. What 2026-08-19 supplies is
the **testing** limb and nothing else, and the committee recorded that the status had been running ahead of
its evidence since June and was supportable from this date rather than from that one.

## 6. The finding the committee spent the longest on

**DR-F1 is four minutes and it is the material one.** At 2h51m against a four-hour objective, four minutes
is absorbed without difficulty. In an event that ran closer to the objective, four minutes sitting **outside
the timed path** — because the runbook's clock stops at cutover and the customer's clock stops at
resolution — is the margin that converts a met objective into a missed one, invisibly.

The committee also recorded that DR-F1 is **the event R-30 describes**: documented information becoming out
of date and being relied on as current. The TTL was changed elsewhere for an unrelated reason and nothing
connected that change to the document that depended on it. The committee carried that reasoning forward to
the September register review as the argument **against** reducing R-30, and recorded that the proposal
before that review would be a **reduction** from 3 × 2 = 6 to 2 × 2 = 4 rather than a closure, because
nothing in this register is closed or removed. The outcome is at §10.

## 7. What the timed path excludes

The template this report is written against requires the exercise's own clock to be stated **and** the
things that clock does not contain, because a recovery time objective is only as honest as the interval it
is measured over.

**The timed path is declaration at 06:00 to the acceptance checks completing at 08:51, on one wall clock.**
It contains the promotion, the workload cutover, the ingress and DNS changes and the acceptance checks. It
does **not** contain the following.

| Excluded from the timed path | Why it sits outside, and what it costs |
|---|---|
| **DNS resolution beyond the cutover** | The runbook's clock stops when the record is changed; the customer's clock stops when their resolver stops returning the old address. At a 300-second published time-to-live that is roughly **four further minutes** of observed customer recovery — **DR-F1** |
| **The manual approval step in the Aurora global-database promotion** | It exists in the platform and was absent from the runbook's critical path timing, so the measured path and the executed path had diverged — **DR-F3** |
| **Failback** | Return to `us-east-1` took place over the two following days and **was not timed at all** — **DR-F6** |
| **`eu-central-1`** | Deliberately out of scope; nothing about that region's recovery is inside this clock |
| **The 23 customer-visible minutes** | These are a measure of what customers could not do inside the window, not a segment of the recovery clock, and the two are not the same quantity |

**Observed customer recovery is the only recovery time a customer experiences**, and it is longer than the
timed path by whatever sits outside it. Recording the exclusions is what allows a reader to tell the
difference between 2h51m and 2h51m plus the parts nobody was holding a stopwatch on.

## 8. Controls suspended during the exercise

**None.** The template requires this section to be answered explicitly rather than left blank, because a
continuity event is the commonest occasion on which a control is quietly turned off and the absence of a
statement reads the same as an absence of suspensions.

| Control family | Position during the exercise |
|---|---|
| Access control and just-in-time elevation | In force in `us-west-2` exactly as in `us-east-1`. **One break-glass elevation** was used on the exercise morning, through the ordinary just-in-time path, **reviewed and closed inside 48 hours** like the other three uses in the quarter |
| Change management gates | In force. No change was deployed to the recovery estate outside the ordinary approval path |
| Logging and monitoring | In force. The audit and application log pipelines ran in the recovery region throughout |
| Encryption and key management | Unchanged; the recovery estate uses the region's own keys under the same policy |
| Data residency | Enforced by exclusion — `eu-central-1` was not failed over, which is the control operating rather than being suspended |

**No control was suspended, relaxed, bypassed or granted a temporary exception for the duration**, and the
evidence that none was is worth as much to A.5.29 as the recovery time is to SR-10.

## 9. What this exercise cannot evidence

The template requires the report to state the limits of its own coverage, on the reasoning that an exercise
report read five months later will otherwise be read as evidence of everything it did not test.

- **It cannot evidence the recovery of `eu-central-1`.** That region was out of scope by contract, recovers
  intra-region only, and is exactly what **R-20** retains at 2 × 5 = 10. No exercise CloudNimbus can run
  would reduce it, because the thing that would reduce it is the thing O8 and SC-04 forbid.
- **It cannot evidence failback.** The return was untimed — **DR-F6** — so this report establishes half a
  round trip and says so.
- **It cannot discharge the CAL-09 restore test.** CAL-10 is an availability test and CAL-09 a durability
  and integrity one; **a replica that has faithfully replicated corruption passes this exercise and fails
  that one.**
- **It cannot evidence A.5.30 beyond the testing limb.** The planning limb sits with `CNB-C-136` and the
  maintenance limb sits with nothing in the library at all.
- **It cannot evidence that the recovery estate would carry a sustained production load**, only that it
  carried the exercise's.

**Added at the 2026-09-30 vantage and not part of the record accepted on 2026-08-24.** The coverage limit
that matters most was not written down in August and is written down here, because a limit recorded only in
a chapter is a limit a sampler pulling the exercise report never sees. **A regional failover replaces the
entire application tier**: every service in the recovery region starts from nothing, pods are scheduled,
processes initialise and connection pools are created and resolve their endpoints for the first time. There
is no live, warm application tier holding anything open, because the method destroys that precondition.
**This exercise therefore cannot exercise a live application tier's reaction to a failover beneath it**, and
no variant of it could. That class of failure needs a different test, which is what `ACT-06-04`'s quarterly
in-region failover game day is for and why it is kept distinct from CAL-10 rather than folded into it.

## 10. Status at 2026-09-30 — addendum

**This section is dated 2026-09-30 and was not part of the record accepted on 2026-08-24.**

| ID | Position at 2026-09-30 |
|---|---|
| **DR-F1** | Closed **2026-09-02** |
| DR-F2 | Closed **2026-08-28** |
| DR-F3 | Closed **2026-09-11** |
| DR-F4 | Closed **2026-09-04** |
| DR-F5 | Closed **2026-08-26** |
| DR-F6 | **Open**, due **2026-11-30**, scheduled against the Q4 in-region failover game day |

**All five closable findings were closed by 2026-09-11**, DR-F3 last. DR-F6 remains open and nothing here
says how the game day will go; it has not been performed.

**R-19 was not reduced.** The September CAL-06 review of 2026-09-29 declined the proposal on the two grounds
this committee referred to it. It also declined the other five reduction proposals before it — **six
proposals, none accepted** — and re-rated **R-08 upward** from 4 × 3 = 12 to 5 × 3 = 15 on a proposal nobody
had made. The register left that review at **37 entries — 8 High · 17 Moderate · 12 Low**. GOV-24 carries it.

**R-30 was not reduced either.** The proposal to take it from 3 × 2 = 6 to 2 × 2 = 4 was declined on the
reasoning §6 sets out: DR-F1 is the event R-30 describes, occurring during a live exercise, which is
evidence for the entry and not against it.

**A.5.30.** On the control library as published, exactly two rows cite A.5.30: `CNB-C-136` for the planning
limb and `CNB-C-100` for the testing limb. `CNB-C-088` and `CNB-C-101` cite A.5.29, so CAL-16 in November
does not advance A.5.30. **Nothing in the library implements A.5.30's maintenance limb** — recorded as
`IS-24` and referred to the clause 9.2 internal audit. And `CNB-C-136`'s re-scheduled **2026-08** occurrence,
the sole carrier of the planning limb, **was not performed**: deviation **`D-06-05`**, corrective action
`CA-06-04`.

## Cross-References

| Document | Relationship |
|---|---|
| [06.04 Disaster Recovery and the August Exercise](../06.04-disaster-recovery-and-the-august-exercise.md) | The full account and the coverage argument |
| [06.10 Business Continuity and ICT Readiness](../06.10-business-continuity-and-ict-readiness.md) | A.5.30's four limbs, `CNB-C-136`, `IS-24` and CAL-16 |
| [06.11 Operations, Monitoring and the Quarterly Review](../06.11-operations-monitoring-and-the-quarterly-review.md) | The September register review, R-19 and R-30 |
| [templates/dr-exercise-report-template](../templates/dr-exercise-report-template.md) | The form this report was written against |
| [GOV-24 September Risk Register Review](GOV-24-september-risk-register-review.md) | The six declined proposals and the R-08 re-rating recorded in the addendum |
| [06.01 Availability Architecture and Commitments](../06.01-availability-architecture-and-commitments.md) | SC-01's maintenance-window exclusion and the 23 minutes excluded from August |
| [logs/decision-log.md](../logs/decision-log.md) | DEC-601 and DEC-613 |
