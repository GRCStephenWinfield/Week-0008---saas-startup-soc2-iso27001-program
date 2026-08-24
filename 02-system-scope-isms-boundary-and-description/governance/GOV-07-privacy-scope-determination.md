# GOV-07 — Privacy Scope Determination

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-G07 |
| Version | 1.0 |
| Date | 2026-08-11 |
| Owner | Tobias Lund |
| Approver | Karim Haddad |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


## 1. Matter

Determination of the personal data inventory, the treatment of geolocation and leave type, and the
retention schedule.

## 2. The provenance finding

| Source | Categories | Count |
|---|---|---|
| Collected directly from the individual | PD-04, PD-05, PD-06, PD-08, PD-10, PD-11, PD-12 | 7 |
| Received from the employer | PD-01, PD-02, PD-03, PD-09 | 4 |
| Both | PD-07 | 1 |
| **Total** | | **12** |

Seven of twelve categories are collected directly from the data subject. That count is the evidential basis
for the decision recorded at ADR-0002 to keep the Privacy category, and it is recorded here so that the
decision rests on a finding rather than on an intuition.

## 3. Geolocation — PD-05

Geolocation at clock-in is enabled by **387 of 640 customers**. Removal was proposed on the ground that it
would simplify the privacy position materially. It was refused: the 387 customers who enabled it did so
deliberately, to evidence compliance with their own labour and premises rules, and withdrawing a feature to
make a compliance argument easier is a decision made for the wrong party's benefit.

Retention was instead cut to **13 months**, shorter than the contract term governing every other category.
Recorded as DEC-205 and DEC-207 and argued as ADR-0009.

## 4. Leave type — PD-07

Leave is recorded against a controlled list. One value on that list is "Medical / sick", and a value of that
kind is capable of implying something about a person's health. CloudNimbus stores **the type only** — never
a reason, a diagnosis, a certificate or any medical detail. The restriction is a design decision.

The determination records the exposure and refers the full treatment to Phase 07. **It reaches no
conclusion about how any particular legal regime classifies the field**; that is a question for counsel and
not for a compliance document. Recorded as DEC-206.

## 5. The retention conflict, recorded rather than resolved

RT-08 commits CloudNimbus to delete customer data within 30 days of termination. RT-07 holds backups on a
35-day rolling cycle. **30 + 35 = 65.** A record cleared from the live stores on day 30 survives inside an
encrypted backup until day 65. The determination is that this is disclosed, not engineered away: the
certificate states what it covers, keys are region-scoped, access is restricted, the cycle expires the
residue without intervention, and any restoration from a snapshot predating a deletion triggers a
documented re-deletion.

## Cross-References

| Document | Relationship |
|---|---|
| [02.07 Personal Information Inventory and Data Subjects](../02.07-personal-information-inventory-and-data-subjects.md) | PD and RT series in full |
| [ADR-0009](../adr/ADR-0009-geolocation-retained-retention-shortened.md) | Decision record |
