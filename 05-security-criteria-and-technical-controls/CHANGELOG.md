# Changelog — Phase 05

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-C05 |
| Version | 1.0 |
| Date | 2026-08-11 |
| Owner | Rahul Bhargava |
| Approver | Karim Haddad |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


## 1.0.0 — 2026-08-11

Initial issue of Phase 05: Security Criteria &amp; Technical Controls.

**Documents.** Fourteen numbered documents, 05.00 to 05.13.

**Artifacts.** 4 Excel trackers · 4 diagrams · 4 governance records ·
5 ADRs · 4 logs · 4 templates.

**Positions fixed in this phase.**

| Position | Where |
|---|---|
| The tenant predicate is a mandatory data-access-layer parameter with a build-time check | 05.04 · ADR-0021 |
| Sequential tenant identifiers retained: enumeration is not authorisation | 05.11 · ADR-0022 |
| No customer notification, with the dissent minuted in substance | 05.12 · ADR-0023 · GOV-19 |
| Query log retention reviewed after the nine-month forensic gap | 05.12 · ADR-0024 |
| A second penetration test inside the observation window | 05.11 · ADR-0025 |
| No standing production access; elevation leaves the record that makes it testable | 05.03 |
| One month is not a period | 05.13 · GOV-20 |

**Corrections applied before issue.**

| # | Correction |
|---|---|
| 1 | **Two Phase 04 controls carried figures that contradicted each other and this phase.** `CNB-C-063` set a Critical vulnerability remediation target of **seven days** while `CNB-C-062` used **fourteen** for endpoint patching and carried no Low target at all; `CNB-C-067` attached a thirty-minute **acknowledgement** service level to **every** alert, where the operating parameter is a thirty-minute **triage to a disposition** for **high-severity** alerts — a difference that decides whether July's population is 1,412 or a fraction of it. Both were found independently by both drafting agents. **Reconciled at source and Phase 04 re-issued** rather than carried here as a disclosed divergence: an inconsistency between two published controls is a defect in the library, and the library is where it gets fixed |
| 2 | Recorded that **DEC-511 post-dates the control it describes.** `CNB-C-051` was published on 2026-06-05 and already required endpoint blocking of removable media; the decision of 2026-07-13 states the position in terms following a question at the Trust Working Group. It did not cause the control and does not claim to |
| 3 | Recorded that **the July change population and the penetration test remediation timeline describe some of the same events** — nine of the sixteen findings were remediated or retested inside July. Stated wherever both figures appear, so that a reader reconciles rather than double-counts |
| 4 | Recorded the limit of the build-time check: it binds the **relational** data-access layer, and the seventeen in-system non-relational stores are reached by services, so their isolation rests on the isolation suite's documented-path coverage. Stated as a disclosed limit rather than allowing "compile-time enforcement" to read as estate-wide |
| 5 | Clarified that the 2026-07-27 entitlement certification is **the first performed under `CNB-C-040` in the GRC platform and the first inside the observation window**, not the first ever — 01.11 schedules CAL-07 quarterly from March |

**Corrections applied after hostile review.** The review returned thirty-four findings. The five most
serious are recorded here; the remainder are figure, attribution and classification corrections applied in
place.

| # | Correction |
|---|---|
| 6 | **The forensic account was technically incoherent, and the fix makes it stronger.** "No request matching the pattern was found" cannot mean what it appeared to mean: the emitted statement is byte-identical whether or not the scoping predicate was applied, so a query log cannot distinguish a scoped result from an unscoped one. The search was for **invocations of the path**, and it found **117, from 9 customers**, each with a logged response cardinality consistent with a single-tenant result. That is a measurement rather than an absence — and it makes the gap concrete: at roughly nine invocations a month, the nine unexamined months hold **on the order of eighty invocations nobody can check** |
| 7 | **The claim that the seven-year archive could not close the gap was unsupported.** It said the archive is pseudonymised and drops request-level parameters; Phase 02's RT-05 says only that it is pseudonymised, and pseudonymisation does not strip statement text. The real reason is that **RT-05 governs authentication and audit events, and database query logging is a separate operational retention of thirteen months**. The archive is not a third place to look because it holds a different artefact |
| 8 | **"Only aggregate totals could be returned" bounds volume, not sensitivity.** A department aggregate over a department of one discloses that person exactly, and two aggregates differenced disclose an individual anywhere. The reporting API applies **minimum-group-size suppression below five** on the department dimension, Ironwood tested it under TS-05, and the phase now says that without it the limit would have bounded volume alone |
| 9 | **The defect mechanism defeated itself as written.** "A connection recycled in that window did not re-run the checkout hook" — but taking a connection from the pool *is* a checkout, so the hook fires by definition. The builder obtained a connection **from the driver directly rather than through the pool wrapper that carries the hook**, and one clause makes the whole account coherent |
| 10 | **"Unconstructable" overstated what a build-time check can do.** A static check verifies the presence of a parameter, not the correctness of its value, and the original defect lived in a query builder — dynamic construction is precisely what static analysis cannot decide. The check binds statically-constructible paths; a wrong tenant value still compiles; dynamic composition rests on the isolation suite's documented-path coverage, the same limit already conceded for the non-relational stores |
| 11 | **Two chapters asserted discrepancies with Phase 04 that had already been reconciled** — the phase contradicted its own changelog in its own folder. Both replaced with a record that the divergence was found here and fixed in the library |
| 12 | **Five Phase 04 control statements did not say what this phase correctly claimed they said** — phishing-resistant factors, second-engineer approval, session recording, the build-time check, the code-owner requirement, and CNB-C-115's pre-remediation wording. All amended in Phase 04 and that phase re-issued. A control library is tested the first time somebody downstream tries to cite it |
| 13 | **"Nine of July's forty-seven changes were penetration test remediation" — the number is four.** Nine findings were remediated *or retested* in July; five of those were remediated in June and only retested, and a retest performed by the tester is not a change by the entity |
| 14 | **R-01 and R-03 have their published exit conditions met and did not move, and nothing reconciled that against R-37 moving on the same evidence.** The answer is DEC-408 and it is now given: R-37 moved because the condition it described was closed and verified closed, not because a treatment was implemented, and R-01 and R-03 await operating history |
| 15 | The dissent had been given a premise that is probably false — that customers hold their own reporting-API usage history. They do not; CloudNimbus does, and those are the records that age out. Cut, and GOV-19's safer formulation used |
| 16 | Attribution and classification corrections: a cryptography claim that a cross-region snapshot copy is unreadable (the copy fails without a destination key rather than producing an unreadable one); a claim that annual key rotation completes re-encryption (automatic rotation does not, and the programme's is a planned re-key with bulk re-wrap); CAL-07's cycle re-derived as three occurrences in the window rather than two; A.7.10's Statement of Applicability status stated as `Partial` rather than implemented; the tenant-administrator flow corrected from DF-01 to DF-02; twenty-nine overlapping control citations corrected to twenty-one distinct rows; the annual key rotation identified as one of the ten controls re-scheduled under ADR-0019; and the artifact inventory corrected against the folders that exist |

**What this phase deliberately does not contain.** No statement that any control operated **effectively** —
that is a conclusion about a period, and there is one month of it. No September availability incident, no
October retention-job failure, no internal audit, no Stage 1 or Stage 2, no examination fieldwork, no test
exception, no nonconformity, no opinion and no certificate. **No legal conclusion about any statutory
notification regime**: the assessment recorded is against the contractual commitment, and the statutory
question is referred to counsel. Phase 05 speaks as at **2026-07-31**.
