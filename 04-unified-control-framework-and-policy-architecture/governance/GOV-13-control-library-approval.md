# GOV-13 — Control Library Approval

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-G13 |
| Version | 1.0 |
| Date | 2026-08-11 |
| Owner | Karim Haddad |
| Approver | Nathan Oyelaran |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


## 1. Matter

Approval of the unified control library at version 1.0 — milestone **MS-07**, 2026-06-05.

## 2. What was approved

**148 controls, `CNB-C-001` to `CNB-C-148`.** 112 serve both deliverables,
21 serve the trust services criteria alone, and 15 serve ISO/IEC 27001 alone.

| Dimension | Distribution |
|---|---|
| Type | 71 preventive · 52 detective · 25 corrective |
| Cadence | 58 continuous · 9 daily · 6 weekly · 21 monthly · 27 quarterly · 5 semi-annual · 22 annual |
| Coverage | all **61** criteria served · all **91** necessary Annex A controls implemented |
| Mapping | 217 control-to-criterion mappings · 188 control-to-Annex-A mappings |

## 3. The three tests every control had to pass

Nathan Oyelaran asked that the acceptance tests be minuted, because a library approved without stated
tests is a library nobody can add to consistently later.

**It must say what happens, not what is required.** "Logical access is restricted to authorised users" is a
criterion restated and was rejected wherever it appeared. A control names the mechanism.

**It must have a named individual as owner.** Not a team, not a rota, not a function. **ADR-0020** records
why: a control owned by Platform Engineering is a control nobody answers for, and the first time that
matters is when a criterion is being tested against it.

**It must declare its evidence class before it is built.** **ADR-0018**. The 2025 Type I management letter
recorded access review evidence retained as email threads and screenshots — a control that worked and left
nothing a sampler could use. The corrective is not better retention. It is designing the evidence at the
same time as the control.

## 4. The concentration the committee was shown

**Three of the sixty-one criteria are served by exactly one control**: CC5.3, C1.2 and P3.2. If that single
control has a deviation, the criterion has nothing else supporting it.

The committee was also shown that **CC5.3's single control operates annually**, which combines the thinnest
possible support with the thinnest possible population. It was recorded rather than fixed, and the reason
was recorded too: the procedure inventory that a second, genuinely distinct control would draw on was only
completed with the policy suite on 2026-06-12, and adding an untested control days before the observation
window opens buys a row in a table and no assurance at all.

## 5. What the committee refused

A proposal to write second controls for the three single-control criteria, so that no criterion depended on
one mechanism. Refused. **A second control that restates the first produces two rows and one mechanism**,
and a sampler testing both finds the same failure twice while the description implies redundancy that does
not exist. Coverage is a property of mechanisms, not of rows.

## Cross-References

| Document | Relationship |
|---|---|
| [04.02 The Unified Control Library](../04.02-the-unified-control-library.md) | The library |
| [04.03 Mapping Methodology and Its Limits](../04.03-mapping-methodology-and-its-limits.md) | The concentration |
| [ADR-0016](../adr/ADR-0016-one-library-keyed-to-controls.md) | The keying decision |
