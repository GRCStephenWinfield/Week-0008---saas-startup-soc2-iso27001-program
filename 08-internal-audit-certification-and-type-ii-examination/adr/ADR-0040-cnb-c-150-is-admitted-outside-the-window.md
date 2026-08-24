# ADR-0040 — `CNB-C-150` is admitted outside the observation window, and is excluded from the examination

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2027-A40 |
| Version | 1.0 |
| Date | 2027-02-05 |
| Owner | Karim Haddad |
| Approver | Elise Fontaine |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


| Field | Value |
|---|---|
| Status | Accepted |
| Date | 2027-01-08 |
| Decider | Karim Haddad |
| Phase | 08 — Internal Audit, Certification &amp; the Type II Examination |

## Context

`MAJ-01`, the major nonconformity raised by Northgate Certification Services on **2026-12-02**, required a
correction and a corrective action plan within twenty days of the closing meeting and evidence of
implementation and effectiveness before a certification decision could be taken.

The corrective action has three parts: the audit programme document rewritten so that the audit criteria are
clauses 4 to 10, the Statement of Applicability, and every region and legal entity inside the ISMS scope,
with a coverage matrix complete across the three-year certification cycle (**DEC-808**, 2026-12-18); an
annual adequacy review of the scope CloudNimbus gives Camberwell Risk Partners, attached to **`CNB-C-092`**
— the quarterly Tier 1 assurance refresh, which is the library's A.5.22 row (**DEC-812**); and **a new
control**.

> **`CNB-C-150`** — The internal audit programme's coverage matrix is reviewed annually against the ISMS
> scope and the Statement of Applicability, and a clause, a location or a legal entity with no planned audit
> inside the certification cycle is escalated to the Audit &amp; Risk Committee before the programme is set.
> Family `ISO`. Type **Detective**. Cadence **Annual**. Owner **Karim Haddad**. Policy `POL-19`.
> Criteria **—**. Annex A **—**.

**The library has grown twice in its life.** `CNB-C-149` was admitted on 2026-10-28 under DEC-706, taking it
from 148 to 149. This is the second addition and takes it to **150**.

The observation window closed on **2026-12-31**. The correction audit ran 2027-01-05 to 2027-01-09 and the
control was ready to be admitted on **2027-01-08**, eight days after the window closed and four days before
Type II fieldwork opened.

## Decision

**`CNB-C-150` is admitted to the control library on 2027-01-08, and is excluded from the Type II
examination. The library is 150 controls from that date. DEC-811.**

Three statements follow and all three are on the face of the record rather than left to be worked out.

**It has no population inside the observation window at all.** Not a thin population, not a population of
one — none. Its cadence is Annual, its first occurrence falls when the 2028 audit programme is set, and it
did not exist on any of the window's 184 days.

**It is not part of the description of the system for the period examined**, because the description
describes the system as it operated 2026-07-01 to 2026-12-31 and this control was not part of it.

**It is an ISO corrective action and nothing else.** It answers clause 10.2 for `MAJ-01`, it is evidence
Northgate required before a certification decision, and it has no trust services criterion — its `Criteria`
column is a dash, as `CNB-C-146`'s is.

**Its Annex A column is a dash too, and that had to be argued rather than left blank.** A.5.35 was available
and would have made the row look better mapped. It is not the same activity: 04.07 §3.1 gives the reason —
**clause 9.2's obligation lives in clause 9.2, and A.5.35 is an independent review of the approach to
managing information security**, already carried by **`CNB-C-024`**, an annual review commissioned from a
party that neither designed nor operates the controls. `CNB-C-150` is an annual **self**-review of the audit
programme's coverage, owned by the person who owns the programme. **That `CNB-C-150` cannot cite A.5.35 is
the same point `CNB-C-146` makes, and a corrective action that quietly claimed the citation its parent
control was denied would have been the easiest thing in the phase to get wrong** — nobody re-reads the Annex
A column of a row added for the best of reasons, and the claim would have sat in the library unchallenged.

## Consequences

**The programme's answer to its own largest finding is invisible to the examination, and that is correct.**
The rewritten programme document, the three-year coverage matrix, the clause 4 to 10 and `eu-central-1`
audit of January, and this control are all remediation of a nonconformity against a requirement the
examination does not assess. A reader of the report will not find `CNB-C-150` in Section IV, and the fact
that it exists reaches the report — if at all — through the Section V disclosure of the collision, which
**is not covered by the service auditor's opinion** and which says so on its face.

**The convenient alternative was available and would have been visible to nobody.** The control could have
been drafted in December, dated 2026-12-22, and admitted before the window closed. The corrective action
would then have had a control inside the period, the library's growth would have looked like a response
rather than an aftermath, and the only evidence against it would have been a comparison of a document date
against a review minute. **ADR-0026 refused that for a missed restore test and ADR-0031 refused it for
`CNB-C-149`'s effective date; this is the third application of the same rule, and it is the one where the
temptation was largest**, because the thing being dated is not an operational occurrence but a piece of
paper.

**`CNB-C-150`'s first effectiveness check is a year away.** An annual detective control admitted in January
2027 has its first occurrence when the 2028 programme is set. Between now and then the control is a
statement in a library with no operating history, and nobody — not Northgate at the 2027-11 surveillance
audit, not the Audit &amp; Risk Committee, not CloudNimbus — can test whether it works. **`IS-36` carries
that**, and it is a worse position than it looks: the corrective action Northgate accepted as evidence of
effectiveness rests on the *rewritten programme document* and the January audit that the rewritten scope
produced, not on this control, which had not operated.

**And the library's growth is now two controls in under seven months on the library's own clock** — 148 when
Phase 04 published it in June 2026, 149 on 2026-10-28, 150 on 2027-01-08 — **both admitted after a failure
they would not have prevented.** `CNB-C-149` answers a retention job that reported success and deleted nothing;
`CNB-C-150` answers an audit programme that did not cover the clauses. Neither existed when the thing it
detects occurred. **A control library that grows only after the event is a library learning at the correct
speed and from the most expensive teacher available**, and saying so is more useful than presenting either
addition as foresight.

## Alternatives considered and rejected

**Date the control inside the window** — rejected, on ADR-0026's reasoning applied for the third time. A
control's admission is an event on a date, and the surrounding evidence — the correction audit's dates, the
Northgate submission of 2026-12-19, the decision record, the GRC platform's change history — all say
2027-01-08.

**Amend `CNB-C-146` rather than add a control** — rejected, and this is the reverse of the call
ADR-0031 made about `CNB-C-127`. `CNB-C-146` was **not wrong**. It says the programme is risk-weighted
across clauses 4 to 10 and the Annex A controls determined necessary, and it says so correctly; what failed
was that nothing compared the programme document against it. Widening a statement that was already right
would have produced a library that looked as though the original wording had been the problem, when the
problem was that **the library got ahead of the practice and nothing checked that they still agreed**. That
is 08.07 §3's root cause, and a control that detects the divergence is a different mechanism from a control
that describes the destination.

**Treat the coverage matrix as an artefact of `CNB-C-146` and add nothing** — rejected. `CNB-C-146` sets the
programme annually with a recorded independence check; it does not require anybody to compare the programme
against the ISMS scope and the Statement of Applicability, and it does not require a gap to be escalated
before the programme is set. **A requirement that lives in a document rather than in a row is a requirement
with no owner, no cadence and no declared evidence artefact**, and 04.07 §3.2's argument about the six
clause-requirement controls applies to this one exactly: *a requirement without an operating cadence is a
requirement nobody has scheduled.*

**Include the control in the description as a subsequent event** — rejected. The description describes the
system during the period. Changes after the period end are not DC9's subject either: DC9 concerns relevant
changes **during** the period. Whatever a user of the report should know about January 2027 belongs in
Section V, which is management's information and is not covered by the opinion, and putting it anywhere else
would attribute to the service auditor a view of a control the service auditor did not test.

## Related

| Reference | Relationship |
|---|---|
| [08.07 Correction, Corrective Action and the Certificate](../08.07-correction-corrective-action-and-the-certificate.md) | §3's root cause, the three-part corrective action and the certification sequence |
| [08.05 Stage 2 and the Major Nonconformity](../08.05-stage-2-and-the-major-nonconformity.md) | `MAJ-01` as Northgate stated it |
| [08.12 The Scheduling Collision](../08.12-the-scheduling-collision.md) | Why the disclosure is Section V and what Section V is worth |
| [08.10 The Type II Fieldwork](../08.10-the-type-ii-fieldwork.md) | The window populations this control has none of |
| [logs/decision-log.md](../logs/decision-log.md) | DEC-808, DEC-811 and DEC-812 |
| [logs/raid-log.md](../logs/raid-log.md) | `IS-35` and `IS-36` |
| [04.07 ISO-Only Controls and ISMS Machinery](../../04-unified-control-framework-and-policy-architecture/04.07-iso-only-controls-and-isms-machinery.md) | §3.1, `CNB-C-146` as published, A.5.35 as a different activity, and why an ISMS-machinery row carries two dashes |
| [04.05 Controls for the Common Criteria CC6 to CC9](../../04-unified-control-framework-and-policy-architecture/04.05-controls-for-the-common-criteria-cc6-to-cc9.md) | `CNB-C-090` and `CNB-C-092` as published, and which of them carries A.5.22 |
| [04.02 The Unified Control Library](../../04-unified-control-framework-and-policy-architecture/04.02-the-unified-control-library.md) | The 148-control library and the identifier scheme this extends |
| [ADR-0031](../../07-confidentiality-privacy-and-third-party-assurance/adr/ADR-0031-a-new-control-admitted-mid-window.md) | The first addition, admitted **inside** the window, and the opposite call on amendment |
| [06.13 Phase Summary and Transition](../../06-availability-processing-integrity-and-operations/06.13-phase-summary-and-transition.md) | ADR-0026, the rule applied here for the third time |
