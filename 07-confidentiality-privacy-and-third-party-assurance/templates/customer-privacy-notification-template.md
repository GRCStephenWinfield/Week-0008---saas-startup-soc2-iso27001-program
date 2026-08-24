# Template — Customer Privacy Notification

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-T29 |
| Version | 1.0 |
| Date | 2026-11-27 |
| Owner | Tobias Lund |
| Approver | Elise Fontaine |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


Completed once per customer notification concerning personal information, whether or not a commitment
requires one. It exists because of **DEC-704** and **ADR-0032**: on 2026-10-26 CloudNimbus notified **all 41
EU-residency customers** of the RT-02 over-retention when **SC-02, SC-03 and O6 were all not engaged and the
master services agreement was silent**, and the elements that notification carried had to be reconstructed
from a decision record rather than lifted from a form.

**A voluntary notification with no template is a voluntary notification that will be written differently the
next time.** That is the whole reason this form exists — not to make notifying easier, but to make the next
one comparable with the last one.

## When it is completed

| Trigger | Position |
|---|---|
| A **commitment requires notification** — SC-02's 48-hour clock from a determination of a security incident affecting customer data, under O4 | Complete this form. The commitment fixes the deadline; the form fixes the content |
| A **condition affecting personal information is found and no commitment requires notification** | Complete this form **if the decision is to notify**, and record the decision at a DEC and an ADR alongside it, as DEC-704 and ADR-0032 did |
| A condition is found and the decision is **not** to notify | Do not complete this form. Record the decision and the reasoning anyway — **an unrecorded decision not to notify is indistinguishable, a year later, from nobody having considered it** |
| A **sub-processor change** under SC-08 and O5 | Not this form. Use `templates/sub-processor-notice-template.md`, which carries the thirty-day notice and the objection window |

## Part A — the seven elements

**These are the seven the notification of 2026-10-26 carried, as ADR-0032 names them.** All seven are
mandatory; a notification missing one is incomplete rather than brief.

| # | Element | Guidance |
|---|---|---|
| 1 | **What the rule is** | The retention rule, commitment or promise engaged, quoted rather than paraphrased, with its identifier — RT-01 to RT-08, SC-01 to SC-10, or the clause of the in-product notice. On 2026-10-26 this was **RT-02**: geolocation captured at clock-in, held thirteen months, then deleted irrespective of contract term |
| 2 | **What happened against it** | The condition in plain terms, and the mechanism if the mechanism is knowable. Not "an issue was identified" |
| 3 | **How long** | Start date, end date, and the **counting convention** — first affected run, last affected run, and whether the count of days or nights is inclusive. On 2026-10-26 this was **68 nights, 2026-08-17 to 2026-10-23 inclusive, 67 elapsed days** |
| 4 | **How many records** | The count for **the recipient's own tenant**, and the total where the recipient is entitled to it. **State the number of individuals as well as the number of records** — a notification that counts rows and not people has counted everything except the subject |
| 5 | **Which tenants** | Whether the recipient's own tenant was affected, stated in terms, **including where it was not**. Telling a customer they were not affected costs one paragraph and stops them hearing it second-hand from a peer |
| 6 | **What was done** | The correction, with dates: found, corrected, executed, verified. Where any step is incomplete at the date of the notification, say which |
| 7 | **By when the backup residue expires** | The date the residue window under `CNB-C-128` closes, **stated as a future date rather than withheld until it passes**. On 2026-10-26 this was **2026-11-29** |

## Part B — what the notification does not say

**This half is the one that gets left off, and it is the half that keeps the notification safe to send.**
Every field below is completed with the position and, where the answer is "nothing is said", with that in
terms.

| Field | Guidance |
|---|---|
| **Commitment engaged** | Name the commitments considered and the position on each — engaged, not engaged, silent. On 2026-10-26: SC-02 and O4 **not engaged**, SC-03 and O7 **not engaged**, O6 **not engaged**, the master services agreement **silent** |
| **Whether the notification was required** | State plainly whether any commitment required it. Where none did, **say so in the notification itself**, because a recipient who is not told will assume one did |
| **Legal characterisation** | **None is offered, and the notification says none is offered.** It does not say that a law was engaged or not engaged, that anything was or was not a personal data breach, that any notification was required by any statute, or that any processing had or lacked any particular basis. Those are determinations for the recipient and its own advisers on its own facts |
| **Contractual effect** | State that the notification does not amend the master services agreement or the data processing addendum and is not an undertaking to notify in future. **It does set an expectation, and the expectation is accepted** — ADR-0032 records that too |
| **Action required of the recipient** | Usually none, and where none, **say none**. A notification with no action attached will still be filed, re-read at renewal and quoted in questionnaires; that cost was identified in dissent at GOV-26 and accepted |
| **What is not yet complete** | Any step outstanding at the date of the notification, with its date. On 2026-10-26 the backup residue had not expired and the notification said so |
| **Who to contact** | A named person and a route. The Data Protection Officer for the notification's content; the customer's Customer Success contact for anything else |

## Part C — the record

| Field | Guidance |
|---|---|
| Notification date | |
| Recipients | Count, and the basis of selection — **including the recipients told they were not affected** |
| Decision reference | The DEC, and the ADR where the decision was contested or where no commitment required it |
| Governance record | The GOV record carrying the investigation, the attendance and any minuted dissent |
| Dissent | Whether any was minuted, by whom, and whether it was overruled. **A decision taken over a good objection is a different artefact from one taken without one** |
| Responses received | Acknowledgements, questions asked and answered with the elapsed business days, evidence requested, cases opened. **Record the nil returns too** — a prediction about how customers would react is worth nothing unless somebody measures it |
| Evidence unit | Filed as one unit of **EC-06** where an incident record exists, and otherwise with the governance record it arises from |

## What this form does not do

**It does not decide whether to notify.** That decision belongs to the Data Protection Officer, is recorded
at a DEC, and is argued at an ADR where no commitment required it. This form records what a notification
contains once the decision is taken.

**It does not reach a legal conclusion, and neither does anything completed on it.** Part B exists to make
that explicit on the face of the record rather than to leave it to be inferred from the absence of one.

**It is not a substitute for a channel to the individual.** CloudNimbus's promises about retention are made
to the worker in the in-product notice, and **CloudNimbus has no channel to that worker** — CUEC-07 puts
notice of the employer's own processing in the employer's hands, and the in-product notice reaches only a
worker who opens the application. Notifying the employer is the nearest available thing to keeping a promise
made to somebody else, and 07.04 §5 owns the structural version of that problem.

## Cross-References

| Document | Relationship |
|---|---|
| [ADR-0032 Notification With No Obligation to Notify](../adr/ADR-0032-notification-with-no-obligation-to-notify.md) | DEC-704, the seven elements, the rejected alternatives and the dissent |
| [governance/GOV-26](../governance/GOV-26-rt02-over-retention-investigation-and-notification.md) | The investigation, the notification review of 2026-10-26 and the responses received |
| [07.03 The RT-02 Retention Failure](../07.03-the-rt-02-retention-failure.md) | §6, the notification decision and the position at the vantage |
| [07.04 Notice, Choice and the Limits of Consent](../07.04-notice-choice-and-the-limits-of-consent.md) | §5, the promise made to a person CloudNimbus cannot reach |
| [templates/sub-processor-notice-template](sub-processor-notice-template.md) | The other customer notification, which SC-08 and O5 do require |
| [ADR-0033](../adr/ADR-0033-deletion-is-not-complete-until-the-residue-expires.md) | DEC-705, and why the residue date is stated as a future date |
| [02.12 Principal Service Commitments and System Requirements](../../02-system-scope-isms-boundary-and-description/02.12-principal-service-commitments-and-system-requirements.md) | SC-02 running from a determination, SC-03, SC-08 and SR-08 |
| [02.11 Complementary User Entity Controls](../../02-system-scope-isms-boundary-and-description/02.11-complementary-user-entity-controls.md) | CUEC-07, and why the notice reaches the employer and not the worker |
| [04.12 Evidence Architecture](../../04-unified-control-framework-and-policy-architecture/04.12-evidence-architecture.md) | EC-06, the incident record, and what one unit of it contains |
