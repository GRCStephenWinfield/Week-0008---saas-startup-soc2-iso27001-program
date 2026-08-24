# GOV-24 — September Risk Register Review

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-G24 |
| Version | 1.0 |
| Date | 2026-09-30 |
| Owner | Karim Haddad |
| Approver | Lorraine Kessler |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


## 1. Matter

The **CAL-06** quarterly risk register review of **2026-09-29**, chaired by Karim Haddad. It is the
**second review of a register** — 2026-03 reviewed the risk assessment *method* rather than a register, as
01.11 §6 records, and 2026-06-15 was the first review of the baseline — and the first held after a quarter
in which the register's described events actually occurred.

## 2. Position entering

**37 entries — 7 High · 18 Moderate · 12 Low.** 7 + 18 + 12 = 37.

This is the position Phase 04 closed at: the 36-entry baseline of 2026-04-10, plus **R-37**, admitted on
2026-05-22 on penetration test evidence at 4 × 5 = 20 High and re-rated on 2026-06-15 to 2 × 5 = 10
Moderate.

## 3. Six proposals, none accepted

The table carries a column most register reviews do not have. **A review that only tests the proposals in
front of it can only ever move a register downwards**, because reductions are what people propose. The
"Tested upward?" column records the second test the review applied of its own motion: for every entry whose
described event actually occurred in the quarter, was the observed frequency still consistent with the
likelihood anchor the entry carries? `03.02` §2 built testable anchors precisely so that question has an
answer.

| # | Proposal | Outcome | Reason | Tested upward? |
|---|---|---|---|---|
| P-1 | Reduce **R-18** — an availability incident breaches the 99.9% monthly commitment — on the figures then in force: **July and August both at 99.99%** on the read-only probe | **Declined** | The proposal was raised on 2026-09-04 and **the event occurred four days later**. A likelihood forecast contradicted by an event that actually happened is a forecast that must not be honoured. The **2026-09-24 re-derivation** later moved both months, to 99.98% and 99.97% — which **strengthens the decline rather than weakening it: the proposal rested on a number the instrument was overstating**. Held at 3 × 3 = 9 | **Yes — held.** The event occurred **once**. One occurrence is consistent with likelihood 3, "expected within the certification cycle — once in three years"; it does not reach the likelihood 4 anchor of "expected at least once a year". This is the ADR-0029 reasoning |
| P-2 | Reduce **R-19** — disaster recovery fails the four-hour objective in a real event — on the 2026-08-19 exercise result | **Declined** | Two independent grounds: **an exercise is not a real event**, and the next likelihood step is 1, which the scale reserves for the not-reasonably-foreseeable. Held at 2 × 5 = 10 | Not engaged — the described event did not occur. The exercise met both objectives and no real recovery was attempted |
| P-3 | Reduce **R-21** — audit and security logging is incomplete, so an event cannot be reconstructed | **Declined** — see §3.1 | The June forensic search is the event R-21 describes, not evidence against it, and it precedes the observation window. What remains is one reconstruction, and one event is not a period. Held at **3 × 3 = 9** | **Yes — held.** Reading the June search as the described event occurring gives **one** occurrence, which is consistent with likelihood 3 and does not reach 4 |
| P-4 | Reduce **R-30** — documented information becomes out of date and is relied on as current — from 3 × 2 = 6 to 2 × 2 = 4 | **Declined** | **DR-F1 is the event R-30 describes** — a runbook assuming a 60-second DNS TTL against a record published at 300, relied on during a live exercise. Held at 3 × 2 = 6 | **Yes — held, and flagged.** DR-F1 and DR-F3 are **two** occurrences in the same family. Two is short of the likelihood 4 anchor of "expected at least once a year" while R-30 sits at 3, so the entry stands — and the review records R-30 as **the next candidate to rise** if a third arises before December |
| P-5 | Reduce **R-04** — Halcyon Identity becomes unavailable and no end user can authenticate — on nine months without an authentication outage | **Declined** | **The absence of a supplier outage is not evidence about a supplier's controls**, which CloudNimbus neither designs nor operates. This is the refusal 03.07 already made. Held at 4 × 4 = 16 | Not engaged — the described event did not occur, and an absence is not evidence in either direction |
| P-6 | Reduce **R-14** — a customer does not perform CUEC-05 and a wrong export reaches their payroll provider — on the CUEC-05 outreach | **Declined** | 411 of 640 confirmed, 229 did not respond, none said no. A 64% response rate to a question nobody answered "no" to is not evidence about likelihood. Held at 4 × 3 = 12 | Not engaged — no wrong export reached a payroll provider in the quarter, and the 229 non-responses are neither an occurrence nor its absence |

### 3.1 Why P-3 was declined, and why that reverses the position the review first took

P-3 was the one proposal the review was minded to accept, and the reasoning it was minded to accept it on
does not survive contact with `05.12`.

> **Declined.** The June forensic search is not evidence that logging is complete; it is the strongest
> evidence in the portfolio that it is not. `05.12` records that the thirteen-month query horizon could not
> reach **nine months of a twenty-two-month exposure — 41% of the period** — and that a clean result over
> 41% less than the period is a result about the horizon rather than about the events. That search also
> **concluded before 2026-06-22, when DEC-508 reviewed the retention gap it exposed** — nine days before the
> observation window opened, so it was never in-quarter evidence. What
> remains is the September reconstruction: one event, complete, and genuinely good evidence — **and one
> event is not a period.** R-21 is held at **3 × 3 = 9**.

The internal consistency point is the sharper one and the review recorded it in terms. **P-4 was declined
because DR-F1 is the event R-30 describes.** A table that treats a materialised risk as evidence *against*
one entry and as evidence *for* another has stopped applying a rule and started reaching a result. The
September reconstruction is real and is recorded as such: 41,208 failed write requests attributed across
318 tenants, the largest single tenant at 2,847, reconstructed to the second across all seventy-one
minutes. It is one occurrence of a capability, and R-21 asks about a period.

**The decline needs no second acceptance, because nothing moved.** Karim Haddad's clause 6.1.3 f)
acceptance of R-21 at 3 × 3 = 9 stands as it stood.

### 3.2 What the six declines have in common

**Four of the six proposals asked the register to move on the absence of a bad outcome.** No authentication
outage (P-5), no availability incident in July or August (P-1), an exercise that met its objectives (P-2),
a customer outreach in which nobody said no (P-6). An absence is not evidence about likelihood; it is the
observation that the predicted event has not yet happened, which is what a likelihood rating already
asserts. **P-4 and P-3 failed on the opposite ground: the event each entry describes did happen** — DR-F1
for R-30, and the nine months the June search could not reach for R-21.

## 4. R-08 is re-rated upward, and nobody proposed it

**R-08 — a change is deployed to production without recorded peer review — moves from 4 × 3 = 12 to
5 × 3 = 15. Moderate to High.**

Nine of the quarter's 160 changes reached production without a code-owner review at merge, through the
designed emergency path under `CNB-C-082`. `03.02` §2 sets likelihood **4** at "expected at least once a
year" and likelihood **5** at "**occurring now, or expected more than once a year**". **Nine occurrences in
ninety-two days is 5.** The entry moves on likelihood; the consequence limb is unchanged at 3, which is what
`03.02` §5.1 requires of a movement where the consequence itself has not changed.

**R-08 is the register's first likelihood-5 entry.** `03.04` §5's likelihood distribution recorded **zero**
at 5, and recorded why: nothing in the baseline was judged to be occurring when it was struck, and R-08 —
one of the two entries with the strongest evidential support for a high frequency — sat at 4 because that
was what the evidence then supported. The anchor existed and nothing had ever reached it. It has now been
reached by a counted frequency rather than by a judgement.

**Nobody proposed it.** The review reached it by applying the "Tested upward?" column to every entry whose
described event had occurred — which is the discipline the anchors were built for, and which is why they
were written as frequencies somebody can be wrong about rather than as adjectives.

### 4.1 The governance consequence, and the half of the escalation rule that has fired

A **High** residual cannot be retained the way a Moderate one can. Under `03.02` §6 a High residual may
**not** be retained on the authority of the risk owner or of the VP Security &amp; Trust: it requires **the
Chief Executive Officer, with the reasoning minuted**, over and above the risk owner's clause 6.1.3 f)
acceptance. Both are recorded here.

| Acceptance | Who | Basis |
|---|---|---|
| Clause 6.1.3 f) — the risk owner's, not delegable upwards | **Junia Okonkwo**, risk owner for R-08 | The emergency change path is designed, is used for the conditions it was designed for, and `CNB-C-087` reconciles every deployment to a ticket daily with no unmatched deployment in ninety-two days |
| `03.02` §6 High-band retention, over and above the owner's | **Elise Fontaine, Chief Executive Officer**, reasoning minuted | The exposure is retained while `CA-06-03` runs, rather than closed by suspending an emergency path the incident process depends on. **Not yet reported** to the Audit &amp; Risk Committee — the reporting limb completes at the committee's Q4 report under CAL-03 |

`03.02` §6 requires **two** things of a retained High residual: the Chief Executive Officer's retention with
the reasoning minuted, **and** a report to the **Audit &amp; Risk Committee with the reasoning minuted**.
CAL-03's Q3 occurrence was held on **2026-09-24**, five days before this review, so Elise Fontaine's decision
of **2026-09-29** could not have been reported to it.

> **Half of it fired.** The retention decision is taken and minuted; **the reporting limb is not complete at
> this vantage** and completes at the Audit &amp; Risk Committee's Q4 report. A rule that requires two things
> and has done one is a rule that has done one, and this review is not going to write it up as though the
> second had happened. Carried as **`PR-40`** in the RAID log, owner Karim Haddad, due at CAL-03's Q4
> occurrence.

`03.02` §6 recorded, when the criteria were written, that no entry in the register had taken that path and
that the authority existed at one level and one level only. A criterion nobody has ever had to use is a
criterion nobody has tested; half of this one has now been used, on an entry that arrived at High by
measurement rather than by judgement.

**Clause 10.2 corrective action `CA-06-03`**, owner **Junia Okonkwo**, open at the vantage: bring the
emergency change path within a recorded-review discipline, so that a change reaching production outside
branch protection carries a code-owner review after the fact as well as a retrospective approval.

## 5. Position after

| | High | Moderate | Low | Total |
|---|---|---|---|---|
| Entering the review | 7 | 18 | 12 | **37** |
| After the review | **8** | **17** | **12** | **37** |

**8 + 17 + 12 = 37.** One entry changed band, upward. **The population did not change: nothing was closed
and nothing was removed**, which has been true at every review since the baseline. A risk that stops being
likely is re-rated, not deleted — and a risk that starts being more likely is re-rated too.

**Six reduction proposals, none accepted; one upward re-rating nobody proposed. The only movement at the
September review was a rating going up.**

**`03.04` is not amended for R-08, and the review recorded why: a baseline that is rewritten every time the
register moves is not a baseline.** `03.04` is the dated position at 2026-04-10 — thirty-six entries, R-08
at 4 × 3 = 12, band totals 7 · 17 · 12 — and its value to the examination is that it has not changed. **A
reader wanting the current position should take it from the register workbook and from the CAL-06 review
records — this record and the 2026-06-15 one — and not from the baseline.**

**A quarterly review at which nothing was reduced is not a review that found nothing.** It is a review whose
evidence was three months old in a six-month window, at an organisation that had just missed a commitment.
Reductions are what a maturing programme expects to produce and they are the last thing it should produce
early: the entries proposed for reduction were proposed on three months of quiet, and three months of quiet
is the shortest run of evidence anybody in this programme has yet argued from.

### 5.1 No new risk was admitted

The review considered and refused an entry for `INC-2026-031`, on the ground that **R-18 already describes
it** and a second entry for the same exposure would be double-counting one exposure at two entries. The
reasoning is set out at **ADR-0029**, and the sentence the review adopted is this one: **a register that
grows every time something happens is a log, not a register.**

## 6. What this review did not do

It did not re-rate any entry on the strength of a control having been implemented, which is DEC-408's
standing rule: a register moved by intention is a register scored on intention. The one re-rating it did
make ran the other way and rested on counted occurrences rather than on anybody's view of a control.

It did not revisit the Phase 03 close forecast of 0 High · 16 Moderate · 22 Low, and did not publish a
revised one. **ADR-0015 requires that no close forecast is published until the build harness has proved it
reachable by applying the register's own movement rules to every entry**, and the review had no such
derivation in front of it. What it did record is that **R-18's forecast reduction is now contradicted by an
event that happened**, which is a fact about one entry and not a re-forecast of the population.

It took no decision on the deviations or the commitment failure reported at GOV-23 the previous day. Those
are matters for the description of the system and for the examination, not for the register.

## Cross-References

| Document | Relationship |
|---|---|
| [06.11 Operations, Monitoring and the Quarterly Review](../06.11-operations-monitoring-and-the-quarterly-review.md) | The review in the phase narrative |
| [06.09 Output Accuracy, Reconciliation and the Export](../06.09-output-accuracy-reconciliation-and-the-export.md) | The CUEC-05 outreach behind P-6 |
| [06.04 Disaster Recovery and the August Exercise](../06.04-disaster-recovery-and-the-august-exercise.md) | DR-F1, DR-F3, and why P-2 and P-4 were declined |
| [06.12 Quarter Three Operating Record](../06.12-quarter-three-operating-record.md) | The nine emergency changes behind the R-08 re-rating, and `CA-06-03` |
| [ADR-0029](../adr/ADR-0029-no-new-risk-for-the-september-incident.md) | Why the incident admitted no new entry |
| [GOV-23 Quarter Three Operating Review](GOV-23-quarter-three-operating-review.md) | The operating review of the previous day |
| [logs/decision-log.md](../logs/decision-log.md) | DEC-611 |
| [03.02 Risk Criteria and Scoring Scale](../../03-risk-assessment-treatment-and-statement-of-applicability/03.02-risk-criteria-and-scoring-scale.md) | The likelihood anchors §2, and the High-band acceptance authority §6 |
| [03.04 Risk Register — Baseline](../../03-risk-assessment-treatment-and-statement-of-applicability/03.04-risk-register-baseline.md) | The entries, the scale and the movement rule |
| [03.07 Risk Acceptance and Residual Risk](../../03-risk-assessment-treatment-and-statement-of-applicability/03.07-risk-acceptance-and-residual-risk.md) | The forecast, and the refusal P-5 repeats |
