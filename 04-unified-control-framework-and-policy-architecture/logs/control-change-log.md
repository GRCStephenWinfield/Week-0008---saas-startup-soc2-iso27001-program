# Control Change Log — Phase 04

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-L15 |
| Version | 1.0 |
| Date | 2026-08-11 |
| Owner | Rahul Bhargava |
| Approver | Karim Haddad |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


Changes to the library between first draft and publication at v1.0 on 2026-06-05. **A library that appears
to have arrived fully formed is a library whose working was thrown away**, and the working is what a later
reader needs in order to add to it consistently.

| # | Change | Reason |
|---|---|---|
| 1 | 23 draft controls rewritten from criterion language to mechanism language | "Logical access is restricted to authorised users" is a criterion restated. A control names the mechanism. This was the commonest defect in the draft and the easiest to miss, because the sentences read like controls |
| 2 | 9 draft controls removed as duplicates of another control with a different name | Two rows and one mechanism implies redundancy that does not exist, and a sampler testing both finds the same failure twice |
| 3 | 6 draft controls acquired policy text authorising them | They existed because somebody had always done them. **A control with no policy behind it is a habit** |
| 4 | 4 draft policy sections deleted | They mandated things nobody had built. **A policy with no control under it is a wish** |
| 5 | 11 controls re-assigned from a function to a named individual | ADR-0020. "Platform Engineering" is not an owner |
| 6 | 5 evidence classes rewritten to state a sampling unit | Each described what was retained and not what one occurrence looks like, which is what a sampler asks for |
| 7 | **10** annual controls re-scheduled to operate inside the observation window | DEC-409, disclosed at ADR-0019. The first analysis found five; a second pass against Phase 01's assurance calendar found five more, including `CNB-C-031`, the sole control serving CC5.3 |
| 8 | A proposal to add second controls for the three single-control criteria was refused | GOV-13 §5. Coverage is a property of mechanisms, not of rows |

## What did not change

The three single-control criteria — **CC5.3, C1.2 and P3.2** — were left as they are, with the exposure
recorded. CC5.3's control operates annually, which is the sharpest combination in the library: the thinnest
support and the thinnest population. The fix requires a genuinely distinct mechanism drawing on a procedure
inventory that was only completed with the policy suite on 2026-06-12, and an untested control added days
before the window opens buys a row and no assurance.

## Cross-References

| Document | Relationship |
|---|---|
| [governance/GOV-13](../governance/GOV-13-control-library-approval.md) | The approval and its tests |
| [04.03 Mapping Methodology and Its Limits](../04.03-mapping-methodology-and-its-limits.md) | The concentration |
