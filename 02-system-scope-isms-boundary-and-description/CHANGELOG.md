# Changelog — Phase 02

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-C02 |
| Version | 1.0 |
| Date | 2026-08-11 |
| Owner | Rahul Bhargava |
| Approver | Karim Haddad |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |

## 1.1 — 2026-09-24 · SC-01's exclusion added

**`02.12` published SC-01 as "99.9% monthly availability of the platform" and omitted the exclusion the
master services agreement carries.** The commitment is measured against elapsed minutes in the calendar
month **less any maintenance window announced at least fourteen days in advance**. The omission surfaced
in Phase 06, when the disaster recovery exercise of 2026-08-19 consumed a 171-minute announced window and
the August availability figure could not be reconciled with the published wording.

**A 99.9% figure measured with an undisclosed exclusion is not the figure the customer reads**, and a
description of the system that carries the headline and omits the carve-out is incomplete under **DC2**.
Corrected at source under **DEC-613** rather than at the point the description is assembled, because the
commitment is quoted in four later phases and a correction made in Phase 09 would leave four documents
carrying the wrong wording. `02.10`'s passing reference is aligned. `02.12` is at version 1.1.



## 1.0.0 — 2026-08-11

Initial issue of Phase 02: System Scope, ISMS Boundary &amp; Description.

**Documents.** Fourteen numbered documents, 02.00 to 02.13.

**Artifacts.** 6 Excel trackers · 4 diagrams · 4 governance records ·
5 ADRs · 4 logs · 4 templates.

**Positions fixed in this phase.**

| Position | Where |
|---|---|
| Two boundaries, neither containing the other | 02.01 · ADR-0006 |
| Non-production excluded on the strength of SR-12, not on the architecture | 02.03 · ADR-0007 |
| Halcyon Identity is a subservice organisation | 02.10 · ADR-0008 |
| Geolocation retained; retention cut to 13 months | 02.07 · ADR-0009 |
| Four proposed CUECs refused; eleven disclosed | 02.11 · ADR-0010 |
| 1,046 assets in the ISMS, 800 in the SOC 2 system, 246 in one and not the other | 02.06 |
| Twelve personal data categories, seven collected directly from the individual | 02.07 |
| Climate change determined a relevant issue under clause 4.1, in two limited senses | 02.09 |
| Ten service commitments and twelve system requirements | 02.12 |

**Corrections applied before issue.** Two review rounds ran against this phase: a mechanical harness
checking links, fences, Mermaid syntax, table shape, identifier series, vantage discipline and
cross-document arithmetic, and an independent hostile technical review of every description-criteria and
ISO clause 4 claim in it. The second round returned twenty-nine findings. They are recorded here rather
than quietly absorbed.

| # | Correction |
|---|---|
| 1 | **The Halcyon reclassification date contradicted Phase 01.** DEC-108, dated 2026-02-25, had been worded as a decision to carve out *both* subservice organisations, while Phase 02 identifies the second on 2026-03-03. DEC-108 is now worded as settling the **method**, at a point when AWS was the only identified subservice organisation; the method applied to Halcyon Identity without being retaken. Phase 01 has been amended and re-issued |
| 2 | **The people component was incoherent.** The 23 personnel outside it were described as sales and marketing, while the access-tier table excluded most of G&amp;A as well — and 78 + 31 + 14 + 8 = 131, so 33 people from Sales and G&amp;A must be inside. One rule now governs: a person is in the component if they can reach production or customer data, **or** operate a documented procedure the system depends on |
| 3 | **DC6 and DC7 each require the applicable criteria to be identified, and neither table did.** A criteria column has been added to CUEC-01 to CUEC-11 and to CSOC-01 to CSOC-14 |
| 4 | **The stated qualifying property for a complementary subservice organisation control was the wrong test.** It read "something CloudNimbus cannot verify" — which is neither necessary nor sufficient, and contradicts the necessity test the same chapter insists on for classification. Replaced with the necessity formulation; the unverifiability point is demoted to an observation about why CSOCs are disclosed rather than tested |
| 5 | **EU personal data reached the log archive with no residency reconciliation.** DF-09 carries authentication metadata, which is personal data, and the archive's region was never stated — in a document that refuses cross-region disaster recovery for EU tenants on residency grounds. The archive is now stated as region-partitioned, with an EU bucket under EU-scoped keys, which is what Phase 01's AS-09 assumed |
| 6 | **02.09 adopted the position it had criticised two sections earlier** — that every interested party's requirement is addressed through the ISMS — and its supporting tally of twelve was seven. INT-11 and INT-13 are now recorded as requirements the register carries and the ISMS does not address, each with its reason |
| 7 | **The retention schedule did not cover five of the twelve personal data categories.** PD-01, PD-02, PD-03, PD-06 and PD-09 have no in-life rule and are governed by the contract-term default and RT-08 alone. Stated rather than papered over, with PD-03 named as the one that most deserves a rule of its own |
| 8 | **The EU recovery design was claimed to meet the same objectives as the US one** while the phase's own clause 4.1 determination identified regional disruption as a real exposure. A multi-availability-zone design does not recover from a region loss on any recovery time objective. The EU path now states SR-10 conformance for zone-level failure, with region loss recorded as an accepted residual driven by obligation O8 |
| 9 | **Three complementary user entity controls failed the chapter's own necessity test.** CUEC-10 was materially the proposal the chapter had refused; CUEC-07 had no criterion; and the chapter conceded in terms that its own controls "are not conditional on CUEC-05". Each now names the criterion it is necessary for, CUEC-10 is narrowed to tenant-level events only the customer can adjudicate, and CUEC-05 is described as the most **consequential** when it is not performed rather than the most important |
| 10 | **"Inflating the CUEC list transfers obligations onto customers" contradicted the same page's correct statement that a CUEC is not a contractual term.** A disclosure that creates no obligation cannot transfer one. Restated as what inflation actually does: it narrows the assurance the report provides while appearing to broaden the description |
| 11 | **The classification diagram reverted to a partition** — routing both "No" branches to "ordinary vendor" — which is the error ML-3 recorded, on the page arguing against it. Redrawn with the two tests answered independently |
| 12 | **The two-boundaries diagram drew the SOC 2 system inside the ISMS**, which is the proposition the phase exists to deny, and attributed all 246 ISMS-only assets to corporate functions when the decomposition includes the non-production estate. Redrawn as overlapping sets |
| 13 | **The in-system endpoint figure was re-based from 164 to 208.** As first drafted it coincided exactly with the 164-person people component, inviting a reader to derive one from the other. The correct composition is 164 laptops plus the 44 test and lab devices used to build the four client applications: 164 + 44 = 208, and 208 + 23 = 231. The system total is 800 and the ISMS-only difference 246. The endpoint rule at 02.01 §5 gained a second limb to cover devices that build or validate in-scope software |
| 14 | **The brief's summary said nine flows carry personal data; the register says ten.** Only DF-02 and DF-08 carry none. Two instances survived a first correction and are now fixed. The true nine-of-twelve fact is that nine flows have no third party performing a step inside them |
| 15 | GOV-06 said the whole CC6 series depends on Halcyon Identity. It is CC6.1 and CC6.2 — the logical access criteria — and not the physical access, disposal, boundary-protection or malicious-software criteria beside them |
| 16 | CSOC-07 attributed to AWS a responsibility CloudNimbus partly holds: engine version selection, upgrade acceptance and maintenance windows are the customer's. Rewritten to the plane AWS operates, with the residue stated as CloudNimbus's in 02.03 |
| 17 | Halcyon Identity had no availability CSOC — the one a reader looks for hardest, since SR-04 routes every end-user authentication through it and SC-01 commits 99.9%. CSOC-14 now covers availability, capacity and continuity |
| 18 | Two accounts of when the classification test was first applied — "for the first time" against "had already survived one review". Reconciled: the earlier review confirmed labels, it did not apply the definition as a documented test |
| 19 | The 65-day worked example computed to 64: the illustration used a backup taken on day 29. The last surviving backup is the one taken on day 30 |
| 20 | ADR-0007's claim that no architectural property is doing any work was overstated by its own document, which cites key separation and the absence of VPC peering. Narrowed to the vector architecture does not close — production data reaching non-production through the application or an export |
| 21 | ADR-0009 justified 13 months as permitting "a second annual comparison". Thirteen months permits one and stops a second |
| 22 | Security awareness training was described as happening before access is granted, contradicting Phase 01's CAL-12 of "annual, plus within 14 days of hire". Aligned, with the tightening recorded as a proposal requiring the calendar to be amended |
| 23 | Physical clock-in terminals appeared in the service description and in no data flow, component or asset class. Removed |
| 24 | Two Phase 01 assumptions assigned to Phase 02 for discharge — AS-03 on AWS report coverage and AS-05 on register completeness — were neither discharged nor mentioned. Both now carry a disposition, and AS-05's residue is explicitly re-dated with a reason rather than left to lapse |
| 25 | "Seven of the ten commitments trace to obligations" — six do. "Seven weeks after the vantage" — five |
| 26 | The scope exclusion log claimed to record everything excluded from either boundary and recorded only the exclusions that required a decision. The preamble now says so, and points at the 246 for the full population |
| 27 | The classification diagram determined that Annex A controls A.5.19 to A.5.23 govern the vendor population, which is a Statement of Applicability determination belonging to Phase 03. Reworded to cite rather than determine |

**What this phase deliberately does not contain.** No risk rating and no risk register — `R-nn` remains
reserved for Phase 03. No Statement of Applicability determination and no count of necessary Annex A
controls. No control library contents. No test, audit or examination outcome of any kind. Phase 02 speaks
as at 2026-03-31 and does not know what happens next.
