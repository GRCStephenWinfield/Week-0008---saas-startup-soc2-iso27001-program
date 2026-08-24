# ADR-0021 — The tenant predicate is a mandatory data-access-layer parameter, not a connection session variable

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-A21 |
| Version | 1.0 |
| Date | 2026-08-11 |
| Owner | Rahul Bhargava |
| Approver | Karim Haddad |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


| Field | Value |
|---|---|
| Status | Accepted |
| Date | 2026-05-26 |
| Decider | Nathan Oyelaran |
| Phase | 05 — Security Criteria &amp; Technical Controls |

## Context

Tenant isolation was enforced by a database row-level policy keyed on a session variable set when a connection was taken from the pool. The mechanism is correct when the connection is the one the hook ran on. **PT-01 found a code path where it was not**: a nested filter that opened a second connection mid-transaction, so the policy evaluated against an unset variable and constrained nothing.

## Decision

The tenant predicate moves out of the connection and into the query, as a **mandatory parameter on the data-access layer**, with a **build-time check that fails any query constructed without it**. Deployed 2026-05-29 and retested clean on 2026-06-11.

## Consequences

The failure mode moves from runtime to build time, which is the point. A control that cannot be bypassed by accident is a different control from one that is merely correct when used correctly, and `CNB-C-035` is worded to describe the first. The cost is that every query path must be constructed through the data-access layer, which constrains how services reach relational data and is a real limit on engineering freedom. The non-relational stores are reached by services rather than by this layer, so their isolation rests on the suite's path coverage — a limit stated rather than glossed.

## Alternatives considered and rejected

Fixing the code path alone — rejected. It would have closed this instance and left the mechanism's shape unchanged, which is to say it would have left the next path free to make the same mistake. Adding a runtime assertion that the session variable is set — rejected as a check that fires after the query has been built, in production, where the failure is already available.

## Related

| Reference | Relationship |
|---|---|
| [05.12 R-37 Tenant Isolation Finding and Remediation](../05.12-r37-tenant-isolation-finding-and-remediation.md) | The finding this phase turns on |
| [logs/decision-log.md](../logs/decision-log.md) | Decision log entry |
| [05.13 Phase Summary and Transition](../05.13-phase-summary-and-transition.md) | Carries this decision forward |
