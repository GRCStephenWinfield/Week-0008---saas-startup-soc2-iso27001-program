# Decision Log — Phase 05

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-L17 |
| Version | 1.0 |
| Date | 2026-08-11 |
| Owner | Rahul Bhargava |
| Approver | Karim Haddad |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


This log records **who took a decision**. Where it names a different person from the RACI in `01.08`, both
are correct: the RACI governs accountability for the conduct of an activity, this log governs the decision.

| ID | Decision | Date | Decider | Recorded at |
|---|---|---|---|---|
| DEC-501 | Phishing-resistant MFA mandatory for every path into production | 2026-04-28 | Wes Delacroix | 05.02 |
| DEC-502 | No standing production access; just-in-time elevation with a four-hour ceiling | 2026-05-06 | Wes Delacroix | 05.03 |
| DEC-503 | The tenant predicate becomes a mandatory data-access-layer parameter | 2026-05-26 | Nathan Oyelaran | ADR-0021 |
| DEC-504 | A build-time check fails any query constructed without a tenant predicate | 2026-05-26 | Junia Okonkwo | ADR-0021 |
| DEC-505 | No customer notification for the isolation finding; the dissent minuted | 2026-06-03 | Audit &amp; Risk Committee | ADR-0023 |
| DEC-506 | The finding disclosed proactively to the service auditor and the certification body | 2026-06-03 | Karim Haddad | GOV-19 |
| DEC-507 | Sequential tenant identifiers retained; the acceptance revisited at the next test | 2026-06-16 | Nathan Oyelaran | ADR-0022 |
| DEC-508 | Query log retention reviewed after the nine-month gap | 2026-06-22 | Devon Ashby | ADR-0024 |
| DEC-509 | A second penetration test scheduled inside the observation window | 2026-06-25 | Karim Haddad | ADR-0025 |
| DEC-510 | Two mobile findings deferred to the 2026-08-14 release rather than shipped out of cycle | 2026-07-06 | Junia Okonkwo | GOV-18 |
| DEC-511 | Removable media blocked on the endpoint rather than prohibited by policy alone | 2026-07-13 | Hannah Brill | 05.07 |
| DEC-512 | The security log archive region-partitioned, with an EU bucket under EU-scoped keys | 2026-07-20 | Devon Ashby | 05.10 |

**Two decisions in this log are dated after the thing they describe, and both are recorded rather than
left to be noticed.** DEC-512 — the security log archive region-partitioned with an EU bucket under
EU-scoped keys — is dated 2026-07-20, but Phase 02 already recorded that architecture at its own vantage of
2026-03-31, where it was itself a correction. The decision of 2026-07-20 confirms the position after the
EU-region key policy was reviewed; it did not create it.

**DEC-511 is dated after the control it describes.** `CNB-C-051` was published with the library on
2026-06-05 and already required endpoint blocking; the decision of 2026-07-13 records the position in terms
following a question raised at the Trust Working Group. It did not cause the control and does not claim to.
Recording the sequence is cheaper than leaving a reader to notice it.

## Cross-References

| Document | Relationship |
|---|---|
| [05.13 Phase Summary and Transition](../05.13-phase-summary-and-transition.md) | Carries these into Phase 06 |
