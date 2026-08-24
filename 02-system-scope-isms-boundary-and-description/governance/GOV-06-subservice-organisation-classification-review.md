# GOV-06 — Subservice Organisation Classification Review

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-G06 |
| Version | 1.0 |
| Date | 2026-08-11 |
| Owner | Rahul Bhargava |
| Approver | Marisol Vega |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


## 1. Matter

Review of the 84-vendor register against the subservice organisation test, following the reclassification
of Halcyon Identity.

## 2. What happened

Halcyon Identity was recorded in the vendor register as an ordinary vendor when Phase 02 began. It
authenticates every end user of the platform. Without the controls it operates, **CC6.1 and CC6.2** cannot
be met by CloudNimbus's controls alone — the logical access criteria specifically, not the whole CC6
series, most of which concerns physical access, asset disposal, boundary protection and malicious software
and which Halcyon Identity does not touch. It is a subservice organisation and was reclassified on 2026-03-03.

**This is ML-3 from the 2025 Type I management letter happening again, six weeks after the programme was
chartered to fix it.** The review records it that way rather than as a diligence success, because the
register had already been reviewed once under the closure plan for ML-3 and the classification had survived
that review.

## 3. Outcome of the full re-review

| Population | Count |
|---|---|
| Vendors in the register | 84 |
| Sub-processors under a data processing addendum | 11 |
| Subservice organisations — both also sub-processors | 2 |
| Ordinary vendors | 73 |

**11 + 73 = 84.** The classes overlap and the register is not a partition.

## 4. Proposed and refused

Four vendors were proposed as subservice organisations during the review and refused: the observability
platform, the transactional email and document delivery provider, the code hosting and continuous
integration provider, and the customer support ticketing platform. Each has data access. None performs a
control an applicable criterion depends on.

The committee recorded that over-classification is not the safe direction. A vendor named as a subservice
organisation puts complementary controls into the description that a reader will then go looking for in an
assurance report the vendor does not produce.

## 5. Action

The classification test is written into the vendor onboarding procedure, and classification is reviewed at
the quarterly sub-processor review under CAL-08 rather than annually.

## Cross-References

| Document | Relationship |
|---|---|
| [02.10 Subservice Organisations and the Carve-Out](../02.10-subservice-organisations-and-carve-out.md) | The test, the refusals and the CSOCs |
| [ADR-0008](../adr/ADR-0008-halcyon-identity-reclassified.md) | Decision record |
