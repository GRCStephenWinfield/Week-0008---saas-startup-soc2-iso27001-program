# RAID Log — Phase 01

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-L02 |
| Version | 1.0 |
| Date | 2026-08-11 |
| Owner | Rahul Bhargava |
| Approver | Karim Haddad |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


**These are programme delivery risks.** They are not the information security risk register, which Phase 03
establishes on a likelihood-by-impact basis with its own identifier series. Nothing in this log carries a
score, and nothing here becomes an R-number.

## Risks — PR-01 to PR-08

| ID | Risk | Owner | Status |
|---|---|---|---|
| PR-01 | The five-category scope proves larger than a 4.6-FTE programme can evidence, and a category has to be dropped mid-window | Karim Haddad | Open |
| PR-02 | Engineering delivery pressure causes control friction to be routed around rather than through | Junia Okonkwo | Open |
| PR-03 | A subservice organisation classification error puts a vendor in the wrong bucket in the description | Tobias Lund | Open |
| PR-04 | The Type I management-letter matters are closed as controls but not as evidence trails | Rahul Bhargava | Open |
| PR-05 | An ISO nonconformity raised inside the observation window becomes contradictory evidence for the service auditor | Karim Haddad | Open — accepted at ADR-0005 |
| PR-06 | The outsourced internal audit is scoped by the supplier rather than by CloudNimbus | Karim Haddad | Open |
| PR-07 | Privacy criteria prove unworkable for a processor and the category has to be withdrawn late | Tobias Lund | Open |
| PR-08 | Key-person concentration: one compliance manager holds the evidence architecture | Marisol Vega | Open |

## Assumptions — AS-01 to AS-10

| ID | Assumption | Owner | Status |
|---|---|---|---|
| AS-01 | Scheduled-job failures are alerted | Wes Delacroix | Unverified — carried to Phase 06 |
| AS-02 | Row-level security is uniformly enforced across every data access path | Junia Okonkwo | Unverified — carried to Phase 05 |
| AS-03 | AWS controls relied upon are covered by a current AWS assurance report | Wes Delacroix | To be evidenced in Phase 02 |
| AS-04 | Every production access path traverses the workforce identity provider | Wes Delacroix | To be evidenced in Phase 05 |
| AS-05 | The 84-vendor register is complete | Tobias Lund | To be tested in Phase 02 |
| AS-06 | Customer contracts are consistent enough to support one obligations register | Tobias Lund | Sampled, not exhaustive |
| AS-07 | The calculation engine's reconciliation output is retained for the full period | Grete Lindqvist | To be evidenced in Phase 06 |
| AS-08 | Home-working arrangements are within the ISMS boundary without further contractual change | Hannah Brill | Legal review pending |
| AS-09 | EU-resident personal data does not leave eu-central-1 in backups or logs | Devon Ashby | To be tested in Phase 07 |
| AS-10 | 187 headcount is stable enough that population-based sampling holds across the window | Hannah Brill | Monitored monthly |

AS-01 and AS-02 are recorded deliberately and prominently. Both are beliefs the programme holds at Phase 01
without evidence, both are the kind of belief that is comfortable precisely because nobody has tested it,
and writing them down here is what will make it honest if either turns out to be wrong.

## Issues — IS-01 to IS-04

| ID | Issue | Owner | Status |
|---|---|---|---|
| IS-01 | No internal audit function exists in a 187-person company | Karim Haddad | Mitigated by ADR-0004; coverage still undefined |
| IS-02 | Obligation O1 has been unmet since the 2024 enterprise MSA template was adopted: it requires a current Type II and CloudNimbus has never held one. It is managed with the 2025 Security-only Type I and a customer-by-customer conversation. Whether that is a breach is a legal conclusion this log does not reach | Marisol Vega | Open — this programme is the response |
| IS-03 | Enterprise questionnaire turnaround at 11.4 days is stalling pipeline | Ana-Sofia Cruz | Open — OBJ-05 |
| IS-04 | No CISO title exists, so clause 5.3 authority had to be written rather than inferred | Elise Fontaine | Closed — recorded at 01.08 §2 |

## Dependencies — DP-01 to DP-07

| ID | Dependency | Owner |
|---|---|---|
| DP-01 | MS-09 ISMS operational depends on MS-07 control library and MS-08 policy suite | Karim Haddad |
| DP-02 | MS-10 window opening depends on MS-09; nothing operating on 2026-07-01 can be tested for the full period | Karim Haddad |
| DP-03 | Stage 1 depends on documented information required by clause 7.5 being complete | Rahul Bhargava |
| DP-04 | Stage 2 depends on clause 9.2 internal audit and clause 9.3 management review having occurred | Karim Haddad |
| DP-05 | The description of the system depends on the subservice organisation classification being settled | Rahul Bhargava |
| DP-06 | Obligation O2 delivery to 118 enterprise customers depends on the report issuance date | Ana-Sofia Cruz |
| DP-07 | Privacy criteria work depends on the sub-processor register and DPAs being current | Tobias Lund |

**Total entries: 29** — 8 risks, 10 assumptions, 4 issues, 7 dependencies.

## Cross-References

| Document | Relationship |
|---|---|
| [01.13 Phase Summary and Transition](../01.13-phase-summary-and-transition.md) | Carries the open entries into Phase 02 |
| `03-risk-assessment-treatment-and-statement-of-applicability` | Establishes the information security risk register |
