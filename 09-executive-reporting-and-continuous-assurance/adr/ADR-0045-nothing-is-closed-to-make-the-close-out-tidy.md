# ADR-0045 — Nothing is closed to make the close-out tidy

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2027-A45 |
| Version | 1.0 |
| Date | 2027-03-11 |
| Owner | Karim Haddad |
| Approver | Lorraine Kessler |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


| Field | Value |
|---|---|
| Status | Accepted |
| Date | 2027-03-10 |
| Decider | Karim Haddad |
| Phase | 09 — Executive Reporting &amp; Continuous Assurance |

## Context

A closing phase has a structural incentive that no earlier phase has. Every register it carries — corrective
actions, RAID entries, risk entries, obligations — is about to be read by a board, an audit committee and,
in the portfolio's own terms, by a reader deciding whether the programme's account of itself is accurate.
**An open item at the close reads as unfinished work. A closed item reads as work done.** The difference
between them, on any given row, can be a sentence.

The temptation is not hypothetical and it is not evenly distributed. At 2027-03-11 the position is:

**Sixteen corrective actions open** — `CA-06-01` to `CA-06-04`, `CA-07-01` to `CA-07-06`, `CA-08-01`,
`CA-08-02`, and the four limbs against `MIN-01` to `MIN-04` that carry no `CA-` identifier because they were
submitted to Northgate as a single plan on 2026-12-19.

**Seventeen issues open** in the RAID log — `IS-37`, `IS-38` and `IS-39` were opened in this phase — several
of them referred rather than treated, and two of them — `IS-33` and `IS-35` — owing a number nobody has
produced.

**Thirty-eight risk entries**, none of which has ever been closed or removed in the register's life.

**And one nonconformity that is not a corrective action at all**: the correction audit's **clause 7.4
minor**, raised between 2027-01-05 and 01-09, which had no row anywhere in this phase until a reader of it
asked why. It is open with its clause 10.2 disposition at 09.12 §2.1. **A record that is only tested against
the things it remembered to list is not tested**, and this one was not, on that row, until somebody else
looked.

**Three of the sixteen corrective actions have an argument for closure available.** `CA-06-03`'s corrected
emergency change path has sixteen weeks behind it — under four months — with no recurrence. `CA-07-02`'s
correction limb is complete, independently verified against pre-deletion partition counts, and answered by a
control that ran 65 nights inside the window and has run since. `CA-07-04` has one sub-processor change
through the corrected path. Each of those is evidence that something worked.

**None of the three is an effectiveness check across a cycle**, and `CNB-C-148` **refuses closure until the
effectiveness check is complete.**

## Decision

**Nothing is closed in Phase 09 to make the close-out tidy. Sixteen corrective actions are open and sixteen
are reported open. The three that could have been argued closed are named as such rather than closed or
omitted. Register entries are neither closed nor removed, as they never have been. RAID entries close only
where the thing they describe has actually happened, and the closures are stated with what closed them.
DEC-913.**

Three tests were applied to every candidate for closure and a row had to pass all three.

**Has the effectiveness check specified in the record been performed?** Not *is the fix believed to work* —
has the check the record names been run, on the occurrence it names, with a result. Twelve of the sixteen
corrective actions attach to controls whose next relevant occurrence falls outside this vantage; four are
Northgate's to verify at the 2027-11 surveillance audit.

**Is the closure a fact or a judgement?** `PR-51` closes because 118 enterprise-tier customers received the
report by 2027-03-06 and the count is in the distribution record. `PR-52` closes because the report was
issued and the near-modification question was answered by the party whose question it was. `IS-31` closes
because the subservice organisation letters that were missing arrived and were produced into fieldwork.
Those are events. *The team is confident the corrected path is working* is not.

**Would the closure survive the reader who is looking for exactly this?** The rows a reader should trust
least in any closing report are the ones that closed in the fortnight before it. A row that cannot
survive that reading should not be written.

## Consequences

**The close-out reports more open items than any earlier phase.** That is the intended outcome and it is
also the one that looks worst. The counterfactual — a close-out reporting three corrective actions closed on
the strength of sixteen weeks, one verified correction and one sub-processor change — would have read better
and been less true, and the three rows would have been the first three a sceptical reader tested.

**`IS-19` stays open and is irreducible.** `CNB-C-098`'s August 2026 occurrence cannot be recovered. It has
been open since September 2026, it will be open when the 2027 window closes, and closing it at the end of
the programme would be closing a record of something that did not happen because the programme it belonged
to ended.

**The register's zero closure column survives the close-out.** Thirty-eight entries, two additions on
evidence, nothing ever closed and nothing ever removed. **A risk that stops being likely is re-rated, not
deleted**, and the last review of a programme is the review at which a register is most likely to be tidied
into a shorter one. It was not.

**And the numbering inconsistency on the four minors' corrective actions is reported rather than fixed.**
They carry finding identifiers where the other twelve carry `CA-` identifiers, because they were submitted
to an external party as one plan and accepted in that form on 2026-12-19. Renumbering them here to make a
column uniform would change a record eight weeks after Northgate accepted it, which is a worse outcome than
an inconsistent column with a sentence attached.

## Alternatives considered and rejected

**Close the three corrective actions with an argument available and note the limitation.** Rejected. The
note is the tell: an action closed with a caveat about its own evidence has not met `CNB-C-148`'s condition,
and writing the caveat is an admission that the closure was taken for a reason other than the check. **A
rule that is applied except where it produces an inconvenient answer is not a rule the programme has.**

**Close the RAID issues that have been referred for two phases.** Rejected on Phase 08's own reasoning:
**a referred issue is a finding you have written down, not a finding you have answered.** `IS-24` is the
worked example and it is the only one of its kind — it closed because somebody else raised it as a
nonconformity, not because three months of referral had answered it.

**Close `IS-19` on the ground that the window it belongs to has ended.** Rejected. The occurrence is
unrecoverable, the denominator carries it permanently, and an entry closed because time passed is an entry
whose closure records nothing.

**Report the sixteen as a count without the table.** Rejected. Sixteen open corrective actions stated as a
number invites the reader to assume they are all of a kind. They are not: some are weeks from an
effectiveness check, one is overdue against its own analysis, one may not have a good answer at all, and
four belong to an external party's verification schedule. The table costs a page and is the only form in
which the number means anything.

**Defer the whole question to the 2027 programme.** Rejected because it is the same decision with a later
date on it. The corrective actions are open now; whether they are reported open now is this phase's
decision, and deferring it would have produced a close-out that neither closed them nor reported them.

## Related

| Reference | Relationship |
|---|---|
| [09.12 Continuous Assurance and the Board Report](../09.12-continuous-assurance-and-the-board-report.md) | §2's table of the sixteen, and the three named as arguable |
| [09.10 The Register at Close — Forecast Against Actual](../09.10-the-register-at-close-forecast-against-actual.md) | The register held at thirty-eight, with nothing closed |
| [09.13 What This Portfolio Claims and What It Does Not](../09.13-what-this-portfolio-claims-and-what-it-does-not.md) | §5, what is left open at the end of the first cycle |
| [logs/raid-log.md](../logs/raid-log.md) | The entries carried, the three closed, and what closed each |
| [logs/decision-log.md](../logs/decision-log.md) | DEC-913 |
| [governance/GOV-36](../governance/GOV-36-board-and-audit-risk-committee-report.md) | The sixteen as reported to the board |
| [ADR-0026](../../06-availability-processing-integrity-and-operations/adr/ADR-0026-the-missed-restore-test-is-not-back-dated.md) | The first refusal to repair a record for presentational reasons |
| [ADR-0040](../../08-internal-audit-certification-and-type-ii-examination/adr/ADR-0040-cnb-c-150-is-admitted-outside-the-window.md) | The third application of the same reasoning |
| [templates/corrective-action-template.md](../../08-internal-audit-certification-and-type-ii-examination/templates/corrective-action-template.md) | §5's effectiveness field, and `CNB-C-148`'s refusal to close without it |
| [08.13 Phase Summary and Transition](../../08-internal-audit-certification-and-type-ii-examination/08.13-phase-summary-and-transition.md) | §3, the phase that did not back-date, re-perform or repair anything |
