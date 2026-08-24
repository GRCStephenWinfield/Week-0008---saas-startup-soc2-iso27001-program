# ADR-0029 — No new risk for the September incident

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-A29 |
| Version | 1.0 |
| Date | 2026-09-30 |
| Owner | Rahul Bhargava |
| Approver | Karim Haddad |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


| Field | Value |
|---|---|
| Status | Accepted |
| Date | 2026-09-29 |
| Decider | Karim Haddad |
| Phase | 06 — Availability, Processing Integrity &amp; Operations |

## Context

`INC-2026-031` on 2026-09-08 took the platform's write path down for seventy-one minutes, caused **SC-01**
to be missed for September, produced 41,208 failed write requests across 318 tenants and required a DC4
disclosure. It is the most significant operational event of the programme to date.

The September **CAL-06** register review was held three weeks later, on 2026-09-29, with the register at 37
entries. A proposal was put that a new entry be admitted for the incident, on the reasoning that has
produced **one addition already**: **the register is not closed to additions on evidence** under DEC-306,
and R-37 was admitted in May on penetration test evidence that disproved AS-02, taking the baseline of 36 to
**37**. One addition, once, on one kind of evidence.

The reasoning has to be tested rather than repeated, because the two cases are not alike. R-37 was admitted
because an assumption the register rested on — that row-level security was uniformly enforced on every data
access path — was **shown to be false**, and no existing entry described the exposure that fact created. The
September incident disproved no assumption the register held. It was an instance of something the register
already describes.

## Decision

**No new risk entry is admitted for `INC-2026-031`.** **R-18** — an availability incident breaches the 99.9%
monthly commitment — is the entry that describes it, and R-18 is held at **3 × 3 = 9, Moderate**, having
been proposed for reduction at the same review and declined.

R-18 was also tested in the other direction, and the test is the reason this decision holds rather than
merely being convenient. The described event **occurred once** in the quarter. `03.02` §2 puts likelihood 3
at "expected within the certification cycle — once in three years" and likelihood 4 at "expected at least
once a year"; **one occurrence is consistent with the rating R-18 already carries** and does not reach the
next anchor. An entry that describes an event, and whose rating survives the event happening, is an entry
doing its job.

The other facts the incident produced that bear on the register are recorded against existing entries rather
than as new ones. **R-21** was held at 3 × 3 = 9: the September reconstruction is one event and one event is
not a period, and the June forensic search is the event R-21 describes rather than evidence against it.
**R-30** was held at 3 × 2 = 6 because DR-F1 is the event it describes.

## Consequences

The register stays at **37 entries — 8 High · 17 Moderate · 12 Low** after the review, with the population
unchanged. The one entry that moved is **R-08**, re-rated **upward** from 4 × 3 = 12 to 5 × 3 = 15 on nine
counted occurrences, which nobody proposed and which this decision is not about — but which is the reason
the review can be shown to have looked in both directions before refusing to add anything.

The cost is that a reader scanning the register for "the 8 September incident" will not find a row bearing
its name, and will have to reach it through R-18 and through this phase's documents. That is accepted. The
alternative cost is worse and is the reason for the decision: **admitting an "R-39: an availability incident
occurs" alongside R-18 would double-count one exposure at two entries.** Two entries describing the same
event inflate the population, distort every band count derived from it, and make the next comparison against
the Phase 03 forecast meaningless — because the forecast was derived by applying the movement rules to a
population of the entries that existed, and an entry added for bookkeeping reasons has no forecast behind
it.

There is a discipline point underneath the arithmetic and it is the durable output of this decision. **A
register that grows every time something happens is a log, not a register.** A risk register records
exposures; an incident log records events. When the two merge, the register acquires an entry per incident,
loses its comparability across quarters, and starts to be read as a performance record rather than as an
assessment — at which point nobody re-rates anything downwards, because a reduction looks like forgetting.

## Alternatives considered and rejected

**Admit a new entry for the incident** — rejected: R-18 already describes it, and a second entry for the
same exposure is double-counting, not thoroughness.

**Increase R-18's rating on the strength of the incident** — rejected, and this is the more interesting
refusal. The proposal was the reverse of P-1, and it was declined for a symmetrical reason: R-18 sits at
likelihood 3, "expected within the certification cycle — once in three years", and **one** incident inside
the certification cycle is the register's own prediction coming true rather than evidence that it was set
too low. A rating that rises whenever the predicted event occurs, and falls whenever it does not, is a
rating that tracks recent history rather than exposure.

**This is not in tension with R-08 rising at the same review, and the difference is countable.** R-08's
described event occurred **nine times in ninety-two days**, which is past "expected at least once a year"
and into `03.02` §2's likelihood 5, "occurring now, or expected more than once a year". R-18's occurred
once. **The test is the same test in both cases and the anchors return different answers**, which is what
having anchors is for; a review that raised R-18 too, because something bad had happened, would be scoring
mood.

**Re-word R-18 to name the incident** — rejected: an entry re-worded around the last event narrows to it.
R-18 has to describe the next availability incident as well, and the next one will have a different
mechanism.

## Related

| Reference | Relationship |
|---|---|
| [06.11 Operations, Monitoring and the Quarterly Review](../06.11-operations-monitoring-and-the-quarterly-review.md) | The September CAL-06 review, its six declined proposals and the R-08 re-rating |
| [06.05 The Severity-1 Incident of 2026-09-08](../06.05-the-severity-1-incident-of-2026-09-08.md) | `INC-2026-031` in full |
| [governance/GOV-24](../governance/GOV-24-september-risk-register-review.md) | The review record, and the "Tested upward?" column |
| [logs/decision-log.md](../logs/decision-log.md) | DEC-611 |
| [03.02 Risk Criteria and Scoring Scale](../../03-risk-assessment-treatment-and-statement-of-applicability/03.02-risk-criteria-and-scoring-scale.md) | The likelihood anchors this decision is tested against |
| [03.04 Risk Register — Baseline](../../03-risk-assessment-treatment-and-statement-of-applicability/03.04-risk-register-baseline.md) | R-18, R-21, R-30 and DEC-306 |
