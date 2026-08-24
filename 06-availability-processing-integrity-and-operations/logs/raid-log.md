# RAID Log — Phase 06

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-L22 |
| Version | 1.0 |
| Date | 2026-09-30 |
| Owner | Rahul Bhargava |
| Approver | Karim Haddad |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


**Programme delivery risks, continuing the Phase 01 to Phase 05 series.** Not the information security risk
register, which stands at 37 entries — **8 High · 17 Moderate · 12 Low** after the September CAL-06 review,
at which six reduction proposals were declined and **R-08 was re-rated upward** from 4 × 3 = 12 to
5 × 3 = 15.

## Risks — PR-35 to PR-41

| ID | Risk | Owner | Status |
|---|---|---|---|
| PR-35 | `CNB-C-098` has three monthly occurrences left in the window and one already missing; a second miss makes it two of six | Wes Delacroix | Open — CA-06-01 addresses the cause, not the arithmetic |
| PR-36 | `CNB-C-108`'s two-business-day service level and its weekly Tuesday review disagree, so the same deviation recurs for exceptions raised on **a Tuesday after the review, a Wednesday or a Thursday** — **three of the seven days** from which the next Tuesday queue is not reachable inside two business days (business day five, four and three respectively), as 06.09 §3 counts out | Grete Lindqvist | Open — CA-06-02 asks which of the two is wrong; the exposure is half again what an earlier count of it stated |
| PR-37 | A.5.30 reads `Implemented` while the only row carrying its planning limb, `CNB-C-136`, has an empty population inside the window and **two of the four limbs — implementation and maintenance — have no row citing A.5.30 at all**. Nothing scheduled before the window closes changes either | Karim Haddad | Open — `CA-06-04` and `IS-24` |
| PR-38 | The quarterly in-region failover game day is a production test and carries a small probability of causing the condition it exists to look for | Wes Delacroix | Open — accepted openly at ADR-0030 |
| PR-39 | `DR-F6` failback timing is unmeasured and is scheduled against an event that has not taken place | Wes Delacroix | Open — due 2026-11-30 |
| PR-40 | **`03.02` §6's escalation rule has half fired.** R-08's High-band retention is taken and minuted by Elise Fontaine on 2026-09-29, but CAL-03's Q3 occurrence fell on **2026-09-24**, five days earlier, so the decision **could not have been reported to the Audit &amp; Risk Committee** as `03.02` §6 also requires. The reporting limb is incomplete at this vantage | Karim Haddad | Open — **due at CAL-03's Q4 occurrence**, at which the retention and its reasoning are to be minuted to the Audit &amp; Risk Committee |
| PR-41 | The 229 CUEC-05 non-responses are structurally indistinguishable from non-performance and will remain so | Ana-Sofia Cruz | Open — R-14 held at 4 × 3 = 12 for exactly this reason |

**PR-40 is the entry that keeps the phase honest about its own governance.** A rule that requires two things
and has done one is a rule that has done one. The retention decision is real, is minuted and is the first
time the High-band authority has been exercised in the programme; the reporting limb is not complete and the
phase does not write it up as though it were. The calendar caused it — CAL-03 sits early in its quarter by
the discipline 04.11 argues for and CAL-06 sits late by the discipline 06.11 §5 defends, and a rule that
depends on the second reaching the first inside the same quarter is a rule with a five-day gap in it.

**PR-35 is the entry a reader should weigh first.** It is not a risk that a control is badly designed; it is
a risk about a denominator. One miss in six is survivable arithmetic and one miss in six is also not yet a
fact, because three of the six occurrences have not happened. **The programme cannot improve this entry by
doing anything other than performing the control on time three more times.**

## Assumptions — AS-31 to AS-34

| ID | Assumption | Owner | Status |
|---|---|---|---|
| AS-31 | A write probe every 60 seconds detects the class of failure the read probe missed | Wes Delacroix | Unverified — the amended `CNB-C-096` deployed 2026-09-19 has not yet met a real failover |
| AS-32 | The 92 clean nightly calculation cycles are representative of the three months remaining | Grete Lindqvist | Unverified, and 06.07 declines to rely on it |
| AS-33 | `max_lifetime` at 900 seconds is short enough for every connection pool on the write path | Junia Okonkwo | Unverified — 900 seconds is a chosen value, not a measured one |
| AS-34 | No control was suspended during either the exercise or the incident | Karim Haddad | Asserted from the change, access and log records; a control suspended without leaving a record would not appear in them |

**AS-31 deserves reading twice, and it is the same shape as AS-27 in Phase 05.** The assumption that failed
on 8 September was that a system answering a probe is a system that is up. Its replacement is that a probe
performing a write detects a write failure — which is very likely true, is better than what preceded it,
and is **still an assumption about a mechanism that has not been exercised against the failure it was
written for**. `ACT-06-04`, the quarterly game day, exists precisely to stop this entry being carried on
belief.

**AS-34 is recorded because it cannot be proved from the inside.** The evidence that no control was
suspended during the exercise or the incident is the absence of any record of suspension across the change,
access and logging trails — which is exactly what a properly suspended control and a properly maintained
one both look like when the suspension leaves no artefact. Writing it down as an assumption is the only
honest treatment available.

## Issues — IS-19 to IS-27

| ID | Issue | Owner | Status |
|---|---|---|---|
| IS-19 | The August `CNB-C-098` occurrence is missing and cannot be recovered; the window population is six and one occurrence will always be absent from it | Wes Delacroix | Open — irreducible; ADR-0026 and CA-06-01 |
| IS-20 | `CNB-C-102` and `CNB-C-075` carry different post-incident review windows — five business days and ten — for the same artefact | Karim Haddad | Open — recorded and referred to the clause 9.2 internal audit, not amended |
| IS-21 | No control in the library measures the interval between a page being raised and an incident being declared; on 8 September that interval was seven minutes and nothing observes it. `CNB-C-071` sets no interval and requires only that the plan be invoked and a commander named | Wes Delacroix | Open — recorded as an observation at GOV-22 §4, deliberately not turned into a metric in the week after the incident |
| IS-22 | A.5.30 was moved from `Planned` to `Implemented` at the 2026-06-15 Statement of Applicability reissue **before `CNB-C-100` had operated**; the status ran ahead of the evidence and became supportable only at the 2026-08-19 exercise | Karim Haddad | Open as a record — the status is now supportable; the entry stands as the clause 7.5 lesson |
| IS-23 | `02.12` maps **SR-11** — change promotion through an automated pipeline with recorded peer review — to SC-01 and SC-07, and nine of the quarter's 160 changes reached production outside the peer-review gate by the designed emergency path. This is an **accepted departure** from SR-11, and no chapter of the description addressed SR-11 until 06.12 §5.3 | Junia Okonkwo | Open — `CA-06-03` |
| IS-24 | **Two of A.5.30's four limbs have no row in the library citing them.** `CNB-C-136` plans and `CNB-C-100` tests; **no row cites A.5.30 for the implementation limb or for the maintenance limb.** The capability behind implementation is real and sits under `CNB-C-097` (A.8.13) and `CNB-C-099` (A.8.14), which cite something else, and `CNB-C-088` cites A.5.29 and maintains the continuity plan rather than the ICT readiness. On 06.10 §2's own stated rule — an Annex A control is answered by the rows that cite it — that is **two unattributed limbs, not one** | Karim Haddad | Open — **widened from the maintenance limb alone**; referred to the clause 9.2 internal audit and carried as a candidate for the next SoA issue; Phase 04 deliberately not amended |
| IS-25 | No control in the library governs application connection pool configuration. `CNB-C-099` reaches data stores and node groups provisioned from the shared Terraform modules and no further, so `INC-2026-031` **did not result from a control that was not suitably designed; it resulted from a configuration no control governed** | Wes Delacroix | Open — referred; 06.06 §2 |
| IS-26 | The CUEC-05 outreach and its annual reconfirmation operate under **no control and no cadence**. A CUEC nobody is required to ask about is a CUEC the description will carry unexamined for as long as the description exists | Ana-Sofia Cruz | Open — referred; 06.09 §6 |
| IS-27 | Of the 41,208 writes refused during `INC-2026-031`, **278 were never resubmitted**. They were refused **at the database** and never reached a validator, so they cannot have entered `CNB-C-105`'s exception queue. What surfaced them was a **reconciliation Customer Success ran by hand from the refusal log on 2026-09-09**, and **no row in the library requires that reconciliation, names an owner for it, sets a cadence for it or retains its output as an evidence class**. The 278 are concentrated in the **47** of the 318 tenants whose shift boundary fell inside the window. **No control, no deviation and no register entry owns the 278** — a PI1.2 completeness question the control set does not answer | Grete Lindqvist | Open — referred, on `IS-25` and `IS-26`'s treatment rather than closed by writing a control in the chapter that found the gap; 06.08 §3.1 |

**IS-20 was referred rather than corrected, and that was not the fastest way.** A divergence between two
published control statements is a documented information problem under clause 7.5, and it could have been
made to disappear by editing one row. It was referred instead, because **a library that corrects itself
silently cannot demonstrate that it was ever wrong**, and an internal audit handed a written record of an
inconsistency its owners chose not to hide learns more than one handed a clean library. The contrast is
`D-06-02`, where `CNB-C-096` was **amended**: a statement that is silent can be completed, while two
statements that speak and disagree need a judgement about the framework rather than a correction to it.
**IS-24 takes the same treatment for the same reason**, and it is the harder case: a missing limb could be
closed by adding a citation to a row that already exists, and adding one would make the gap disappear
without anything about the ICT readiness having changed.

**IS-27 is the phase's plainest gap and the only one with no candidate row behind it.** IS-24 has a limb
waiting for a citation and IS-25 has a configuration class waiting for a control; IS-27 has an activity that
somebody performed because they decided it should be performed, on a population that no control saw, no
deviation covers and no register entry describes. **A finding whose whole content is that nothing owns
something is the hardest kind to carry to the next phase**, because there is no owner to ask for a status,
which is why it is written down here with one.

**IS-22 is now four phases old and has changed shape rather than closed.** 03.09 recorded A.5.30 as
`Planned` at SoA v1.0; 04.07 recorded the correction that gave its testing limb a control to sit on; Phase
04's IS-13 records that **27 of the 29 Partial or Planned entries closed at the 2026-06-15 reissue, leaving
only A.5.28 and A.8.32 Partial**, and A.5.30 was one of the 27. So the status field says `Implemented` and
has said so since June — **two months before the exercise that made it supportable.** That is the entry
now: not a status waiting to be upgraded, but a status that was asserted ahead of its evidence and has
since been overtaken by it. It is the same failure R-30 describes, and it is recorded rather than tidied
because a status field corrected by luck is worth writing down.

## Dependencies — DP-27 to DP-30

| ID | Dependency | Owner |
|---|---|---|
| DP-27 | A.5.30's planning limb depends on `CNB-C-136` operating under `CA-06-04`; its maintenance limb depends on the next Statement of Applicability issue resolving IS-24. Neither depends on CAL-16, which exercises `CNB-C-101` and cites A.5.29 | Karim Haddad |
| DP-28 | `DR-F6`'s closure depends on the Q4 in-region failover game day taking place | Wes Delacroix |
| DP-29 | CA-06-02's resolution depends on a decision about the calculation quality review's cadence, which carries a real operating cost in a 4.6-FTE programme | Grete Lindqvist |
| DP-30 | Phase 08's sampling depends on the Q3 evidence classes having produced the units 04.12 declared for them | Rahul Bhargava |

**Total entries: 24** — 7 risks, 4 assumptions, 9 issues, 4 dependencies.

## Cross-References

| Document | Relationship |
|---|---|
| [06.13 Phase Summary and Transition](../06.13-phase-summary-and-transition.md) | Carries the open entries forward |
| [06.10 Business Continuity and ICT Readiness](../06.10-business-continuity-and-ict-readiness.md) | A.5.30, IS-22 and IS-24 |
| [06.11 Operations, Monitoring and the Quarterly Review](../06.11-operations-monitoring-and-the-quarterly-review.md) | IS-20 and IS-21, recorded rather than amended, and the register position |
| [06.12 Quarter Three Operating Record](../06.12-quarter-three-operating-record.md) | IS-23 and SR-11's Q3 position |
| [06.08 Input Validation and Completeness](../06.08-input-validation-and-completeness.md) | IS-27, the 278 unresubmitted writes and the reconciliation no control governs |
| [governance/GOV-24 September Risk Register Review](../governance/GOV-24-september-risk-register-review.md) | PR-40, the R-08 retention and the reporting limb that is not complete |
| [logs/deviation-log.md](deviation-log.md) | The five deviations and the SC-01 commitment failure |
| [05-security-criteria-and-technical-controls/logs/raid-log.md](../../05-security-criteria-and-technical-controls/logs/raid-log.md) | PR-29 to PR-34, AS-27 to AS-30, IS-16 to IS-18, DP-23 to DP-26 |
