# Phase 09 — Structure

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2027-9ST |
| Version | 1.0 |
| Date | 2027-03-11 |
| Owner | Rahul Bhargava |
| Approver | Karim Haddad |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


## 1. What is in this package

```
09-executive-reporting-and-continuous-assurance/
├── 09.00 – 09.13   14 numbered documents
├── adr/            ADR-0041 to ADR-0045
├── diagrams/       4 diagrams
├── governance/     GOV-33 to GOV-36
├── logs/           decision, evidence, RAID and obligation registers
├── templates/      4 record templates
└── trackers/       4 workbooks, every figure re-derived from the narrative
```

## 2. The phase in figures

| Item | Value |
|---|---|
| Vantage | **2027-03-11**, the day of the board and Audit &amp; Risk Committee report |
| The report | Issued **2027-02-26** by **Ashcombe &amp; Doyle LLP**, engagement partner Meredith Vance, CPA, for the period **2026-07-01 to 2026-12-31** |
| **The opinion** | **Unmodified**, in three limbs — the description, the suitability of design, and operating effectiveness throughout the period. **It is not a statement that nothing went wrong**, and "clean opinion" is not a term the standards use |
| **The near-modification** | The engagement team considered modifying over **exception 5** and concluded not to. Both denominators are published — **68 of 184 = 37.0%** on the rule that failed and **68 of 4,416 = 1.5%** across the whole scheduled-deletion population — with the phase's view of which is honest. **It was close, and a different engagement team on the same facts could have reached the other answer** |
| Section IV | **Nine test exceptions** under **nine of the sixty-one** applicable criteria. **Fifty-two carry none, and that is not fifty-two successes** |
| Section V | The **Stage 2 major nonconformity and its closure**, the **certificate**, and the two ISO artefact reissues — **carried together, because including one without the other is selective disclosure**. Section V is **not covered by the opinion** and management says so on its face |
| **DC9** | The three-way test: a change **before** the period is not a DC9 disclosure — the tenant-predicate build check of 2026-05-26 is deliberately absent; a change **during** it is; a change **after** it is a **subsequent event**, which is `CNB-C-150` on 2027-01-08 |
| Distribution | **O2** required delivery to the **118** enterprise-tier customers within thirty days of issuance, by 2027-03-28. **All 118 delivered by 2027-03-06.** Of the remaining **522**, **37** requested under O1 and 37 were delivered. 118 + 522 = 640 |
| Restricted use | The restricted-use paragraph **is not a confidentiality agreement**, and the two are routinely conflated because they arrive in the same envelope |
| Bridge letters | **Nine issued under O3**, management-issued and **unaudited**. **All nine disclose `CNB-C-150`'s admission on 2027-01-08**, because a letter that said "no changes" would have been false. **A bridge letter covers a gap; it does not close one** |
| **The register** | **38 — 0 High · 17 Moderate · 21 Low**, against a published forecast of **0 · 16 · 22**. **One band, five entries, in both directions.** The March review of 2027-03-09 **held all thirty-eight** |
| **The objectives** | **Seven of eight met.** **OBJ-03 missed** — 70% of evidence artefacts serving both deliverables, actual **16.9%**. **The miss is reported before it is explained**, and the explanation is a second finding: the measure was wrong, and the dividend is in the **113 of 150 controls — 75.3%** |
| The programme | **150 controls (113 dual-serving) · 61 criteria · 38 register entries · 116 decisions · 45 architectural decision records · 36 governance records · 2,103 evidence artefacts · $1,366,000 against $1,400,000 · 4.6 FTE** |
| Continuous assurance | The **2027 window runs 2027-01-01 to 2027-12-31** and is **ten weeks old**. The first **surveillance audit is scheduled for 2027-11**. **Sixteen corrective actions are open and none is closed here to make the close-out tidy** — ADR-0045 |
| What it does not claim | Not that CloudNimbus is secure. Not that the controls will operate in 2027. Not that a clean report predicts anything — **it did not predict the RT-02 failure, which happened eleven weeks before the period ended, inside the report** |

## 3. What the build harness re-derives rather than trusts

All nine exception rates are recomputed from their own populations, and the count of distinct criteria
carrying them is recomputed and required to reconcile to sixty-one. **The forecast-against-actual divergence
is recomputed entry by entry**, with a check that each entry's consequence is unchanged between forecast and
actual, that each of the five genuinely crosses a band, and that the five reconcile 0 · 16 · 22 to
0 · 17 · 21. The objective scorecard is required to carry exactly eight rows and exactly one miss, and the
narrative is checked to state the miss **before** the better measure. The programme's own totals —
45 architectural decision records, 36 governance records and 116
decisions — are **counted from the repository** rather than read from the prose. Every amount is checked
against an allow-list, because an amount that means two different things in one phase is a figure nobody can
check. And every date after the vantage is checked for a forward-looking marker.

**And what it cannot do**, said for the ninth and last time: it checks that the arithmetic closes and that
the series are complete. **It cannot catch a claim that is internally consistent and wrong.** Every phase in
this programme was read adversarially as well as built mechanically, and the correction rounds are recorded
in the changelogs rather than absorbed.

## 4. Files

- `09.00-README.md`
- `09.01-managements-assertion-and-the-representation-letter.md`
- `09.02-the-description-of-the-system.md`
- `09.03-dc9-relevant-changes-during-the-period.md`
- `09.04-the-report-and-the-opinion.md`
- `09.05-the-near-modification-resolved.md`
- `09.06-section-iv-and-the-nine-exceptions-as-published.md`
- `09.07-section-v-and-what-the-opinion-does-not-cover.md`
- `09.08-restricted-use-and-the-distribution.md`
- `09.09-the-bridge-letter.md`
- `09.10-the-register-at-close-forecast-against-actual.md`
- `09.11-the-programme-against-its-objectives.md`
- `09.12-continuous-assurance-and-the-board-report.md`
- `09.13-what-this-portfolio-claims-and-what-it-does-not.md`
- `adr/ADR-0041-the-near-modification-reasoning-is-published.md`
- `adr/ADR-0042-section-v-carries-both-or-neither.md`
- `adr/ADR-0043-obj-03-is-reported-missed-before-it-is-explained.md`
- `adr/ADR-0044-the-bridge-letter-discloses-cnb-c-150.md`
- `adr/ADR-0045-nothing-is-closed-to-make-the-close-out-tidy.md`
- `diagrams/09-forecast-against-actual.md`
- `diagrams/09-the-five-sections-and-who-writes-them.md`
- `diagrams/09-the-programme-end-to-end.md`
- `diagrams/09-what-each-document-covers-and-does-not.md`
- `governance/GOV-33-board-approval-of-managements-assertion.md`
- `governance/GOV-34-communication-to-those-charged-with-governance.md`
- `governance/GOV-35-march-cal-06-register-review.md`
- `governance/GOV-36-board-and-audit-risk-committee-report.md`
- `logs/decision-log.md`
- `logs/evidence-index.md`
- `logs/obligation-register.md`
- `logs/raid-log.md`
- `templates/bridge-letter-template.md`
- `templates/managements-assertion-template.md`
- `templates/objective-scorecard-template.md`
- `templates/report-distribution-record-template.md`
- `trackers/09-objective-scorecard.xlsx`
- `trackers/09-register-forecast-against-actual.xlsx`
- `trackers/09-the-nine-exceptions-as-published.xlsx`
- `trackers/09-the-programme-in-figures.xlsx`
