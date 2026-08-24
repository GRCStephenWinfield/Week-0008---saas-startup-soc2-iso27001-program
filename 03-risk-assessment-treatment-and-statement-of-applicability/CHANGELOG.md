# Changelog — Phase 03

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-C03 |
| Version | 1.0 |
| Date | 2026-08-11 |
| Owner | Rahul Bhargava |
| Approver | Karim Haddad |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


## 1.0.0 — 2026-08-11

Initial issue of Phase 03: Risk Assessment, Treatment &amp; Statement of Applicability.

**Documents.** Fourteen numbered documents, 03.00 to 03.13.

**Artifacts.** 5 Excel trackers · 4 diagrams · 4 governance records ·
5 ADRs · 4 logs · 4 templates.

**Positions fixed in this phase.**

| Position | Where |
|---|---|
| One register serving clause 6.1.2 and CC3, scoped to the ISMS boundary | 03.01 · ADR-0011 |
| The three movement rules: likelihood only, likelihood 1 reserved, eight is a floor | 03.02 · ADR-0012 |
| Baseline 7 High · 17 Moderate · 12 Low = 36 | 03.04 · GOV-09 |
| Modify 31 · Retain 4 · Share 1 · **Avoid 0** | 03.06 · ADR-0014 |
| R-19 and R-20 immovable; R-20 constrained by obligation O8 | 03.07 · GOV-10 |
| Close forecast 0 · 16 · 22, published with its derivation | 03.07 · ADR-0015 · diagrams |
| 91 of 93 Annex A controls necessary; 2 excluded; 4 argued and refused | 03.09 · 03.10 · 03.11 · ADR-0013 |
| The Annex A to criteria mapping is CloudNimbus's own assertion | 03.12 |

**Corrections applied before issue.** Two review rounds ran against this phase: a mechanical harness that
re-derives every band count, the whole close forecast and every Statement of Applicability total from the
narrative, and an independent hostile technical review that checked all ninety-three Annex A titles
character by character against the standard, every clause citation, and a sample of the register citations
in the Statement. The second round returned twenty-six findings. They are recorded here rather than quietly
absorbed.

| # | Correction |
|---|---|
| 1 | **Residual risk was being accepted by people who are not the risk owners.** Clause 6.1.3 f) requires *the risk owners'* acceptance of the residual, and the four retained entries were recorded as accepted by the Chief Executive Officer and the VP Security &amp; Trust. Two signatures are now recorded against each: the **risk owner's**, which the clause requires and which is never substituted, and the **additional acceptance** CloudNimbus's own criteria demand at that band. An executive acceptance recorded in place of the owner's is a conformity finding that is trivial to evidence, and the programme noticed it here rather than at Stage 1 |
| 2 | **The only forecast movement not backed by the treatment plan had nothing behind it.** R-04 is the one *shared* risk and therefore carries no plan item, yet it was forecast to fall on the strength of "a contractual availability commitment at renewal" with no owner, no date and no record. The renewal of the Halcyon Identity master agreement on **2026-03-18** — which added a service availability commitment and a service credit regime that did not exist before — is now recorded as the substance of the share treatment, with its negotiator and its date, and the single likelihood step rests on it. A contract does not operate a control, and it is worth one step and no more |
| 3 | **Eight register citations in the Statement of Applicability did not bear examination.** A stolen laptop was cited against protection against malware, against software installation control and against web filtering; a third-party dependency vulnerability was cited against equipment maintenance; incomplete logging was cited against protection of information systems during audit testing. Since the phase offers the citations as the test of whether the derivation ran in the right direction, a citation that fails the test is worse than none. All eight were re-made, and **R-26 fell from fifteen citations to eleven** — a Low risk with the largest control surface in the register was the shape of padding, and the phase had been reading it as a finding |
| 4 | **The paragraph demonstrating forecast discipline double-counted a retained risk as a modified one** — nine of the twelve non-movers were said to carry treatment items when four of the twelve are retained and eight carry items |
| 5 | **SR-12 was attributed to Phase 01 as an assumption.** It is a Phase 02 system requirement created under ADR-0007, on which four scope exclusions rest. The point being made — that an assumption is a risk not yet admitted — survives, but AS-01 and AS-02 are the Phase 01 assumptions and they became SR-08 and SR-01 in Phase 02 |
| 6 | **R-09 was said to descend from the 2025 Type I management letter.** ML-1 became R-10, ML-2 became R-08 and ML-3 became R-16. R-09 has its own justification and now carries it |
| 7 | **"A High rating is not retainable at all", followed immediately by the conditions on which it may be retained.** A criterion cannot be both an absolute prohibition and an escalation. Rewritten as the escalation it is: not retainable on the authority of the risk owner or the VP Security &amp; Trust, retainable on the Chief Executive Officer's acceptance with the reasoning minuted, and no entry took that path |
| 8 | Five statements contradicted their own tables: "six of the seven" High entries could never be rated Low when all seven can never be; "twenty-eight items" in a corridor that contains all thirty-one; "two entries cannot move at all" when twelve are forecast not to; "a forecast floor of 8 or 10" when R-04 is forecast at 12; and "the 17 cluster in four places" above a table with six |
| 9 | **The 148-control reconciliation assumed a one-to-one relationship the same section denies.** The assumption is now stated, with the +4 and +6 adjustments named as the places it fails. A reconciliation resting on a stated assumption is worth more than one that appears to fall out of the arithmetic |
| 10 | **The nine Annex A controls mapping to no criterion were said to be a direct consequence of the four refusals.** Only one of the nine was a refusal; three are controls kept *without argument*, which is the opposite |
| 11 | Phase 01's qualifications on A.5.7 and A.5.30 had been dropped into absolute statements. Restored — claiming no overlap at all is a mapping error in the other direction, as 01.06 itself warns. Phase 01's "the largest cluster is the COSO material in CC1" is now read explicitly as CC1 through CC5 collectively rather than silently contradicted |
| 12 | **A.8.30 outsourced development was Necessary and Implemented with no described subject matter** in a company Phase 02 describes as having 78 in-house engineers. It now carries the supply-chain reading it rests on, and a sentence in the chapter whose subject is the controls that were argued |
| 13 | **The treatment for the key-person risk was owned by the key person.** R-25 is owned by the CFO precisely because the person it depends on cannot own the risk of depending on him; TP-24 is work only he can do. Stated, with completion verified by the risk owner rather than by the person doing the work |
| 14 | The Statement described "the two subservice organisations and the eleven sub-processors", implying thirteen parties. Both subservice organisations are **among** the eleven — the partition error ML-3 recorded |
| 15 | The phase README's artifact inventory listed diagrams and logs that do not exist and omitted the **forecast derivation**, which is the phase's most load-bearing artefact and EV-309 |
| 16 | Two flowcharts of the same decision disagreed on where retention sits. Modification is terminal; each entry takes exactly one disposition; the four retained entries carry no treatment item, and that is the visible consequence of the choice rather than an omission |
| 17 | The RAID log's header said twenty entries above a total of nineteen |
| 18 | Minor: the illustration for the band-gap property proved a different point from the one claimed; ISO/IEC 27005:2022 described as a series when it is a single standard; and a grading stated as a certainty — "has a major nonconformity" — where grading is the certification body's judgement, now "invites" |

**Corrections carried from the drafting round.**

| # | Correction |
|---|---|
| 19 | The binding brief said TH-14 generated fourteen register entries; the register says **fifteen**. Both drafting agents counted independently and both returned fifteen |
| 20 | **The naive reading of the movement rules does not produce the published forecast.** Dropping every moving entry to likelihood 2 gives 0 · 12 · 24, not 0 · 14 · 22. Three entries stop above their floor and each carries its reason: R-04, R-13 and R-14 |
| 21 | The forecast table in 03.07 and the derivation published in `diagrams/` disagreed on R-04. The weaker claim was removed, and the build now parses the published table and asserts it row for row against the derivation |
| 22 | The brief said four of the eleven controls new in :2022 were Planned or Partial at v1.0. Applying its own assignments gives **all eleven** — five Planned, six Partial, none Implemented |
| 23 | The register's owner column carried a drafting marker on R-21 |

**What this phase deliberately does not contain.** No control library and no policy — Phase 04. No statement
that any risk has actually moved: Phase 03 publishes a forecast and Phase 09 reports the actual. No test,
audit or examination outcome of any kind. Phase 03 speaks as at **2026-04-30**.
