# Assumption Log — Phase 01

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-L03 |
| Version | 1.0 |
| Date | 2026-08-11 |
| Owner | Rahul Bhargava |
| Approver | Karim Haddad |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


The assumptions from the RAID log, expanded with what would disprove each one. An assumption without a
disproof condition is a belief, and a programme that cannot say what would change its mind is not managing
uncertainty, it is decorating it.

| ID | Assumption | What would disprove it | Where it is tested |
|---|---|---|---|
| AS-01 | Scheduled-job failures are alerted | A job that fails without paging anyone, discovered by its downstream effect rather than by its own monitoring | Phase 06 |
| AS-02 | Row-level security is uniformly enforced across every data access path | Any query path that returns another tenant's data, however aggregated | Phase 05 penetration testing |
| AS-03 | AWS controls relied upon are covered by a current AWS assurance report | A relied-upon control that falls outside the report's scope or period | Phase 02 |
| AS-04 | Every production access path traverses the workforce identity provider | A credential that authenticates without the identity provider in the path | Phase 05 |
| AS-05 | The 84-vendor register is complete | A vendor with production or personal data access that is not in the register | Phase 02 |
| AS-06 | Customer contracts are consistent enough to support one obligations register | A contract with a materially different notification period or deletion term | Phase 07 |
| AS-07 | The calculation engine's reconciliation output is retained for the full period | A reconciliation whose evidence has aged out before sampling | Phase 06 |
| AS-08 | Home-working arrangements are within the ISMS boundary without further contractual change | An employment contract silent on information handling at home | Phase 04 |
| AS-09 | EU-resident personal data does not leave eu-central-1 in backups or logs | Personal data from an EU tenant found in a US-region log or snapshot | Phase 07 |
| AS-10 | 187 headcount is stable enough that population-based sampling holds across the window | Headcount change large enough to alter a sampling population mid-period | Monitored monthly |

## Cross-References

| Document | Relationship |
|---|---|
| [logs/raid-log.md](raid-log.md) | Source register |
| [01.13 Phase Summary and Transition](../01.13-phase-summary-and-transition.md) | Carries these forward |
