# Changelog — Phase 01

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-C01 |
| Version | 1.0 |
| Date | 2026-08-11 |
| Owner | Rahul Bhargava |
| Approver | Karim Haddad |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


## 1.0.0 — 2026-08-11

Initial issue of Phase 01: Programme Foundation &amp; Dual-Framework Governance.

**Documents.** Fourteen numbered documents, 01.00 to 01.13.

**Artifacts.** 6 Excel trackers · 4 diagrams · 4 governance records ·
5 ADRs · 4 logs · 4 templates.

**Positions fixed in this phase.**

| Position | Where |
|---|---|
| All five trust services categories in scope — 61 criteria | 01.05 · ADR-0002 |
| ISMS scope is the whole organisation | 01.06 · ADR-0003 |
| One control library, one evidence store, two deliverables | 01.06 · ADR-0001 |
| Four-way separation of assurance roles | 01.09 · ADR-0004 |
| Stage 2 accepted inside the observation window | 01.06 · ADR-0005 |
| Programme envelope $1,400,000; committed $1,366,000 | 01.07 |
| Obligations O1 to O12 | 01.11 |
| Milestones MS-01 to MS-18 | 01.12 |

**Corrections applied before issue.** Two review rounds ran against this phase: a mechanical harness
checking links, fences, Mermaid syntax, table shape, identifier series and cross-document arithmetic, and
an independent hostile technical review of every SOC 2 and ISO/IEC 27001:2022 claim. Both found real
defects and both are recorded here rather than quietly fixed.

| # | Correction |
|---|---|
| 1 | **The Audit &amp; Risk Committee's independence was asserted and refuted by its own membership.** Four documents rested on the claim that internal audit answers to a body management does not control, while the committee's stated composition gave management two of three votes. The composition is restated — one independent voting member, management in attendance only — and the claim is replaced with an honest account of what independence a 187-person private company can actually buy |
| 2 | **The phase spoke from two dates at once.** It declared the risk assessment and the control library "not yet" done while the milestone table dated both before the document date, and simultaneously stated the Statement of Applicability outcome, the Type I closure status and the penetration-test result — all of which belong to Phases 03, 04 and 05. The vantage is now fixed at the close of the foundation phase and stated at 01.00 §8, and every forward-looking outcome has been removed |
| 3 | **The vendor arithmetic was presented as a three-way partition and cannot be one.** Both subservice organisations are also sub-processors. The register is now 84 vendors, 11 sub-processors under a DPA including both subservice organisations, and 73 ordinary vendors — overlapping sets, with the observation that treating the classes as disjoint is precisely the error ML-3 recorded |
| 4 | AT-C section 205 correctly described as *Assertion-Based Examination Engagements* following SSAE No. 21, with direct examination engagements at AT-C section 206 noted as not the SOC 2 route. An earlier draft of this changelog claimed the correction before it had been made |
| 5 | Clause reference in the nonconformity template corrected: the obligation to determine whether similar nonconformities exist elsewhere is clause 10.2 b) 3), not 10.2 a) 3) |
| 6 | Charter approval reconciled — the CEO approves, the Audit &amp; Risk Committee ratifies, and the board resolution is a noting resolution. Three documents had named three different approving bodies |
| 7 | The rejected bundled engagement is described identically in 01.09, ADR-0004 and GOV-03: readiness advisory, outsourced internal audit and certification through an affiliated body. Two records had called it pre-assessment, which would not have supported the argument the narrative built on it |
| 8 | Trust Committee membership reconciled between 01.07 and GOV-02, and the Audit &amp; Risk Committee chair removed from it — she cannot sit in the management forum whose decisions she later challenges |
| 9 | Trust Committee minutes no longer cited as evidence for CC2.3, which concerns communication with external parties |
| 10 | Quarterly items CAL-03 and CAL-04 added to every 2026 quarter in the month-by-month calendar; CAL-06's first occurrence relabelled, since a risk register review cannot precede the register |
| 11 | Five wrong section pointers corrected in the decision log and the evidence index, and CAL-04 removed from a citation about Audit &amp; Risk Committee meetings |
| 12 | The claim that PI1 has no Annex A analogue "at all" softened — A.8.26's ISO/IEC 27002:2022 guidance reaches input validation, output validation and transaction integrity, and part of the PI1 population maps there |
| 13 | The MS-07 before MS-08 dependency rationale replaced: it had argued that policies cannot precede the controls they mandate, which is both backwards and inconsistent with clause 5.2 making the policy a leadership obligation |
| 14 | OBJ-05's measure restated as elapsed turnaround rather than staff effort in 01.01 and 01.05; 11.4 elapsed days is not 11.4 person-days |
| 15 | The resourcing breakdown moved into the prose of 01.07 §6 and the workbook regenerated from it, so that the claim that every tracker is parsed from the narrative is true of every tracker |
| 16 | Eight external parties now accounted for in 01.09 §1, which had enumerated seven; the separation worksheet retitled, having listed five roles under a four-way heading |
| 17 | Enterprise MSA template dated 2024 consistently, and the RAID log's IS-02 rewritten — obligation O1 has been *unmet*, not met, since that template was adopted, recorded without reaching the legal conclusion that it was breached |
| 18 | Programme duration stated consistently as approximately fourteen months to the 2027-03-11 board report; two documents had applied "fourteen months" to a span ending 2027-02-26 |
| 19 | 01.10's claim that the certificate is the only publicly showable artefact reconciled with the trust centre described two sections later: the certificate is the only assurance *deliverable* that can be shown publicly, while the trust centre carries CloudNimbus's own statements about itself |
| 20 | CC6.1 paraphrase corrected — it concerns logical access security software, infrastructure and architectures, not the restriction of access to authorised persons, which is nearer CC6.2 and CC6.3 |
| 21 | The register-arithmetic note that appeared in an earlier draft of this changelog has been removed. It cited a Phase 03 baseline count and two R-numbers, and no Phase 01 artefact may do that — `R-nn` is reserved for the register Phase 03 establishes |
