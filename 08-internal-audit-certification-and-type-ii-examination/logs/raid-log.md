# RAID Log — Phase 08

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2027-L30 |
| Version | 1.0 |
| Date | 2027-02-05 |
| Owner | Rahul Bhargava |
| Approver | Karim Haddad |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


**Programme delivery risks, continuing the Phase 01 to Phase 07 series.** Not the information security risk
register, which stands at **38 entries — 0 High · 17 Moderate · 21 Low** following the December CAL-06
review of **2026-12-29**. 0 + 17 + 21 = 38.

**Nineteen entries moved at that review, seven were held and twelve already-Low entries did not move.**
19 + 7 + 12 = 38. **Nothing has ever been closed and nothing has ever been removed**; the population changed
exactly twice in the register's life, both times by addition on evidence — R-37 on 2026-05-22 and R-38 on
2026-10-23. GOV-32 carries the entry-level record and ADR-0039 carries the decision and the objection to it.

**The comparison against the Phase 03 close forecast of 0 · 16 · 22 is not performed here.** It is Phase
09's, entry by entry and in both directions.

## Risks — PR-48 to PR-52

| ID | Risk | Owner | Status |
|---|---|---|---|
| PR-48 | **`OBJ-03` records 16.9% against a target of 70%.** 356 of 2,103 artefacts served both audits. The objective was set in January 2026 on the share of artefacts serving both deliverables, and the measure is a property of two independent request lists at least as much as of CloudNimbus's architecture. `CNB-C-144` requires an objective whose measure cannot be evaluated from evidence to be re-measured or withdrawn; **this measure can be evaluated from evidence, which is how 16.9% was produced**, so withdrawal is not the available answer and re-measurement is. The objectives are re-set annually under `CNB-C-016` and the next occurrence falls after this vantage | Marisol Vega | Open — 08.09 §4 states the real number before it states why it is the wrong one |
| PR-49 | **`CA-08-01` and `CA-08-02` are open on findings seven and five and a half weeks old** — exception 8 was found on 2026-12-18 and exception 9 on 2026-12-29, against a vantage of 2027-02-05. The controls they address — `CNB-C-037`'s provisioning sequence and `CNB-C-040`'s gate on review closure — next produce evidence outside anything this phase reports, so neither corrective action can be shown effective before the March CAL-06 review at the earliest | Wes Delacroix | Open |
| PR-50 | **The rewritten audit programme has been executed once.** The three-year coverage matrix adopted under DEC-808 is complete on paper and has produced exactly one audit — the correction audit of 2027-01-05 to 01-09. A matrix that is complete for a cycle it has not yet traversed is a plan, and the control that would detect its becoming incomplete, `CNB-C-150`, has never operated | Karim Haddad | Open — see `IS-36` |
| PR-51 | **The restricted-use distribution mechanism under O2 has not been exercised.** 118 enterprise-tier customers, thirty days from an issuance date that has not occurred, each delivery requiring the right recipient, confidentiality terms in place and a controlled channel. 01.11 §8 recorded in January 2026 that a manual process invented in March will not complete in March, and the mechanism's readiness is owned rather than assumed | Ana-Sofia Cruz | Open — Phase 09's to discharge |
| PR-52 | **The near-modification on exception 5 is open at the close of fieldwork.** Management set out the countervailing facts on 2027-01-28 and does not know the outcome. No plan, forecast or expectation is recorded anywhere in this phase, and **DEC-815 records the decision not to record one** | Rahul Bhargava | Open — and it is the service auditor's to close, not CloudNimbus's |

**PR-48 is a risk about a measure rather than about a design.** The integration model is not in question — 112
of the library's controls serve both frameworks and that is where the design and operating cost were saved.
What is in question is a number set in January 2026 that measures artefact overlap and was believed at the
time to measure integration. **An objective that misses by a factor of four either describes a failure or
describes itself badly**, and this one describes itself badly, which is the harder of the two to admit
because the alternative reading is more flattering to the programme's judgement in January.

**PR-52 is the only entry in this log whose closure is not within CloudNimbus's gift.** Every other risk here
is a thing the programme can work on. This one is a question the programme has answered as fully as it can
and must now wait on.

### Risks carried forward from Phase 07

| ID | Position at 2027-02-05 |
|---|---|
| PR-35 | **Realised and now fixed in the record.** `CNB-C-098` closed the window at **5 of 6**, and the deviation rate is stateable for the first time: **1 of 6, 16.7%.** The August occurrence remains unrecoverable — `IS-19` |
| PR-36 | **Realised, exactly as predicted.** A second `CNB-C-108` exception was raised on **Thursday 2026-12-03** and cleared at the Tuesday queue on **2026-12-08**, business day three. 06.13 §9 set out that worked example in September. `CA-06-02` is open and has now been proved right about itself |
| PR-37 | **Answered by somebody else's finding.** A.5.30's implementation and maintenance limbs are `MIN-02`, raised by Northgate at Stage 2 against A.5.30 and clause 8.1. The Statement of Applicability's status field is now the subject of an accepted corrective action plan rather than of an internal referral |
| PR-38 | **Open.** The quarterly in-region failover game day added under DEC-612 is an availability matter owned by Wes Delacroix; no document in this phase reports an occurrence or an outcome for it |
| PR-39 | **Open and carried.** `DR-F6`'s failback timing fell due 2026-11-30, inside the window and inside Phase 07's excluded set; no document in this phase reports it, and it belongs to the availability record rather than to the audit record |
| PR-40 | **Discharged.** `03.02` §6 requires a retained High residual to be minuted by the Chief Executive Officer **and** reported to the Audit &amp; Risk Committee. CAL-03's Q4 occurrence carried R-08's September retention, and R-08 left the High band at the December review. Both limbs are complete |
| PR-41 | **Open and unchanged.** 411 CUEC-05 confirmations, 229 non-responses, no control or cadence governing the outreach — `IS-26`. **R-14 nonetheless moved two steps at the December review**, on CloudNimbus's own preventive export controls and explicitly not on the 411. GOV-32 records it as the weakest of the nineteen |
| PR-42 | **Realised as forecast, in both halves.** `CNB-C-149` ran **65 of 65 nights with 0 alerts raised**. The clean operating record is real; the population is 65 of the window's 184 and the alerting limb has never fired. Neither fact could be improved inside the window and ADR-0031 accepted both in advance |
| PR-43 | **Closed.** The backup residue window on the RT-02 catch-up deletion expired **2026-11-29** and `CNB-C-128`'s November confirmation recorded it. `CA-07-02` remains open on the cause |
| PR-44 | **Realised.** Final bridge letters were requested **2026-12-15** and escalated **2027-01-08**, against fieldwork that opened 2027-01-12. The position was stated to Ashcombe &amp; Doyle on the second day of fieldwork rather than discovered in it — `IS-31` |
| PR-45 | **Open.** `CA-07-05` still has to reconcile a cross-employer assembly path with the tenant scoping predicate that makes it slow, and the predicate is the control that keeps one employer's data away from another |
| PR-46 | **Open.** Nine complementary user entity controls dispositioned "not applicable to the services in use" on 2026-10-07, and nothing prompts a re-read on the day an engineer adopts a new service |
| PR-47 | **Open.** Fourteen privacy enquiries from 1.24 million end users; no measurement available to CloudNimbus distinguishes a working channel from an unknown one |

## Assumptions — AS-39 to AS-41

| ID | Assumption | Owner | Status |
|---|---|---|---|
| AS-39 | **The nine test exceptions are the complete set for the window** | Rahul Bhargava | **Unverified at this vantage.** Fieldwork closed on 2027-02-05 and the service auditor's evaluation is not complete. Nine is what has been raised and communicated to management; it is not a statement by Ashcombe &amp; Doyle that nothing further arises, and CloudNimbus is not in a position to make one |
| AS-40 | **`CNB-C-150`, as written, would have detected the divergence that produced `MAJ-01`** | Karim Haddad | **Unverified, and unverifiable for a year.** The control requires the coverage matrix to be reviewed annually against the ISMS scope and the Statement of Applicability, with a gap escalated before the programme is set. It has never operated. Northgate's acceptance rested on the rewritten programme document and the January audit it produced, **not on this control** — `IS-36` |
| AS-41 | **The rewritten audit scope is now adequate to clause 9.2.1** | Karim Haddad | **Asserted, and tested once.** The correction audit ran against clauses 4 to 10 and `eu-central-1` and raised a minor nonconformity, which is evidence that the scope reaches something. Whether it reaches everything clause 9.2.1 requires across a three-year cycle is a question one audit cannot answer, and the failure mode being corrected is precisely a scope that looked adequate for nine months |

**AS-40 deserves reading twice.** The corrective action for the phase's largest finding includes a control
that has never run, and the acceptance of that corrective action rested on the two limbs that had — the
rewritten programme document and the audit conducted under it. **A corrective action whose most durable limb
is untested is not a defective corrective action; it is a corrective action whose effectiveness check is
scheduled**, and the honest form of this entry is to say when: the 2028 programme, which is set after the
2027-11 surveillance audit.

## Issues — IS-35 and IS-36

| ID | Issue | Owner | Status |
|---|---|---|---|
| IS-35 | **The audit programme document and `CNB-C-146` diverged, and nothing in the library requires any two documents describing the same activity to be compared.** The programme document was written at chartering in January 2026 and scoped by reference to the Statement of Applicability; `CNB-C-146` was written in June and describes a programme across clauses 4 to 10 and the Annex A controls determined necessary. **Both were correct documents. Neither was wrong on its own face. Nothing read them together.** This entry records **the class of failure and not the instance** — the instance is `MAJ-01` and is closed, and the class is that a control statement and the procedure that carries it can drift apart silently in either direction, and that reading the library tells you nothing is missing | Karim Haddad | Open — **referred** to the next control library issue. `CNB-C-150` answers the instance for the internal audit programme and answers nothing about any other control |
| IS-36 | **`CNB-C-150` has no population until the 2028 audit programme is set.** An annual detective control admitted on 2027-01-08, after the observation window closed, cannot be tested for operating effectiveness by anybody — not the certification body at the 2027-11 surveillance audit, not the Audit &amp; Risk Committee, not CloudNimbus — until its first occurrence. **Its first effectiveness check is a year away** | Karim Haddad | Open — ADR-0040 and DEC-811 accepted this in advance; PR-50 carries the delivery half |

**`IS-35` is the entry a later reader should test this phase against.** It is easy to state the instance and
call it closed: the scope was wrong, the scope was rewritten, the audit was re-run, the certificate issued.
What that account leaves out is that **the same shape can exist anywhere in a library of 150 controls**,
that nothing has been enumerated, and that the failure is invisible from the library side because **the
control statement was right.** Phase 05 found five control statements that did not say what a later phase
needed and Phase 06 found `CNB-C-096`, which said how often and never said what; both are failures a reader
of the library can find. This one is not.

### Issues carried forward from Phases 06 and 07

| ID | Position at 2027-02-05 |
|---|---|
| IS-19 | **Open — irreducible, and now final.** `CNB-C-098` closed the window at 5 of 6. The August occurrence cannot be recovered, ADR-0026 refused to re-perform and back-date it, and the denominator carries it permanently. It is test exception 1 |
| IS-20 | **Open — referred.** `CNB-C-102` (five business days) and `CNB-C-075` (ten) still carry different post-incident review windows for the same artefact. One Severity-1 occurred in the window and both were satisfied, so nothing exercised the conflict |
| IS-21 | **Closed as an observation.** No control measures the interval between a page and a declaration. The December CAL-06 review considered it and declined to open a control gap: `CNB-C-071` states the trigger and the record, `CNB-C-068` states the paging condition, and the seven minutes of 2026-09-08 fall between two controls that each did what they say. Recorded as an observation and not carried further |
| IS-22 | **Open as a record.** A.5.30's status was asserted ahead of its evidence in June 2026 and overtaken by it in August; the entry stands as the clause 7.5 lesson, and `MIN-02` is what the rest of it became |
| IS-23 | **Open — `CA-06-03`.** The emergency change path was used **fifteen times** across the window, and each use is an accepted departure from **SR-11**. The path exists to be used and the departure recurs every time it is |
| **IS-24** | **CLOSED — by `MIN-02`.** A.5.30's implementation and maintenance limbs, referred by Phase 06 rather than edited away, were raised by Northgate at Stage 2 as a minor nonconformity against **A.5.30 and clause 8.1**. The referral was the right call and it did not make the finding go away. **A referred issue is a finding you have written down, not a finding you have answered** — and this one was answered by somebody else, with a corrective action plan accepted on 2026-12-19, which is a better outcome than the edit Phase 06 declined to make |
| IS-25 | **Open — referred.** No control governs application connection pool configuration. Nothing in the window's second half changed it |
| IS-26 | **Open — referred.** No control or cadence governs the CUEC-05 outreach or its annual reconfirmation. See PR-41, and `IS-30` at the other end of the same relationship |
| IS-27 | **Open — referred.** The 278 refused writes never resubmitted are owned by no control, no deviation and no register entry |
| IS-29 | **Open — referred.** P3.2's single control does not reach the leave-type inference question. No conclusion is drawn about whether anything is or is not special-category data |
| IS-30 | **Open — referred.** No control requires the other side's complementary user entity controls to be enumerated, dispositioned and owned; `CA-07-01` assigned the two that had no owner and the missing requirement stands |
| IS-31 | **Open, and stated in advance.** Two months of the window are reached by no artefact from either subservice organisation. Final bridge letters requested 2026-12-15, escalated 2027-01-08, and the position given to Ashcombe &amp; Doyle on the second day of fieldwork. **No forecast of what the service auditor will make of it** |
| IS-32 | **Open — referred.** `CNB-C-117` compares export events against support case history and cannot see a disclosure that arrives through the disclosure register |
| IS-33 | **Open, and it owes a number.** The library has not been enumerated for controls whose operating condition is that a record exists rather than what the record says. **`OFI-07` is the same question arriving from Northgate**, and it was declined for now — which does not reduce what this entry owes |
| IS-34 | **Open — referred**, with `CA-07-04` attached and DEC-712 moving the sub-processor list currency check into the change record |

**There is no `IS-28`.** The identifier was allocated in draft during the RT-02 investigation to a matter
closed by DEC-705 rather than referred, and it has not been reused. **Renumbering to close the gap would
make the gap invisible rather than absent.**

**Two entries in this log are closed and they close differently.** `IS-21` is closed **as an observation** —
the December CAL-06 review considered the interval between a page and a declaration, found that `CNB-C-071`
and `CNB-C-068` each did what they say, declined to open a control gap and recorded the result as an
observation rather than a finding. That is a closure by determination, and nothing was owed on it.

**`IS-24`'s closure is the other one, and it closes in an unusual way.** Phase 06 referred it
rather than adding a citation to a row that already existed, on the reasoning that *a library that corrects
itself silently cannot demonstrate that it was ever wrong.* Three months of referral produced no internal
closure and one external nonconformity. Both halves of that are worth keeping: the referral was correct, and
**a referral is not a treatment.**

## Dependencies — DP-35 to DP-38

| ID | Dependency | Owner |
|---|---|---|
| DP-35 | The report **planned** for 2027-02-26 depends on management's written assertion and the representation letter under **O12**, neither of which exists at this vantage, and on the description including the **DC9** disclosure of relevant changes during the period | Rahul Bhargava |
| DP-36 | **O2**'s thirty-day distribution to 118 enterprise-tier customers depends on an issuance date that has not occurred. The clock runs from issuance, not from a fixed date, so slippage moves the deadline — and the board and Audit &amp; Risk Committee report of 2027-03-11 falls inside the same thirty days whatever happens | Ana-Sofia Cruz |
| DP-37 | Closure of `MIN-01` to `MIN-04` depends on Northgate's verification of implementation, which falls at the **first surveillance audit** — due within twelve months of the certification decision of 2027-01-20 and scheduled for **2027-11** under **O11** | Karim Haddad |
| DP-38 | `IS-35`'s closure depends on the next control library issue carrying a requirement that a control statement and the procedure that carries it be compared, and on somebody enumerating where else the divergence could exist. That issue is not this phase's | Karim Haddad |

**Total new entries: 14** — 5 risks, 3 assumptions, 2 issues, 4 dependencies. Thirteen programme risks and
fifteen Phase 06 and Phase 07 issues are carried forward with their status and are **not renumbered**; two
are closed — `IS-21` as an observation and `IS-24` by `MIN-02`.

## Cross-References

| Document | Relationship |
|---|---|
| [08.08 The Observation Window Closes](../08.08-the-observation-window-closes.md) | The register close and the December review |
| [08.09 Evidence Production and the Integration Dividend](../08.09-evidence-production-and-the-integration-dividend.md) | PR-48 and the 16.9% |
| [08.11 The Nine Test Exceptions](../08.11-the-nine-test-exceptions.md) | PR-52 and the open question |
| [08.13 Phase Summary and Transition](../08.13-phase-summary-and-transition.md) | What is carried into Phase 09 |
| [governance/GOV-32](../governance/GOV-32-december-cal-06-register-review.md) | The entry-level register record |
| [adr/ADR-0039](../adr/ADR-0039-nineteen-entries-move-at-one-review.md) | The nineteen movements and the objection |
| [adr/ADR-0040](../adr/ADR-0040-cnb-c-150-is-admitted-outside-the-window.md) | `IS-36` accepted in advance |
| [logs/finding-log.md](finding-log.md) | `MIN-02`, which closes `IS-24`, and the classification column |
| [logs/decision-log.md](decision-log.md) | DEC-808 to DEC-815 |
| [07-confidentiality-privacy-and-third-party-assurance/logs/raid-log.md](../../07-confidentiality-privacy-and-third-party-assurance/logs/raid-log.md) | PR-42 to PR-47, AS-35 to AS-38, IS-29 to IS-34 and DP-31 to DP-34 as Phase 07 recorded them |
| [06-availability-processing-integrity-and-operations/logs/raid-log.md](../../06-availability-processing-integrity-and-operations/logs/raid-log.md) | PR-35 to PR-41 and IS-19 to IS-27 |
| [03.07 Risk Acceptance and Residual Risk](../../03-risk-assessment-treatment-and-statement-of-applicability/03.07-risk-acceptance-and-residual-risk.md) | The forecast Phase 09 marks the close against |
