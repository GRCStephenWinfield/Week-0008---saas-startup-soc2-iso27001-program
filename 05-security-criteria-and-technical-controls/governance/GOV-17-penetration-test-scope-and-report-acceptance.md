# GOV-17 — Penetration Test Scope and Report Acceptance

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-G17 |
| Version | 1.0 |
| Date | 2026-08-11 |
| Owner | Karim Haddad |
| Approver | Marisol Vega |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


## 1. Matter

Approval of the penetration test scope, and acceptance of Ironwood Security Labs' report — milestone
**MS-06**, fieldwork **2026-05-04 to 2026-05-22**.

## 2. Why the test ran before the control library was finished

The library was published on 2026-06-05 and the test finished on 2026-05-22. **DEC-109** in Phase 01
commissioned the testing early, and the reason was recorded then: the tenant isolation question could not
wait for documentation. The committee accepted the cost of that ordering — a test against controls not yet
formally described — because a finding of the kind the test was commissioned to look for is worth more in
May than a tidier engagement would have been in August.

## 3. Scope

Five streams, **TS-01 to TS-05**, covering the internet-facing surface, an assumed-breach position inside
the five in-system AWS accounts, the customer web application and admin console, both mobile clients, and
**cross-tenant access attempts against every documented data path**.

**The test ran against a production-equivalent pre-production environment seeded with synthetic tenants.**
No real customer data was in scope at any point. The committee recorded the reason for that choice and its
consequence: a synthetic environment removes the exposure risk of testing and, in exchange, requires a
separate step to establish whether anything found there was ever exercised in production. That step is at
05.12.

## 4. Findings accepted

**Sixteen — 1 Critical, 3 High, 6 Medium, 6 Low.** At this record's date thirteen were closed and
retested, two ride the mobile release of 2026-08-14, and one is accepted.

## 5. What the committee asked to be recorded

That **PT-01 was found by the stream commissioned to look for it**. The multi-tenancy isolation stream
existed because Phase 01 recorded AS-02 — that row-level security was uniformly enforced across every data
access path — as an assumption rather than a fact, and Phase 02 located it on DF-06. **The assumption was
written down, the test was scoped to it, and the test disproved it.**

The committee noted that this is the least dramatic and most useful thing an assumption log can do, and
asked that it be said plainly rather than presented as good fortune.

## Cross-References

| Document | Relationship |
|---|---|
| [05.11 Penetration Testing Programme and Findings](../05.11-penetration-testing-programme-and-findings.md) | The streams and the findings |
| [05.12 R-37 Tenant Isolation Finding and Remediation](../05.12-r37-tenant-isolation-finding-and-remediation.md) | PT-01 |
