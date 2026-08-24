# ADR-0032 — Forty-one customers are notified where no commitment required it, and the dissent is minuted

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-A32 |
| Version | 1.0 |
| Date | 2026-11-27 |
| Owner | Tobias Lund |
| Approver | Elise Fontaine |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


| Field | Value |
|---|---|
| Status | Accepted |
| Date | 2026-10-26 |
| Decider | Tobias Lund |
| Phase | 07 — Confidentiality, Privacy &amp; Third-Party Assurance |

## Context

On 2026-10-23 CloudNimbus found that the scheduled deletion job enforcing **RT-02** — geolocation captured at
clock-in, held thirteen months, then deleted irrespective of contract term — had matched no rows in
`eu-central-1` for sixty-eight consecutive nights while reporting success. **1,847,206 geolocation capture
points were held past their thirteen-month rule**, the oldest by **sixty-seven days**, concerning **58,412
individuals** in **34** of the 41 EU-residency customers' tenants — **2,106** of them people who had left
their employer during the sixty-eight nights. The job's target was corrected on 2026-10-24 and a catch-up
deletion on 2026-10-25 removed all of them. 07.03 carries the account.

**No commitment obliged CloudNimbus to tell anybody.**

**SC-02**, from obligation **O4**, runs a 48-hour notification clock from CloudNimbus's **determination of a
security incident affecting customer data**. No such determination was made and the condition does not answer
the description: nothing left `eu-central-1`, no access outside the normal processing path occurred, and the
disclosure register `CNB-C-132` maintains holds no entry arising from it. **SC-03** and **O7** are deletion
within 30 days of termination — a different rule, a different control and a different criterion, and no
tenant was terminating. **O6** is assistance with a data subject's request and none had been made about any
of these records. **The master services agreement is silent** on over-retention of a category inside its own
rule.

Nothing about the position was ambiguous. The question put to the Data Protection Officer on 2026-10-26 was
whether to notify anyway.

## Decision

**All 41 EU-residency customers were notified on 2026-10-26, three days after discovery** — the **34** whose
tenants held affected records, and the **7** told plainly that they held none, those seven having geolocation
capture disabled. **34 + 7 = 41. DEC-704.** The record is **GOV-26**.

Two reasons are recorded.

**The data processing addendum allocates the determination of purposes to the employer and obliges
CloudNimbus to process on the employer's documented instructions; whether that allocation is correct in law
is for each customer's own advisers.** On that footing a customer cannot account for its own arrangements
without knowing what CloudNimbus did. A customer asked in six months
whether its geolocation records had been held to the stated period must be able to answer, and only
CloudNimbus holds the answer. Silence would have left forty-one organisations describing their own
arrangements incorrectly and unknowingly. The seven with no affected records were told for the same reason
in reverse: a customer who hears about this from another customer, and does not know whether it applies to
them, has been given a worse experience than one who was told it does not.

**And the retention promise in the privacy notice was made to the worker, not to the employer.** CloudNimbus
tells individuals it keeps clock-in location for thirteen months. For sixty-eight nights it kept some of them
longer. **CloudNimbus has no channel to those individuals** — CUEC-07 puts notice of the employer's own
processing in the employer's hands, and the in-product notice reaches only a worker who opens the app.
**The company cannot tell the people it made the promise to, and notifying the employer is the nearest
available thing to keeping it.**

## Consequences

**A notification made without an obligation must be written down or it becomes indistinguishable from one
that was required.** A year from now, a reader finding forty-one customer notifications dated 2026-10-26 in
the record and nothing explaining them will reasonably infer that something obliged them, and will look for
the obligation. This decision exists so that the answer is on the record: nothing did, and here is why it was
done anyway.

**It sets an expectation and the expectation is accepted.** Having notified once where no commitment
required it, CloudNimbus will be read as having adopted a practice. The next comparable condition will be
measured against this one, and a decision not to notify will have to be explained. That is a real cost and it
is not a reason to have stayed silent; it is a reason to record the reasoning in a form the next decision can
be tested against.

**It does not create a contractual commitment.** Nothing in the notification amends the master services
agreement or the data processing addendum, and it is not an undertaking to notify in future. The
notifications were factual: what the rule is, what happened, how long, how many records, which tenants, what
was done, and by when the backup residue expires.

**No legal characterisation is offered anywhere in the notification or in this record.** The notification
states what the retention rule says, what happened against it, and what was done. It does not say that a law
was engaged or not engaged, that anything was or was not a personal data breach, or that any notification was
or was not required by any statute. Those are determinations for each customer and its own advisers on its
own facts, and CloudNimbus's notification is what makes it possible for them to make one.

## Alternatives considered and rejected

**Notify nobody**, and it is stated at its strongest before it is rejected. The data never left its region.
It was never accessed outside the normal processing path. It was deleted within four days of discovery and
the primary stores were clean on the fifth. No individual suffered anything an individual could point to, no
customer asked, and a notification tells forty-one organisations about a condition that no longer existed by
the time they read about it. That argument is available and it is honest.

It was refused because **a retention commitment is not discharged by the data having been safe.** The promise
was that the record would not exist. The record existed. Whether anyone touched it is a different question,
and answering it favourably does not answer the first.

**Notify only the 34 with affected records** — rejected. It halves the volume of awkward conversations and it
guarantees that the other seven hear about it second-hand, from a peer or a questionnaire, with no way to
establish whether it touched them. Telling somebody they were not affected costs one paragraph.

**Wait until the backup residue expires on 2026-11-29 and notify once, complete** — rejected. It would have
produced a tidier notification thirty-four days later, and thirty-four days is longer than any notification
window CloudNimbus has ever committed to for anything. The residue expiry is stated in the notification as a
future date rather than withheld until it passes, which is the same discipline the deletion certificate
applies under `CNB-C-128` and ADR-0033.

## The dissent, minuted

**Ana-Sofia Cruz, Head of Customer Success, dissented, and her position is recorded as reasonable.**

A notification with **no action for the customer to take** converts a four-day internal correction into a
permanent entry in **forty-one procurement files**. It will be re-read at every renewal, quoted in every
future security questionnaire, and read by some recipients as an incident of a kind it is not — because the
vocabulary available to a procurement analyst has one word for "your supplier wrote to us about our data",
and it is not "retention rule". The cost lands on her team, it lands indefinitely, and nothing in the
notification gives a recipient anything to do with it.

Nobody at the meeting disputed any of that. **She was overruled by Tobias Lund as General Counsel and Data
Protection Officer**, on the ground that the cost she identified is the cost of having told the truth, which
is a cost this programme has already decided to bear elsewhere — in the DC4 disclosure of Phase 06, in the
SC-01 exclusion corrected at source, and in every referred issue the library carries rather than quietly
fixes.

**The dissent is recorded because a decision taken over a good objection is a different artefact from one
taken without one**, and a reader who only sees the outcome cannot tell which this was.

## Related

| Reference | Relationship |
|---|---|
| [07.03 The RT-02 Retention Failure](../07.03-the-rt-02-retention-failure.md) | §6, the notification decision and the dissent in the chapter that owns them |
| [07.04 Notice, Choice and the Limits of Consent](../07.04-notice-choice-and-the-limits-of-consent.md) | §5, the promise made to a person CloudNimbus cannot reach |
| [governance/GOV-26](../governance/GOV-26-rt02-over-retention-investigation-and-notification.md) | The investigation record, the attendance and the minute |
| [ADR-0033](ADR-0033-deletion-is-not-complete-until-the-residue-expires.md) | The residue date stated in the notification |
| [logs/decision-log.md](../logs/decision-log.md) | DEC-704 |
| [02.12 Principal Service Commitments and System Requirements](../../02-system-scope-isms-boundary-and-description/02.12-principal-service-commitments-and-system-requirements.md) | SC-02 running from determination, SC-03 and SC-04 |
| [02.11 Complementary User Entity Controls](../../02-system-scope-isms-boundary-and-description/02.11-complementary-user-entity-controls.md) | CUEC-07, and why the notice reaches the employer and not the worker |
| [01.11 Assurance Calendar and Obligations](../../01-program-foundation-dual-framework-governance/01.11-assurance-calendar-and-obligations.md) | O4, O6 and O7 — the three obligations this decision tests and finds not engaged |
| [templates/customer-privacy-notification-template](../templates/customer-privacy-notification-template.md) | T29, the seven elements this decision names, and the field for what the notification does not say |
