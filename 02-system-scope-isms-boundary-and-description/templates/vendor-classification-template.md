# Template — Vendor Classification

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-T07 |
| Version | 1.0 |
| Date | 2026-08-11 |
| Owner | Tobias Lund |
| Approver | Marisol Vega |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


Completed at onboarding and re-confirmed at the quarterly review under CAL-08. **The two tests below are
independent and are answered separately.** A vendor can be one, both or neither, and the register is a set
of overlapping populations rather than a partition — which is exactly the error ML-3 recorded.

| Field | Guidance |
|---|---|
| Vendor | Legal entity |
| Service | What it does for CloudNimbus |
| Data access | What data it can reach, including personal data categories |
| **Test 1 — subservice organisation** | Does it perform controls that are **necessary, in combination with CloudNimbus's own controls, to meet an applicable trust services criterion**? Data access is not the test. Criticality is not the test. Answer with the criterion, or with why none applies |
| If yes | Method — carve-out or inclusive — and the complementary subservice organisation controls to be disclosed under DC7 |
| **Test 2 — sub-processor** | Does it process personal data on CloudNimbus's behalf? If yes, a DPA is required and obligation O5 applies: 30 days' notice with a right to object |
| Classification | Subservice organisation · sub-processor · both · ordinary vendor |
| Assurance obtained | Reports held, their period, and what they do **not** cover |
| Reviewer and date | Named individual |

**On the assurance field.** A subservice organisation's report covers that organisation's controls. It says
nothing about whether CloudNimbus configured the service correctly, and a reviewer who records "SOC 2 held"
and stops has recorded the least useful fact available.

**On over-classification.** Naming a vendor as a subservice organisation when it is not is not the cautious
error. It puts complementary controls into the description that a reader will go looking for in an
assurance report the vendor does not produce.

## Cross-References

| Document | Relationship |
|---|---|
| [02.10 Subservice Organisations and the Carve-Out](../02.10-subservice-organisations-and-carve-out.md) | The test applied to 84 vendors |
| [governance/GOV-06](../governance/GOV-06-subservice-organisation-classification-review.md) | The review that produced it |
