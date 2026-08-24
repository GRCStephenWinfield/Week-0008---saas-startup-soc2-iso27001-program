# GOV-05 — Scope Determination Record

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-G05 |
| Version | 1.0 |
| Date | 2026-08-11 |
| Owner | Karim Haddad |
| Approver | Elise Fontaine |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


## 1. Matter

Determination of the SOC 2 system boundary and of the ISMS scope under ISO/IEC 27001:2022 clause 4.3.

## 2. Meeting

| Field | Value |
|---|---|
| Meeting | Trust Committee, extraordinary session |
| Date | 2026-02-20 |
| Chair | Marisol Vega |
| Present | Marisol Vega · Karim Haddad · Nathan Oyelaran · Junia Okonkwo · Wes Delacroix · Tobias Lund · Ana-Sofia Cruz · Hannah Brill |
| Secretary | Rahul Bhargava |

## 3. The question put

Whether to define one boundary serving both frameworks, or two.

## 4. Determination

Two boundaries. The SOC 2 system is the CloudNimbus Workforce Platform. The ISMS boundary is the whole
organisation. **Neither contains the other**, and no attempt was made to make them coincide.

The committee recorded the reason in terms, because the alternative is the more common choice and looks
tidier on a slide: making the boundaries identical would have required either excluding organisational
units from the ISMS so that it matched the platform — which would have produced a certificate that answers
a narrower question than the one buyers ask — or asserting that infrastructure operated by Amazon Web
Services sits inside a management system CloudNimbus does not operate, which is not true.

## 5. Consequential determinations

| Reference | Determination |
|---|---|
| DEC-202 | `cnb-staging` and `cnb-dev` excluded from the SOC 2 system, on the strength of SR-12 and not on the strength of the architecture |
| DEC-204 | The professional services and implementation offering excluded from the SOC 2 system |
| DEC-210 | The ISMS scope statement wording fixed for the certificate |

## 6. What the committee was warned about

Karim Haddad recorded that the exclusion at DEC-202 is a claim about a control rather than a fact about the
architecture, and that if SR-12 does not hold then the boundary was drawn wrongly from the beginning rather
than merely tested unsuccessfully. The committee accepted the exclusion on that basis and asked that the
dependency be stated wherever the exclusion is stated.

## Cross-References

| Document | Relationship |
|---|---|
| [02.01 Scope Methodology and the Two Boundaries](../02.01-scope-methodology-and-two-boundaries.md) | The determination in full |
| [ADR-0006](../adr/ADR-0006-two-boundaries-neither-contains-the-other.md) | Decision record |
| [ADR-0007](../adr/ADR-0007-non-production-excluded-on-a-control.md) | The DEC-202 dependency |
