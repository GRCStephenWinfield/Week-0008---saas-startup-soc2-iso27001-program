# ADR-0022 — Sequential tenant identifiers retained: enumeration is not authorisation

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-A22 |
| Version | 1.0 |
| Date | 2026-08-11 |
| Owner | Rahul Bhargava |
| Approver | Karim Haddad |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


| Field | Value |
|---|---|
| Status | Accepted |
| Date | 2026-06-16 |
| Decider | Nathan Oyelaran |
| Phase | 05 — Security Criteria &amp; Technical Controls |

## Context

**PT-15** recorded that tenant identifiers are sequential integers, which assists enumeration. Replacing them would touch every tenant-scoped table and every integration that has ever seen one.

## Decision

The identifiers are retained. The acceptance is recorded with its reasoning and is **revisited at the second penetration test** scheduled for October.

## Consequences

The enumeration surface remains, and a reader of the report will see a Low finding accepted rather than closed. In exchange, engineering effort goes to the control that does the work rather than to the property that looks like it does.

## Alternatives considered and rejected

Making identifiers opaque — rejected. **The isolation control is the predicate, not the opacity of the identifier.** A programme that responds to PT-15 by changing the identifier buys the appearance of security in exchange for a migration touching every tenant-scoped table, while leaving the actual control untouched. The argument is credible here precisely because **PT-01 tested it**: the predicate is what failed, and the predicate is what was fixed. Generating opaque public identifiers over a sequential internal key — rejected at GOV-18 §4 as the worst of both: the migration cost is largely unchanged, the enumeration surface moves rather than closes, and the record would show a finding remediated when the property it described still holds.

## Related

| Reference | Relationship |
|---|---|
| [05.12 R-37 Tenant Isolation Finding and Remediation](../05.12-r37-tenant-isolation-finding-and-remediation.md) | The finding this phase turns on |
| [logs/decision-log.md](../logs/decision-log.md) | Decision log entry |
| [05.13 Phase Summary and Transition](../05.13-phase-summary-and-transition.md) | Carries this decision forward |
