# GOV-04 — Trust Services Category Selection Decision Record

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-G04 |
| Version | 1.0 |
| Date | 2026-08-11 |
| Owner | Karim Haddad |
| Approver | Marisol Vega |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


## 1. Decision

All five trust services categories — Security, Availability, Processing Integrity, Confidentiality and
Privacy — are in scope for the examination. Recorded as DEC-102 and ADR-0002.

## 2. The floor, and the distance above it

Obligation O1 requires a report covering at least Security, Availability and Confidentiality. Those three
carry 38 criteria: 33 common criteria, 3 availability criteria and 2 confidentiality criteria. The decision
adds Processing Integrity (5) and Privacy (18), taking the population to **61**.

| Category | Criteria | Count | Contractually required |
|---|---|---|---|
| Security (Common Criteria) | CC1.1-CC1.5, CC2.1-CC2.3, CC3.1-CC3.4, CC4.1-CC4.2, CC5.1-CC5.3, CC6.1-CC6.8, CC7.1-CC7.5, CC8.1, CC9.1-CC9.2 | 33 | Yes |
| Availability | A1.1-A1.3 | 3 | Yes |
| Confidentiality | C1.1-C1.2 | 2 | Yes |
| Processing Integrity | PI1.1-PI1.5 | 5 | No |
| Privacy | P1.1, P2.1, P3.1-P3.2, P4.1-P4.3, P5.1-P5.2, P6.1-P6.7, P7.1, P8.1 | 18 | No |
| **Total in scope** | | **61** | |

## 3. Processing Integrity

Most B2B SaaS providers exclude it, and the exclusion is usually correct: the category addresses the
completeness, validity, accuracy, timeliness and authorisation of *processing*, and a system that stores
and retrieves does not process in that sense. CloudNimbus calculates overtime, shift differentials, accrual
balances and reimbursement amounts, and those figures reach a payroll provider and become somebody's pay.
Excluding the category would have meant examining everything about the platform except the part that can
get a number wrong.

## 4. Privacy — argued for exclusion, refused

The orthodox position for a processor is to take Confidentiality and leave notice and choice to the
employer, whose relationship with the individual is the direct one. That position was argued at length and
it is a respectable one. It was refused on a single point of fact: the CloudNimbus mobile application
captures **geolocation at clock-in**, directly from the individual, and a party that collects personal
information directly from a data subject cannot wholly delegate the notice obligation to somebody else.

The cost is recorded honestly. Privacy adds 18 criteria to a 43-criterion baseline — a 42% increase in the
population of criteria for one category, and by some distance the largest single increment in the
programme.

## 5. Dissent recorded

Tobias Lund's initial written position favoured Confidentiality alone, on the ground that P1.1 through P8.1
are drafted for an entity in a direct relationship with the data subject and that a processor asserting
them invites questions it cannot answer on the customer's behalf. That position is preserved here because
it may be right, and because Phase 07 will have to answer it in detail.

## Cross-References

| Document | Relationship |
|---|---|
| [01.05 Trust Services Category Selection](../01.05-trust-services-category-selection.md) | The full argument |
| [ADR-0002](../adr/ADR-0002-all-five-trust-services-categories-in-scope.md) | The decision record |
| `07-confidentiality-privacy-and-third-party-assurance` | Where the privacy criteria are answered |
