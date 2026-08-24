# Diagram — Assurance Timeline

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-D03 |
| Version | 1.0 |
| Date | 2026-08-11 |
| Owner | Karim Haddad |
| Approver | Marisol Vega |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


```mermaid
gantt
    title CloudNimbus Trust Programme — MS-01 to MS-18
    dateFormat YYYY-MM-DD
    axisFormat %b %Y
    section Milestones
    Board approves budget; programme kickoff :milestone, ms01, 2026-01-19, 1d
    SOC 2 system scope and ISMS boundary defined :ms02, 2026-02-27, 1d
    Asset inventory and data flows baselined :ms03, 2026-03-20, 1d
    Risk assessment complete; baseline register  :ms04, 2026-04-10, 1d
    Risk treatment plan and Statement of Applica :ms05, 2026-04-24, 1d
    Penetration testing complete :ms06, 2026-05-22, 1d
    Unified control library published :ms07, 2026-06-05, 1d
    Policy suite approved :ms08, 2026-06-12, 1d
    ISMS declared operational :milestone, ms09, 2026-06-15, 1d
    Type II observation window opens :milestone, ms10, 2026-07-01, 1d
    Disaster recovery exercise complete :ms11, 2026-08-19, 1d
    Clause 9.2 internal audit complete :ms12, 2026-09-25, 1d
    Management review held :ms13, 2026-09-30, 1d
    ISO Stage 1 complete :ms14, 2026-10-14, 1d
    ISO Stage 2 complete :ms15, 2026-12-04, 1d
    Type II observation window closes :milestone, ms16, 2026-12-31, 1d
    ISO/IEC 27001:2022 certificate issued :milestone, ms17, 2027-01-22, 1d
    SOC 2 Type II report issued :milestone, ms18, 2027-02-26, 1d
```

The hardest date in the programme is **2026-07-01**. Anything not operating on that morning cannot be
tested across the full observation window, and a control with three months of operating history inside a
six-month period is a control the service auditor will sample against a shorter population and say so.

## Cross-References

| Document | Relationship |
|---|---|
| [01.12 Programme Roadmap and Milestones](../01.12-program-roadmap-and-milestones.md) | Source of MS-01 to MS-18 |
| [01.11 Assurance Calendar and Obligations](../01.11-assurance-calendar-and-obligations.md) | Recurring activity behind the milestones |
