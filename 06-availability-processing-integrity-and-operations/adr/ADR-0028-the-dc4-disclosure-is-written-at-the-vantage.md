# ADR-0028 — The DC4 disclosure is drafted at the vantage, not assembled at fieldwork

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-A28 |
| Version | 1.0 |
| Date | 2026-09-30 |
| Owner | Rahul Bhargava |
| Approver | Karim Haddad |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


| Field | Value |
|---|---|
| Status | Accepted |
| Date | 2026-09-09 |
| Decider | Rahul Bhargava |
| Phase | 06 — Availability, Processing Integrity &amp; Operations |

## Context

**DC4** of DC section 200 requires the description of the system to disclose relevant details of identified
system incidents that resulted from controls not suitably designed or not operating effectively, or that
**resulted in a significant failure in the achievement of one or more service commitments and system
requirements**, during the period.

`INC-2026-031` engages the second limb: SC-01 was not met for September 2026. Phase 02 mapped DC4 to Phase
06 and recorded that no reportable incident had occurred as at its vantage. It has now.

The description is assembled in Phase 09, and examination fieldwork runs from 2027-01-12. The default
practice — and the practice most service organisations follow — is to write the DC4 disclosure then.

## Decision

**The DC4 disclosure is drafted now, on 2026-09-09, one day after the incident, and published in 06.06 as a
bounded block of **150 to 300 words** that Phase 09 can lift into the description unchanged.**

Phase 09 retains the description and remains responsible for it. What it inherits is a text, not a ticket.

## Consequences

The material DC4 depends on is the fastest-decaying material in the whole description. Architecture will
still be documented in February 2027 and change tickets will still be in the pipeline record, but who knew
what at 14:24, why a rolling restart was chosen over a second failover, which tenant reported first and what
the status page actually said are facts that live in an incident channel, a pager history and four people's
recollection. **The incidents that go missing from descriptions are the ones nobody wrote down while the
facts were fresh.**

There is a second effect and it is the less comfortable one. **An incident written up five months later is
written up by people who already know how the period ended.** Drafting at the vantage produces a record made
before anybody knew what it would need to support.

**And there is a cost, which this decision incurred and must own.** The draft of 2026-09-09 and the
post-incident review of 2026-09-11 both state that **no customer data was lost**. On **2026-09-21** the
`CNB-C-112` quarterly reconciliation found **two calculation runs with no stored output, both inside the
incident window** — twelve days after the draft and ten after the review. The finding is recorded against
`INC-2026-031`. **Both runs were re-executed and their results stored on 2026-09-22, and no export had been
issued from either**, so the disclosure's sentence survives; it survives as a **fact that was checked**
rather than as a hope that held.

It survives because somebody went and looked, and the general rule the episode establishes is the cost of
drafting early: **a disclosure drafted in the week of an incident must be re-confirmed at period end against
the incident's own slower consequences, not merely checked for additional incidents.** Detective controls on
a quarterly cadence surface facts about an incident weeks after the incident is closed, and a draft written
at day one cannot have seen them. Phase 09 inherits that obligation alongside the text.

Phase 09 has one task against the draft that is not a change to its text: to confirm that no incident
arising after 2026-09-30 requires disclosure alongside it, **and to re-confirm the draft's own factual
assertions against anything the period's later controls have since found**. This phase covers three months
of a six-month period.

## Alternatives considered and rejected

**Draft the disclosure at fieldwork in February 2027** — rejected for the two reasons above.

**Record the incident in the incident tool and leave the disclosure to be derived from it** — rejected. An
incident record is written for responders and is organised around actions; a DC4 disclosure is written for a
reader of the description and is organised around effect on a commitment. Deriving the second from the first
five months later is the reconstruction this decision exists to avoid.

**Publish the disclosure to customers** — rejected as a category error rather than a close call. A SOC 2
report is **restricted-use**: it is intended for management, for user entities during the period, and for
other specified parties with sufficient knowledge and understanding. Customer communication about the
incident ran through the status page, the account teams and the service-credit process under DEC-610, which
are different instruments with different audiences.

## Related

| Reference | Relationship |
|---|---|
| [06.06 Incident Management and the DC4 Disclosure](../06.06-incident-management-and-the-dc4-disclosure.md) | The draft text and the six things the chapter has to get right |
| [06.05 The Severity-1 Incident of 2026-09-08](../06.05-the-severity-1-incident-of-2026-09-08.md) | The account the disclosure is drawn from |
| [06.07 The Calculation Engine and Processing Integrity](../06.07-the-calculation-engine-and-processing-integrity.md) | The `CNB-C-112` occurrence of 2026-09-21 and the two runs re-executed on 2026-09-22 |
| [logs/decision-log.md](../logs/decision-log.md) | DEC-605 |
| [02.02 Service Description and System Components](../../02-system-scope-isms-boundary-and-description/02.02-service-description-and-system-components.md) | The DC1–DC9 map, and the promise made against DC4 |
