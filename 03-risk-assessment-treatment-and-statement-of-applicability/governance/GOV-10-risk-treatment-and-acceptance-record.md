# GOV-10 — Risk Treatment and Acceptance Record

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-G10 |
| Version | 1.0 |
| Date | 2026-08-11 |
| Owner | Karim Haddad |
| Approver | Elise Fontaine |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


## 1. Matter

Approval of the risk treatment plan under clause 6.1.3 e), and the approval by risk owners of the plan and
their acceptance of the residual risks, as clause 6.1.3 f) requires.

## 2. Meeting

| Field | Value |
|---|---|
| Meeting | Trust Committee, with risk owners present |
| Date | 2026-04-24 — milestone MS-05 |
| Chair | Marisol Vega |
| Accepters of retained risk | **Risk owners under clause 6.1.3 f)**: Wes Delacroix (R-19, R-20) · Tobias Lund (R-24) · Hannah Brill (R-28). **Additional acceptance under the criteria in 03.02 §6**: Elise Fontaine (R-19, R-20 — the impact-5 rider) · Karim Haddad (R-24, R-28) |

## 3. Options recorded — clause 6.1.3 a)

| Option | Count |
|---|---|
| Modify | 31 |
| Retain | 4 |
| Share | 1 |
| **Avoid** | **0** |
| **Total** | **36** |

**The zero is the entry the committee spent longest on.** Avoidance means ceasing an activity. CloudNimbus
did not withdraw geolocation, did not stop recording leave type, and did not exit the European Union.
Recording an avoidance it had not performed would have been the easiest line in the plan to write and the
first one an auditor would test.

## 4. Plan

**TP-01 to TP-34.** Thirty-one modified risks produce thirty-four items, because R-01, R-05 and R-06 each
require two. **Thirty-one of the thirty-four fall due before 2026-07-01.** The committee was told why that
date governs and not any other: a control that is not operating on that morning cannot be tested across the
full observation window, and a control with three months of history inside a six-month period is a control
the service auditor samples against a shorter population and says so in the report.

## 5. Retained risks, accepted individually

| ID | Rating | Accepter | Why it is retained |
|---|---|---|---|
| R-19 | 2 × 5 = 10 | **Wes Delacroix** (owner) · Elise Fontaine (impact-5 rider) | Immovable. The next likelihood step is 1, reserved for the not reasonably foreseeable, and a recovery shortfall in a real event is foreseeable |
| R-20 | 2 × 5 = 10 | **Wes Delacroix** (owner) · Elise Fontaine (impact-5 rider) | Immovable, and constrained by obligation O8: the cross-region recovery that would reduce it is the thing residency forbids |
| R-24 | 2 × 4 = 8 | **Tobias Lund** (owner) · Karim Haddad (band rule) | On the floor. A 2 × 4 stops at eight |
| R-28 | 2 × 2 = 4 | **Hannah Brill** (owner) · Karim Haddad (band endorsement) | Already Low, and the treatment available costs more than the risk |

Each acceptance names an individual and carries a review at the management review under CAL-15. **A risk
nobody wanted to own is not a retained risk; it is an unowned one**, and the committee asked that the
distinction be recorded.

## 6. R-20, recorded at the Chair's request

R-20 is the clearest case in the register of **a commitment to a customer creating a risk to that same
customer**. Forty-one customers require their personal data to remain in `eu-central-1`. That requirement
forbids the cross-region recovery which is the only treatment that would reduce the consequence of losing
the region. CloudNimbus cannot honour both, has chosen residency, and says so.

## Cross-References

| Document | Relationship |
|---|---|
| [03.06 Risk Treatment Plan](../03.06-risk-treatment-plan.md) | TP-01 to TP-34 |
| [03.07 Risk Acceptance and Residual Risk](../03.07-risk-acceptance-and-residual-risk.md) | The four retained and the forecast |
| [ADR-0014](../adr/ADR-0014-no-risk-avoided.md) | The zero |
