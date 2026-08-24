# RAID Log — Phase 09

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2027-L34 |
| Version | 1.0 |
| Date | 2027-03-11 |
| Owner | Rahul Bhargava |
| Approver | Karim Haddad |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


**Programme delivery risks, closing the Phase 01 to Phase 08 series.** Not the information security risk
register, which stands at **38 entries — 0 High · 17 Moderate · 21 Low**, held unchanged at the March CAL-06
review of **2027-03-09**. 0 + 17 + 21 = 38. **Nothing has ever been closed and nothing has ever been
removed** from that register; the population changed exactly twice in its life, both times by addition on
evidence.

**ADR-0045 governs every closure in this log.** Three entries close and each closes on an event that
occurred, rather than on a judgement that something is probably working. Everything else is carried with its status,
and **not renumbered**.

## 1. Risks — none new, and the reason is worth stating

**No programme delivery risk is raised in Phase 09.** Every risk in this series has been a risk to the
delivery of the two assurance products, and both were delivered — the report on 2027-02-26 and the
certificate on 2027-01-22. What remains is not a delivery risk; it is the operation of a control environment
across a twelve-month window, which is what the information security register, the assurance calendar and
`IS-37` are for. **Inventing a PR-53 to give the closing phase a new entry would be manufacturing a risk to
match a pattern**, and Phase 08 refused the same move on a dissent.

### Risks carried forward

| ID | Position at 2027-03-11 |
|---|---|
| PR-35 | **Realised and final.** `CNB-C-098` closed the window at **5 of 6**, a rate of **16.7%**, and it is exception 1 in Section IV. The August occurrence remains unrecoverable — `IS-19`. `CA-06-01` is open |
| PR-36 | **Realised, exactly as predicted, and still open.** `CNB-C-108`'s two-business-day service level and weekly Tuesday queue produced a second exception on Thursday 2026-12-03, cleared at the queue on Tuesday 2026-12-08. `CA-06-02` **has still not answered which of the two figures is wrong** |
| PR-37 | **Answered by somebody else's finding, and not yet closed by anybody.** A.5.30's implementation and maintenance limbs are `MIN-02`; the corrective action plan was accepted by Northgate on 2026-12-19 and **verification falls at the 2027-11 surveillance audit** |
| PR-38 | **Open.** The quarterly in-region failover game day added under DEC-612 is Wes Delacroix's; **no document in Phase 08 or Phase 09 reports an occurrence or an outcome for it**, and two quarters have now passed without one being reported |
| PR-39 | **Open and carried, for the second phase running.** `DR-F6`'s failback timing fell due 2026-11-30 and no document in either phase reports it. It belongs to the availability record and the availability record has not been written since 2026-09-30 |
| PR-40 | **Discharged in Phase 08.** Both limbs of `03.02` §6's reporting requirement for R-08's September High retention are complete, and R-08 left the High band in December |
| PR-41 | **Open and unchanged.** 411 CUEC-05 confirmations, 229 non-responses, no control or cadence governing the outreach or the annual reconfirmation — `IS-26`. R-14 moved two steps in December on CloudNimbus's own preventive export controls and explicitly not on the 411 |
| PR-42 | **Realised as forecast, in both halves.** `CNB-C-149` ran 65 of 65 window nights with 0 alerts. **The alerting limb has still never fired**, ten weeks further on, and a detective limb that has never fired has not been shown to fire |
| PR-43 | **Closed in Phase 08.** The backup residue window on the RT-02 catch-up deletion expired 2026-11-29 and `CNB-C-128`'s November confirmation recorded it. `CA-07-02` remains open on the cause |
| PR-44 | **Realised, and its instance is now closed** — see `IS-31`. The cause is not: nothing yet requires a subservice organisation bridge letter earlier than the request that chases it. `CA-07-06` is open |
| PR-45 | **Open.** `CA-07-05` still has to reconcile a cross-employer assembly path with the tenant scoping predicate that makes it slow, and the predicate is the control that keeps one employer's data away from another |
| PR-46 | **Open.** Nine complementary user entity controls dispositioned "not applicable to the services in use" on 2026-10-07, and nothing prompts a re-read on the day an engineer adopts a new service |
| PR-47 | **Open.** Fourteen privacy enquiries from 1.24 million end users, and no measurement available to CloudNimbus distinguishes a working channel from an unknown one |
| PR-48 | **Open, and now scored.** OBJ-03 is recorded **missed** at 16.9% against 70%, with the better measure of 113 of 150 controls at 75.3% published beside it — re-derived at 150 rather than carried forward from `04.03`'s 112 of 148. **The measure was not restated at the close** — DEC-912 refers it to the annual objective-setting occurrence under `CNB-C-016`, which falls after this vantage. Owner Marisol Vega |
| PR-49 | **Open.** `CA-08-01` and `CA-08-02` address `CNB-C-037`'s provisioning sequence and `CNB-C-040`'s gate on review closure, and **neither control has produced an occurrence under the corrected arrangement** that any document in this phase can report |
| PR-50 | **Open.** The rewritten audit programme has been executed once — the correction audit of 2027-01-05 to 01-09. A three-year coverage matrix complete for a cycle it has not traversed is a plan, and `CNB-C-150` has never operated |
| PR-51 | **CLOSED.** The restricted-use distribution mechanism under O2 was exercised: **118 enterprise-tier customers delivered by 2027-03-06**, eight days after issuance and twenty-two days inside the obligation, plus **37 of the remaining 522 on request under O1**. The mechanism was built during the window as 01.11 §8 required, and the count is in the distribution record |
| PR-52 | **CLOSED.** The near-modification on exception 5 was answered by the party whose question it was. The report was issued 2027-02-26 with an **unmodified opinion** and exception 5 disclosed in Section IV with the service auditor's evaluation. **DEC-815's refusal to predict it is the reason this entry could close on a fact rather than on a forecast being confirmed** |

## 2. Assumptions

| ID | Assumption | Owner | Status |
|---|---|---|---|
| AS-42 | **The evidence store keeps working in the eleven months when nobody is auditing** | Rahul Bhargava | **New, and untested by design.** In 2026 the store operated under continuous observation: a service-auditor checkpoint every month from April, a certification body at two stages, an internal audit, a management review, and a full-time Compliance Manager. **None of that is true of 2027.** Several evidence classes depend on a scheduled export, and 04.12 §6's limitation stands — **an export that silently stops produces a gap that looks exactly like a control that stopped operating.** No such gap was found in 2026, which is not the same as there having been none. **This is the single largest untested assumption the programme leaves behind** |

### Assumptions carried forward

| ID | Position at 2027-03-11 |
|---|---|
| AS-39 | **Verified and closed.** The nine test exceptions are the complete set for the window: Section IV as published carries nine, under nine criteria, and the assumption Phase 08 could not verify has been answered by the issued report rather than by CloudNimbus |
| AS-40 | **Unverified and unverifiable for a year, unchanged.** `CNB-C-150` has never operated. Northgate's acceptance of `MAJ-01`'s corrective action rested on the rewritten programme document and the January audit it produced, **not on this control** — `IS-36`, `PR-50` |
| AS-41 | **Asserted, and still tested once.** The correction audit ran against clauses 4 to 10 and `eu-central-1` and raised a minor nonconformity, which is evidence that the scope reaches something. Whether it reaches everything clause 9.2.1 requires across a three-year cycle is a question one audit cannot answer, and **the failure mode being corrected is precisely a scope that looked adequate for nine months** |

## 3. Issues

| ID | Issue | Owner | Status |
|---|---|---|---|
| IS-37 | **The register's discipline and the register's decay are the same behaviour across a twelve-month window.** Nine months of *waiting for the population* was defensible inside a window with a defined end, and 08.08 §5.5 defended it: every review from June to September said on the record that it was waiting, and the December review moved nineteen entries when the evidence arrived. **Across a twelve-month window that same sentence is available for three consecutive reviews**, and a review body that does not review for nine months of a twelve-month cycle is indistinguishable, from outside and increasingly from inside, from one that has stopped. The March review of 2027-03-09 moved nothing and stated why, which is correct once. **Held twice it is inertia; held four times it is a register nobody maintains, and no band count will show it** | Karim Haddad | **Open — carried into the 2027 programme.** DEC-914. GOV-36 resolution 4 requires the June and September 2027 CAL-06 occurrences each to state on the record what population they had available, whether or not any entry moves |
| IS-38 | **No control requires anybody to record the judgement that a report recipient is a specified party.** `CNB-C-013` and `CNB-C-014` record that the report was sent and to whom; neither records the judgement that the recipient had the knowledge and understanding the restricted-use paragraph describes. **That judgement was made, customer by customer, for all 155 recipients, and it left no artefact** | Tobias Lund | Open — **referred** to the 2027 programme. 09.08 §7 |
| IS-39 | **`CNB-C-023` says "Each of the 148 library controls" and the library is 150.** `CNB-C-149` was admitted 2026-10-28 and `CNB-C-150` on 2027-01-08, and nobody updated the control that counts the controls. Not a deviation in the window — the control operated on every control including `CNB-C-149`, and the number is descriptive rather than operative — but a **documented information defect under clause 7.5**, and the same failure mode as `MAJ-01` in miniature: a statement true when written, describing a practice that moved without it. **The programme's last finding is a number in a control statement, found by counting** | Rahul Bhargava | Open — **referred** to the next library issue. 09.10 §9 |

### Issues carried forward from Phases 06, 07 and 08

| ID | Position at 2027-03-11 |
|---|---|
| IS-19 | **Open — irreducible, and it does not close because the programme did.** `CNB-C-098`'s August 2026 occurrence cannot be recovered, ADR-0026 refused to re-perform and back-date it, and the denominator carries it permanently. It is exception 1 |
| IS-20 | **Open — referred.** `CNB-C-102` (five business days) and `CNB-C-075` (ten) still carry different post-incident review windows for the same artefact. One Severity-1 occurred in the window and both were satisfied, so nothing has yet exercised the conflict |
| IS-21 | **Closed in Phase 08 as an observation.** No control measures the interval between a page and a declaration; the December CAL-06 review declined to open a control gap and recorded the result rather than a finding |
| IS-22 | **Open as a record.** A.5.30's status was asserted ahead of its evidence in June 2026 and overtaken by it in August. The entry stands as the clause 7.5 lesson; `MIN-02` is what the rest of it became |
| IS-23 | **Open — `CA-06-03`.** The emergency change path was used fifteen times across the window and each use is an accepted departure from **SR-11**. The path exists to be used and the departure recurs every time it is |
| IS-24 | **Closed in Phase 08 by `MIN-02`.** A referral is a finding you have written down, not a finding you have answered — and this one was answered by somebody else |
| IS-25 | **Open — referred.** No control governs application connection pool configuration. Nothing since has changed it, and the incident of 2026-09-08 remains the only thing that has ever tested it |
| IS-26 | **Open — referred.** No control or cadence governs the CUEC-05 outreach or its annual reconfirmation. `PR-41`, and `IS-30` at the other end of the same relationship |
| IS-27 | **Open — referred.** The 278 refused writes never resubmitted are owned by no control, no deviation and no register entry |
| IS-29 | **Open — referred.** P3.2's single control does not reach the leave-type inference question, and no conclusion is drawn about whether anything is or is not special-category data |
| IS-30 | **Open — referred.** No control requires the other side's complementary user entity controls to be enumerated, dispositioned and owned. `CA-07-01` assigned the two that had no owner; the missing requirement stands |
| **IS-31** | **CLOSED.** Two months of the observation window were reached by no artefact from either subservice organisation. The final bridge letters were requested 2026-12-15, escalated 2027-01-08, received and produced into fieldwork, and the position was given to Ashcombe &amp; Doyle on the second day of fieldwork rather than discovered in it. **The report is issued and Section IV carries no deviation arising from subservice organisation coverage.** The instance is closed; **`CA-07-06` is open on the cause**, and `PR-44` records that nothing yet requires the letters earlier than the request that chases them |
| IS-32 | **Open — referred.** `CNB-C-117` compares export events against support case history and cannot see a disclosure that arrives through the disclosure register |
| IS-33 | **Open, and it still owes a number.** The library has not been enumerated for controls whose operating condition is that a record exists rather than what the record says. **RT-02 is what that shape produced**, `OFI-07` is the same question arriving from Northgate, and neither the close of the programme nor the issue of the report reduces what this entry owes |
| IS-34 | **Open — referred**, with `CA-07-04` attached and DEC-712 moving the sub-processor list currency check into the change record. One sub-processor change has passed through the corrected path |
| IS-35 | **Open — referred to the next control library issue.** A control statement and the procedure that carries it can drift apart silently, in either direction, with **no signal from the library side because the statement is correct.** The instance is `MAJ-01` and is closed; **the class can exist anywhere in a library of 150 rows and nothing has been enumerated.** `DP-38` |
| IS-36 | **Open, and a year from testable.** `CNB-C-150` has no population until the 2028 audit programme is set. **Not the certification body at the 2027-11 surveillance audit, not the Audit &amp; Risk Committee and not CloudNimbus can test it before then**, and ADR-0040 and DEC-811 accepted that in advance |

**There is still no `IS-28`.** The identifier was allocated in draft during the RT-02 investigation to a
matter closed by DEC-705 rather than referred, and it has not been reused. **Renumbering to close the gap
would make the gap invisible rather than absent**, and that has now been true across three phases.

**Two entries in the carried set are the ones a later reader should test this phase against.** `IS-33` and
`IS-35` both owe an enumeration, both have owed it for two phases, and neither is closed by the fact that
the programme produced its deliverables. **A finding referred at the end of a programme is a finding
somebody has to pick up at the start of the next one**, and the only thing this log can do about that is
refuse to let either of them disappear into a completed phase.

## 4. Dependencies

| ID | Dependency | Owner |
|---|---|---|
| DP-39 | **`IS-37` cannot be tested until the June and September 2027 CAL-06 occurrences have happened.** The test is not whether entries move — it is whether each review states on the record what population it had. A review that moves nothing and says why is the March review; a review that moves nothing and says nothing is the failure `IS-37` names, and the two are indistinguishable in a band count | Karim Haddad |

### Dependencies carried forward

| ID | Position at 2027-03-11 |
|---|---|
| DP-35 | **Discharged.** Management's written assertion and the representation letter under **O12** were provided on 2027-02-26, the description including the **DC9** disclosure was completed, and the report was issued on the planned date |
| DP-36 | **Discharged.** O2's thirty-day distribution ran from the actual issuance date of 2027-02-26 and completed on 2027-03-06. The board and Audit &amp; Risk Committee report of 2027-03-11 fell inside the same thirty days, as 01.11 §8 said it would, and the compression landed on the same four people |
| DP-37 | **Open and unchanged.** Closure of `MIN-01` to `MIN-04` depends on Northgate's verification of implementation, which falls at the **first surveillance audit — due within twelve months of the certification decision of 2027-01-20 and scheduled for 2027-11 under O11** |
| DP-38 | **Open and unchanged.** `IS-35`'s closure depends on the next control library issue carrying a requirement that a control statement and the procedure that carries it be compared, and on somebody enumerating where else the divergence could exist. **That issue does not belong to any phase of this programme** |

**Total new entries: 5** — 0 risks, 1 assumption, 3 issues, 1 dependency. **Eighteen programme risks, three
assumptions, seventeen issues and four dependencies are carried forward with their status and are not
renumbered.** **Three entries close** — `PR-51` on 155 completed deliveries, `PR-52` on an issued report, and
`IS-31` on letters that arrived — and **AS-39 is verified**. Nothing else closes, and ADR-0045 records why.

## Cross-References

| Document | Relationship |
|---|---|
| [09.08 Restricted Use and the Distribution](../09.08-restricted-use-and-the-distribution.md) | `PR-51`, closed on the 155 deliveries |
| [09.10 The Register at Close — Forecast Against Actual](../09.10-the-register-at-close-forecast-against-actual.md) | The register position and the March review |
| [09.11 The Programme Against Its Objectives](../09.11-the-programme-against-its-objectives.md) | `PR-48` and the OBJ-03 score |
| [09.12 Continuous Assurance and the Board Report](../09.12-continuous-assurance-and-the-board-report.md) | `IS-37`, `AS-42` and the sixteen open corrective actions |
| [09.13 What This Portfolio Claims and What It Does Not](../09.13-what-this-portfolio-claims-and-what-it-does-not.md) | §5, what is left open at the end of the first cycle |
| [adr/ADR-0045](../adr/ADR-0045-nothing-is-closed-to-make-the-close-out-tidy.md) | The closure rule this log applies |
| [governance/GOV-35](../governance/GOV-35-march-cal-06-register-review.md) | The March review at entry level |
| [governance/GOV-36](../governance/GOV-36-board-and-audit-risk-committee-report.md) | Resolution 4, which is `DP-39`'s test |
| [logs/decision-log.md](decision-log.md) | DEC-913 and DEC-914 |
| [logs/obligation-register.md](obligation-register.md) | O1 to O12 and their position at this vantage |
| [08-internal-audit-certification-and-type-ii-examination/logs/raid-log.md](../../08-internal-audit-certification-and-type-ii-examination/logs/raid-log.md) | PR-48 to PR-52, AS-39 to AS-41, `IS-35`, `IS-36` and DP-35 to DP-38 as Phase 08 recorded them |
| [07-confidentiality-privacy-and-third-party-assurance/logs/raid-log.md](../../07-confidentiality-privacy-and-third-party-assurance/logs/raid-log.md) | PR-42 to PR-47 and IS-29 to IS-34 |
| [06-availability-processing-integrity-and-operations/logs/raid-log.md](../../06-availability-processing-integrity-and-operations/logs/raid-log.md) | PR-35 to PR-41 and IS-19 to IS-27 |
| [04.12 Evidence Architecture](../../04-unified-control-framework-and-policy-architecture/04.12-evidence-architecture.md) | §6's limitations, which `AS-42` is the standing version of |
