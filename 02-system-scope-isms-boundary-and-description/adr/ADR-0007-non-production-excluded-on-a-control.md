# ADR-0007 — Non-production environments excluded from the SOC 2 system on the strength of a control, not an architecture

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-A07 |
| Version | 1.0 |
| Date | 2026-08-11 |
| Owner | Rahul Bhargava |
| Approver | Karim Haddad |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


| Field | Value |
|---|---|
| Status | Accepted |
| Date | 2026-02-24 |
| Decider | Karim Haddad |
| Phase | 02 — System Scope, ISMS Boundary &amp; Description |

## Context

`cnb-staging` and `cnb-dev` exist to build and test the platform. Including them would extend the examination population across two further AWS accounts, an EKS cluster and an Aurora cluster with no customer data in them — provided there is no customer data in them.

## Decision

Both accounts are excluded from the SOC 2 system. The change-management pipeline that promotes code through them stays in scope, which is why the code repository and CI/CD populations lose only 29 and 16 members respectively rather than most of their contents.

## Consequences

The exclusion rests entirely on SR-12: non-production environments hold no production customer data. Architecture closes some vectors — there is no VPC peering between production and non-production, and key separation makes a copied snapshot unreadable outside its region and account — but it does not close the vector that matters, which is production data reaching non-production through the application or an export, the bug-reproduction restore being the obvious case. On that vector the exclusion is a claim about a control, not a fact about the architecture. **If SR-12 does not hold, the boundary was drawn wrongly from the beginning rather than merely tested unsuccessfully**, and the description would be wrong rather than the control ineffective. The dependency is stated everywhere the exclusion is stated, and SR-12 is written as a testable system requirement for that reason.

## Alternatives considered and rejected

Including both environments — rejected as buying population without buying assurance. Excluding the pipeline as well — rejected, because change management is examined under CC8.1 and a pipeline outside the system would put the promotion path outside the description while the changes it promotes are inside it.

## Related

| Reference | Relationship |
|---|---|
| [02.01 Scope Methodology and the Two Boundaries](../02.01-scope-methodology-and-two-boundaries.md) | Phase-level context |
| [logs/decision-log.md](../logs/decision-log.md) | Decision log entry |
| [02.13 Phase Summary and Transition](../02.13-phase-summary-and-transition.md) | Carries this decision forward |
