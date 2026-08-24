# Changelog — Phase 04

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-C04 |
| Version | 1.0 |
| Date | 2026-08-11 |
| Owner | Rahul Bhargava |
| Approver | Karim Haddad |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


## 1.0.0 — 2026-08-11

Initial issue of Phase 04: Unified Control Framework &amp; Policy Architecture.

**Documents.** Fourteen numbered documents, 04.00 to 04.13.

**Artifacts.** 5 Excel trackers · 4 diagrams · 4 governance records ·
5 ADRs · 4 logs · 4 templates.

**Positions fixed in this phase.**

| Position | Where |
|---|---|
| One library keyed to control identifiers, not to framework references | 04.02 · ADR-0016 |
| 148 controls: 112 dual, 21 SOC 2 only, 15 ISO only — derived, not declared | 04.02 · trackers |
| Six controls implement clause requirements with no Annex A control at all | 04.07 |
| Controls are designed from risks and commitments; the mapping is recorded afterwards | 04.03 · DEC-402 |
| Three criteria are served by exactly one control, and it is recorded rather than papered over | 04.03 · GOV-13 |
| Nineteen policies; every control cites exactly one; every policy is cited | 04.08 · ADR-0017 |
| Every control declares its evidence class before it is built | 04.12 · ADR-0018 |
| No control is owned by a team | 04.11 · ADR-0020 |
| Ten annual controls re-scheduled into the window, and disclosed | 04.11 · ADR-0019 · GOV-16 |
| Register at 37 entries after R-37 was admitted and re-rated | 04.00 · GOV-15 |

**Corrections applied before issue.** Two review rounds ran: a mechanical harness that parses all 148
control rows and re-derives the dual/SOC 2-only/ISO-only split, every family, type and cadence count and
the full criteria and Annex A coverage; and an independent hostile technical review that checked every
mapping citation, every clause reference and a sample of thirty-five rows against what the control actually
says. The second round returned thirty-three findings. They are recorded here rather than absorbed.

| # | Correction |
|---|---|
| 1 | **Five more annual controls had a population of zero in the observation window, and one of them was the sole control serving CC5.3.** The first analysis found five — all built between April and June 2026, inheriting a build date as their first operation. It missed five more whose anniversaries come from the programme's **own assurance calendar**: penetration testing under CAL-11 in May, awareness training under CAL-12 and policy review under CAL-13 in June, and the objectives set at kickoff in January. Every one of those dates falls outside 2026-07-01 to 2026-12-31. They were missed **because they look like established institutional rhythms**, and a rhythm anchored to the wrong month is indistinguishable from a safe one until somebody checks the calendar against the period. The split is now **12 inside, 10 re-scheduled**, derived control by control against 01.11 rather than asserted. `CNB-C-031` would otherwise have had no testable occurrence at all, which makes the concentration disclosed at GOV-13 worse than disclosed: not a criterion thinly supported, but a criterion unsupported |
| 2 | **The library diverges from 03.12 by eleven criteria on one side and by zero on the other.** Phase 03 predicted 44 of 61 criteria served by an Annex A-citing control; the library gives 55. The Annex A side reproduces Phase 03's nine unmapped controls **exactly**. Divergence of eleven on one side and none on the other is the signature of a column fitted to a forecast, and it is a stress-test failure for DEC-402 — the direction-of-derivation rule this phase calls its centre of gravity. Recorded at 04.03 §4.1 with the eleven reconciled criterion by criterion, and confronted rather than explained away |
| 3 | **Two chapters asserted that criteria had no Annex A analogue while their own rows cited one.** PI1.1, PI1.3, PI1.5, P2.1 and P8.1 were all described as having none, against citations of A.8.26, A.8.9, A.8.32, A.5.34 and A.5.36 in the tables below the claim. A statement contradicted by the table three inches beneath it tells a reader the mapping column was not read by the person writing the prose. Only **P1.1 and P3.2** are served exclusively by controls citing no Annex A control, and the prose now says so |
| 4 | **The penetration test finding leaked, and two chapters named two different controls as R-37's subject.** Read together, 04.05 and 04.06 disclosed what the test found and what changed in response — which Phase 05 owns. Both cut to the disclosed dates and ratings; the entry is now said, once, to bear on the tenant isolation control set as a whole |
| 5 | **Five documents claimed the library carries an evidence-class column, and one claimed the build harness checks it.** It does not, and it cannot. The mapping is recorded per evidence class in 04.12's `Produced by` column, which now carries control identifiers for all 24 classes so that every one of the 148 controls is reachable from it |
| 6 | **`CNB-C-062` and `CNB-C-138` were the same mechanism split across two rows** — the same platform, the same 231 devices, the same monthly cycle, the same fourteen-day threshold, the same consequence. The control change log records nine draft duplicates removed for exactly that reason and this pair survived. It was load-bearing: A.7.13 is presented as mapping to no criterion while the identical mechanism in `CNB-C-062` maps to CC6.6 and CC7.1. They are now genuinely different controls — patching and remediation targets against hardware maintenance and lifecycle — and 04.07 says the pair *was* a duplicate as drafted |
| 7 | **Four Annex A citations did not survive examination.** A.7.14 secure disposal of equipment cited by a software deletion orchestrator; A.5.37 documented operating procedures cited by a policy publication control; A.8.9 and A.8.32 cited for recording calculation lineage, which is reproducibility rather than configuration or change management. All removed, each re-checked to confirm the Annex A control is still implemented elsewhere, and A.5.33 protection of records substituted where the control genuinely implements it |
| 8 | **A.5.31 legal, statutory, regulatory and contractual requirements had no control that maintains anything.** Phase 03 recorded it as implemented by the O1 to O12 obligations register; the library cited it from a customer-commitments control and an insurance review. `CNB-C-014` is rewritten as the obligations-register control it was supposed to be. This is the "coverage is a completeness property, not a sufficiency property" gap the phase warns about, occurring in the phase's own table |
| 9 | **A.5.30 was missing from the control that performs its testing limb.** The clause requires ICT readiness to be planned, implemented, maintained *and tested*; only the planning control cited it, while the annual disaster recovery exercise cited A.5.29 alone |
| 10 | **Three ISO clause statements were wrong.** Clause 7.5.3 names **four** activities to be addressed as applicable, with documented information of external origin a separate requirement rather than a fifth. Clause 9.3.2 has **seven** named inputs, not eight. Clause 6.2's requirement that objectives **be available as documented information** was omitted from an assessment introduced as covering each requirement. Clause 5.1 has **eight** limbs and five were given and counted as the whole — and limb h), supporting other management roles to demonstrate leadership in their areas, is the one that actually carries the delegated-approval argument |
| 11 | **The re-scheduling disclosure was assigned to DC4 and to Phase 06.** DC4 is disclosures about *incidents*. A control operating on a re-scheduled date belongs to **DC5**, which this phase carries, and to **DC9** in Phase 09 if the re-scheduling is a change during the period. Phase 02 assigned DC5 and DC8 to this phase and neither appeared in it; both are now answered, DC8's answer being that no criterion is inapplicable because management selected all five categories |
| 12 | **Two controls were scoped to assets outside the SOC 2 system** — a tenant scoping predicate applied to six Aurora clusters when `staging-core` holds no tenant data, and a capacity review sized against four EKS clusters when three are in the system. Both scoped to the in-system population, and the general rule stated: a control's population is the ISMS boundary unless the row names the system boundary |
| 13 | **A statement about the population of customer offboardings asserted an outcome about a window that has not opened**, and had no source in any prior phase. The one vantage slip in the phase |
| 14 | Four figures contradicted their own tables or the phase's own artefacts: "implemented by 127 controls" where the library gives 121; "all seven CC3 rows cite no Annex A control" where five of seven do not and two do; "disclosed as CSOC-01 to CSOC-11" where only three of the eleven concern environmental protection, power and physical redundancy; and "only OBJ-02 carries an explicit date" where OBJ-04's target is dated 2026-06-30 |
| 15 | The split was said to be "never written as a column" while the generated workbook carries a derived one; the derivation rule needed the six both-dashes rows special-cased to reach fifteen and did not say so; and "in a SOC 2 examination there is no equivalent of an exclusion" read as a claim that SOC 2 requires all five categories, when category selection is management's and 01.05 is entirely about that decision |
| 16 | `CNB-C-144` and `CNB-C-145` failed the phase's own mechanism test — both restated the clause they implement rather than naming what happens, and both opened by citing the clause, which 04.03 identifies as the reverse-engineering tell. Rewritten to lead with the mechanism |
| 18 | **Five control statements did not say what Phase 05 correctly claimed they said, and Phase 05 caught it by citing them.** `CNB-C-032` required multi-factor authentication without requiring the factor to be phishing-resistant; `CNB-C-034` required just-in-time elevation without requiring the second-engineer approval or the session recording that make the elevation record testable; `CNB-C-035` described the enforcement point without the mandatory parameter and build-time check that were the substance of the R-37 remediation; `CNB-C-079` required an approving review without requiring it from a code owner; and `CNB-C-115` still described tenant isolation as a row-level security predicate, which is the mechanism the remediation replaced. All five amended. **A control library is tested the first time somebody downstream tries to cite it, and this is what that test found** |
| 19 | `CNB-C-063` set a Critical remediation target of seven days where the operating schedule and `CNB-C-062` both use fourteen, and carried no Low target; `CNB-C-067` attached a thirty-minute acknowledgement service level to every alert where the operating parameter is a thirty-minute triage to a disposition for high-severity alerts. Both found independently by both Phase 05 drafting agents. Reconciled here rather than carried in Phase 05 as a disclosed divergence — an inconsistency between two published controls is a defect in the library |
| 17 | The phase README's artifact inventory named three diagrams, one template and one log that do not exist, and missed the four that do. The substitution of clause 6.2 objectives for Statement of Applicability maintenance among the six ISMS-machinery controls was flagged only in this changelog, which is not one of the fourteen documents; it is now flagged where a reader comparing Phase 03 with Phase 04 will meet it |

**A note on what the review did not find.** Every one of the 148 control identifiers, all fourteen family
counts, the type and cadence distributions, the 112/21/15 split, the three single-control criteria, the
nineteen policies and the twenty-four evidence classes were verified by parsing rather than reading, and
all were exact. So were every cited criterion and every cited Annex A control. **The defects were in the
prose that described the tables, in four citations out of 188, and in the arithmetic of a calendar.**

**What this phase deliberately does not contain.** No evidence that any control has operated — the
observation window opens the day after this phase's vantage, and a library is a set of claims until it is
tested. No Stage 1, no Stage 2, no internal audit, no examination outcome, no test exception, no
nonconformity. No description of the penetration test finding behind R-37: Phase 05 owns it. Phase 04
speaks as at **2026-06-30**.
