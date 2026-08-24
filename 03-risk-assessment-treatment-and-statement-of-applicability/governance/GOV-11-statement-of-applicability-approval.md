# GOV-11 — Statement of Applicability Approval

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-G11 |
| Version | 1.0 |
| Date | 2026-08-11 |
| Owner | Karim Haddad |
| Approver | Elise Fontaine |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


## 1. Matter

Approval of the Statement of Applicability, version 1.0, required by ISO/IEC 27001:2022 clause 6.1.3 d).

## 2. Determination

| Figure | Value |
|---|---|
| Annex A controls | 93 |
| Determined necessary | **91** |
| Determined not necessary | **2** — A.7.11 supporting utilities, A.7.12 cabling security |
| Proposed for exclusion and **refused** | **4** — A.7.4, A.7.8, A.7.10, A.7.13 |
| Justified by the risk assessment | 74 |
| Justified by a contractual or legal requirement | 11 |
| Justified by business requirement or good practice | 6 |
| Implemented at v1.0 | 62 |
| Partially implemented at v1.0 | 21 |
| Planned at v1.0 | 8 |

74 + 11 + 6 = 91. 62 + 21 + 8 = 91. 91 + 2 = 93.

## 3. What the committee approved about the exclusions

That they are justified **by the absence of the thing the control protects**, and not by the presence of a
supplier. CloudNimbus operates no facility containing information processing equipment: the Denver suite
has no server, no network closet and no comms room. Supporting utilities and cabling at the facilities that
do hold processing equipment are addressed as **CSOC-01 and CSOC-02** — a carve-out, which is a different
mechanism with a different meaning. "Our cloud provider does it" is not an exclusion justification.

The committee also recorded that both exclusions are **conditional and falsifiable**. Placing a rack in the
Denver suite would make both controls necessary immediately, and the change would be notifiable to Northgate
Certification Services within thirty days under obligation O10.

## 4. What the committee approved about the refusals

Four controls were proposed for exclusion and refused. Each refusal costs an implementation CloudNimbus
could have argued its way out of, and the committee accepted that cost. The sharpest was **A.7.10 storage
media**: the proposal was that removable media is prohibited, and the refusal was that **a prohibition is an
implementation of the control, not a reason to exclude it**. The control asks how media is managed across
its lifecycle. "We do not permit it" is an answer to that question — and one that has to be enforced and
evidenced like any other.

## 5. The implementation status, and why it is not an embarrassment

Twenty-nine of the ninety-one necessary controls are Partial or Planned at version 1.0. Clause 6.1.3 d)
requires the Statement to say **whether the necessary controls are implemented**, and a first issue approved
on 2026-04-24, against a control build running to June, that showed ninety-one implemented would be a
Statement nobody could believe. The document is reissued when the ISMS is declared operational on
2026-06-15.

**All eleven controls new in ISO/IEC 27001:2022 are among the twenty-nine.** An organisation certifying for
the first time against the 2022 edition has no legacy implementation of those eleven to inherit, and the
cluster is a description of that fact rather than a weakness.

## Cross-References

| Document | Relationship |
|---|---|
| [03.08 Statement of Applicability Methodology](../03.08-statement-of-applicability-methodology.md) | How it was derived |
| [03.11 Controls Argued and Refused](../03.11-controls-argued-and-refused.md) | The two and the four |
| [ADR-0013](../adr/ADR-0013-ninety-one-of-ninety-three.md) | Decision record |
