# Template — Data Flow Record

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-T06 |
| Version | 1.0 |
| Date | 2026-08-11 |
| Owner | Junia Okonkwo |
| Approver | Nathan Oyelaran |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


| Field | Guidance |
|---|---|
| Flow ID | `DF-nn` |
| Trigger | What starts it — a user action, a schedule, an inbound call |
| Source and destination | Named systems, not layers |
| Path | Every component the data traverses, in order, including queues and caches |
| Personal data | Which PD categories. If none, say why none, because "no personal data" is a claim |
| Residency | Which regions the data is in at each step, and where it comes to rest |
| Third parties | Any sub-processor or subservice organisation performing a step |
| Authentication and authorisation | How the flow is authenticated and how the tenant scope is enforced |
| Retention | Which RT rule applies at the destination |
| Logging | What the flow writes to the audit record |
| Failure mode | What happens when a step fails, and whether the failure is visible |

**Failure mode is the field people skip and the field that earns its place.** A flow whose failure is
silent is a flow whose controls cannot be relied on, and the register is where that becomes visible before
it becomes an incident.

## Cross-References

| Document | Relationship |
|---|---|
| [02.04 Software and Data Flows](../02.04-software-and-data-flows.md) | DF-01 to DF-12 |
| [02.07 Personal Information Inventory and Data Subjects](../02.07-personal-information-inventory-and-data-subjects.md) | PD and RT series |
