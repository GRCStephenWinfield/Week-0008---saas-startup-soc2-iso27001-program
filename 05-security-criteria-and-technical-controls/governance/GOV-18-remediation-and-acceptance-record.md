# GOV-18 — Remediation and Finding Acceptance

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-G18 |
| Version | 1.0 |
| Date | 2026-08-11 |
| Owner | Karim Haddad |
| Approver | Nathan Oyelaran |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


## 1. Status at 2026-07-31

| Status | Findings | Which |
|---|---|---|
| Closed and retested | 13 | PT-01, PT-02, PT-03, PT-04, PT-05, PT-06, PT-07, PT-08, PT-10, PT-11, PT-12, PT-13, PT-16 |
| Open — scheduled | 2 | PT-09, PT-14 |
| Open — accepted | 1 | PT-15 |
| **Total** | **16** | |

## 2. The two deferred to the August release

**PT-09** — the iOS client caching API responses containing personal data in an unencrypted on-device store
— and **PT-14** — the Android client not pinning the API certificate — both require a store release.
**DEC-510** deferred them to the 2026-08-14 release rather than shipping out of cycle.

The committee tested that decision against the remediation targets rather than accepting it on convenience.
Both are within target: a Medium finding identified on 2026-05-22 falls due at ninety days, which is
2026-08-20, and the release precedes it. **The falsifying condition was recorded: if the release slips past
2026-08-20, PT-09 is past target and the decision was wrong.**

## 3. PT-15, accepted

Tenant identifiers are sequential integers, which assists enumeration.

**They do not authorise anything.** The isolation control is the predicate, not the opacity of the
identifier, and a programme that responds to PT-15 by making identifiers opaque has bought the appearance
of security in exchange for a migration touching every tenant-scoped table — while leaving the actual
control untouched.

The committee found the argument credible **because PT-01 tested it**. The predicate is what failed, and
the predicate is what was fixed. An organisation making this argument without that evidence would be
asserting it; CloudNimbus has been shown the answer.

Accepted under **ADR-0022**, revisited at the second penetration test scheduled for October.

## 4. What was refused

A proposal to close PT-15 by generating opaque public identifiers while retaining the sequential internal
key. Refused as the worst of both: the migration cost is largely unchanged, the enumeration surface moves
rather than closes, and the record would show a finding remediated when the property the finding described
still holds.

## Cross-References

| Document | Relationship |
|---|---|
| [05.11 Penetration Testing Programme and Findings](../05.11-penetration-testing-programme-and-findings.md) | The findings |
| [ADR-0022](../adr/ADR-0022-sequential-tenant-identifiers-retained.md) | The acceptance |
