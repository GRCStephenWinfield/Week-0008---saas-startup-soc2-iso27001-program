# MANIFEST — Phase 05: Security Criteria & Technical Controls

| Field | Value |
|---|---|
| Package | saas-startup-soc2-iso27001-program-05-security-criteria-and-technical-controls.zip |
| Version | 1.0.0 |
| Generated | 2026-08-11 |
| Entity | CloudNimbus, Inc. — B2B SaaS, Series B, 187 staff, multi-tenant AWS |
| Assurance providers | Ashcombe & Doyle LLP (CPA, service auditor) · Northgate Certification Services, Ltd. (ANAB-accredited certification body) |
| Scope | SOC 2 Type II, all five trust services criteria · ISO/IEC 27001:2022 |
| Summary | 14 numbered documents · 4 Excel trackers · 4 diagrams · 4 governance records · ADR-0021 to ADR-0025 · 4 logs · 4 templates. Penetration test with 16 findings; the R-37 tenant isolation finding, its forensics and the nine unexamined months. |
| Total files | 43 |

## File Inventory (SHA-256)

| # | File | Bytes | SHA-256 |
|---|---|---|---|
| 1 | `05.00-README.md` | 12,768 | `0d04da759e6f24af644a340d797d4cd3c86a2c5976dd2c18b444777c0ef8950f` |
| 2 | `05.01-security-control-implementation-overview.md` | 15,452 | `99b6bcc8598675dec317e21dcf4c06aa3d856a3e661647a45a2dfadb8a828a0e` |
| 3 | `05.02-identity-and-access-management.md` | 17,855 | `dee7356df61c1618cdb1eccf731ee8bb52df34be6955cb759d6593cd791277d2` |
| 4 | `05.03-privileged-access-and-production-entry.md` | 17,357 | `e013e198f562f5942f97b3eaaef17d4f8d49d21db26f8886990b343f227e677c` |
| 5 | `05.04-tenant-isolation-and-the-authorisation-model.md` | 19,635 | `84d84873c8689c7ef5b78fe435e1a16962c4b5a12d4fe9b2354c09daf3f6dbf3` |
| 6 | `05.05-cryptography-and-key-management.md` | 18,071 | `bd8aeea07eec9436ebf3323e63bd74497f95aab0f13b8ec67a8cc22831c443d2` |
| 7 | `05.06-network-architecture-and-boundary-protection.md` | 15,496 | `3cd0b8221c37ec0b8b07b79ead2dec6e7ed6a82971737b36324188f0d5b887d0` |
| 8 | `05.07-endpoint-and-workstation-security.md` | 17,446 | `3dfe6fcec0cf2464c08a0d741f3108c8f340aeb24bbbb1f16fe12b407ba7e259` |
| 9 | `05.08-vulnerability-and-patch-management.md` | 15,217 | `3e32e375ee2921d1c72006b82866acb150781daa686f0e954d7549ec03e24dce` |
| 10 | `05.09-secure-development-and-change-management.md` | 16,041 | `21b01ad2274adae4a65e1a9f1edbd87c656e5ddb69747c2a02f1f151312df5d9` |
| 11 | `05.10-detection-logging-and-response.md` | 17,125 | `4994840713246b63797f356f635c06532f71b73436f8236d781e5ad8c3054216` |
| 12 | `05.11-penetration-testing-programme-and-findings.md` | 22,617 | `bb2e7fa39d769b70403b8be55de1fed839fdc3129e173b7d0993589128e8bf97` |
| 13 | `05.12-r37-tenant-isolation-finding-and-remediation.md` | 31,178 | `2c4ff7f1dccad8b0e1c25c6d3e6d8e708ea7a9a9c969605e01ba16b13f19656f` |
| 14 | `05.13-phase-summary-and-transition.md` | 15,532 | `b523c200a3afa5bbc08c67154ad6b1993cd043958b3ca19ee99363fa8b408a1d` |
| 15 | `CHANGELOG.md` | 9,106 | `1ff5bd27cec9935fa8b6565fd84a3ef82c631fa9c9b49de80aa25c1c2cf7c056` |
| 16 | `STRUCTURE.md` | 4,027 | `39ff950e7835165de23e38ff79b429b6d85ea810e4e93c82af9a3ec64997a521` |
| 17 | `install.sh` | 645 | `1f41a90b3215de29b2cbeef30e51ce25c67b229244d10e8d84947158fc2602dc` |
| 18 | `adr/ADR-0021-tenant-predicate-at-the-data-access-layer.md` | 2,641 | `5c193218847a183579ee63b4916960bf45ff05ff4ce868b5c5b77c30225399a9` |
| 19 | `adr/ADR-0022-sequential-tenant-identifiers-retained.md` | 2,332 | `8c571e51b29030945be65b58cfc4f4eeed8e015933d3866ab7ca9d07db470d43` |
| 20 | `adr/ADR-0023-no-customer-notification-with-dissent.md` | 2,629 | `9ca1e7ee5d299602a987b15b46ea9bb8a1de9ec28d5ab61d72911c93d6e87366` |
| 21 | `adr/ADR-0024-query-log-retention-reviewed.md` | 2,220 | `271adeb7d92b64d6b469071926ade8f764295a9a6c952dd2489a61adef3168de` |
| 22 | `adr/ADR-0025-second-penetration-test-inside-the-window.md` | 2,116 | `ebb99d23e7c948e10261e537493e09bbabe70d5a69410e438e7a56f9632db93e` |
| 23 | `diagrams/05-penetration-test-timeline.md` | 2,063 | `a65160e4cce03b62d593012e894e1c4f1e998d0828b1b2cf440448b64ecaabf1` |
| 24 | `diagrams/05-the-defect-and-the-fix.md` | 2,458 | `04d5de39c5e1a1dbf787cb69e555e3fd4523a51d7238b6c9c4c8ab6e852cb35e` |
| 25 | `diagrams/05-the-forensic-gap.md` | 3,213 | `15c3bf13b54e5ecbe0deab35a948b8b6e84b1e51f0f5b19291735b851a99e45e` |
| 26 | `diagrams/05-what-each-control-leaves-behind.md` | 1,638 | `953e62ceba086cbc63b0b61cc82ccc170fb14b6eb69fc3a1e1f3031461e4219e` |
| 27 | `governance/GOV-17-penetration-test-scope-and-report-acceptance.md` | 2,899 | `be9d57c2b5eb8c4eca47db4f2ca8fa524cd98951bac2ec1dcfb05261fbfd506d` |
| 28 | `governance/GOV-18-remediation-and-acceptance-record.md` | 2,753 | `2e284e3df671b695486a89fc8d6ad88fe61643b9096cd79998c6b5ffe0d3df24` |
| 29 | `governance/GOV-19-disclosure-decision-and-dissent.md` | 3,436 | `2b2da267a46abbbc5c65bd65b1f9293b4d1f879e75b12bae9635cc29b5ae0596` |
| 30 | `governance/GOV-20-first-month-operating-review.md` | 3,025 | `dcc87268f6e8739a74391b73c14a586b948f0f6a7fd04da14acf56b298e9decd` |
| 31 | `logs/decision-log.md` | 3,155 | `a5fb86ec2c0f3a62b2a4b8adcd153ad0d812e6c3786507fdef7030125b108e0d` |
| 32 | `logs/evidence-index.md` | 2,061 | `03f6b82ccca95ccd57c5fe1b563892f59ba5046b6d51c8e714d868f656d4abe7` |
| 33 | `logs/finding-remediation-log.md` | 3,254 | `1001a2d749a5b26ae612b421e4be37ecb624c7875bd1a6668e03fa49dee8be9f` |
| 34 | `logs/raid-log.md` | 4,060 | `f30d80d2f2a50155b3e2f06d377ac73f7cc8a958be0c17324afff85143ee6dda` |
| 35 | `templates/access-elevation-record-template.md` | 2,080 | `66107b4c8f1eeba811cd1856c2b115ea330f2ec3f4e0165173234bfd41e49581` |
| 36 | `templates/change-record-template.md` | 2,377 | `588f3cb854d8d8b3515ccb82a3d1a0cd80e8cc47128193f0f294950c35e5b9d2` |
| 37 | `templates/penetration-test-finding-template.md` | 2,003 | `6ea833ce5e3220ce272789e90c49bcd63633d22e1449f6d7c86c36d7fba37c93` |
| 38 | `templates/security-incident-assessment-template.md` | 2,275 | `6872f7fb7dfa06b84aae081dc7c02589e1e8a804b7566d9ce0279785e8d58f6c` |
| 39 | `trackers/05-july-operating-record.xlsx` | 7,016 | `4f749a14232017bcef1e40cc69343bb9504ef13fa7d64f7043008a071f5998ad` |
| 40 | `trackers/05-penetration-test-findings.xlsx` | 9,494 | `786039dada7101bada18c0bb88d120fd576b2d814c4b6a55b1c9055fd8d261ba` |
| 41 | `trackers/05-technical-control-parameters.xlsx` | 7,146 | `8b507d51fb8f7c12f84b4b16fbb0d125f9f37d98f3c49a206ba74ef099d57f92` |
| 42 | `trackers/05-vulnerability-management.xlsx` | 6,790 | `a38f925d3bc4ed3fd3d1ef167bf04910eb145f9ab27dca2a660622e7772f7c47` |

**Total payload:** 350,702 bytes across 42 files (plus this manifest).

