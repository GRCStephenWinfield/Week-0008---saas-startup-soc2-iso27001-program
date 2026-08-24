# Template — Post-Incident Review

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-T21 |
| Version | 1.0 |
| Date | 2026-09-30 |
| Owner | Wes Delacroix |
| Approver | Karim Haddad |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


Completed for every Severity-1 and Severity-2 incident. The library carries **two windows for this one
artefact** — `CNB-C-102` five business days under A1 and `CNB-C-075` ten business days under CC7 — and until
the divergence is resolved, **the tighter window governs**: complete this form inside five business days of
closure.

| Field | Guidance |
|---|---|
| Incident identifier and severity | The identifier the incident record carries. Severity as declared, not as it feels afterwards |
| Customer impact window | **Start and end, to the minute, in UTC.** The start is when customers were affected, not when the entity noticed |
| Duration | Derived from the window above, and it must agree with it |
| Time to detection | **Onset to the first internal signal.** State it even when — especially when — it is longer than the response |
| **Was the entity told by a customer first** | Yes or no, and if yes, by how many minutes. This field exists because that is the fact most likely to be omitted |
| Which control detected it | Name the control. If the control that exists to detect this class did not, say which one did instead |
| Which control should have detected it, and why it did not | **Distinguish a control that did not operate from a control that operated as designed where the design was wrong.** These are different findings and they carry different corrections |
| Mechanism | What actually happened, in enough detail that an engineer who was not there could reproduce the reasoning. "A database issue" is not a mechanism |
| **Region or regions affected** | Named. Availability is measured and reported **per region**, so an incident confined to one region has a population smaller than the customer base and the record must say which |
| Impact, counted | Requests, tenants, records — whatever the unit is. **State the population as well as the affected count**, and state the population for the region affected rather than for the estate |
| **Who was affected but did not notice** | The tenants that attempted nothing in the window were equally unavailable. A count of who complained is not a measure of impact |
| Data loss and recovery point | Whether anything was accepted and then lost, as against rejected. **A rejected write is not a lost write** |
| **Re-confirmation at period end** | A "no data was lost" statement made in the week of an incident is provisional. Name the date on which it was re-confirmed against the period's slower detective controls, and what they found |
| Service commitment affected | By name — SC-nn — with the month, the region and the arithmetic. If an allowance was exhausted, give the minute |
| Restoration decision and the option rejected | What was done, what else was available, and why the alternative was not chosen |
| Actions | Each with an identifier, a named owner and a date. Entered in the corrective action tracker before this form is filed |
| **What is not being recorded, and why** | Where the review declined to name an individual, or declined to reach a conclusion, say so and say why |
| Opinion or certification consequence | **None. This form reaches no conclusion about an audit opinion, a deviation's evaluation or a nonconformity** |

**On the two detection fields.** They exist because of `INC-2026-031`. A review that records "detected at
14:24" has recorded a fact and hidden the finding; a review that records "onset 14:22, detection page 14:24,
first customer report 14:26, declaration 14:31, **and the availability measurement control reported healthy
throughout**" has recorded the thing the organisation needs to fix. The form asks separately what detected
the incident and what measured it, because on 8 September those were two different controls and only one of
them worked. **A form that captures only duration will produce a file of incidents in which nobody can see
that.**

**On the affected-but-silent field.** 599 of the 640 customers are served from `us-east-1`; 318 of those 599
had a failed write on 8 September and 281 attempted none. **All 599 were unavailable.** A form that asks
only for the affected count trains the organisation to measure its outages by its inbox.

**On the population field, and why it says population.** The other 41 customers are served from
`core-eu-central` in `eu-central-1` and were unaffected, so the denominator for that incident is 599 and not
640. A review that states an affected count against the whole customer base **overstates the reach and
understates the depth** at the same time, and the form asks for the population precisely so that the
denominator has to be chosen deliberately rather than reached for.

## Cross-References

| Document | Relationship |
|---|---|
| [governance/GOV-22](../governance/GOV-22-post-incident-review-inc-2026-031.md) | The worked example |
| [06.05 The Severity-1 Incident of 2026-09-08](../06.05-the-severity-1-incident-of-2026-09-08.md) | The incident this form was rewritten from |
| [06.11 Operations, Monitoring and the Quarterly Review](../06.11-operations-monitoring-and-the-quarterly-review.md) | The two review windows, referred to the internal audit |
