# ADR-0036 — A clean Stage 1 is not assurance

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2027-A36 |
| Version | 1.0 |
| Date | 2027-02-05 |
| Owner | Karim Haddad |
| Approver | Elise Fontaine |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


| Field | Value |
|---|---|
| Status | Accepted |
| Date | 2026-10-14 |
| Decider | Karim Haddad |
| Phase | 08 — Internal Audit, Certification &amp; the Type II Examination |

## Context

**ISO Stage 1 ran 2026-10-12 to 2026-10-14** and returned **0 nonconformities and 6 areas of concern**, two
of which Northgate Certification Services stated would have become major nonconformities at Stage 2 had they
not been closed. Both of those two — `AOC-01`, the Statement of Applicability's stale status fields, and
`AOC-02`, the ISMS scope statement's determinations — were documented information that had fallen out of
step with the organisation, and both were closed inside three weeks.

**Northgate raised nothing about the internal audit programme.** Under ISO/IEC 17021-1 a Stage 1 is required
to evaluate whether internal audits and management review are **being planned and performed**, and Northgate
did: it read Camberwell Risk Partners' report of 2026-09-25, the audit plan, the recorded independence check
and the clause 9.3 management review minute of 2026-09-30, and it found a programme that existed, was
resourced, ran to plan, reported, and whose results reached a management review chaired by the Chief
Executive Officer with all seven clause 9.3.2 inputs presented.

Two weeks earlier, **DEC-801** had read Camberwell's §1.3 scope note — the programme excludes clauses 4 to
10 and one of the three regions in the ISMS scope, and the exclusion should be reconsidered before the
certification audit — agreed with it, and scheduled clause coverage into the **2027** programme rather than
2026. **DEC-802** confirmed the deferral at the management review of 2026-09-30.

**Between 2026-10-14 and 2026-11-30 nobody re-opened the scope question.** Those seven weeks were the last
interval in which a second internal audit could have been commissioned, scoped, resourced and completed
before Stage 2 opened.

## Decision

**The programme records, as a decision record in its own right, that it read Stage 1's silence about the
internal audit programme as assurance that the deferral was safe — and that this was a misreading.**

> **A Stage 1 that raises nothing about your internal audit is not evidence that your internal audit is
> adequate; it is evidence that you have one.**

**Stage 1 asks whether the machinery exists. Stage 2 asks what it covered.** Those are different questions,
asked by different audits, against different criteria, with different amounts of auditor time — three days
against ten auditor-days — and the first returning nothing says nothing about the second.

**This record documents the misreading rather than the decision, and the distinction is the point.** The
decision is already at DEC-801 and DEC-802, minuted at the time, with its reasoning. **The misreading was
never written down anywhere.** No minute records it, no line against `PR-06` records it, and the Trust
Committee record for October carries no discussion of the scope question at all. It was nonetheless
operative: it is the reason the seven weeks passed without the question being re-opened.

## Consequences

**An inference that changes behaviour and appears in no record is the hardest kind to audit, including for
the organisation making it.** DEC-801 and DEC-802 can be examined, argued with and defended; each has a
date, a decider and a stated reason, and both were reasonable in the room. The October inference has none of
those and cannot be tested against anything, because it was never articulated to anybody — including to the
people holding it.

**The same category error is available elsewhere in this programme and has already been made twice.** The
2025 Type I was clean and told CloudNimbus exactly where it would fail a Type II; the management letter's
ML-1 and ML-2 named two subject areas that produced test exceptions eighteen months later. The disaster
recovery exercise of 2026-08-19 achieved its objectives and could not have found the connection pool
assumption that produced the September Severity-1 twenty days afterwards, because a regional failover
replaces the whole application tier and never exercises a live tier's reaction to a data-layer failover
beneath it. **In each case the absence of a finding was a fact about the scope of the thing that found
nothing.**

**The transferable rule is therefore stated as a question rather than as a prohibition**: before treating a
clean result as support for a decision, establish what the exercise that produced it was **capable of
finding**. Nothing about Stage 1 was defective. It evaluated correctly what ISO/IEC 17021-1 sends it to
evaluate, and it evaluated it in three days.

**It did not cause `MAJ-01` and this record does not suggest otherwise.** The nonconformity was already
determined by the 2026 programme's scope by the time Stage 1 opened; no Stage 1 outcome could have changed
what the September audit had covered. What the seven weeks could have changed is whether a second audit
existed by 2026-11-30, and **08.05 §4** argues the grade on its own terms without reference to them.

**And the record itself has a cost worth naming.** Writing down that the organisation drew an unstated
inference invites the reading that the organisation is excusing DEC-801. It is not: DEC-801 and DEC-802 are
recorded as decisions, they are the decisions the major nonconformity is against, and the decision log says
in terms that neither of them was a mistake in the ordinary sense. **This record is about the seven weeks
afterwards, in which nothing was decided at all.**

## Alternatives considered and rejected

**Record nothing** — rejected. The alternative to writing this down is a phase in which Stage 1 returns
zero nonconformities, seven weeks pass, and a major nonconformity arrives, with no account of what the
organisation believed in between. **A gap in the narrative is read as an absence of thought, and the truth
is worse and more useful: there was thought, and it was wrong.**

**Record it as a decision with a date and a decider** — rejected, because it was not one. Assigning it a
decision number would assert that somebody considered whether Stage 1's silence supported the deferral and
concluded that it did. Nobody did. **A programme that manufactures a decision record for an inference
nobody took has improved its paperwork and falsified its history**, which is the failure ADR-0026 refused in
a different form when it declined to re-perform a missed restore test and date it August.

**Blame the certification body's methodology** — rejected without much difficulty, and named because it was
raised. Northgate could have written into its Stage 1 report that the internal audit programme's coverage
had not been evaluated and would be at Stage 2. It did not, and nothing required it to; ISO/IEC 17021-1
fixes what a Stage 1 evaluates and a certification body is not obliged to enumerate what it has not looked
at. **An auditee that expects an auditor to disclaim the scope of its own silence has moved its judgement to
the other side of the table.**

**Read the lesson as "commission more audits"** — rejected as the wrong generalisation. The corrective
action for `MAJ-01` is a coverage matrix, an escalation and a control, not a higher audit frequency, and
**08.07 §4** sets it out. More audits with the same scope would have produced the same finding twice.

## Related

| Reference | Relationship |
|---|---|
| [08.03 ISO Stage 1 and What a Readiness Review Does Not Do](../08.03-iso-stage-1-and-what-a-readiness-review-does-not-do.md) | §5, which this record belongs to, and the six areas of concern |
| [08.01 The Clause 9.2 Internal Audit](../08.01-the-clause-9-2-internal-audit.md) | §5, the scope note and DEC-801 |
| [08.02 The Clause 9.3 Management Review](../08.02-the-clause-9-3-management-review.md) | Input d) 3) and DEC-802 |
| [08.05 Stage 2 and the Major Nonconformity](../08.05-stage-2-and-the-major-nonconformity.md) | `MAJ-01`, and why the grade does not turn on these seven weeks |
| [logs/decision-log.md](../logs/decision-log.md) | DEC-801 and DEC-802 as taken |
| [logs/evidence-index.md](../logs/evidence-index.md) | EV-806, Northgate's Stage 1 report |
| [ADR-0026](../../06-availability-processing-integrity-and-operations/adr/ADR-0026-the-missed-restore-test-is-not-back-dated.md) | The rule against improving a record after the fact |
| [06.04 Disaster Recovery and the August Exercise](../../06-availability-processing-integrity-and-operations/06.04-disaster-recovery-and-the-august-exercise.md) | An exercise that achieved its objectives and could not have found what came next |
| [01.04 Prior Type I Baseline and Carried Matters](../../01-program-foundation-dual-framework-governance/01.04-prior-type-i-baseline-and-carried-matters.md) | A clean Type I that named two of the nine exceptions eighteen months early |
| [01.11 Assurance Calendar and Obligations](../../01-program-foundation-dual-framework-governance/01.11-assurance-calendar-and-obligations.md) | §7 and `PR-06`, which named the exposure in January 2026 |
| [01.03 ISO/IEC 27001:2022 Landscape and Certification Route](../../01-program-foundation-dual-framework-governance/01.03-iso-iec-27001-2022-landscape-and-certification-route.md) | What a Stage 1 is and what it is not |
