# Template — Control Narrative

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-T01 |
| Version | 1.0 |
| Date | 2026-08-11 |
| Owner | Rahul Bhargava |
| Approver | Karim Haddad |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


One narrative per control in the unified library. The narrative is what the service auditor reads before
designing a test, and what the certification body reads to understand how a necessary Annex A control is
implemented. It serves both, which is why there is one template and not two.

| Field | Guidance |
|---|---|
| Control ID | `CNB-C-nnn` from the unified control library |
| Control title | A sentence describing what the control does, not what it is called |
| Owner | A named individual, never a team |
| Trust services criteria addressed | Every criterion this control contributes to. A control may serve several; a criterion may need several controls |
| Annex A controls addressed | Every Annex A control this implements, or `None` where the control is SOC 2 only |
| Mapping rationale | **Required.** Why this control meets that criterion and implements that Annex A control. A mapping asserted without reasoning is not defensible, and the mapping is CloudNimbus's own assertion |
| Control type | Preventive, detective or corrective. Automated, manual or hybrid |
| Frequency | Continuous, or the defined interval. A defined interval needs a stated basis |
| Description of operation | What actually happens, in order, naming the systems and the roles |
| Evidence produced | What the control leaves behind, where it is retained, and for how long |
| Population | What a period of operation produces, so that a sample size can be reasoned about |
| Dependencies | Other controls, subservice organisations, or complementary user entity controls this relies on |

**Two fields fail most often.** *Evidence produced* is where a control that works but leaves no trail is
exposed, and that is precisely the failure the 2025 Type I management letter recorded at ML-1. *Population*
is where a control described as quarterly is revealed to have operated twice.

## Cross-References

| Document | Relationship |
|---|---|
| [01.06 Dual-Framework Strategy and Integration Model](../01.06-dual-framework-strategy-and-integration-model.md) | The library this template populates |
| [01.04 Prior Type I Baseline and Carried Matters](../01.04-prior-type-i-baseline-and-carried-matters.md) | ML-1, the reason for the evidence field |
