# GOV-22 — Post-Incident Review, `INC-2026-031`

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-G22 |
| Version | 1.0 |
| Date | 2026-09-30 |
| Owner | Wes Delacroix |
| Approver | Karim Haddad |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


## 1. Matter

Post-incident review of `INC-2026-031`, the Severity-1 availability incident of **2026-09-08**, held
**2026-09-11**.

| Item | Value |
|---|---|
| Incident | `INC-2026-031` |
| Severity | 1 |
| Customer impact | **14:22 to 15:33 UTC, 71 minutes** |
| Incident closed | 15:41, after the `CNB-C-077` acceptance checks |
| Review held | **2026-09-11 — three business days after closure** |
| Incident commander | Wes Delacroix |
| Attending | Wes Delacroix, Junia Okonkwo, Nathan Oyelaran, Ana-Sofia Cruz, Karim Haddad, Rahul Bhargava, on-call SRE |
| Control windows satisfied | `CNB-C-102` five business days (A1) **and** `CNB-C-075` ten business days (CC7) |

**Both windows were satisfied by one review, and the divergence between them is recorded rather than
resolved.** The library carries two post-incident review windows for the same artefact. The tighter governs
in practice. 06.11 records the divergence and refers it to the clause 9.2 internal audit; Phase 04 is not
amended for it, because quietly harmonising two published control statements would delete the finding.

**Sections 1 to 7 are the review as held on 2026-09-11 and say nothing that was not known on that date.**
Everything after it — the estate-wide configuration search of 2026-09-15, the service-credit decision of
2026-09-18, what a quarterly control found on 2026-09-21, and where the five actions stand — is carried in
the dated addendum at **§8**. A review held three business days after an incident cannot also report what
was learned three weeks later, and separating the two is what makes the first half worth reading.

## 2. What happened, in the review's own terms

The **writer instance of the `core-us-east` Aurora cluster** stopped accepting writes at 14:22. RDS
completed an automated failover at the data layer in **47 seconds**, inside design. **Application connection
pools continued to hold open connections to the demoted instance.** The pool health check tested **TCP
reachability, not writability**, and a demoted Aurora instance remains reachable, accepts connections and
refuses writes. `max_lifetime` was unset, so a pooled connection was never retired and never re-resolved the
cluster endpoint.

**Reads succeeded throughout. Writes failed.** A worker could open the application, see their schedule, and
not clock in.

**The failure was confined to `us-east-1`.** The **41 EU-residency customers served from `core-eu-central`
in `eu-central-1` were unaffected** and their writes succeeded throughout; `us-west-2` carries no production
traffic.

Service was restored by a **rolling restart of the 11 services on the core write path**, beginning 15:04 and
completing 15:33.

## 3. Impact

| Measure | Value |
|---|---|
| Region affected | **`us-east-1`** |
| Customers served from `us-east-1` | **599** of 640 |
| Customers served from `eu-central-1` and unaffected | **41** |
| Failed write requests | **41,208** |
| Customers with at least one failed write | **318** |
| Mean per affected customer | 130 |
| Largest single tenant | 2,847 |
| Customers in `us-east-1` attempting no write in the window | **281** |
| Data lost | **None** — writes were rejected at the application, not accepted and lost |
| Recovery point objective engaged | **No** |
| Service commitment affected | **SC-01, September 2026, `us-east-1` — allowance exhausted at 15:05** |

318 + 281 = **599**. The review recorded that **the 281 customers that attempted no write were equally
unavailable**, and that the 318 is a count of who tried rather than a measure of who was affected. **SC-01
is not measured by who complained.** It also recorded the other side of the same discipline: **SC-01 was met
for the 41 customers served from `eu-central-1` and missed for the 599 served from `us-east-1`**, and a
blended platform figure would have reported neither.

**The "no data lost" position was the review's position on 2026-09-11**, reached on the mechanism: writes
were refused at the application rather than accepted and lost. Whether anything later disturbed it is at
**§8.3**, and it did not.

## 4. The three findings the review reached

**The mechanism worked and the application's assumption about it did not.** The data layer performed to
design. What failed was a belief held in the application tier about what a completed failover would do to a
live connection pool. This is not a criticism of the failover or of the subservice organisation that
provides it.

**Detection worked and measurement did not, and they were different controls.** `CNB-C-068`'s synthetic
clock-in failed twice consecutively and paged the on-call SRE at **14:24, two minutes after onset**.
`CNB-C-096`'s probes ran every 60 seconds across the same three regions and reported healthy for the whole
seventy-one minutes, because that probe performs a read — so no burn was recorded against the error budget
and the availability figure the control produces did not move. The control operated exactly as designed and
the design was wrong: the published statement fixed frequency, regions and paging condition, and never fixed
what a probe must exercise, while the control beside it named its transactions and therefore could not be
built that way. This is `D-06-02`, a **design deficiency and not an operating failure**.

The deviation is recorded against the criteria `CNB-C-096` cites — **`A1.1`, `A1.2` and `A.8.16`**. Whether
it also bears on **CC4.2** is **management's separate consideration** and is recorded as such rather than as
a finding of this review, which has no authority to extend a published control's mapping.

**The words on the status page were wrong.** "Degraded" was displayed. The write path was not degraded; it
was down. A customer reading "degraded" decides to wait and retry, which is not the decision the facts
supported.

### 4.1 An observation the review declined to promote to a finding

The page went out at 14:24 and Severity-1 was declared at 14:31. Seven minutes of triage is not obviously
wrong for a condition whose signature was an apparently healthy platform, and the first customer report
arrived inside them.

**What `CNB-C-071` expects in that interval is nothing.** The published statement requires the plan to be
invoked and an incident commander named on a Severity-1 or Severity-2 event, and it **sets no interval
between detection and declaration.** That is the observation. The review recorded the seven minutes and
declined to measure them, because there is no standard in the library to measure them against and a figure
reported against no standard is a figure that acquires a target by accident.

Whether an interval should be set at all is carried as **`IS-21`** and is **decided at the December CAL-06
review**, by which point a full quarter's incident record exists to set one from. The review's position is
that the absence of the interval, and not the length of it, is the thing worth recording.

### 4.2 The scope of the fix was not established at the review

`ACT-06-01` addresses the eleven services on the core write path, which is **the population the incident was
found on and not the population the defect could exist in**. The review recorded that as an open question
rather than answering it: a fix whose population is the set of things that broke is a fix of unestablished
scope. The estate-wide search that settled it was run on 2026-09-15 and is at **§8.2**.

## 5. Decisions taken at or before the review

| ID | Decision | Date | Decider |
|---|---|---|---|
| DEC-603 | Severity-1 declared and the incident commander named | 2026-09-08 | Wes Delacroix |
| DEC-604 | A rolling restart chosen over a second failover — a second failover reproduces the condition against a different instance and adds a further data-layer transition | 2026-09-08 | Wes Delacroix |
| DEC-605 | The incident treated as a DC4 disclosure matter and the draft written at the vantage | 2026-09-09 | Rahul Bhargava |
| DEC-606 | Five post-incident actions accepted with owners and dates | 2026-09-11 | Wes Delacroix |
| DEC-607 | Availability defined as a read **and** a write succeeding | 2026-09-11 | Nathan Oyelaran |

**DEC-610**, the service-credit decision of 2026-09-18, was taken after this review and is at **§8.4**.

## 6. Actions accepted at the review

Five actions were accepted under **DEC-606**, each against a named owner, entered in the corrective action
tracker, tracked monthly under `CNB-C-075` and carried at the monthly operations review under `CNB-C-102`
until closed.

| ID | Action | Owner | Position at 2026-09-11 |
|---|---|---|---|
| `ACT-06-01` | Pool health check executes a write probe; `max_lifetime` set to 900 seconds | Junia Okonkwo | Accepted, not yet deployed |
| `ACT-06-02` | `CNB-C-096` amended — synthetic probe performs a write, read probe retained as a separate signal | Wes Delacroix | Accepted; the amendment to the published statement not yet made |
| `ACT-06-03` | Availability defined in writing as both a read and a write succeeding in the measured minute | Nathan Oyelaran | **Recorded at the review** — DEC-607 |
| `ACT-06-04` | Quarterly in-region failover game day added from Q4, distinct from CAL-10 | Wes Delacroix | Accepted, not yet scheduled |
| `ACT-06-05` | Status page vocabulary revised | Ana-Sofia Cruz | Accepted, not yet deployed |

**`ACT-06-01` fixes the platform, `ACT-06-02` fixes the instrument, and `ACT-06-03` fixes the definition** —
the third being the one that would have prevented the other two from being needed. Where each of them stood
at the vantage is at **§8.1**.

## 7. What the review declined to record

**A root cause naming an individual.** Nobody chose not to set `max_lifetime`; it was a default that nobody
had a reason to examine until a failover happened beneath a live tier, and the reason nobody had one is that
no such failover had ever been exercised. `ACT-06-04` addresses that and no personnel action arises.

**Any conclusion about the service auditor's opinion.** The review recorded a service commitment failure and
a control deviation. Whether either affects a criterion is the auditor's evaluation, has not been performed,
and is not anticipated here.

## 8. Status at 2026-09-30 — addendum

**This section is dated 2026-09-30 and was not part of the review held on 2026-09-11.** Everything in it
post-dates the review, and none of it was available to the people who held it.

### 8.1 The five actions

| ID | Owner | Status at 2026-09-30 |
|---|---|---|
| `ACT-06-01` | Junia Okonkwo | **Deployed 2026-09-12**, against the eleven services on the core write path and, after §8.2, against nine more |
| `ACT-06-02` | Wes Delacroix | `CNB-C-096` **amended under DEC-609 on 2026-09-15**; write probe **deployed 2026-09-19**. Phase 04 re-issued |
| `ACT-06-03` | Nathan Oyelaran | **Recorded 2026-09-11** — ADR-0027 and DEC-607 |
| `ACT-06-04` | Wes Delacroix | Scheduled **2026-11-05**, **not performed**. Nothing here says how it will go |
| `ACT-06-05` | Ana-Sofia Cruz | **Deployed 2026-09-22** |

**A statement is amended by the decision and not by the deployment**, which is why `ACT-06-02` carries both
dates rather than one.

### 8.2 The scope of the fix, established 2026-09-15

On **2026-09-15** an **estate-wide configuration search across all 63 microservices** in the boundary was
performed against the two conditions in the mechanism — a pool health check testing reachability only, and
an unset `max_lifetime`. It found **nine further services with a reachability-only pool health check**,
**none of them on a write path**, and **all nine were corrected in the same release** as the eleven rather
than scheduled behind them. The search was run against **`us-west-2` and `eu-central-1`** as well as
`us-east-1`, because a configuration defect absent from the region that failed and present in the region
that did not is the version of this finding nobody would have gone looking for. **Twenty of the sixty-three
services carried the condition; eleven of the twenty sat on a write path and were the eleven the incident
found.**

### 8.3 What a quarterly control found on 2026-09-21

On **2026-09-21** the `CNB-C-112` quarterly reconciliation found **two calculation runs with no stored
output, both inside the incident window**. The finding is recorded against `INC-2026-031`. **Both runs were
re-executed and their results stored on 2026-09-22**, and **no export had been issued from either**, so
nothing derived from an incomplete run left the platform.

**The review's "no data lost" position therefore stands, and it stands on a check rather than on the
position as it was understood on the day.** The sequence is the uncomfortable part and is recorded as such:
a quarterly detective control surfaced a fact about the incident ten days after the review closed, and a
review held three business days after an incident cannot have seen it. ADR-0028 carries the general rule
that follows — a disclosure drafted in the week of an incident must be re-confirmed at period end against
the incident's own slower consequences.

### 8.4 A decision taken after the review

| ID | Decision | Date | Decider |
|---|---|---|---|
| DEC-610 | Service credits applied under the master services agreement to affected tenants on request | 2026-09-18 | Marisol Vega |

No amount is stated in this or any other document in this programme.

## Cross-References

| Document | Relationship |
|---|---|
| [06.05 The Severity-1 Incident of 2026-09-08](../06.05-the-severity-1-incident-of-2026-09-08.md) | The full account |
| [06.06 Incident Management and the DC4 Disclosure](../06.06-incident-management-and-the-dc4-disclosure.md) | DC4 and the draft disclosure |
| [06.07 The Calculation Engine and Processing Integrity](../06.07-the-calculation-engine-and-processing-integrity.md) | The two runs with no stored output, found 2026-09-21 and stored 2026-09-22 |
| [06.11 Operations, Monitoring and the Quarterly Review](../06.11-operations-monitoring-and-the-quarterly-review.md) | The two review windows, referred to the internal audit |
| [ADR-0027](../adr/ADR-0027-availability-means-read-and-write.md) | The definition recorded as `ACT-06-03` |
| [templates/post-incident-review-template](../templates/post-incident-review-template.md) | The form this review was written against |
| [logs/decision-log.md](../logs/decision-log.md) | DEC-603 to DEC-607 and DEC-610 |
