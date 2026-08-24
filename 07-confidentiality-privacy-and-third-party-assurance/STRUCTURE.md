# Phase 07 — Structure

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-7ST |
| Version | 1.0 |
| Date | 2026-11-27 |
| Owner | Rahul Bhargava |
| Approver | Karim Haddad |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


## 1. What is in this package

```
07-confidentiality-privacy-and-third-party-assurance/
├── 07.00 – 07.13   14 numbered documents
├── adr/            ADR-0031 to ADR-0035
├── diagrams/       4 diagrams
├── governance/     GOV-25 to GOV-28
├── logs/           decision, deviation, evidence and RAID logs
├── templates/      5 record templates
└── trackers/       4 workbooks, every figure re-derived from the narrative
```

## 2. The phase in figures

| Item | Value |
|---|---|
| Vantage | **2026-11-27** — the last working day before ISO Stage 2 opens on 2026-11-30. The period reported is 2026-10-01 to 2026-11-27, **58 days** |
| **The RT-02 failure** | The generated deletion job for geolocation matched no rows for **68 consecutive nights** after the `eu-central-1` table was partitioned on 2026-08-17, **reporting success each night**. **1,847,206** capture points were retained past RT-02's 13 months, the oldest by **67 days**, across **34** of the 41 EU-residency customers and **58,412 individuals** |
| Why nothing alerted | `CNB-C-127` alerts on a job that **does not report**. This job reported: rows deleted, **0** |
| How it was found | **The examination found it**, assembling the Q4 retention evidence sample on 2026-10-23. A completion record nobody reads is a log, not a control |
| Notification | **All 41 EU-residency customers notified 2026-10-26** — 34 with affected records, 7 told they had none — with **no commitment requiring it**, and with **Ana-Sofia Cruz's dissent minuted** |
| **The library grew** | **`CNB-C-149`** admitted **2026-10-28**. The library is **149**, not 148 — the first addition since Phase 04. **31 of its 65 nights in the window have run; 0 alerts raised** |
| **DC4** | **Both limbs.** The first because `CNB-C-127`'s alert condition could not detect the failure mode; the second because **SR-08** — retention enforced by scheduled deletion jobs — was not achieved in `eu-central-1` for sixty-eight nights. Phase 06 engaged the second alone. **"Service commitments and system requirements" is one phrase with two nouns in it** |
| Vendor register | **84 = 11 sub-processors + 73 ordinary.** Tiers **12 · 27 · 45 = 84**, and **the tier is not the flag**: 9 sub-processors are Tier 1 and 2 are Tier 2; 3 Tier 1 vendors are not sub-processors |
| Tier 1 assurance | **8** hold a SOC 2 Type II report, **2** a certificate only, **1** both, **1 neither** — `D-07-02` |
| **The other side's CUECs** | AWS states **58** and Halcyon **19**. **49 + 7 + 2 = 58** and **17 + 2 = 19**, and **two AWS obligations had no owner** — `CA-07-01`, and **`IS-30`**, because no control required one |
| **The uncovered months** | Of the six months of the window, AWS's report covers **3**, its bridge letter **1**, and **2 nothing**. Halcyon's report covers **0**, its bridge letter **4**, and **2 nothing**. **A bridge letter covers a gap; it does not close one** — `IS-31` |
| Privacy | **147 of 640** tenants have geolocation disabled · **918,204 grants and 42,796 refusals** of the operating-system permission · **1,109,442** of ~1.24m end users shown the current notice · **31** assistance requests, **30** inside ten business days · **412** correction requests, **389** approved · **14** enquiries, **0** complaints |
| Deviations | **3** — `D-07-01` to `D-07-03`, all three nonconformities in the ISO sense — plus **one service commitment failure**, SC-09, listed separately. **`CA-07-01` to `CA-07-06`, three of them with no deviation behind them**, because a finding whose control did not fail is a referred issue and not a deviation |
| Register | Entered at **37 — 8 High · 17 Moderate · 12 Low**; **R-38** admitted 2026-10-23 at 3 × 4 = 12, and **R-24 re-rated upward from 2 × 4 = 8 to 3 × 4 = 12** on 2026-10-28, its described event having occurred. **38 — 8 High · 18 Moderate · 12 Low**: R-24's movement does not cross a band, and **a register that only records band changes is a register that has stopped measuring**. No CAL-06 review falls in the period; the Q4 review is 2026-12-29 |
| Carried to Phase 08 | The clause 9.2 internal audit, the clause 9.3 management review, **ISO Stage 1** (2026-10-12 to 10-14), the **second penetration test** (2026-10-05 to 10-16), **Stage 2** (opens 2026-11-30) and the Type II examination |

## 3. What the build harness re-derives rather than trusts

The vendor register's three overlapping axes are recomputed — 11 + 73 = 84, 12 + 27 + 45 = 84, 9 + 3 = 12
and 9 + 2 = 11 — and the Tier 1 assurance split is checked to sum to twelve. Both complementary
user-entity-control maps are recomputed against the totals the reports state. The subservice-organisation
coverage of the observation window is recomputed month by month and each row is required to sum to six.
The 68 nights are recomputed from the migration and discovery dates, and the backup residue window from the
catch-up run, with a check that it expires **after** this vantage. Every row of the Q4 table is required to
sum. Every `CNB-C-` identifier cited anywhere is checked against the Phase 04 library, with `CNB-C-149`
required to be new. Every date after 2026-11-27 is checked for a forward-looking marker, and the scan for
forbidden claims carries a second list for **legal conclusions** — a privacy phase is where that
temptation lives.

**What the harness cannot do should be said as plainly as what it can.** It checks that the arithmetic
closes and that the series are complete. **It cannot catch a claim that is internally consistent and
wrong.** Every phase in this programme is read adversarially as well as built mechanically, and the
correction rounds are recorded in the changelog rather than absorbed.

## 4. Files

- `07.00-README.md`
- `07.01-the-confidentiality-criteria-and-the-single-control.md`
- `07.02-the-retention-schedule-and-the-deletion-machinery.md`
- `07.03-the-rt-02-retention-failure.md`
- `07.04-notice-choice-and-the-limits-of-consent.md`
- `07.05-collection-use-and-the-inference-problem.md`
- `07.06-access-correction-and-data-subject-requests.md`
- `07.07-disclosure-and-the-sub-processor-notice.md`
- `07.08-monitoring-privacy-and-the-quarterly-review.md`
- `07.09-the-vendor-register-tiering-and-assurance.md`
- `07.10-reading-the-other-sides-complementary-controls.md`
- `07.11-subservice-organisations-and-the-uncovered-months.md`
- `07.12-quarter-four-to-date-operating-record.md`
- `07.13-phase-summary-and-transition.md`
- `adr/ADR-0031-a-new-control-admitted-mid-window.md`
- `adr/ADR-0032-notification-with-no-obligation-to-notify.md`
- `adr/ADR-0033-deletion-is-not-complete-until-the-residue-expires.md`
- `adr/ADR-0034-the-sc-09-significance-determination.md`
- `adr/ADR-0035-tier-is-an-axis-not-a-classification.md`
- `diagrams/07-the-retention-schedule-against-the-inventory.md`
- `diagrams/07-the-rt02-failure-and-why-nothing-alerted.md`
- `diagrams/07-the-two-directions-of-complementary-controls.md`
- `diagrams/07-what-the-window-is-covered-by.md`
- `governance/GOV-25-cal-08-q4-vendor-and-sub-processor-review.md`
- `governance/GOV-26-rt02-over-retention-investigation-and-notification.md`
- `governance/GOV-27-q4-privacy-review-and-the-admission-of-cnb-c-149.md`
- `governance/GOV-28-annual-notice-reconciliation.md`
- `logs/decision-log.md`
- `logs/deviation-log.md`
- `logs/evidence-index.md`
- `logs/raid-log.md`
- `templates/customer-privacy-notification-template.md`
- `templates/data-subject-request-assistance-template.md`
- `templates/retention-rule-change-record-template.md`
- `templates/sub-processor-notice-template.md`
- `templates/vendor-assurance-reading-template.md`
- `trackers/07-privacy-criteria-and-controls.xlsx`
- `trackers/07-q4-to-date-operating-record.xlsx`
- `trackers/07-retention-and-deletion-record.xlsx`
- `trackers/07-vendor-register-and-assurance.xlsx`
