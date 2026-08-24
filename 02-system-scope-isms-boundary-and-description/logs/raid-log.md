# RAID Log — Phase 02

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-L06 |
| Version | 1.0 |
| Date | 2026-08-11 |
| Owner | Rahul Bhargava |
| Approver | Karim Haddad |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


**Programme delivery risks, continuing the Phase 01 series.** These are not the information security risk
register, which Phase 03 establishes on a likelihood-by-impact basis with its own identifier series.
Nothing here carries a score and nothing here becomes an R-number.

## Risks — PR-09 to PR-14

| ID | Risk | Owner | Status |
|---|---|---|---|
| PR-09 | The SR-12 claim underpinning the non-production exclusion does not hold, making the described boundary wrong rather than the control ineffective | Junia Okonkwo | Open |
| PR-10 | A further vendor is misclassified in the register, as Halcyon Identity was | Tobias Lund | Open |
| PR-11 | Customers do not perform CUEC-05 and an export error reaches a payroll run | Ana-Sofia Cruz | Open |
| PR-12 | The 65-day backup residue is read by a customer as a failure to honour the deletion commitment | Tobias Lund | Open |
| PR-13 | The two-boundary model is misread by a reader who assumes the certificate covers the platform only, or the report covers the company | Rahul Bhargava | Open |
| PR-14 | EU residency is breached by a log, backup or telemetry path that was not in the data flow register | Devon Ashby | Open |

## Assumptions — AS-11 to AS-16

| ID | Assumption | Owner | Status |
|---|---|---|---|
| AS-11 | The data flow register is complete for flows carrying personal data | Junia Okonkwo | To be tested in Phase 05 |
| AS-12 | No production customer data exists in `cnb-staging` or `cnb-dev` | Wes Delacroix | SR-12 — to be tested in Phase 05 |
| AS-13 | The asset inventory's two boundary flags are correct on every one of the 1,046 assets | Wes Delacroix | Sampled, not exhaustive |
| AS-14 | Every store holding tenant data is known to the deletion orchestrator | Devon Ashby | To be tested in Phase 07 |
| AS-15 | The 11 sub-processors are the complete population | Tobias Lund | To be tested in Phase 07 |
| AS-16 | Leave type is the only field on the platform capable of implying health information | Tobias Lund | To be tested in Phase 07 |

**AS-12 is SR-12 written as an assumption**, and it is the load-bearing one: the non-production exclusion
at ADR-0007 rests on it entirely. Phase 01 recorded AS-01 and AS-02 for the same reason, and Phase 02 has
turned both of those into system requirements — SR-08 and SR-01 — which is the only useful thing to do with
an assumption.

## Assumptions inherited from Phase 01 and due here

Phase 01 assigned two of its assumptions to Phase 02 for discharge. An assumption log that quietly outlives
its own due dates is a log nobody is running.

| ID | Assumption | Assigned | Disposition |
|---|---|---|---|
| AS-03 | AWS controls relied upon are covered by a current AWS assurance report | Phase 01 assigned this to Phase 02. | **Discharged.** The reports held from Amazon Web Services were checked against the services actually relied on and against the periods relied on. Where a relied-upon service or period is not covered, the gap is recorded against the relevant CSOC rather than assumed away. See 02.10 §7. |
| AS-05 | The 84-vendor register is complete | Phase 01 assigned this to Phase 02. | **Partially discharged, and the residue is re-dated with a reason.** Phase 02 re-reviewed the register for **classification** and found one error, which produced DEC-203. It did not establish **completeness** — that a vendor with production or personal-data access exists which is not in the register cannot be disproved from the register itself. Completeness is carried as AS-15 and tested against procurement and payment records in Phase 07. Re-dating an assumption is legitimate; letting it lapse silently is not. |

## Issues — IS-05 to IS-07

| ID | Issue | Owner | Status |
|---|---|---|---|
| IS-05 | Halcyon Identity survived one ML-3 closure review while misclassified | Rahul Bhargava | Closed by DEC-203; the review process is the residual issue |
| IS-06 | The deletion commitment and the backup cycle cannot both be honoured inside 30 days | Devon Ashby | Open — disclosed rather than resolved |
| IS-07 | No canonical classification scheme existed before this phase | Wes Delacroix | Closed — four tiers defined at 02.06 |

## Dependencies — DP-08 to DP-12

| ID | Dependency | Owner |
|---|---|---|
| DP-08 | The risk assessment in Phase 03 depends on the asset inventory and the data flow register | Karim Haddad |
| DP-09 | The Statement of Applicability depends on the ISMS scope statement fixed at DEC-210 | Karim Haddad |
| DP-10 | The control library in Phase 04 depends on SR-01 to SR-12 | Karim Haddad |
| DP-11 | The privacy work in Phase 07 depends on PD-01 to PD-12 and RT-01 to RT-08 | Tobias Lund |
| DP-12 | The description of the system depends on CSOC and CUEC determinations being final before fieldwork | Rahul Bhargava |

**Total entries: 20** — 6 risks, 6 assumptions, 3 issues, 5 dependencies.

## Cross-References

| Document | Relationship |
|---|---|
| [02.13 Phase Summary and Transition](../02.13-phase-summary-and-transition.md) | Carries the open entries into Phase 03 |
