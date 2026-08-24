# GOV-34 — Communication to Those Charged with Governance

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2027-G34 |
| Version | 1.0 |
| Date | 2027-03-11 |
| Owner | Karim Haddad |
| Approver | Lorraine Kessler |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


## 1. Matter

The communication from **Ashcombe &amp; Doyle LLP** to those charged with governance of CloudNimbus, Inc.,
delivered on **2027-02-10** and received at a special sitting of the **Audit &amp; Risk Committee** the same
day, 14:00 to 15:20. Fieldwork had closed five days earlier on 2027-02-05; **the report had not been issued
and the opinion had not been expressed.**

| Role | Attendee |
|---|---|
| Engagement partner, Ashcombe &amp; Doyle LLP | **Meredith Vance, CPA** |
| Senior manager, Ashcombe &amp; Doyle LLP | **Dev Ramanathan** |
| Chair, Audit &amp; Risk Committee | **Lorraine Kessler** |
| Chief Executive Officer | **Elise Fontaine** |
| Chief Financial Officer | **Marisol Vega** |
| VP Security &amp; Trust | **Karim Haddad** |
| Secretary | **Rahul Bhargava** |

**Lorraine Kessler is the committee's only voting member**, which `01.07` §4.1 said at chartering is not a
committee in the sense a listed company means. The others attended as management, and the minute records
that the engagement team offered a session without management present and that the chair took it for
fourteen minutes at the end.

## 2. What was communicated

**Five matters, in the order the engagement team took them.**

**The nine test exceptions**, each with the criterion, the control as stated in the description, the test
performed, the population and the deviations. The engagement team stated that **populations at or below
sixty were tested in full**, so several rates are rates over everything that happened rather than over a
selection, and that this makes them a stronger statement about the window and a narrower one about anything
else.

**The evaluation of each of the nine.** The engagement team stated that a deviation is recorded against a
**control** while a criterion is met or not met by **everything that serves it**, and that the evaluation
runs at the criterion.

**The near-modification on exception 5**, at length. §3 below.

**The Stage 2 major nonconformity as contradictory evidence.** `MAJ-01` was raised on 2026-12-02, inside the
observation window, against clause 9.2, and is contradictory evidence about the entity's monitoring
activities, which is the subject matter of **CC4.1** and **CC4.2**. The engagement team recorded that the
seven controls CloudNimbus states for those two criteria had themselves operated, and stated that the
**placement of the fact in Section V was management's determination and not the engagement team's**.

**The subservice organisation coverage position.** Two months of the window were reached by no artefact from
either AWS or Halcyon Identity. It was volunteered by CloudNimbus on the second day of fieldwork, resolved
before testing closed, and was **not a scope limitation**.

## 3. The near-modification, as communicated

**Meredith Vance restated the question raised on 2027-01-28: whether exception 5 required a modification of
the opinion in respect of P4.2.** The RT-02 deletion job addressed an emptied relation in `eu-central-1` for
sixty-eight consecutive nights, completing successfully and deleting nothing, on geolocation captured from
the individual at clock-in.

**Both rates were put to the committee.** 68 of 184 nights of the rule that failed, in the region it failed
in — **37.0%**. 68 of 4,416 rule-nights across eight rules and three regions — **1.5%**. The engagement team
stated that **both are true and neither is the test**: the test is whether the deviations mean the criterion
was not achieved for the period taken as a whole, and a rate is an input to that judgement rather than a
substitute for it.

**The facts supporting the conclusion**, as communicated: the failure was confined to one of eight rules in
one of three regions and the other seven operated in all three throughout; the entity detected it inside the
period, on 2026-10-23, while assembling a retention evidence sample, and corrected the job's target the next
day; the affected records were deleted on 2026-10-25 and the deletion independently verified on 2026-10-27
against partition counts taken before the run; a new control was admitted on its evidence and operated for
65 of the period's nights with no alert; and the entity disclosed the condition, notified 41 customers under
no obligation to do so, and did not back-date anything.

**The facts pointing the other way**, as communicated: the failure ran for 37% of the period on the
platform's most sensitive personal information; **no control in the library would have detected it**, the
detection being incidental to an evidence request; and `CNB-C-126` and `CNB-C-127` were the whole of P4.2's
support in the affected region for the 119 nights before `CNB-C-149` existed.

**The engagement team stated its evaluation: that the deviations did not mean P4.2 was not achieved for the
period taken as a whole**, and that on the evidence obtained it did not expect to modify the opinion. It
stated in the same breath that **the report was not issued, the opinion was not expressed, and neither
statement was a commitment.**

**And it stated that the question had been close.** The minute records the sentence as delivered.

## 4. The committee's question

**Lorraine Kessler asked what the engagement team would have needed to see for the answer to go the other
way.**

The answer given was that there is no such number. **No threshold exists to compute against**, the four
opinion forms turn on an evaluation rather than on a percentage, and a practitioner who could name the rate
at which an unmodified opinion becomes a qualified one would be describing a rule the standards do not
contain. What the engagement team offered instead were the dimensions the judgement moved on: whether the
failure had reached more than one rule or more than one region; whether it had been found by the entity or
by the examination; whether the correction had been verified independently of the mechanism that failed; and
whether the period had ended with the condition still running.

**The chair recorded the answer and then recorded what it costs.** A judgement with no threshold behind it
is a judgement that cannot be audited by the party relying on it, and the committee's only assurance about
it is the independence of the person exercising it. **That is not a criticism of the engagement team. It is
the shape of the instrument**, and a committee that believed otherwise would be relying on a precision the
report does not offer.

## 5. What this communication did not do

**It did not state the opinion.** The opinion was expressed in the report issued on 2027-02-26, sixteen days
later. Nothing said at this sitting bound the engagement team and the minute says so.

**It did not seek management's agreement.** The evaluation is the service auditor's. Management neither
endorsed nor contested it at this sitting or afterwards, and **ADR-0041** records that position as the basis
on which `09.05` reproduces the reasoning.

**It did not become a CloudNimbus document.** What is retained is the communication as delivered, at
**EV-906**, together with the minute of the sitting. **The engagement team's working papers are the
engagement team's**, and `logs/evidence-index.md` records that this record and Section IV as published are
the only two sources for anything this programme says about the service auditor's reasoning.

**And it did not conclude anything about the certificate.** The certificate had been issued nineteen days
earlier by a different organisation, against a different standard, about a different object. It was
mentioned once, as a subsequent event represented in the representation letter.

## Cross-References

| Document | Relationship |
|---|---|
| [09.05 The Near-Modification, Resolved](../09.05-the-near-modification-resolved.md) | The chapter this record belongs to; the reasoning published in full |
| [09.04 The Report and the Opinion](../09.04-the-report-and-the-opinion.md) | The four opinion forms, and the opinion as issued sixteen days later |
| [09.06 Section IV and the Nine Exceptions as Published](../09.06-section-iv-and-the-nine-exceptions-as-published.md) | The nine, the tests performed and the evaluations |
| [09.07 Section V and What the Opinion Does Not Cover](../09.07-section-v-and-what-the-opinion-does-not-cover.md) | The placement of `MAJ-01`, determined by management |
| [adr/ADR-0041](../adr/ADR-0041-the-near-modification-reasoning-is-published.md) | The decision this record is one of two sources for |
| [governance/GOV-33](GOV-33-board-approval-of-managements-assertion.md) | The board meeting of 2027-02-24, at which this communication was tabled |
| [logs/evidence-index.md](../logs/evidence-index.md) | EV-906, and the limit on what CloudNimbus holds |
| [logs/decision-log.md](../logs/decision-log.md) | DEC-906 |
| [08.11 The Nine Test Exceptions](../../08-internal-audit-certification-and-type-ii-examination/08.11-the-nine-test-exceptions.md) | §5, the question as raised on 2027-01-28 |
| [08.12 The Scheduling Collision](../../08-internal-audit-certification-and-type-ii-examination/08.12-the-scheduling-collision.md) | CC4.1 and CC4.2, and the seven controls tested as a set |
| [01.07 Programme Charter and Objectives](../../01-program-foundation-dual-framework-governance/01.07-program-charter-and-objectives.md) | §4.1, on what the Audit &amp; Risk Committee actually is |
