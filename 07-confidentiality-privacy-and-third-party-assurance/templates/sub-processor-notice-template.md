# Template — Sub-Processor Change Notice

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-T28 |
| Version | 1.0 |
| Date | 2026-11-27 |
| Owner | Tobias Lund |
| Approver | Ana-Sofia Cruz |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


Completed once per sub-processor change under **`CNB-C-131`**, which requires a data processing addendum to
be recorded before a sub-processor can be enabled in production configuration and commits to **thirty days'
notice to customers before a new one is engaged**. The commitment is **SC-08**, sourced from obligation
**O5**, and it runs to all 640 customers.

The form is in two halves. The first is the record CloudNimbus keeps; the second is what the customer
receives.

## Part A — the change record

| Field | Guidance |
|---|---|
| Incoming sub-processor | Legal entity, not brand |
| Outgoing sub-processor, if any | A replacement is two changes recorded as one. **Where the population is unchanged — one added, one removed on the same day — say so**, because a reader counting the published list against the register will otherwise find eleven where the notice implies twelve |
| Service performed | In terms a customer's own privacy team can map to their processing |
| **Categories of personal data** | Against **PD-01 to PD-12**. A category not in the inventory is not a category to be disclosed in a notice — it is a finding for `CNB-C-124` and `CNB-C-125` |
| Regions of processing and of storage at rest | **Where any EU-residency tenant's data is in scope, state it against O8 and SC-04 explicitly.** A sub-processor change is one of the few routine events that can move data across a residency boundary |
| **Data processing addendum executed** | Date. `CNB-C-131` and `CNB-C-091` both require it **before** processing begins, and this field is the enforcement point rather than a record of intent |
| Tier assigned, and assessment outcome | Under `CNB-C-090`, which records **the outcome and the tier**. The assessment happens before the notice and is not performed by it |
| Cloud service baseline review | Under `CNB-C-093`, where the incoming party is a cloud service new to CloudNimbus |
| **Notice date** | |
| **Effective date** | |
| **Days of notice** | Effective date less notice date. **Must exceed thirty.** See below |
| Despatch record | Channel, recipient population, and confirmation of despatch to all 640 |
| Objections received | Count, and each one recorded individually in Part C |
| **Published sub-processor list updated** | **Date, and it is a step in this record rather than a later reconciliation.** `IS-34` is what happened when no step asked for it: the list named the outgoing provider for fourteen days after the change took effect, and the annual notice reconciliation found it. **No control failed** — no control required the list to be updated at the change, which is why this field exists and why the finding is a referred issue rather than a deviation. DEC-712, `CA-07-04` |
| Register position after the change | Sub-processors before, after, and whether the population moved |

## Part B — what the notice says

| Field | Guidance |
|---|---|
| The incoming party and what it will do | |
| When the change takes effect | |
| **That the customer may object, how, and by when** | The channel and the deadline, both stated. A right to object that requires the customer to work out where to send the objection is a right with a process cost attached to it |
| **What happens if an objection is not resolved** | **State the consequence the master services agreement provides — the customer may terminate for convenience.** No amount appears anywhere in this programme. See below |
| Where the current sub-processor list is published | |
| Who to contact | A named function with a monitored channel |

## Thirty days is the commitment; the notice is issued at more

**SC-08 and O5 commit to thirty days' notice. The 2026-10-02 notice was issued at thirty-four** —
**DEC-701** — and the four days are the point rather than a rounding.

A notice issued at exactly thirty days leaves no interval between the last day on which an objection can
arrive and the day the change takes effect. An objection arriving on day twenty-nine is then answered after
the thing it objects to has happened, which converts the right to object into a right to be told. The notice
period is the window in which the parties can do something, and a window with no margin is a window in name.

**Four days cost a diary entry**, and in the 2026-10-02 change both objections were resolved inside the
notice period: one customer withdrew on 2026-10-22 after conducting its own security review of the incoming
provider, and the other was accommodated on 2026-10-30 by suppressing platform-generated email for its
tenant.

## A right to object is not a right to veto, and the form says so

**The commitment is thirty days' notice with a right to object. It is not a commitment to abandon a change
that draws one.** What the master services agreement provides where an objection is not resolved is that
**the customer may terminate for convenience**, and that stated consequence is what makes the right
meaningful.

**A right to object with no stated consequence is a courtesy.** It produces a letter, an acknowledgement,
and a change that proceeds exactly as it would have proceeded in silence. A right to object that terminates
in a stated exit prices the objection: the service organisation may proceed and knows what proceeding may
cost, and the customer may object and knows what objecting gets them. Neither party has to guess at the
other's next move.

**Part B therefore requires the consequence to be stated in the notice itself**, not left in the contract for
a customer to find. A commitment the customer has to look up is a commitment drafted for the file rather
than for the reader.

## Two things this form does not do

**It does not perform the vendor assessment.** The incoming party enters the estate through `CNB-C-090` and
`CNB-C-093`, before any notice is issued, and a reader of this form should not infer that the notice
assessed anything. The two are recorded in different registers by different people.

**It reaches no legal conclusion**, about the change, the objection, the consequence of an unresolved
objection, or anything else. It records what the contract says, what the notice said, what the customer did
and what management decided.

## Cross-References

| Document | Relationship |
|---|---|
| [07.07 Disclosure and the Sub-Processor Notice](../07.07-disclosure-and-the-sub-processor-notice.md) | The 2026-10-02 change in full, the two objections and `IS-34` |
| [07.09 The Vendor Register, Tiering and Assurance](../07.09-the-vendor-register-tiering-and-assurance.md) | The register, the tiers, and the outgoing provider's lapsed artefact |
| [governance/GOV-28](../governance/GOV-28-annual-notice-reconciliation.md) | The reconciliation that found the stale list, DEC-712, and DEC-714 moving the reconciliation into November |
| [logs/decision-log.md](../logs/decision-log.md) | DEC-701, DEC-709, DEC-712 and DEC-714 |
| [logs/raid-log.md](../logs/raid-log.md) | `IS-34`, referred |
| [logs/deviation-log.md](../logs/deviation-log.md) | `CA-07-04`, and why it carries no deviation above it |
| [04.06 Controls for Availability, Processing Integrity, Confidentiality and Privacy](../../04-unified-control-framework-and-policy-architecture/04.06-controls-for-availability-processing-integrity-confidentiality-and-privacy.md) | `CNB-C-131`, `CNB-C-124` and `CNB-C-125` as published |
| [04.05 Controls for the Common Criteria CC6 to CC9](../../04-unified-control-framework-and-policy-architecture/04.05-controls-for-the-common-criteria-cc6-to-cc9.md) | `CNB-C-090`, `CNB-C-091` and `CNB-C-093` as published |
| [02.12 Principal Service Commitments and System Requirements](../../02-system-scope-isms-boundary-and-description/02.12-principal-service-commitments-and-system-requirements.md) | SC-04 and SC-08 |
| [01.11 Assurance Calendar and Obligations](../../01-program-foundation-dual-framework-governance/01.11-assurance-calendar-and-obligations.md) | O5 and O8 |
