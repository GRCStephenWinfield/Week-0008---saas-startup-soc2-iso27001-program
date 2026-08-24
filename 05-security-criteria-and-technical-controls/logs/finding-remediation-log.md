# Finding Remediation Log — Phase 05

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-L19 |
| Version | 1.0 |
| Date | 2026-08-11 |
| Owner | Karim Haddad |
| Approver | Nathan Oyelaran |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


Every one of the sixteen findings, with what was actually changed. **A findings register that records
status and not substance is a register nobody can re-test.**

| ID | Severity | What changed | Closed |
|---|---|---|---|
| PT-01 | Critical | The tenant predicate moved from a connection session variable to a mandatory data-access-layer parameter, with a build-time check | 2026-06-11 |
| PT-02 | High | The receipt download endpoint now authorises against the requesting user rather than against tenant membership alone | 2026-06-26 |
| PT-03 | High | The reporting service's role scoped to the prefixes it reads, and a posture rule added to detect prefix widening | 2026-06-26 |
| PT-04 | High | Deep-link parameters no longer accepted as a session source; the Android client exchanges an authorisation code instead | 2026-06-26 |
| PT-05 | Medium | Deprecated cipher suite disabled on the marketing subdomain and the configuration brought under the same baseline as the platform | 2026-07-24 |
| PT-06 | Medium | Password reset rate limiting moved from per-session to per-account, with a per-address ceiling behind it | 2026-07-24 |
| PT-07 | Medium | Object-level logging enabled on the two buckets, and a posture rule added so a bucket created without it is flagged | 2026-07-24 |
| PT-08 | Medium | The admin console requires re-authentication before a role assignment changes | 2026-07-24 |
| PT-09 | Medium | Scheduled — the iOS cache moves to the encrypted store in the 2026-08-14 release | Open |
| PT-10 | Medium | The analytics replica's security group now references the reporting service's group rather than the VPC range | 2026-07-24 |
| PT-11 | Low | Server header suppressed at the edge | 2026-07-24 |
| PT-12 | Low | Referrer policy header added to the customer web application | 2026-07-24 |
| PT-13 | Low | The unused access key removed and a detection added for keys unused beyond ninety days | 2026-07-24 |
| PT-14 | Low | Scheduled — certificate pinning ships in the 2026-08-14 release | Open |
| PT-15 | Low | **Accepted.** Enumeration is not authorisation; the isolation control is the predicate | Accepted |
| PT-16 | Low | Host prefix added to the session cookie | 2026-07-24 |

## What is worth noticing about this list

**Four of the sixteen remediations added a detection rather than only a fix** — PT-03, PT-07, PT-13 and, in
its build-time form, PT-01. That is the difference between closing a finding and closing the class of
finding, and it is the only durable answer to a penetration test: the next test will not repeat this one's
cases, and a fix that leaves the mechanism able to recur has bought one clean retest.

## Cross-References

| Document | Relationship |
|---|---|
| [05.11 Penetration Testing Programme and Findings](../05.11-penetration-testing-programme-and-findings.md) | The register |
| [governance/GOV-18](../governance/GOV-18-remediation-and-acceptance-record.md) | The acceptances |
