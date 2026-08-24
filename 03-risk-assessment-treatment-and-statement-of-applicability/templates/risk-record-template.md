# Template — Risk Record

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-T09 |
| Version | 1.0 |
| Date | 2026-08-11 |
| Owner | Karim Haddad |
| Approver | Elise Fontaine |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


| Field | Guidance |
|---|---|
| ID | `R-nn`, allocated in sequence and **never reused**. A retired identifier stays retired |
| Risk statement | A scenario, not a topic. "Phishing" is a topic; "an employee is successfully phished and their credentials or session are used" is a scenario, and only a scenario can be rated |
| Threat source | `TH-01` to `TH-14` |
| Assets affected | `AC-nn` classes, and named assets where the risk is specific to one |
| Data affected | `PD-nn` categories where personal data is in play |
| Owner | A named individual with the **ability to act**. Not a team, not a role, not the person nearest the blame |
| Likelihood | 1–5 against the defined scale. **1 is reserved** for the not reasonably foreseeable |
| Impact | 1–5 against the defined scale, on the dimension that matters: cross-tenant exposure, a wrong amount reaching pay, personal information exposure |
| Score | Likelihood × impact. Calculated, never asserted |
| Band | Derived from the score. High ≥ 15 · Moderate 8–12 · Low ≤ 6 |
| Treatment option | Modify · retain · share · avoid, per clause 6.1.3 a) |
| Treatment | `TP-nn` items, or the acceptance record where the risk is retained |
| Rationale for the rating | **Required.** Why this likelihood and why this impact. A rating without a rationale cannot be re-tested, and a rating nobody can re-test will drift |
| Movement history | Every change, with the date, the reason and the evidence. **A rating moves on likelihood unless the consequence itself changed** |
| Review | Quarterly under CAL-06 |

**Two fields carry the weight.** *Rationale for the rating* is what makes the register auditable — the
number is an output and the reasoning is the control. *Movement history* is where a register either keeps
its discipline or quietly loses it: the first undocumented downgrade is always defensible on its own, and
it is the precedent that does the damage.

## Cross-References

| Document | Relationship |
|---|---|
| [03.02 Risk Criteria and Scoring Scale](../03.02-risk-criteria-and-scoring-scale.md) | The scale and the three rules |
| [03.04 Risk Register Baseline](../03.04-risk-register-baseline.md) | The register |
