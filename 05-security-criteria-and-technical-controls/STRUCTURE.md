# Phase 05 — Structure

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-S05 |
| Version | 1.0 |
| Date | 2026-08-11 |
| Owner | Rahul Bhargava |
| Approver | Karim Haddad |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


```
05-security-criteria-and-technical-controls/
├── 05.00-README.md
├── 05.01-security-control-implementation-overview.md
├── 05.02-identity-and-access-management.md
├── 05.03-privileged-access-and-production-entry.md
├── 05.04-tenant-isolation-and-the-authorisation-model.md
├── 05.05-cryptography-and-key-management.md
├── 05.06-network-architecture-and-boundary-protection.md
├── 05.07-endpoint-and-workstation-security.md
├── 05.08-vulnerability-and-patch-management.md
├── 05.09-secure-development-and-change-management.md
├── 05.10-detection-logging-and-response.md
├── 05.11-penetration-testing-programme-and-findings.md
├── 05.12-r37-tenant-isolation-finding-and-remediation.md
├── 05.13-phase-summary-and-transition.md
├── adr/            5 architecture decision records (ADR-0021 to ADR-0025)
├── diagrams/       4 diagrams, including the forensic gap working
├── governance/     4 governance records (GOV-17 to GOV-20)
├── logs/           4 logs — decisions, RAID, finding remediation, evidence index
├── templates/      4 reusable templates
├── trackers/       4 Excel workbooks
├── CHANGELOG.md
├── STRUCTURE.md
├── MANIFEST.md      generated at packaging — SHA-256 of every file above
└── install.sh
```

## Identifier series established in this phase

| Series | Range | Meaning |
|---|---|---|
| `CNB-TRUST-2026-5NN` | 500–513 | Phase 05 document IDs |
| `TS-nn` | 01–05 | Penetration test streams |
| `PT-nn` | 01–16 | Penetration test findings |
| `DEC-5nn` | 501–512 | Phase 05 decisions |
| `ADR-nnnn` | 0021–0025 | Architecture decision records |
| `EV-5nn` | 501–510 | Phase 05 evidence artefacts |
| `PR/AS/IS/DP` | continued | RAID entries — delivery risk, never rated |

## The arithmetic this phase must carry forward

| Figure | Value |
|---|---|
| Penetration test | **2026-05-04 to 2026-05-22**, Ironwood Security Labs, five streams |
| Findings | **16 — 1 Critical · 3 High · 6 Medium · 6 Low** |
| Status at 2026-07-31 | **13 closed and retested · 2 scheduled for the 2026-08-14 release · 1 accepted** |
| The Critical | **PT-01**, the tenant isolation finding that became **R-37** |
| R-37 | Admitted 2026-05-22 at 4 × 5 = 20 · remediated 2026-05-29 · retested 2026-06-11 · re-rated 2026-06-15 to 2 × 5 = 10 |
| **The forensic gap** | Code path present **22 months** · query logs reach **13 months** · **9 months unexamined, 41% of the period** |
| Notification | **None.** Contractual assessment concluded no obligation engaged; voluntary disclosure refused; **dissent minuted** |
| Vulnerabilities at the vantage | **0 Critical and 0 High past target · 7 Medium and 24 Low within target** |
| July 2026 | 3 provisioning requests · 1 access certification · 47 changes · 2 emergency changes · 1 break-glass use · 1,412 alerts · 11 escalations · **0 incidents** |
| Library controls cited | **74 distinct**, every one verified against the Phase 04 tables |

## Trackers

| Workbook | Sheets | Source |
|---|---|---|
| `05-penetration-test-findings.xlsx` | Findings · Streams · Status | 05.11 |
| `05-technical-control-parameters.xlsx` | Parameters | 05.02–05.10 |
| `05-vulnerability-management.xlsx` | Vulnerability management · Sources | 05.08 |
| `05-july-operating-record.xlsx` | July 2026 · What this is not | 05.13 |

The build parses the findings register and asserts the severity split, the status arithmetic, that every
remediation date precedes its retest date and that no retest post-dates the vantage — and it checks every
`CNB-C` identifier cited anywhere in the phase against the Phase 04 library.
