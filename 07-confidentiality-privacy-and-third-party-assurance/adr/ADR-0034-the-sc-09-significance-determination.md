# ADR-0034 — The SC-09 miss is determined not to be a significant failure, and the determination is written down

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-A34 |
| Version | 1.0 |
| Date | 2026-11-27 |
| Owner | Tobias Lund |
| Approver | Karim Haddad |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


| Field | Value |
|---|---|
| Status | Accepted |
| Date | 2026-11-17 |
| Decider | Tobias Lund |
| Phase | 07 — Confidentiality, Privacy &amp; Third-Party Assurance |

## Context

**SC-09**, sourced from obligation **O6** in the data processing addendum, commits CloudNimbus to
**assistance with a data subject's request within 10 business days**. `CNB-C-129` implements it.

In the period 2026-10-01 to 2026-11-27 there were **31** assistance requests. **30 were assembled inside ten
business days. One was not:** received Thursday **2026-10-29**, due Thursday **2026-11-12**, delivered Monday
**2026-11-16** — **twelve business days**, an overrun of two. The record set was delivered **complete**. The
cause was structural: the individual had changed employer, both employers use CloudNimbus, and `CNB-C-129`'s
assembly is tenant-scoped because the scoping predicate it runs under is `CNB-C-115`'s. 07.06 §3 carries it.

The deviation is **`D-07-03`**, 1 of 31, with clause 10.2 corrective action **`CA-07-05`**. That much is
mechanical.

**DC4** is not mechanical. It requires the description of the system to disclose relevant details of
identified system incidents that resulted from controls not suitably designed or not operating effectively,
**or that resulted in a significant failure in the achievement of one or more service commitments and system
requirements**, during the period. The second limb turns on **significant**, DC section 200 does not define
it as a threshold anybody can compute, and **somebody has to decide.**

Phase 06 faced the same word from the other side and answered yes: the September availability incident
**was** a significant failure in the achievement of SC-01, disclosed under the second limb, with the
reasoning at ADR-0028. Phase 07 has now faced it twice and answered it both ways. **07.03 §8.1 determined
that the failure in the achievement of SR-08 — sixty-eight consecutive nights, a whole region, and the most
sensitive category the platform holds — *was* significant.** This decision determines that the SC-09 miss
was not. **Three determinations, two outcomes, and the value of any of them depends entirely on all of them
being recorded**: a programme that answered the question the same way every time would be applying a habit
rather than a test.

## Decision

> **Management determined that a single assistance request delivered two business days late, on a record set
> spanning two employers, was not a significant failure in the achievement of SC-09 for the purposes of
> DC4** — one instance in thirty-one, the employer's own response window unaffected, and the individual's
> record set delivered complete. **The determination is management's, it is written down here rather than
> left implicit, and the service auditor may reach a different view.**

**DEC-711**, Tobias Lund, 2026-11-17.

The three grounds, stated separately because a reader may accept some and not others.

**One instance in thirty-one.** The commitment was met on 96.8% of the period's requests, and the single miss
is not part of a pattern: there is no second overrun, no trend across the period, and no other request that
came close to the window.

**The employer's own response window was unaffected.** CloudNimbus assists; the employer responds. The two
extra business days were absorbed inside the employer's own timetable for its response to its employee, and
no downstream commitment or expectation moved as a consequence. That is a statement of operational fact from
the case record and it is **not** a statement about anybody's legal position.

**The record set was delivered complete.** Nothing was omitted, nothing was refused, and the individual
received the whole of what a timely response would have contained. A late complete response and a timely
partial one are different failures and only one of them is present here.

## Consequences

**A determination is now on the record where a silence would have attracted no questions.** A two-day overrun
on one request out of thirty-one looks self-evidently minor, and a description that never mentioned it would
have drawn nobody's attention until somebody sampled the privacy case register. **An unrecorded judgement
that something was insignificant is indistinguishable, a year later, from nobody having considered it**, and
this programme has taken the same view of every other judgement it has made.

**It is bounded, and the bounds are the point.** The determination is about **SC-09 and DC4's second limb**
and nothing else. It says nothing about `D-07-03`, which stands as a deviation and **will be presented for
disclosure in Section IV** with the population it was found on — what appears in Section IV, and how it is
evaluated, is the service auditor's business rather than management's. It says nothing about whether **P5.1** or **P5.2** was met, which is the
service auditor's evaluation and not management's determination. It says nothing about the opinion. And it
says nothing about `CA-07-05`, which remains open — **determining a failure insignificant is not determining
it acceptable.**

**It is contestable and is written in a form that can be contested.** The service auditor evaluates
significance independently, on the whole period's evidence rather than on fifty-eight days of it, and one in
thirty-one at this vantage may be one in sixty by 31 December, or two. Recording the grounds gives Ashcombe
&amp; Doyle something specific to disagree with, which is more useful to them than a silence they would have
to reconstruct from a case register.

**And it must be re-confirmed at period end**, on the same terms ADR-0028 set for a disclosure drafted at a
vantage. The determination rests on a population of thirty-one and a single instance. Both figures are
provisional until 2026-12-31, and a determination made on five months of evidence is not automatically the
determination the sixth month supports. **Phase 09 inherits the obligation to re-confirm it, not merely to
carry it.**

## Alternatives considered and rejected

**Say nothing, on the ground that a two-day overrun is obviously not significant** — rejected, for the reason
above. Obviousness is not a record, and the person who finds the case register in fieldwork will not know
whether the question was asked.

**Determine it significant and disclose it under DC4's second limb** — rejected, and considered seriously
rather than dismissed. It is the conservative option, it costs nothing to over-disclose, and a programme that
disclosed Phase 06's SC-01 failure might be thought to owe symmetry here. It was refused because
**over-disclosure is not free.** A description that reports every commitment miss as a significant failure
has stopped using the word to mean anything, and the reader loses the ability to tell a seventy-one-minute
outage that exhausted a monthly allowance for 599 customers from a two-day overrun on one individual's
record set. **The symmetry that matters is that both were determined and both were recorded**, not that both
were answered the same way.

**Fold the SC-09 miss into `D-07-03` and report one thing** — rejected. A service commitment failure is not a
control deviation. They arise from different instruments, are disclosed in different parts of a report, and
Phase 06 kept SC-01 separate from its five deviations for exactly this reason. One event, counted once
against a control and once against a commitment, is not two events; reporting it once is losing one of the
two things a reader needs.

**Defer the determination to period end** — rejected on ADR-0028's reasoning. The facts of the case are
freshest now, the reasoning is available now, and a determination reconstructed in February from a case
record is a determination made by people who already know how the period ended. The re-confirmation
obligation above is the cost of drafting early and is accepted with it.

## Related

| Reference | Relationship |
|---|---|
| [07.06 Access, Correction and Data Subject Requests](../07.06-access-correction-and-data-subject-requests.md) | §3 and §5, the case, `D-07-03`, `CA-07-05` and the determination in context |
| [07.03 The RT-02 Retention Failure](../07.03-the-rt-02-retention-failure.md) | §8.1, the significance determination on SR-08, decided the other way |
| [07.12 Quarter Four to Date — Operating Record](../07.12-quarter-four-to-date-operating-record.md) | SC-09 listed separately from the three deviations |
| [logs/decision-log.md](../logs/decision-log.md) | DEC-711 |
| [02.12 Principal Service Commitments and System Requirements](../../02-system-scope-isms-boundary-and-description/02.12-principal-service-commitments-and-system-requirements.md) | SC-09 and its source in O6 |
| [02.11 Complementary User Entity Controls](../../02-system-scope-isms-boundary-and-description/02.11-complementary-user-entity-controls.md) | CUEC-08, the employer's response and CloudNimbus's assistance |
| [04.06 Controls for Availability, Processing Integrity, Confidentiality and Privacy](../../04-unified-control-framework-and-policy-architecture/04.06-controls-for-availability-processing-integrity-confidentiality-and-privacy.md) | `CNB-C-129` as published |
| [06.06 Incident Management and the DC4 Disclosure](../../06-availability-processing-integrity-and-operations/06.06-incident-management-and-the-dc4-disclosure.md) | DC4's second limb answered yes, and the re-confirmation obligation ADR-0028 set |
| [ADR-0028](../../06-availability-processing-integrity-and-operations/adr/ADR-0028-the-dc4-disclosure-is-written-at-the-vantage.md) | The terms on which a determination made at a vantage is inherited |
