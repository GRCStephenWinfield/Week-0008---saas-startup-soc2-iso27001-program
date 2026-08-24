# Obligation Register at Close — O1 to O12

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2027-L36 |
| Version | 1.0 |
| Date | 2027-03-11 |
| Owner | Tobias Lund |
| Approver | Marisol Vega |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


**The twelve obligations registered in `01.11` §4 in January 2026, at the close of the programme.** They are
commitments to identified external parties — 640 customers under the master services agreement, 118 under
its enterprise-tier amendment, 41 under the EU-residency addendum, Fairmount Ventures under the investor
rights agreement, Northgate Certification Services under the certification agreement, and Ashcombe &amp;
Doyle LLP under the engagement letter.

**This register is not the objectives.** 01.11 §2 drew the line and it holds here: the objectives in 01.07
are targets CloudNimbus set itself, and O1 to O12 are things other people can hold CloudNimbus to. It is
also **not the statutory register.** Legal obligations are managed separately under Tobias Lund, for a
reason that is the same reason this document reaches no legal conclusion: **neither the examination report
nor the certificate is a determination of compliance with any law**, and a register that mixed contractual
assurance obligations with statutory duties would invite exactly the inference this programme refuses to
support.

**This register is the evidence that the obligations drove the work.** Every phase of the programme was
shaped by at least one of the twelve, and §2 shows which.

## 1. The twelve at 2027-03-11

| ID | Obligation | Frequency or trigger | Position at 2027-03-11 |
|---|---|---|---|
| **O1** | Maintain a current SOC 2 Type II report covering at least Security, Availability and Confidentiality, available under non-disclosure on request, to all 640 | Annual | **Met for the first time.** The report of 2027-02-26 covers all five categories. **37 of the 522 non-enterprise customers requested it and 37 were delivered** |
| **O2** | Provide the report to each of the 118 enterprise-tier customers within thirty days of issuance | Within 30 days of issuance | **Discharged.** 118 delivered by **2027-03-06** against a deadline of 2027-03-28 |
| **O3** | Provide a bridge letter covering the gap between the report period end and the customer's fiscal year end, on request | On request | **Discharged for nine requests; two open.** Nine letters issued 2027-03-01 to 2027-03-10; two requests await gap periods that have not ended |
| **O4** | Notify the customer of a security incident affecting its data within forty-eight hours of determination | Within 48 hours | **Never engaged, and tested once.** 0 security incidents determined in the window from 10,336 alerts. The RT-02 condition was assessed against it and recorded not engaged |
| **O5** | Maintain a current sub-processor list; give thirty days' notice of a new sub-processor with a right to object | 30 days before engagement | **Engaged once and met.** Notice issued **2026-10-02** for a replacement outbound email delivery sub-processor effective **2026-11-05** — thirty-four days |
| **O6** | Assist the customer with a data subject request within ten business days | Within 10 business days | **Engaged 58 times and missed once.** One assembly took twelve business days; it is **exception 7** in Section IV and `CA-07-05` is open |
| **O7** | Delete or return customer data within thirty days of termination and certify completion | Within 30 days of termination | **Engaged nine times and met nine times.** Mean eleven days to certificate, longest nineteen, none late |
| **O8** | Keep personal data at rest within `eu-central-1` for the 41 residency customers | **Continuous** | **Held at every instant of the window and since.** The only continuous obligation in the register, and the most expensive one |
| **O9** | Report a material security incident to the board within five business days | Within 5 business days | **Never engaged.** `INC-2026-031` was an availability incident with no security characterisation. Recorded as not engaged at the management review of 2026-09-30 |
| **O10** | Notify the certification body of significant changes to the ISMS, its scope or the organisation within thirty days | Within 30 days of the change | **Engaged once and met.** The ISMS scope statement reissued **2026-10-28** and Northgate notified inside the thirty days |
| **O11** | Undergo a surveillance audit within twelve months of the certification decision | Annual | **Not yet due.** Certification decision **2027-01-20**; the audit is **scheduled for 2027-11**. A plan, not an outcome |
| **O12** | Provide management's written assertion and a representation letter at the conclusion of the examination | At each examination | **Discharged for this examination.** Both dated **2027-02-26** |

## 2. What the programme did about each, across nine phases

| ID | What the programme did, phase by phase | Evidence at close |
|---|---|---|
| **O1** | **Phase 01** registered it as a standing gap and refused to characterise it as a breach; **01.05** decided to examine five categories where O1 sets a floor of three, on commercial and honesty grounds and not because any contract required it; **02.12** traced **SC-10** to it; **Phases 03 to 07** built and operated the control set the report describes; **08.02** recorded enterprise customers asking, through Customer Success, when the report answering O1 would exist; **09.08** delivered it on request | EV-905, EV-909 |
| **O2** | **01.11 §8** worked the runway backwards from a planned issuance date in January 2026 and concluded that the distribution mechanism must exist before the report does; **01.10** gave its readiness to Ana-Sofia Cruz; the mechanism — recipient, confidentiality position, controlled channel — was assembled during the observation window and tracked as `PR-51` through Phases 07 and 08; **09.08** ran it in eight days | EV-909, `PR-51` closed |
| **O3** | **01.02** and **01.11 §4** recorded what a bridge letter is and that the parties who ask for it routinely misunderstand it; **08.13** carried it as owed and unwritten; **09.09** issued nine, every one of which had `CNB-C-150`'s admission to disclose, and **ADR-0044** fixed the form so the field cannot be left blank | EV-911, EV-912 |
| **O4** | **03.06 TP-22** built the notification workflow with the forty-eight-hour clock starting at determination; **02.12** registered it as **SC-02**; **07.03**, **GOV-26** and **ADR-0032** assessed the RT-02 over-retention against it and recorded the determination that it was **not engaged** — nothing left `eu-central-1`, no access outside the normal processing path occurred, and the disclosure register held no entry | GOV-26, ADR-0032 |
| **O5** | **02.10** established the sub-processor population — 11 of 84 vendors, with both subservice organisations among them; **03.06 TP-19** blocked engagement until the notice had issued and the objection period was recorded; **CAL-08** reviewed it quarterly under Tobias Lund; **DEC-712** moved the list's currency check into the change record after Phase 07 found the check depended on somebody remembering | EV-909 alongside the 2026-10-02 notice; `CA-07-04` open |
| **O6** | **01.05** established that an end user's request is routed through their employer; **02.11 CUEC-08** made that a complementary user entity control; **03.06 TP-23** built the intake, routing and ten-business-day tracking under the Data Protection Officer; **07.06** reported 58 requests with one at twelve business days, and **ADR-0034** recorded management's determination that the miss was not a significant failure for DC4 purposes — **a determination that is management's, is written down, and which the service auditor was free to view differently** | Section IV exception 7; ADR-0034; `CA-07-05` open |
| **O7** | **02.07** registered **RT-08**; **02.11** refused a proposed complementary user entity control asking customers to verify deletion, on the ground that a commitment cannot be discharged by asking the counterparty to check it; **04.06** published `CNB-C-118`; **07.01 §3.1** reported nine terminations and nine certificates, and said plainly that `CNB-C-118` is the whole of C1.2 on CloudNimbus's side with no compensating control behind it | 07.01 §3.1; EC-18 deletion certificates |
| **O8** | **02** partitioned the `cnb-security` log archive by region with EU-scoped keys and established that `eu-central-1` recovers **intra-region across availability zones only**; **03.07 §3.2** recorded **R-20** as immovable because the treatment that would reduce it — replication outside the region — **is the breach of the commitment that created the customer relationship**; **06** deliberately did not fail `eu-central-1` over at the CAL-10 exercise of 2026-08-19; **08.09** paid twelve days to assemble the residency evidence because **the evidence store deliberately does not aggregate across the boundary** | EV-823 in Phase 08; R-20 held at 10 |
| **O9** | **01.10** registered Fairmount Ventures' standing interest and Simone Bracco as board observer; **08.02** and **GOV-29** took it as management review input e) and **recorded it as not engaged**, because it runs on a material security incident and there were none; **GOV-36** records Simone Bracco's attendance at the board report of 2027-03-11 on the same standing | GOV-29 input e); GOV-36 |
| **O10** | **01.11 §4** named it **the obligation most likely to be missed quietly**, because a significant change does not arrive labelled as a certification matter, and put a change-notification item on the Trust Committee's monthly standing agenda so the question is asked rather than remembered; **03.04 R-32** carries the failure mode; **DEC-804** reissued the ISMS scope statement on 2026-10-28 and notified Northgate inside thirty days; the Statement of Applicability reissue of 2026-10-30 was considered against O10 and determined not to be a change to the ISMS, its scope or the organisation | EV-807 in Phase 08; R-32 held at 4 |
| **O11** | **01.03** set out the certification route and the three-year cycle; **08.13** and **DEC-814** recorded the certificate accepted and the first surveillance audit scheduled for **2027-11**, within twelve months of the certification decision of **2027-01-20**; **09.12** reports it as a plan and as nothing else. `DP-37` makes the closure of the four minor nonconformities depend on it | Certificate at EV-815 in Phase 08; `DP-37` open |
| **O12** | **01.02** recorded it as something CloudNimbus owes Ashcombe &amp; Doyle rather than the other way round; **08.13** carried it as owed and unwritten on 2027-02-05; **09.01** delivered the written assertion at Section II and the representation letter as a **separate instrument** the reader never sees, both dated 2027-02-26, with **two subsequent events represented** | EV-901, EV-902 |

## 3. O1, and the gap that closed

**O1 is the reason the board funded the programme, and it had been unmet since the enterprise master
services agreement template was adopted in 2024.**

The obligation describes a **steady state**: a *current* SOC 2 Type II report covering at least Security,
Availability and Confidentiality, available under non-disclosure on request. What CloudNimbus held from 2025
was a **Type I** from Pinehurst Assurance Group covering **Security alone**, as of 2025-05-31 — a statement
about the suitability of design of controls at a point in time, with no tests of operating effectiveness
behind it and therefore no possibility of a test exception. The gap was met with a customer-by-customer
conversation for eighteen months.

**01.11 §3 recorded that against the obligation rather than letting the register imply a position the
company had not reached, and it declined to call it a breach.** Whether a contract has been breached is a
legal conclusion, no compliance document should reach one, and nothing in nine phases has.

**The gap is closed on the obligation's own terms.** The report covers all five categories for a six-month
period, exceeding O1's floor of three, and it is available under non-disclosure on request to all 640.
**Closed is not permanent.** O1 is annual and the word in it is *current*; the 2027 observation window runs
to 2027-12-31, the report that answers O1 in 2028 does not exist, and the state O1 describes has to be
occupied continuously rather than reached once.

## 4. The three that were never engaged, and why that is a position

**O4, O9 and — so far — O11 were never engaged.** An obligation that never fires produces no artefact and is
the easiest row in any register to leave blank, which is why each of the three carries a determination
rather than a silence.

**O4 fired at nothing because nothing determined was a security incident.** 10,336 alerts were acknowledged
and dispositioned across the window and the disposition on each is the record that says the analyst decided
it was not one. **A zero produced by a detective control with a five-figure population is a different kind
of zero from one produced by silence.** And O4 was tested once against a real condition: **GOV-26** assessed
the RT-02 over-retention against SC-02 and O4 and wrote down why the clock did not start.

**O9 fired at nothing for a narrower reason and the reason is on the record.** `INC-2026-031` was a
seventy-one-minute availability incident with no security characterisation, and the clause 9.3 management
review of 2026-09-30 recorded O9 as **not engaged** at input e) rather than leaving it unmentioned. The
certification timetable was reported to the board under the ordinary CAL-04 cadence, not under O9, and the
distinction matters because reporting under an obligation that is not engaged is how an obligation's trigger
quietly widens.

**O11 has not fired because it is not yet due.** The audit is scheduled for 2027-11 and **nothing after
2027-03-11 is an outcome in this record.**

## 5. The two that were close, and the one that was missed

**O5 was met by four days.** Thirty-four days' notice against a thirty-day commitment, for a sub-processor
whose replacement had a commercial date attached to it. Four days is the whole of the margin, the notice
period runs from despatch rather than from a decision, and `CA-07-04` is open on the mechanism that
determines when the clock starts.

**O10 was met once and remains a judgement rather than a control.** Karim Haddad decides what counts as a
significant change to the ISMS, its scope or the organisation; the Trust Committee's standing agenda item
means the question is asked monthly; and nothing detects a change that nobody recognised as one. **01.11 §4
said this in January 2026 and it is still true**, which is a statement about the shape of the obligation and
not about the fourteen months.

**O6 was missed once in fifty-eight.** One data subject request assembled in twelve business days against
ten, because the individual had changed employer, both employers use CloudNimbus, and `CNB-C-129`'s assembly
is tenant-scoped by the same predicate that keeps one employer's data away from another. It is **exception 7
in Section IV**, `CA-07-05` is open, and 07.06 records that a cross-employer assembly path which does not
depend on either tenant seeing the other's data is harder than it sounds and may not have a good answer.
**The obligation that was missed was missed by the control that exists to protect the people the obligation
protects**, and no document in this programme has offered that as a defence.

## 6. What this register does not do

**It reaches no legal conclusion about any of the twelve.** Not about O1's eighteen months, not about O6's
twelve business days, and not about anything else. **Whether a contract has been breached is a question for
Tobias Lund in a different capacity and for a forum that is not this one.**

**It does not treat a discharged obligation as an achievement.** Delivering 118 reports inside a thirty-day
window is the ordinary condition of a contract. The register records discharge because non-performance would
be a failure to an identified party, not because performance is a result.

**And it does not close.** Eleven of the twelve recur — annually, on request, on a trigger, or continuously
— and the twelfth recurs at the next examination. **An obligations register that closed at the end of a
programme would be a register that had confused the programme with the company.**

## Cross-References

| Document | Relationship |
|---|---|
| [09.08 Restricted Use and the Distribution](../09.08-restricted-use-and-the-distribution.md) | O1 and O2, and the 155 deliveries |
| [09.09 The Bridge Letter](../09.09-the-bridge-letter.md) | O3, nine issued and two open |
| [09.12 Continuous Assurance and the Board Report](../09.12-continuous-assurance-and-the-board-report.md) | O9 and O11, and the surveillance audit as a plan |
| [09.13 What This Portfolio Claims and What It Does Not](../09.13-what-this-portfolio-claims-and-what-it-does-not.md) | Why none of these discharges is a determination of compliance with any law |
| [logs/evidence-index.md](evidence-index.md) | EV-922, and the artefacts each row cites |
| [logs/raid-log.md](raid-log.md) | `PR-51` closed on O2, `IS-31` closed, and `DP-37` open on O11 |
| [governance/GOV-36](../governance/GOV-36-board-and-audit-risk-committee-report.md) | O9's standing interest and O11's schedule as reported |
| [01.11 Assurance Calendar and Obligations](../../01-program-foundation-dual-framework-governance/01.11-assurance-calendar-and-obligations.md) | O1 to O12 as registered, §3's note on O1, §4's four second looks and §8's runway |
| [02.12 Principal Service Commitments and System Requirements](../../02-system-scope-isms-boundary-and-description/02.12-principal-service-commitments-and-system-requirements.md) | SC-02, SC-03, SC-04, SC-08, SC-09 and SC-10, the commitments six of these obligations became |
| [07.01 The Confidentiality Criteria and the Single Control](../../07-confidentiality-privacy-and-third-party-assurance/07.01-the-confidentiality-criteria-and-the-single-control.md) | O7, nine terminations and nine certificates |
| [07.06 Access, Correction and Data Subject Requests](../../07-confidentiality-privacy-and-third-party-assurance/07.06-access-correction-and-data-subject-requests.md) | O6, and the assembly that took twelve business days |
| [GOV-26](../../07-confidentiality-privacy-and-third-party-assurance/governance/GOV-26-rt02-over-retention-investigation-and-notification.md) | O4, O6 and O7 tested against a real condition and recorded not engaged |
| [GOV-29](../../08-internal-audit-certification-and-type-ii-examination/governance/GOV-29-clause-9-3-management-review.md) | O9 recorded as not engaged at input e) |
| [03.07 Risk Acceptance and Residual Risk](../../03-risk-assessment-treatment-and-statement-of-applicability/03.07-risk-acceptance-and-residual-risk.md) | §3.2, O8 producing the risk it cannot treat |
