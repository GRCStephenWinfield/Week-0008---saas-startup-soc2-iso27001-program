# Template — Control Record

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-T13 |
| Version | 1.0 |
| Date | 2026-08-11 |
| Owner | Karim Haddad |
| Approver | Nathan Oyelaran |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


One record per control in the library. A control is not admitted until every field below is complete, and
three of them are the acceptance tests recorded at GOV-13.

| Field | Guidance |
|---|---|
| ID | `CNB-C-nnn`, allocated in sequence and **never reused**. The number encodes nothing — see ADR-0016 |
| Control statement | **What happens, in the present tense, naming the mechanism.** "Multi-factor authentication is enforced for every tenant administrator at the identity provider" is a control. "Logical access is restricted to authorised users" is a criterion restated, and is the commonest defect there is |
| Family | The criterion family it principally serves, or `ISO` |
| Type | Preventive · Detective · Corrective. Exactly one |
| Automation | Automated · hybrid · manual. Recorded for design purposes; it is not what determines the sampling population |
| Cadence | Continuous · Daily · Weekly · Monthly · Quarterly · Semi-annual · Annual. **Where enforcement is continuous but the sampled occurrence is a periodic re-baseline, state which the cadence refers to** |
| **Owner** | **A named individual. Never a team, a rota or a function** — ADR-0020 |
| Policy | Exactly one `POL-nn`. A control with no policy behind it is a habit |
| Criteria served | The trust services criteria, or `—`. This is an assertion, not an authority |
| Annex A implemented | The Annex A controls, or `—` |
| **Evidence class** | At least one `EC-nn`, **declared before the control is built** — ADR-0018 |
| Sampling unit | What **one occurrence** of the evidence looks like. An evidence class without this cannot be sampled |
| Dependencies | Other controls, subservice organisations, complementary user entity controls |
| Population in a six-month window | Derived from cadence. **State it, because it is what determines whether a single late occurrence is a 2% deviation rate or a 100% one** |

**The last field is the one people skip and the one that changes decisions.** A quarterly control has a
population of two. A control that is right in principle and quarterly in practice carries an exposure that
a continuous control with the same design does not, and the time to notice that is while the cadence is
still a choice.

## Cross-References

| Document | Relationship |
|---|---|
| [04.02 The Unified Control Library](../04.02-the-unified-control-library.md) | The library |
| [04.11 Control Ownership and Operating Cadence](../04.11-control-ownership-and-operating-cadence.md) | Cadence and populations |
