# Diagram — Personal Data Provenance

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-D06 |
| Version | 1.0 |
| Date | 2026-08-11 |
| Owner | Tobias Lund |
| Approver | Karim Haddad |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


```mermaid
flowchart LR
    IND["The individual<br/>an employee of a customer"]
    EMP["The employer<br/>the customer"]
    PAY["The employer's payroll provider"]
    APP["CloudNimbus mobile and web applications"]
    ADMIN["Tenant admin console and integrations"]
    STORE["CloudNimbus data stores"]

    IND -->|"PD-04 · PD-05 · PD-06 · PD-08 · PD-10 · PD-11 · PD-12"| APP
    EMP -->|"PD-01 · PD-02 · PD-03"| ADMIN
    PAY -->|"PD-09 token reference"| ADMIN
    IND -->|"PD-07"| APP
    EMP -->|"PD-07"| ADMIN
    APP --> STORE
    ADMIN --> STORE
```

Seven categories arrive from the individual, four from the employer, one from both. That count is the
evidence behind keeping the Privacy category: a party you collect from directly is a party you owe
something to directly, and no contract between CloudNimbus and the employer changes who the data came from.

## Cross-References

| Document | Relationship |
|---|---|
| [02.07 Personal Information Inventory and Data Subjects](../02.07-personal-information-inventory-and-data-subjects.md) | PD-01 to PD-12 |
| `01-program-foundation-dual-framework-governance` | ADR-0002, the decision this count supports |
