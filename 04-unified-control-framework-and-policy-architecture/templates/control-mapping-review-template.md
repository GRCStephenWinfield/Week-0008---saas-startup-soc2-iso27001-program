# Template — Control Mapping Review

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-T16 |
| Version | 1.0 |
| Date | 2026-08-11 |
| Owner | Rahul Bhargava |
| Approver | Karim Haddad |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


Used whenever a control is added, a criterion's coverage changes, or the Statement of Applicability is
reissued. **The mapping is CloudNimbus's own assertion and nobody else's**, and an assertion nobody
re-examines becomes a claim nobody can defend.

| Field | Guidance |
|---|---|
| Control | `CNB-C-nnn` |
| Criteria asserted | The criteria this control is claimed to serve |
| For each criterion | **Why**. Not "it relates to access control" — what the criterion requires, and how this mechanism contributes to meeting it |
| Annex A asserted | The Annex A controls this implements |
| For each Annex A control | **Why**, in the same terms |
| Direction check | **Was this control designed from a risk or a commitment, or was it designed from the criterion?** DEC-402: a control designed *from* a criterion is a control designed to be auditable rather than to work |
| Coverage effect | Which criteria gain or lose support. **If any criterion would fall to a single control, say so** |
| Population effect | If the cadence changes, what happens to the population in a six-month window |
| Reviewer and date | Not the person who wrote the mapping |

**The direction check is the field that justifies the template.** Every other line can be filled in
plausibly by working backwards from a criterion to a control that appears to serve it, and the result will
map cleanly and cover completely and describe a control library assembled to be audited. The direction
check is the only place the difference is visible, and it is visible only if somebody other than the author
asks.

**On coverage.** Two rows citing one mechanism is not coverage. Where a proposed control would restate an
existing one, the review records the overlap and the mapping is not doubled — GOV-13 §5.

## Cross-References

| Document | Relationship |
|---|---|
| [04.03 Mapping Methodology and Its Limits](../04.03-mapping-methodology-and-its-limits.md) | The limits |
| `03-risk-assessment-treatment-and-statement-of-applicability` | The mapping's origin |
