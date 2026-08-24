# Evidence Index — Phase 07

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-L28 |
| Version | 1.0 |
| Date | 2026-11-27 |
| Owner | Rahul Bhargava |
| Approver | Karim Haddad |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


Twenty-three artefacts. Phase 06's index was the first to include a record of a control that did not
operate. **This one includes a record of a control that operated, reported success, and was wrong** — which
is a harder unit to describe and an easier one to produce, because the store already held sixty-eight copies
of it before anybody knew what they were.

| ID | Artefact | Owner | Location |
|---|---|---|---|
| EV-701 | `CNB-C-127` completion records for the period, **including the sixty-eight consecutive "rows deleted: 0" records on the RT-02 job in `eu-central-1`**, retained exactly as produced | Devon Ashby | 07.03 |
| EV-702 | The 2026-08-17 migration change record for the geolocation capture table in `eu-central-1` — the new partitioned relation, the copy, the **truncation of the original** and the name swap — and the generated RT-02 job definition, showing the **object identifier** it still resolved the rule to | Devon Ashby | 07.03 |
| EV-703 | The corrected job deployed **2026-10-24**, re-generated against the live relation, the catch-up deletion run of **2026-10-25** removing 1,847,206 records, and the completion record verified **2026-10-27** under `CNB-C-127`'s catch-up path — **together with the corroboration of the count**: pre-deletion partition row counts taken on 2026-10-25 before the run, reconciled to the completion record on 2026-10-27 and agreeing exactly. **The count does not rest on the class of record that was wrong for sixty-eight nights**, and the unit holds both sides of the reconciliation rather than the conclusion | Devon Ashby | 07.03 |
| EV-704 | The `CNB-C-128` residue tracking record for the catch-up run, with the 35-day window from 2026-10-25 **expiring 2026-11-29** and the certification held open until it does | Devon Ashby | 07.03 · ADR-0033 |
| EV-705 | The notification despatch record for all **41** EU-residency customers, 2026-10-26 — the 34 with affected records and the 7 told they had none — and the minuted dissent | Tobias Lund | governance/GOV-26 |
| EV-706 | The DC4 disclosure draft **on both limbs** — the first on `CNB-C-127`'s alert condition, the second on the failure to achieve **SR-08** — written at the vantage rather than assembled later, and to be re-confirmed at period end | Rahul Bhargava | 07.03 · ADR-0028 |
| EV-707 | `CNB-C-149`'s nightly occurrences from 2026-10-28 — **31 of the window's 65 nights run, 0 alerts raised** — together with the eligible-population computation for each night | Devon Ashby | 07.02 · 07.12 |
| EV-708 | GOV-27, the `CNB-C-133` quarterly privacy review minute of **2026-10-28**, including the admission of `CNB-C-149` and the R-06 test | Tobias Lund | governance/GOV-27 |
| EV-709 | The privacy case register for the period — **14 enquiries, 0 complaints**, 12 routed to the employer inside two business days with the routing timestamped, on the boundary CUEC-08 draws rather than as CUEC-08 operating, 2 answered directly | Tobias Lund | 07.08 |
| EV-710 | The disclosure register for the period — **6 entries** with requester, scope, stated basis and date on each | Tobias Lund | 07.07 |
| EV-711 | The sub-processor change notice of **2026-10-02** and its despatch record to 640 customers, with the effective date of 2026-11-05 | Tobias Lund | 07.07 · templates |
| EV-712 | The two customer objections and their disposition — the withdrawal of 2026-10-22 following the objector's own security review, and the platform email suppression of 2026-10-30 under DEC-709 | Ana-Sofia Cruz | 07.07 |
| EV-713 | The signed `CNB-C-120` annual notice reconciliation of **2026-11-19** against PD-01 to PD-12, RT-01 to RT-08 and the published sub-processor list, with the single divergence recorded on its face | Tobias Lund | governance/GOV-28 |
| EV-714 | The corrected published sub-processor list of **2026-11-20**, and the amended change record carrying the currency check under DEC-712 | Tobias Lund | 07.07 |
| EV-715 | GOV-25, the CAL-08 review record of **2026-10-07**, with the register extract showing the three independent flags and the tier axis | Tobias Lund | governance/GOV-25 |
| EV-716 | The `CNB-C-092` Tier 1 assurance readings for **both** refreshes inside the window — twelve on **2026-07-30** and twelve on **2026-10-07**, **8 / 2 / 1 / 1** at each — every one recording what the artefact covers and does not cover, **including the two readings for the vendor holding neither**. `D-07-02`'s population of **2 of 24** is read off this unit | Tobias Lund | 07.09 · templates |
| EV-717 | The complementary user entity control enumeration for **AWS (58)** and **Halcyon Identity (19)**, with the disposition of each and the library row cited against every one judged already performed | Rahul Bhargava | 07.10 |
| EV-718 | The `CA-07-01` assignment record of **2026-10-23** for the two obligations with no owner, and the cadence set for each | Wes Delacroix | 07.10 · DEC-703 |
| EV-719 | The two bridge letters, **both requested 2026-10-09** — Halcyon Identity's received **2026-11-06** at twenty-eight days, covering to 2026-10-31; AWS's received **2026-11-13** at thirty-five days, covering 2026-10-01 to 2026-10-31. The request date is held on the unit because the interval is part of what each letter is worth | Rahul Bhargava | 07.11 |
| EV-720 | `CNB-C-117`'s Q4 export review of **2026-10-14** — 41 events above the 5,000-row threshold, 39 matched to a support case, **2 not**. Both were traced the same day to bulk exports run on 2026-09-30 and 2026-10-02 at two tenants' written instruction in response to those customers' own auditors, **each matching an entry in the disclosure register and neither matching a support case**. `IS-32` | Karim Haddad | 07.01 |
| EV-721 | The **nine** `CNB-C-118` termination deletion completion certificates, with elapsed days against the 30-day commitment — mean 11, longest 19 | Devon Ashby | 07.01 |
| EV-722 | The **31** data subject request assistance records, with received, due and delivered dates on each, **including the one delivered on the twelfth business day**, and the **412** correction requests with their 389 approvals and 23 declines | Tobias Lund | 07.06 |
| EV-723 | The Q4-to-date operating record — 97 changes, 3,492 alerts, 121 high-severity dispositions, the restore tests of 2026-10-21 and 2026-11-18, the CAL-07 access review of 2026-10-09, the `CNB-C-099` module re-approval of 2026-10-20 with three resources rebuilt, the `CNB-C-088` plan reissue of 2026-11-05, the `CNB-C-116` key rotation of 2026-11-10 across all three regions, the CAL-16 exercise of 2026-11-12, and the single window occurrences of `CNB-C-076` on **2026-10-15** and `CNB-C-073` on **2026-11-10** | Rahul Bhargava | 07.12 |

## Three of these units, and what each of them holds

**EV-701 is sixty-eight identical lines.** Each is a
valid completion record, correctly formatted, produced by a control operating exactly as described, stating
that zero rows were deleted. Individually every one of them is unremarkable and none of them is wrong. **In
sequence they are the whole finding**, and nothing in the library was looking at the sequence. The class was
retained unaltered rather than annotated, because a record that has had an explanation attached to it after
the fact is no longer the record that was produced at the time — and the value of these sixty-eight is
precisely that they were produced by a system that believed everything was fine.

**EV-707 records an empty population as a unit in its own right.** `CNB-C-149` has run 31 nights and raised
0 alerts, and the store holds the nightly eligible-population computation for each of those nights rather
than only the exceptions. That is deliberate: the alerting limb has never fired, and an evidence class that
retained only alerts would hold nothing at all for a control that is working. Phase 06 had to extend a class
to hold "the control did not operate"; this phase had to extend one to hold "the control operated and had
nothing to say."

**EV-716 includes the reading for the vendor that holds nothing.** Eleven of the twelve Tier 1
readings record what an artefact covers; the twelfth records that there is no artefact, when the last one
lapsed, and what was concluded. **A reading form that can only be completed when a document exists produces
a gap in the evidence exactly where the finding is**, and the vendor assurance reading template now demands
the negative case be filled in rather than skipped.

## What this index does not contain

There is no artefact here for **ISO Stage 1**, for the **second penetration test**, or for the **clause 9.2
internal audit** and **clause 9.3 management review** of September. All four fall inside a period this phase
or Phase 06 reports on and all four belong to **Phase 08**. They are named in 07.00, in 07.13 §7 and here,
and the second penetration test is also named in 07.12 §4 because `CNB-C-026`'s annual occurrence is the
library's to report. **Nothing about what any of them examined or found appears in this phase**, which is
the restraint that matters; "named once" was never the claim worth making and was not true.

There is no artefact for **ISO Stage 2**, which opens on 2026-11-30 and has not taken place.

There is no artefact for the **Q4 CAL-06 risk register review**, which falls on **2026-12-29**. R-38's
admission on 2026-10-23 is evidenced by the register entry and by DEC-707 rather than by a review record,
because DEC-306 permits an addition on evidence between reviews and this one was made under it.

There is no artefact for **December** — not the December restore test, not the December-scheduled annual
controls, and not the final bridge letters. Thirty-four days of the observation window remain after this
index is issued.

## Cross-References

| Document | Relationship |
|---|---|
| [07.12 Quarter Four to Date — Operating Record](../07.12-quarter-four-to-date-operating-record.md) | The figures these artefacts support |
| [07.13 Phase Summary and Transition](../07.13-phase-summary-and-transition.md) | What is carried forward |
| [07.03 The RT-02 Retention Failure](../07.03-the-rt-02-retention-failure.md) | EV-701 to EV-706 in their narrative |
| [07.09 The Vendor Register, Tiering and Assurance](../07.09-the-vendor-register-tiering-and-assurance.md) | EV-715 and EV-716 |
| [07.11 Subservice Organisations and the Uncovered Months](../07.11-subservice-organisations-and-the-uncovered-months.md) | EV-719, and what a bridge letter is worth |
| [logs/deviation-log.md](deviation-log.md) | The three deviations these artefacts evidence, and the three corrective actions with no deviation behind them |
| [04.12 Evidence Architecture](../../04-unified-control-framework-and-policy-architecture/04.12-evidence-architecture.md) | The evidence classes and the sampling unit each cadence produces |
| [06-availability-processing-integrity-and-operations/logs/evidence-index.md](../../06-availability-processing-integrity-and-operations/logs/evidence-index.md) | EV-601 to EV-620, and the unit invented for a control that did not operate |
