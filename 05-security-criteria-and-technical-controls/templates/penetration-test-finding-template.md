# Template — Penetration Test Finding

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-T17 |
| Version | 1.0 |
| Date | 2026-08-11 |
| Owner | Karim Haddad |
| Approver | Nathan Oyelaran |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


| Field | Guidance |
|---|---|
| ID | `PT-nn`, allocated per engagement and never reused |
| Finding | **What can be done, and by whom.** Not the weakness in the abstract — the reachable consequence |
| Stream | `TS-nn` |
| Severity | Critical · High · Medium · Low, assigned by the tester and **accepted or contested by CloudNimbus in writing**, never silently adjusted |
| Reachability | Where the finding is exploitable: production, pre-production, or a configuration not deployed |
| **Was it ever exercised** | For anything reachable in production, the forensic question and its answer — **including how far back the answer reaches** |
| Remediation | What changed. A status without substance is a record nobody can re-test |
| Detection added | Whether the class of finding is now detected, not only this instance |
| Remediated / Retested | Dates. The retest is by the tester, not by the fixer |
| Acceptance | Where a finding is accepted rather than closed: the reasoning, the accepter, and **when it is revisited** |

**The two fields that carry the weight.** *Was it ever exercised* is where a finding stops being a
vulnerability report and becomes an incident question, and the honest answer often includes a limit — the
logs reach this far and no further. *Detection added* is the difference between closing a finding and
closing a class of finding: the next test will not repeat this one's cases.

## Cross-References

| Document | Relationship |
|---|---|
| [05.11 Penetration Testing Programme and Findings](../05.11-penetration-testing-programme-and-findings.md) | PT-01 to PT-16 |
| [logs/finding-remediation-log.md](../logs/finding-remediation-log.md) | What changed |
