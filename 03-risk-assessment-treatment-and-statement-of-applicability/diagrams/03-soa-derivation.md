# Diagram — How the Statement of Applicability Was Derived

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-D12 |
| Version | 1.0 |
| Date | 2026-08-11 |
| Owner | Karim Haddad |
| Approver | Elise Fontaine |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


```mermaid
flowchart TB
    RA["Risk assessment — clause 6.1.2<br/>36 entries, R-01 to R-36"]
    LEG["Legal and contractual requirements<br/>obligations O1 to O12 · commitments SC-01 to SC-10"]
    BUS["Business requirements and good practice"]
    NEC["Necessary controls determined — clause 6.1.3 b)<br/>74 from risk · 11 contractual or legal · 6 business = 91"]
    CMP{"Compare against Annex A — clause 6.1.3 c)<br/>Has anything necessary been omitted?"}
    SOA["Statement of Applicability — clause 6.1.3 d)<br/>91 necessary · 2 excluded with justification<br/>implementation status stated for each"]
    TP2["Treatment plan — clause 6.1.3 e)<br/>TP-01 to TP-34"]
    APP["Risk owners approve the plan and accept the residual — clause 6.1.3 f)"]

    RA --> NEC
    LEG --> NEC
    BUS --> NEC
    NEC --> CMP
    CMP -->|"Nothing omitted"| SOA
    CMP -->|"A gap found"| NEC
    SOA --> TP2 --> APP
```

**The arrows only run this way.** Controls are determined necessary by the risk assessment and by legal and
contractual requirements; Annex A is then used to **check** that nothing necessary was missed. Clause
6.1.3 c) is explicit that the comparison is a verification step.

An organisation that starts at Annex A and works backwards has produced a checklist and called it a
management system. It will also, reliably, implement a control it does not need and miss one it does,
because the reference set was written for every organisation and none of them is this one.

## Cross-References

| Document | Relationship |
|---|---|
| [03.08 Statement of Applicability Methodology](../03.08-statement-of-applicability-methodology.md) | The argument |
| [03.09](../03.09-statement-of-applicability-organizational-controls.md) · [03.10](../03.10-statement-of-applicability-people-physical-technological.md) | The 93 rows |
