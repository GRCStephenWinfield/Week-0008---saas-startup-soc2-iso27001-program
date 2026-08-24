# Phase 06 — Structure

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-6ST |
| Version | 1.0 |
| Date | 2026-09-30 |
| Owner | Rahul Bhargava |
| Approver | Karim Haddad |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


## 1. What is in this package

```
06-availability-processing-integrity-and-operations/
├── 06.00 – 06.13   14 numbered documents
├── adr/            ADR-0026 to ADR-0030
├── diagrams/       4 diagrams, including the incident timeline and what the exercise did not test
├── governance/     GOV-21 to GOV-24
├── logs/           decision, deviation, evidence and RAID logs
├── templates/      4 record templates
└── trackers/       4 workbooks, every figure re-derived from the narrative
```

## 2. The phase in figures

| Item | Value |
|---|---|
| Vantage | **2026-09-30** — three months into the six-month observation window |
| Availability against SC-01 | `us-east-1` July **99.98%** · August **99.97%** · September **99.84%**; `eu-central-1` **100%** in all three. **SC-01 not met in September for the 599 customers served from `us-east-1`, and met for the 41 served from `eu-central-1`** |
| The exclusion | The MSA excludes maintenance announced fourteen days ahead. It was engaged **twice**: a four-hour window on **2026-08-19** for the CAL-10 exercise, inside which **23 customer-visible minutes** fell, and a window on **2026-07-15** for TP-20 costing **4**. `02.12` published SC-01 **without the exclusion**; corrected at source, `02.12` is at v1.1 and **Phase 02 is re-issued** — DEC-613. **Twenty-seven minutes did not change a single month's result, which is why it was corrected before it did** |
| The incident | `INC-2026-031`, 2026-09-08, **14:22–15:33 UTC, 71 minutes**. The writer instance of the `core-us-east` cluster in `us-east-1`. Failover complete at the data layer in **47 seconds**; **41,208 failed writes across 318 tenants**, 318 + 281 = the **599** served from that region; **no data loss** |
| Detection and measurement | `CNB-C-068` paged at **14:24**, two minutes after onset. `CNB-C-096` reported healthy for all 71 minutes because its probe reads — **`D-06-02`** |
| Disaster recovery exercise | CAL-10, 2026-08-19. **RTO 2h51m against 4h · RPO 4m12s against 15m.** 6 findings, 1 material, 5 closed, 1 open |
| Restore tests | `CNB-C-098` **2 of 3 to date**. The August occurrence was not performed and **was not back-dated** — ADR-0026 |
| A.5.30 | Reads **`Implemented`** on the SoA issue of 2026-06-15, moved there **before `CNB-C-100` had operated**. The testing limb acquired its evidence on 2026-08-19; the **planning limb's only occurrence in the window did not happen** — `D-06-05`; and **nothing in the library implements the maintenance limb** — `IS-24`, referred |
| Calculation engine | **92 nightly cycles · 26 reconciliation exceptions · 25 inside the service level, 1 not · 5,171 export files · 0 rejected** |
| CUEC-05 | **411 of 640 confirmed, 229 did not respond, none said no** |
| Q3 operating record | **160 changes · 9 emergency · 5,102 alerts · 148 high-severity all triaged inside thirty minutes · 1 Severity-1 · 0 security incidents** |
| Deviations | **5** — `D-06-01` to `D-06-05`, four of them nonconformities in the ISO sense — plus **one service commitment failure**, SC-01, listed separately |
| Register at this vantage | **37 entries — 8 High · 17 Moderate · 12 Low.** Six reductions were proposed at the September CAL-06 review and **none was accepted**; the only movement was **R-08 rising** from 4 × 3 = 12 to 5 × 3 = 15 on evidence nobody had proposed acting on |
| DC4 | **Engaged and mandatory.** The disclosure was drafted at the vantage — ADR-0028 |

## 3. What the build harness re-derives rather than trusts

The six monthly-by-region availability percentages are recomputed from downtime minutes against the days in
each month **less the minutes excluded inside an announced maintenance window**, and the 99.9% allowance is
recomputed alongside them. The seventy-one minutes and the **15:05** breach timestamp are
recomputed from the timeline table. The register position after the September review is recomputed from
the six proposals and the one unproposed re-rating, including a check that the movement runs on
**likelihood** with the consequence unchanged, that it reaches the likelihood-5 anchor rather than an
arbitrary step, and that every declined proposal states a held rating whose product is correct. The 5,171 export files are recomputed from the four cadences. Every `CNB-C-` identifier cited
anywhere in the phase is checked against the Phase 04 library, July's figures are checked against GOV-20 as
published in Phase 05, and every date after the vantage is checked for a forward-looking marker.

**What the harness cannot do should be said as plainly as what it can.** It checks that the arithmetic
closes and that the series are complete. **It cannot catch a claim that is internally consistent and
wrong** — an exclusion resting on a premise no chapter reconciles, a limb attributed to a control that does
not carry it, a date attached to the wrong event. Every one of those was found in this phase by a reader
whose brief was to find them, which is why each phase in this programme is read adversarially as well as
built mechanically, and why the correction rounds are recorded in the changelog rather than absorbed.

## 4. Files

- `06.00-README.md`
- `06.01-availability-architecture-and-commitments.md`
- `06.02-capacity-and-performance-management.md`
- `06.03-backup-restore-and-data-durability.md`
- `06.04-disaster-recovery-and-the-august-exercise.md`
- `06.05-the-severity-1-incident-of-2026-09-08.md`
- `06.06-incident-management-and-the-dc4-disclosure.md`
- `06.07-the-calculation-engine-and-processing-integrity.md`
- `06.08-input-validation-and-completeness.md`
- `06.09-output-accuracy-reconciliation-and-the-export.md`
- `06.10-business-continuity-and-ict-readiness.md`
- `06.11-operations-monitoring-and-the-quarterly-review.md`
- `06.12-quarter-three-operating-record.md`
- `06.13-phase-summary-and-transition.md`
- `adr/ADR-0026-the-missed-restore-test-is-not-back-dated.md`
- `adr/ADR-0027-availability-means-read-and-write.md`
- `adr/ADR-0028-the-dc4-disclosure-is-written-at-the-vantage.md`
- `adr/ADR-0029-no-new-risk-for-the-september-incident.md`
- `adr/ADR-0030-a-quarterly-in-region-failover-game-day.md`
- `diagrams/06-availability-against-the-commitment.md`
- `diagrams/06-the-calculation-pipeline-and-its-checks.md`
- `diagrams/06-the-incident-timeline.md`
- `diagrams/06-what-the-exercise-tested-and-what-it-did-not.md`
- `governance/GOV-21-disaster-recovery-exercise-report.md`
- `governance/GOV-22-post-incident-review-inc-2026-031.md`
- `governance/GOV-23-quarter-three-operating-review.md`
- `governance/GOV-24-september-risk-register-review.md`
- `logs/decision-log.md`
- `logs/deviation-log.md`
- `logs/evidence-index.md`
- `logs/raid-log.md`
- `templates/dr-exercise-report-template.md`
- `templates/post-incident-review-template.md`
- `templates/reconciliation-exception-record-template.md`
- `templates/restore-test-record-template.md`
- `trackers/06-availability-and-incident-record.xlsx`
- `trackers/06-processing-integrity-record.xlsx`
- `trackers/06-q3-operating-record.xlsx`
- `trackers/06-register-movement-september.xlsx`
