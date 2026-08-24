# Phase 08 — Structure

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2027-8ST |
| Version | 1.0 |
| Date | 2027-02-05 |
| Owner | Rahul Bhargava |
| Approver | Karim Haddad |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


## 1. What is in this package

```
08-internal-audit-certification-and-type-ii-examination/
├── 08.00 – 08.13   14 numbered documents
├── adr/            ADR-0036 to ADR-0040
├── diagrams/       4 diagrams
├── governance/     GOV-29 to GOV-32
├── logs/           decision, finding, evidence and RAID logs
├── templates/      4 record templates
└── trackers/       4 workbooks, every figure re-derived from the narrative
```

## 2. The phase in figures

| Item | Value |
|---|---|
| Vantage | **2027-02-05**, the last day of Type II fieldwork. The subject runs from **2026-07-01** — the observation window this phase closes — and from **2026-09-14**, the engagements it collects from three earlier phases |
| Clause 9.2 internal audit | **2026-09-14 to 09-25**, Camberwell Risk Partners. **2 minor nonconformities, 9 opportunities.** Its report recorded, at §1.3, that the scope excluded clauses 4 to 10 and one of three regions, and **recommended the exclusion be reconsidered** |
| Clause 9.3 management review | **2026-09-30**, chaired by the Chief Executive Officer. All seven clause 9.3.2 inputs presented. The scope note arrived under input d) 3) and **was deferred there too** |
| ISO Stage 1 | **2026-10-12 to 10-14**. **0 nonconformities, 6 areas of concern**, two of which would have become major nonconformities at Stage 2 had they not been closed. **Stage 1 asks whether the machinery exists; Stage 2 asks what it covered** |
| Second penetration test | **2026-10-05 to 10-16**, five months after the first, report 2026-11-02. **9 findings — 0 Critical, 1 High, 3 Medium, 5 Low.** 41 crafted access paths against the R-37 remediation returned no other tenant's data |
| **ISO Stage 2** | **2026-11-30 to 12-04**, ten auditor-days. **1 major nonconformity, 4 minor, 7 opportunities** |
| **The major** | **`MAJ-01`, clauses 9.2.1 and 9.2.2 a), and A.5.22**, raised 2026-12-02. The internal audit did not cover clauses 4 to 10 or `eu-central-1`, and the organisation's own **`CNB-C-146`** says the programme is risk-weighted across clauses 4 to 10. **The limitation was written down by the auditor, read by the person who set the scope, minuted at a management review, and deferred twice.** Nothing was missed. It was decided |
| Accepted | **Without contest**, at the closing meeting on 2026-12-04 |
| Certificate | Correction and corrective action **2026-12-19** · supplementary audit **2027-01-13** · verified closed **2027-01-15** · decision **2027-01-20** · **certificate issued 2027-01-22, valid to 2030-01-21**, by **Northgate Certification Services**, accredited by **ANAB** under ISO/IEC 17021-1 and ISO/IEC 27006-1:2024. **ISO does not certify** |
| The library | **`CNB-C-150`** admitted **2027-01-08** as part of the corrective action. **The library is 150 — and `CNB-C-150` has no population in the observation window at all, is not part of the examination, and this phase says so** |
| Window close | **2026-12-31**, MS-16. **184 days · 312 changes · 10,336 alerts · 1 Severity-1 · 0 security incidents.** Availability `us-east-1` 99.98 · 99.97 · **99.84** · 99.96 · 99.95 · 99.94; `eu-central-1` 100% throughout. **Six monthly figures, one missed, and still no window average** |
| `CNB-C-098` | **5 of 6**, and the window rate — **16.7%** — is stated **for the first time**, because the population is now complete. Phases 06 and 07 refused it for six months on a population that was not |
| **The register** | Entering the December CAL-06 review at **38 — 8 High · 18 Moderate · 12 Low**; leaving at **38 — 0 High · 17 Moderate · 21 Low**. **19 moved, 7 held, 12 unchanged.** Six moved two steps and each was argued. **Nothing closed and nothing removed** |
| Evidence | **2,103 artefacts** — 1,847 for the examination, 612 for the certification audit, **356 for both, produced once. 16.9%**, which is smaller than ADR-0001's rhetoric implied, **and the dividend was never in the artefacts** |
| **The nine test exceptions** | A1.2 · A1.1/A1.2 · PI1.3 · CC8.1 · **P4.2** · CC9.2 · P5.1 · CC6.2 · CC6.3. **Every one was found by CloudNimbus before the service auditor found it** |
| **The opinion** | **Not stated.** Fieldwork closed on the vantage. On 2027-01-28 the engagement team raised that it was considering whether exception 5 required a modification, and **at this vantage the question is open** |
| The collision | Stage 2 sat **inside** the observation window and the major was raised **29 days before it closed**. Contradictory evidence about CC4.1 and CC4.2, evaluated as such, and disclosed in **Section V — which is not covered by the opinion, and management says so on its face** |

## 3. What the build harness re-derives rather than trusts

Every row of the six-month operating record is re-summed month by month and required to equal its stated
window total. The six monthly availability figures are recomputed from downtime minutes against the days in
each month less the minutes excluded inside an announced maintenance window, and the phase is scanned for
any window average, which may appear only inside a sentence refusing it. The register close is recomputed
from the entering position and required to reconcile 19 moved + 7 held + 12 unchanged to 38, with every
held entry named. **All nine test exception rates are recomputed from their own populations.** The
integration dividend is recomputed from the two request sets and their intersection. The certificate's
three-year validity is recomputed to the day. Every `CNB-C-` identifier is checked against the Phase 04
library plus the two controls admitted since. Every date after the vantage is checked for a forward-looking
marker, and the forbidden-claim scan carries a **third** list this phase: the phrases that would cross the
two vocabularies, because ISO nonconformities and SOC 2 exceptions were raised about the same organisation
in the same week.

**And what it cannot do.** It checks that the arithmetic closes and the series are complete. **It cannot
catch a claim that is internally consistent and wrong.** Every phase here is read adversarially as well as
built mechanically, and the correction rounds are in the changelog rather than absorbed.

## 4. Files

- `08.00-README.md`
- `08.01-the-clause-9-2-internal-audit.md`
- `08.02-the-clause-9-3-management-review.md`
- `08.03-iso-stage-1-and-what-a-readiness-review-does-not-do.md`
- `08.04-the-second-penetration-test.md`
- `08.05-stage-2-and-the-major-nonconformity.md`
- `08.06-the-minor-nonconformities-and-the-opportunities.md`
- `08.07-correction-corrective-action-and-the-certificate.md`
- `08.08-the-observation-window-closes.md`
- `08.09-evidence-production-and-the-integration-dividend.md`
- `08.10-the-type-ii-fieldwork.md`
- `08.11-the-nine-test-exceptions.md`
- `08.12-the-scheduling-collision.md`
- `08.13-phase-summary-and-transition.md`
- `adr/ADR-0036-a-clean-stage-1-is-not-assurance.md`
- `adr/ADR-0037-the-major-is-accepted-not-argued.md`
- `adr/ADR-0038-the-collision-is-disclosed-in-section-v.md`
- `adr/ADR-0039-nineteen-entries-move-at-one-review.md`
- `adr/ADR-0040-cnb-c-150-is-admitted-outside-the-window.md`
- `diagrams/08-the-assurance-calendar-as-it-actually-ran.md`
- `diagrams/08-the-major-and-where-it-was-already-written-down.md`
- `diagrams/08-the-register-from-baseline-to-close.md`
- `diagrams/08-two-frameworks-one-week.md`
- `governance/GOV-29-clause-9-3-management-review.md`
- `governance/GOV-30-stage-2-closing-meeting.md`
- `governance/GOV-31-maj-01-correction-root-cause-and-corrective-action.md`
- `governance/GOV-32-december-cal-06-register-review.md`
- `logs/decision-log.md`
- `logs/evidence-index.md`
- `logs/finding-log.md`
- `logs/raid-log.md`
- `templates/audit-programme-coverage-matrix-template.md`
- `templates/corrective-action-template.md`
- `templates/evidence-request-response-template.md`
- `templates/nonconformity-record-template.md`
- `trackers/08-findings-register.xlsx`
- `trackers/08-register-close.xlsx`
- `trackers/08-the-nine-test-exceptions.xlsx`
- `trackers/08-window-operating-record.xlsx`
