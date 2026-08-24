# GOV-32 — December CAL-06 Risk Register Review

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2027-G32 |
| Version | 1.0 |
| Date | 2027-02-05 |
| Owner | Karim Haddad |
| Approver | Elise Fontaine |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


## 1. Matter

The **CAL-06** quarterly risk register review of **2026-12-29**, chaired by Karim Haddad, secretary Rahul
Bhargava, with risk owners Wes Delacroix, Junia Okonkwo, Devon Ashby, Tobias Lund, Grete Lindqvist,
Hannah Brill, Ana-Sofia Cruz and Marisol Vega present or represented, and Elise Fontaine in attendance for
the High-band items. Four hours.

It is the **third review of a register** and the fourth CAL-06 occurrence — the 2026-03 occurrence reviewed
the risk assessment **method**, because no register existed until the baseline of 2026-04-10 — and it is the
last inside the observation window, which closed two days later on **2026-12-31**. The two register reviews
before it, **2026-06-15** and **2026-09-29**, produced two movements between them: one down in June, R-37
from 4 × 5 = 20 to 2 × 5 = 10, and one up in September, R-08. **This one produced nineteen.** R-24's upward
move was not made at a review at all; it fell **between** them, on 2026-10-28.

**`CNB-C-143` is the control this occurrence evidences.** Every register entry is re-tested against the
movement rules, additions on evidence are admitted, treatment options are re-confirmed, and the Statement of
Applicability is reissued where a determination changes. **No determination changed at this review, so no
reissue arises**; the current issue is the one of 2026-10-30 under DEC-803.

## 2. Position entering and leaving

| Band | Entering | Leaving |
|---|---|---|
| High | 8 | **0** |
| Moderate | 18 | **17** |
| Low | 12 | **21** |
| Total | **38** | **38** |

**19 entries moved · 7 were held with a stated reason · 12 already-Low entries did not move.**
19 + 7 + 12 = 38. **Nothing was closed and nothing was removed.**

The eight entering High are the seven from the 2026-04-10 baseline plus **R-08**, raised to 5 × 3 = 15 at
the September review under DEC-611. **R-37** entered Moderate at 2 × 5 = 10, having been re-rated on
2026-06-15 after the isolation remediation was retested clean; **R-38** entered Moderate at 3 × 4 = 12,
admitted between reviews on 2026-10-23 under DEC-707; and **R-24** entered at 3 × 4 = 12, re-rated **upward**
between reviews on 2026-10-28 under DEC-715.

## 3. The register, entry by entry

**Every movement states the population it moved on.** A proposal supported by a completed treatment item
and nothing else was sent back; a proposal supported by the window's occurrences against the control was
taken. That rule is the reason this table has a Basis column and the reason the column never reads
"treatment complete".

| ID | Owner | Entering | Leaving | Move | Basis |
|---|---|---|---|---|---|
| R-01 | Junia Okonkwo | 4 × 5 = 20 High | **2 × 5 = 10 Moderate** | Two steps | The R-37 remediation of 2026-05-29, retested 2026-06-11, **and** 41 crafted access paths in October including 11 variants of the original vector, none returning another tenant's data; 6 statically-constructed queries rejected by the build-time check during the engagement |
| R-02 | Grete Lindqvist | 3 × 5 = 15 High | **2 × 5 = 10 Moderate** | One step | 58 reconciliation exceptions across the window, 56 cleared inside the two-business-day service level; `CNB-C-111`'s band check operating on every export cycle — 5,171 files in the third quarter alone, 0 rejected, 31 held and released or re-issued, no cut-off delayed |
| R-03 | Wes Delacroix | 3 × 5 = 15 High | **2 × 5 = 10 Moderate** | One step | The phishing-resistant factor `CNB-C-032` requires on every path reaching production, and the just-in-time broker's time-boxed roles with a second-engineer approval and a recorded session — 4 break-glass uses in the third quarter, each evidenced |
| R-04 | Wes Delacroix | 4 × 4 = 16 High | **3 × 4 = 12 Moderate** | One step | The Halcyon Identity service availability commitment and CSOC-14. **One step and no more**: CloudNimbus operates none of Halcyon's controls, and a service credit allocates consequence rather than reducing frequency |
| R-05 | Devon Ashby | 4 × 4 = 16 High | **2 × 4 = 8 Moderate** | Two steps | DEC-512's region-partitioned `cnb-security` archive with EU-scoped keys, and a window in which no personal data of an EU-residency tenant left `eu-central-1`. Eight is the floor |
| R-06 | Devon Ashby | 4 × 4 = 16 High | **3 × 4 = 12 Moderate** | One step | `CNB-C-149`, 65 of 65 nights, 0 alerts. **One step and not two** — see §5 |
| R-07 | Junia Okonkwo | 3 × 5 = 15 High | **2 × 5 = 10 Moderate** | One step | `CNB-C-083`'s quarterly check, twice in the window, confirming no production data copied into non-production; SR-12 holds |
| R-08 | Junia Okonkwo | 5 × 3 = 15 High | **3 × 3 = 9 Moderate** | Two steps | `CA-06-03`'s corrected emergency path, six weeks of evidence. **Two steps and not three — DEC-810** |
| R-09 | Wes Delacroix | 4 × 3 = 12 Moderate | **Held at 12** | — | **Its event occurred.** Access provisioned ahead of recorded manager approval, 2 of 40 in the window |
| R-10 | Wes Delacroix | 4 × 3 = 12 Moderate | **2 × 3 = 6 Low** | Two steps | Both quarterly certifications completed on time and evidenced — 2026-07-27 and 2026-10-09. **A late revocation is not a late review** — see §5 |
| R-11 | Wes Delacroix | 3 × 4 = 12 Moderate | **2 × 4 = 8 Moderate** | One step | `CNB-C-060`'s daily posture evaluation across 7 AWS accounts and `CNB-C-054`'s 15-minute automatic reversion; no misconfiguration reached a customer-visible state. Eight is the floor |
| R-12 | Junia Okonkwo | 3 × 4 = 12 Moderate | **2 × 4 = 8 Moderate** | One step | `CNB-C-061` and `CNB-C-085` across 312 changes; no Critical dependency finding past its 14-day target. Eight is the floor |
| R-13 | Karim Haddad | 4 × 3 = 12 Moderate | **2 × 3 = 6 Low** | Two steps | The phishing-resistant factor `CNB-C-032` requires on every path reaching production, operating across the window. **The control changed the path, not the yield** |
| R-14 | Ana-Sofia Cruz | 4 × 3 = 12 Moderate | **2 × 3 = 6 Low** | Two steps | **Not the 411 confirmations.** `CNB-C-111`'s band check — CloudNimbus's own preventive control, sitting in front of the customer step CUEC-05 describes — operating on every export cycle of the window. **The weakest of the nineteen and recorded as such** |
| R-15 | Devon Ashby | 4 × 2 = 8 Moderate | **3 × 2 = 6 Low** | One step | `CNB-C-128`'s monthly residue confirmation, six occurrences, the residue window recorded on every deletion certificate |
| R-16 | Tobias Lund | 3 × 3 = 9 Moderate | **2 × 3 = 6 Low** | One step | ADR-0035's three independent flags in the vendor register, and 24 Tier 1 readings recording what each artefact does and does not cover |
| R-17 | Tobias Lund | 3 × 3 = 9 Moderate | **2 × 3 = 6 Low** | One step | The 2026-10-02 sub-processor notice issued at 34 days against a 30-day commitment, and DEC-712 moving the currency check to the change record |
| R-18 | Wes Delacroix | 3 × 3 = 9 Moderate | **Held at 9** | — | **Its event occurred.** `INC-2026-031`, 2026-09-08, 71 minutes; SC-01 missed in September for `us-east-1` |
| R-19 | Wes Delacroix | 2 × 5 = 10 Moderate | **Held at 10** | — | **Immovable.** Likelihood 1 is reserved and the consequence has not changed. The 2026-08-19 exercise is an exercise, not a real event |
| R-20 | Wes Delacroix | 2 × 5 = 10 Moderate | **Held at 10** | — | **Immovable.** `eu-central-1` still recovers intra-region only; obligation O8 is unchanged |
| R-21 | Karim Haddad | 3 × 3 = 9 Moderate | **2 × 3 = 6 Low** | One step | `CNB-C-065`'s immutable region-partitioned archive across 184 days with no interruption to log delivery alerted by `CNB-C-066`. The June reconstruction is not part of the basis — it is the event R-21 describes |
| R-22 | Karim Haddad | 3 × 3 = 9 Moderate | **2 × 3 = 6 Low** | One step | 0 security incidents in 10,336 alerts, and `CNB-C-072`'s notification path exercised at the tabletop of 2026-10-15. **A path exercised is weaker than a path used** |
| R-23 | Tobias Lund | 3 × 3 = 9 Moderate | **2 × 3 = 6 Low** | One step | 58 data subject requests, 57 assembled inside 10 business days |
| R-24 | Tobias Lund | 3 × 4 = 12 Moderate | **Held at 12** | — | **Its event occurred**, and it was re-rated upward on 2026-10-28 under DEC-715 |
| R-25 | Marisol Vega | 3 × 2 = 6 Low | **Held at 6** | — | Already Low. The evidence architecture's single-person dependency is unchanged |
| R-26 | Wes Delacroix | 2 × 3 = 6 Low | **Held at 6** | — | Already Low, and at likelihood 2 |
| R-27 | Hannah Brill | 2 × 3 = 6 Low | **Held at 6** | — | Already Low, and at likelihood 2. `CNB-C-038`'s four-hour de-provisioning operated on every leaver in the window |
| R-28 | Hannah Brill | 2 × 2 = 4 Low | **Held at 4** | — | Already Low, and **retained** under 03.06 §2 |
| R-29 | Tobias Lund | 2 × 3 = 6 Low | **Held at 6** | — | Already Low, and at likelihood 2 |
| R-30 | Rahul Bhargava | 3 × 2 = 6 Low | **Held at 6** | — | Already Low. **`MIN-01` and `NC-INT-01` are the event R-30 describes**, twice, so no reduction was proposed |
| R-31 | Hannah Brill | 2 × 2 = 4 Low | **Held at 4** | — | Already Low, and at likelihood 2 |
| R-32 | Rahul Bhargava | 2 × 2 = 4 Low | **Held at 4** | — | Already Low. `AOC-02` engaged it; the scope statement was reissued 2026-10-28 and Northgate notified inside O10's thirty days |
| R-33 | Devon Ashby | 2 × 3 = 6 Low | **Held at 6** | — | Already Low, and at likelihood 2. TP-31 was proven at the 2026-08-19 exercise |
| R-34 | Wes Delacroix | 3 × 2 = 6 Low | **Held at 6** | — | Already Low. `CNB-C-064` ran six times with every discrepancy resolved |
| R-35 | Devon Ashby | 2 × 3 = 6 Low | **Held at 6** | — | Already Low, and at likelihood 2. `IS-29` is open against the leave-type inference question |
| R-36 | Hannah Brill | 2 × 2 = 4 Low | **Held at 4** | — | Already Low, and at likelihood 2 |
| R-37 | Junia Okonkwo | 2 × 5 = 10 Moderate | **Held at 10** | — | **Immovable.** Already at likelihood 2; impact 5 cannot be rated Low |
| R-38 | Devon Ashby | 3 × 4 = 12 Moderate | **Held at 12** | — | **Its event occurred**, and it was admitted on that event on 2026-10-23 |

## 4. Acceptance and authority

**No High residual is retained at the close of this review**, so `03.02` §6's escalation to the Chief
Executive Officer is not engaged by any leaving rating. It was engaged by the **entering** position, and
Elise Fontaine attended for the eight High-band items on that footing.

Each risk owner accepted the residual for the entries they own, under clause 6.1.3 f), and Karim Haddad
accepted alongside for every entry whose band is Moderate, per `03.02` §6. **The acceptances are recorded
against the entries and not against the summary**, because a signature on a band count is a signature on
nothing.

**`PR-40`'s reporting limb is discharged.** `03.02` §6 requires a retained High residual to be both minuted
by the Chief Executive Officer **and** reported to the Audit &amp; Risk Committee, and 06.13 §4 recorded that
only the first had happened for R-08's September retention. CAL-03's Q4 occurrence carried it, and R-08 has
left the High band at this review.

## 5. Two movements the review had to defend

**R-06 moved one step, against its own Phase 03 forecast of 2 × 4 = 8.** R-06 was tested upward on
2026-10-28 and held under DEC-708, on the ground that the RT-02 job did not fail — it succeeded, on all
sixty-eight nights, and reported that it had. That reasoning cuts both ways. **A two-step move would place a
silent deletion failure at *foreseeable but not expected within the certification cycle* in the same quarter
the register admitted an entry for a job that deleted nothing for sixty-eight nights.** The single step
rests on `CNB-C-149` and on nothing else, and `CNB-C-149` has sixty-five of the window's one hundred and
eighty-four nights.

**The register moved R-10 on the same day, and on the same evidence, that produced the exception the
examination recorded against the same control three weeks later.** This review sat on 2026-12-29 and asked
what had happened to the revocations; the CC6 access family was tested in fieldwork's second week,
**2027-01-18 to 01-22**, and no part of the examination sat inside the observation window. R-10 reads *a
quarterly access review is completed late, or completed and not evidenced*, and neither occurred: both
certifications were completed on time and evidenced, producing **24 EC-01 units** across twelve systems and
two quarters in the unit `04.12` declares. What was late was three of the **47** revocations arising, which
is `CNB-C-040`'s **other limb** and is a test exception against **CC6.3**. **A late revocation is not a late review.** Recording it against R-10 would leave the
register unable to distinguish two failures that are found by different tests, owned at different points in
the process, and remedied differently — and the corrective action `CA-08-02` addresses the gate on review
closure, which is not a thing R-10 is about.

## 6. The objection, minuted

Rahul Bhargava put the objection as secretary, before the movements were taken rather than after, and it is
minuted in these terms.

> Nineteen entries moving at one meeting is what a rubber stamp looks like from outside. A register that
> moves once a year in a single block has less credibility than one that moves steadily, whatever the
> underlying evidence, and the reviews that declined to move will be read as having been overruled by this
> one rather than as having been right at the time.

**The review's answer is that the September refusals and the December acceptances have to be read together
or neither means anything.** Every earlier review stated on the record that it was waiting for a
population; this is the first review at which the population exists. The four conditions the chair attached
— every movement states its population, every two-step movement is argued separately, seven entries are
held against the same evidence, and R-06's divergence from its own forecast is recorded rather than
reconciled away — are the working the objection is entitled to.

**ADR-0039** carries the decision and the objection together.

## 7. What this review did not do

**It performed no comparison against the Phase 03 close forecast.** 0 · 16 · 22 was published on 2026-04-24
under ADR-0015 after the harness proved it reachable, and marking the actual against it is **Phase 09's**.
A review that both produced a close position and graded it against its own forecast would be doing two
jobs in one minute.

**It admitted no new risk.** Nothing in the window's final quarter disproved an assumption the register did
not already carry, and ADR-0029's doctrine holds: a register that grows every time something happens is a
log, not a register.

**And it offered no view on the service auditor's evaluation of anything.** The observation window had two
days left to run at this meeting, fieldwork had not opened, and no document produced at this review says
what any of it will be found to mean.

## Cross-References

| Document | Relationship |
|---|---|
| [08.08 The Observation Window Closes](../08.08-the-observation-window-closes.md) | §5, and the window evidence every Basis cell draws on |
| [08.11 The Nine Test Exceptions](../08.11-the-nine-test-exceptions.md) | Exceptions 8 and 9, which R-09 and R-10 sit against |
| [08.13 Phase Summary and Transition](../08.13-phase-summary-and-transition.md) | The close position carried forward |
| [adr/ADR-0039](../adr/ADR-0039-nineteen-entries-move-at-one-review.md) | The decision and the objection |
| [logs/decision-log.md](../logs/decision-log.md) | DEC-809 and DEC-810 |
| [logs/raid-log.md](../logs/raid-log.md) | The register position and `PR-40` |
| [diagrams/08-the-register-from-baseline-to-close.md](../diagrams/08-the-register-from-baseline-to-close.md) | Baseline to close in one view |
| [03.02 Risk Criteria and Scoring Scale](../../03-risk-assessment-treatment-and-statement-of-applicability/03.02-risk-criteria-and-scoring-scale.md) | The anchors, the eight floor and §6's acceptance authority |
| [03.04 Risk Register — Baseline](../../03-risk-assessment-treatment-and-statement-of-applicability/03.04-risk-register-baseline.md) | The thirty-six entries as published, and DEC-306 |
| [03.06 Risk Treatment Plan](../../03-risk-assessment-treatment-and-statement-of-applicability/03.06-risk-treatment-plan.md) | The four retained risks and the treatment options re-confirmed here |
| [03.07 Risk Acceptance and Residual Risk](../../03-risk-assessment-treatment-and-statement-of-applicability/03.07-risk-acceptance-and-residual-risk.md) | The forecast Phase 09 marks this against |
| [04.07 ISO-Only Controls and ISMS Machinery](../../04-unified-control-framework-and-policy-architecture/04.07-iso-only-controls-and-isms-machinery.md) | `CNB-C-143`, the control this occurrence evidences |
| [governance/GOV-27](../../07-confidentiality-privacy-and-third-party-assurance/governance/GOV-27-q4-privacy-review-and-the-admission-of-cnb-c-149.md) | R-24 moved upward and R-06 held, in October |
| [06.13 Phase Summary and Transition](../../06-availability-processing-integrity-and-operations/06.13-phase-summary-and-transition.md) | The September review, R-08's upward movement and `PR-40` |
