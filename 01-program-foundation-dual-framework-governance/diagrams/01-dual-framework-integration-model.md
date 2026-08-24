# Diagram — Dual-Framework Integration Model

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-D02 |
| Version | 1.0 |
| Date | 2026-08-11 |
| Owner | Karim Haddad |
| Approver | Nathan Oyelaran |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


```mermaid
flowchart LR
    RISK["Risk assessment<br/>clause 6.1 · CC3.1-CC3.4"]
    LIB["Unified control library<br/>148 controls"]
    DUAL["112 controls<br/>serve both"]
    SOCONLY["21 controls<br/>SOC 2 only"]
    ISOONLY["15 controls<br/>ISO 27001 only"]
    EV["Single evidence store"]
    TSC["61 trust services criteria<br/>33 CC · 3 A · 5 PI · 2 C · 18 P"]
    ANNEX["Clauses 4-10 plus the<br/>necessary Annex A controls"]
    REP["SOC 2 Type II report<br/>an opinion, restricted use"]
    CERT["ISO/IEC 27001:2022 certificate<br/>issued by an accredited body"]

    RISK --> LIB
    LIB --> DUAL
    LIB --> SOCONLY
    LIB --> ISOONLY
    DUAL --> EV
    SOCONLY --> EV
    ISOONLY --> EV
    EV --> TSC
    EV --> ANNEX
    TSC --> REP
    ANNEX --> CERT
```

One risk assessment, one control library, one evidence store — and then the paths diverge and never rejoin.
Which of the 93 Annex A controls are necessary, and which the Statement of Applicability justifies leaving
out, is Phase 03's determination and is deliberately not asserted here.

There is no combined deliverable. The report is an opinion and the certificate is a certificate, and
conflating them is the single most common error in this field.

## Cross-References

| Document | Relationship |
|---|---|
| [01.06 Dual-Framework Strategy and Integration Model](../01.06-dual-framework-strategy-and-integration-model.md) | The argument this diagram summarises |
| [01.02 SOC 2 Landscape and Trust Services Criteria](../01.02-soc-2-landscape-and-trust-services-criteria.md) | Derives the 61 |
| [01.03 ISO/IEC 27001:2022 Landscape and Certification Route](../01.03-iso-iec-27001-2022-landscape-and-certification-route.md) | Derives the 93 |
