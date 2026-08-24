# GOV-14 — Policy Suite Approval

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-G14 |
| Version | 1.0 |
| Date | 2026-08-11 |
| Owner | Rahul Bhargava |
| Approver | Elise Fontaine |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


## 1. Matter

Approval of the policy suite — milestone **MS-08**, 2026-06-12. Nineteen policies, POL-01 to POL-19.

## 2. Approval authority, and why it differs

**POL-01, the Information Security Policy, is approved by the Chief Executive Officer.** Clause 5.2 places
the policy with top management, and clause 5.1 makes the leadership obligations behind it undelegable. It
is the only policy in the suite Elise Fontaine signs, and that is deliberate.

The other eighteen are approved by the executive accountable for the domain. Approving all nineteen at
board level would look more rigorous and would be less rigorous: an approver who cannot evaluate what they
are approving supplies a signature and not a control.

## 3. The check that produced the suite's shape

Every one of the 148 controls cites **exactly one** policy, and every one of the nineteen policies
is cited by at least one control. Both directions are verified mechanically at each reissue.

**A control with no policy behind it is a habit, and a policy with no control under it is a wish.** The
first check found controls that existed because somebody had always done them; the second found draft
policy sections that mandated nothing anybody had built. Both were resolved before approval — the habits by
writing the policy text that authorises them, the wishes by deleting the section or building the control.

## 4. Nineteen, and the two shapes that were rejected

**A single information security manual** was rejected. One document approved by one person, reissued whole
whenever any part of it changes, in an organisation where the person who owns cryptography is not the
person who owns screening.

**A policy per control** was rejected as the opposite error. A hundred and forty-eight documents nobody
reads, each requiring its own review cycle, is a documented-information burden that consumes the effort the
controls need.

Nineteen is the number at which each policy has a single accountable owner who can evaluate it, and each
covers a domain a reader would expect to find in one place.

## Cross-References

| Document | Relationship |
|---|---|
| [04.08 Policy Architecture](../04.08-policy-architecture.md) | The suite |
| [04.09 The Information Security Policy — Clause 5.2](../04.09-the-information-security-policy-clause-5-2.md) | POL-01 |
| [ADR-0017](../adr/ADR-0017-nineteen-policies.md) | Decision record |
