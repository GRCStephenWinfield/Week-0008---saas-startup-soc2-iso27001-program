# Template — Change Record

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-T20 |
| Version | 1.0 |
| Date | 2026-08-11 |
| Owner | Junia Okonkwo |
| Approver | Nathan Oyelaran |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


| Field | Guidance |
|---|---|
| Change identifier | The pull request, and the deployment it produced |
| Description | What changes, and what breaks if it is wrong |
| **Peer review** | The approving review from a code owner, recorded by branch protection rather than asserted. **ML-2 in the 2025 management letter was this control enforced by convention instead of by configuration** |
| Automated gates | Tests, static analysis, composition analysis, infrastructure-as-code scanning — pass or fail, recorded |
| Deployment | Pipeline run. There is no other route to production |
| Rollback | What it is, and whether it was rehearsed |
| Emergency | If this was an emergency change: who authorised it at the time, and the **retrospective approval within five business days** |
| Linked finding or incident | Where the change closes a `PT-nn` or an incident |

**On the linked-finding field.** **Four** of July's forty-seven changes were penetration test remediation —
PT-06, PT-08, PT-12 and PT-16. Nine findings were remediated *or retested* inside July, but the other five
were remediated in June and only retested on 2026-07-24, and a retest performed by the tester is not a
change by the entity. Recording the link on each change means a reader can reconcile the two populations
rather than double-count them, which GOV-20 asked for explicitly — and it is why the distinction between
remediated and retested has to be carried on the record rather than in somebody's memory.

**On emergency changes.** Two in July, both retrospectively approved in time. The number that matters is
not how many there were but whether the retrospective approval actually happened within five business days
— because an emergency procedure nobody completes afterwards is a bypass with a name.

## Cross-References

| Document | Relationship |
|---|---|
| [05.09 Secure Development and Change Management](../05.09-secure-development-and-change-management.md) | The pipeline |
| `01-program-foundation-dual-framework-governance` | ML-2, enforced by convention rather than configuration |
