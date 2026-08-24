# GOV-08 — Complementary User Entity Control Review

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-G08 |
| Version | 1.0 |
| Date | 2026-08-11 |
| Owner | Ana-Sofia Cruz |
| Approver | Karim Haddad |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


## 1. Matter

Determination of the complementary user entity controls to be disclosed under DC6.

## 2. Outcome

**Fifteen were proposed. Four were refused. Eleven are disclosed. 15 − 4 = 11.**

## 3. The principle applied

A complementary user entity control is a **disclosure**: a statement that CloudNimbus's controls are not
sufficient on their own and that a control at the user entity has to operate for a criterion to be met. It
is not a control CloudNimbus operates, not a control CloudNimbus can test, and not a control the service
auditor will sample.

That makes the list a temptation. Every obligation moved onto it is an obligation that appears to leave
CloudNimbus, and a longer list looks more thorough. It is not more thorough; it is a transfer of
CloudNimbus's own obligations onto parties who never agreed to them and, in a material number of cases,
will not perform them.

## 4. The four refusals

| Proposed | Refused because |
|---|---|
| Customers must monitor their tenant for unauthorised access | Detection is CloudNimbus's obligation under the CC7 series, and the customer cannot see the telemetry |
| Customers must verify that CloudNimbus has deleted their data | Obligation O7 commits CloudNimbus to certify deletion; a commitment is not discharged by asking the counterparty to check it |
| Customers must confirm that encryption is enabled on their tenant | Encryption is not tenant-configurable; the control is CloudNimbus's and the setting is not reachable by the customer |
| Customers must ensure their employees do not share credentials | Partly genuine, but as drafted it shifted the substance of CC6.1. The residue is covered by CUEC-01 and CUEC-03 |

## 5. The one that matters

**CUEC-05** — validate the payroll export against your own records before submitting it to your payroll
provider — is the most important control on the list and the least reliably performed. The committee asked
that the description say what happens when a customer does not perform it, rather than disclose the control
and stop. A disclosure that describes only the intended world is not a disclosure.

## Cross-References

| Document | Relationship |
|---|---|
| [02.11 Complementary User Entity Controls](../02.11-complementary-user-entity-controls.md) | The list and the argument |
| [ADR-0010](../adr/ADR-0010-four-proposed-cuecs-refused.md) | Decision record |
