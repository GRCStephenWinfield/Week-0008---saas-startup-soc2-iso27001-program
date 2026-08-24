# Diagram — Treatment Decision Flow

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-D11 |
| Version | 1.0 |
| Date | 2026-08-11 |
| Owner | Rahul Bhargava |
| Approver | Karim Haddad |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


```mermaid
flowchart TB
    RISK["A risk on the register"]
    Q1{"Can CloudNimbus cease the activity that gives rise to it?"}
    AV["Avoid — 0 entries"]
    Q2{"Is the likelihood or the consequence within CloudNimbus's control?"}
    Q3{"Can it be transferred in part to a party that does control it?"}
    SH["Share — 1 entry, R-04"]
    MOD["Modify — 31 entries, TP-01 to TP-34"]
    RET["Retain — 4 entries, R-19 R-20 R-24 R-28"]
    ACC["Residual accepted by the risk owner under clause 6.1.3 f)<br/>plus the additional acceptance the criteria require at that band"]

    RISK --> Q1
    Q1 -->|Yes| AV
    Q1 -->|No| Q2
    Q2 -->|Yes| MOD
    Q2 -->|No| Q3
    Q3 -->|Yes| SH
    Q3 -->|No| RET
    RET --> ACC
```

**Avoid has no entries, and the zero is stated rather than hidden.** Avoidance means ceasing an activity.
CloudNimbus did not withdraw geolocation, did not stop holding leave type, did not exit the European Union.
A treatment plan that records an avoidance it did not perform is a plan that has learned to fill in a form.

**Each entry takes exactly one disposition**, which is why modification is terminal here and retention is
reached only when neither modification nor sharing is available. The four retained entries carry no
treatment item, and that is the visible consequence of the choice rather than an omission.

Retention terminates in **two signatures, not one**. Clause 6.1.3 f) names the **risk owner** and nobody
else, so the owner accepts the residual; CloudNimbus's own acceptance criteria then add a second signature
at the level the band and the impact rider require. An executive acceptance recorded *instead of* the
owner's would be a clause 6.1.3 f) nonconformity waiting to be raised.

## Cross-References

| Document | Relationship |
|---|---|
| [03.06 Risk Treatment Plan](../03.06-risk-treatment-plan.md) | TP-01 to TP-34 |
| [03.07 Risk Acceptance and Residual Risk](../03.07-risk-acceptance-and-residual-risk.md) | The four retained |
