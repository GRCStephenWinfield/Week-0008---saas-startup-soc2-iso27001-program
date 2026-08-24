# GOV-19 — Disclosure Decision and Dissent

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-G19 |
| Version | 1.0 |
| Date | 2026-08-11 |
| Owner | Tobias Lund |
| Approver | Lorraine Kessler |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


## 1. Matter

Whether to notify customers of the tenant isolation finding recorded as **R-37** and **PT-01**.

## 2. Meeting

| Field | Value |
|---|---|
| Meeting | Audit &amp; Risk Committee, convened out of cycle |
| Date | 2026-06-03 |
| Chair | Lorraine Kessler |
| In attendance | Elise Fontaine · Marisol Vega · Karim Haddad · Tobias Lund · Nathan Oyelaran |

## 3. The contractual assessment

**Tobias Lund assessed the finding against SC-02 and obligation O4** — notification of a security incident
affecting customer data within 48 hours of determination — and concluded that **no notification obligation
was engaged**. No customer data was exposed: the test ran against synthetic tenants. No evidence of
production exploitation was found in the retained query logs.

**The committee reached no conclusion about any statutory notification regime.** Whether one applies is a
question for counsel, and this record does not answer it.

## 4. The voluntary question, and the decision

Voluntary disclosure was then considered on its own footing. It was **refused**, on the ground that a
disclosure describing a vulnerability with no exposed data and no evidence of exploitation would alarm
without informing — that customers would be asked to act on information that supports no action.

## 5. The dissent, recorded at the Chair's request

**Lorraine Kessler dissented**, and asked that the substance be minuted rather than the fact.

Her position: the retained query logs reach thirteen months and the defective code path existed for
twenty-two. **Nine months — 41% of the period the defect existed — cannot be searched.** "No evidence of
exploitation" is a weaker statement when the period it covers is shorter than the period the defect
existed, and that gap is precisely the reason a customer might reasonably want to know. A customer told the
whole of it could decide for itself whether it wanted to look at its own access records; a customer told
nothing cannot.

The counter-position, which carried: the disclosure would have to describe a gap CloudNimbus cannot close,
against a defect it has fixed and retested, and would leave the customer holding a question with no
available answer.

**The decision stands. The dissent is minuted. The committee agreed to revisit it if the second penetration
test scheduled for October, or any subsequent evidence, changes the picture.**

## 6. What was disclosed, and to whom

The finding was **proactively disclosed to Ashcombe &amp; Doyle LLP and to Northgate Certification
Services** — not because either had asked, but because a finding of this shape discovered by an auditor
rather than disclosed by the entity costs more than it is worth to conceal.

## Cross-References

| Document | Relationship |
|---|---|
| [05.12 R-37 Tenant Isolation Finding and Remediation](../05.12-r37-tenant-isolation-finding-and-remediation.md) | The full account |
| [diagrams/05-the-forensic-gap.md](../diagrams/05-the-forensic-gap.md) | The arithmetic behind the dissent |
| [ADR-0023](../adr/ADR-0023-no-customer-notification-with-dissent.md) | The decision record |
