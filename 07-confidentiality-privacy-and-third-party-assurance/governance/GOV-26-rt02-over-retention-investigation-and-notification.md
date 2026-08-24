# GOV-26 — RT-02 Over-Retention: Investigation, Notification Decision and Dissent

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-G26 |
| Version | 1.0 |
| Date | 2026-11-27 |
| Owner | Devon Ashby |
| Approver | Elise Fontaine |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


## 1. Matter

Investigation into the non-enforcement of retention rule **RT-02** in `eu-central-1`, opened **2026-10-23**
and closed **2026-10-27**, and the notification decision taken at the review of **2026-10-26**.

| Item | Value |
|---|---|
| Condition | The scheduled deletion job enforcing RT-02 in `eu-central-1` matched no rows and reported success on 68 consecutive nights |
| Rule | **RT-02** — geolocation captured at clock-in (PD-05), retained 13 months, then deleted, **irrespective of contract term** |
| Controls | `CNB-C-126` (job generation and nightly run), `CNB-C-127` (completion record and alert) |
| Opened | **2026-10-23**, on assembly of the Q4 retention evidence sample |
| Notification review held | **2026-10-26** |
| Investigation closed | **2026-10-27**, on verification of the catch-up completion record |
| Chaired | Tobias Lund, General Counsel &amp; Data Protection Officer |
| Attending | Devon Ashby, Tobias Lund, Rahul Bhargava, Karim Haddad, Ana-Sofia Cruz, Junia Okonkwo |
| Deviation | **`D-07-01`** · clause 10.2 corrective action **`CA-07-02`** |
| Decisions | **DEC-704** (notification), **DEC-705** (residue), **DEC-707** (R-38), **DEC-708** (R-06 held), **DEC-713** (partition-drop rewrite deferred) |

**Sections 2 to 9 are the investigation and the review as held between 2026-10-23 and 2026-10-27 and say
nothing that was not known on those dates.** Everything after — the admission of `CNB-C-149` on 2026-10-28,
the position of the corrective action, and the residue window that has still not expired — is carried in the
dated addendum at **§10**.

## 2. What happened, in the investigation's own terms

On **2026-08-17** a schema migration partitioned the geolocation capture table in `eu-central-1` by month,
to keep the rolling thirteen-month window queryable and cheap to delete from as volume grew. The migration
was applied region by region and **`eu-central-1` went first**.

**The migration could not partition the table in place.** It created a new partitioned relation, copied
thirteen months of rows into it, **truncated the original**, and swapped the names: `geolocation_capture`
became `geolocation_capture_pre_partition`, and the new relation took its place.

**`CNB-C-126` generates the job set from the retention schedule, and the generator resolves each rule to a
physical relation by object identifier, recorded when the job was generated.** An object identifier survives
a rename. **After the swap the RT-02 job still addressed the original relation — which the migration had
emptied and retained.** It executed correctly against an empty table every night and reported what it found:
rows deleted, zero.

**The job was not wrong. It was pointed at the wrong object, and nothing in the library compares a job's
target to the rule's.**

`CNB-C-127` alerts the data platform on-call engineer where **a job does not report inside its window**. The
job reported inside its window on every night. Its completion record stated **rows deleted: 0**, which is a
legitimate answer on a night when nothing crosses the thirteen-month boundary. **No control in the library
could distinguish a rule with nothing due from a rule that could no longer see what was due.**

**RT-01 and RT-03 to RT-08 ran correctly throughout, in all three regions.** The condition was confined to
one rule, in one region. The investigation also recorded what had **not** happened: at the date of closure
the migration **had not been applied to `us-east-1` or `us-west-2`**, and is scheduled for **2027-01** behind
the retention rule change record `CA-07-02` introduces.

## 3. The figures as established at close

| Measure | Value |
|---|---|
| Migration deployed | 2026-08-17 |
| First affected run | 2026-08-17 |
| Last affected run | 2026-10-23 |
| Nights the job ran, reported success and deleted nothing | **68** — 2026-08-17 to 2026-10-23, **inclusive of both ends**, which is **67 elapsed days** |
| Discovered | 2026-10-23 |
| Records retained past the thirteen-month rule | **1,847,206** geolocation capture points |
| Individuals whose records were affected | **58,412** |
| Of those, individuals who left their employer during the sixty-eight nights | **2,106** |
| Nightly range | **4,118** to **41,902**; mean just over 27,000. These are the capture volumes of the days thirteen months earlier, not of the nights the job ran |
| Oldest record at discovery | **13 months and 67 days** — over its rule by **67 days** |
| Rules affected | **1 of 8** |
| Regions affected | **1 of 3** — `eu-central-1` |
| Customers whose tenants held affected records | **34** of the 41 EU-residency customers |
| EU-residency customers holding none, geolocation capture disabled | **7** — **34 + 7 = 41** |
| Job target corrected and redeployed | 2026-10-24 |
| Catch-up deletion executed | 2026-10-25, removing all 1,847,206 |
| Catch-up completion record verified | 2026-10-27, under `CNB-C-127`'s catch-up path |
| Backup residue window under `CNB-C-128` | 35 days from 2026-10-25 — **expires 2026-11-29** |

**The counting convention, recorded so that two of those rows are not read as contradicting each other.**
The deployment date, the first affected run and the last affected run are stated separately. The count of
nights is **inclusive of both ends** and is 68; the interval between the first and the last is **67 elapsed
days**, and that is why the oldest record was over its rule by 67 days rather than 68.

**How the catch-up count was corroborated.** 1,847,206 comes from the same class of completion record that
had reported success for sixty-eight nights, so the investigation did not accept it on its own authority.
**Row counts were taken per partition on 2026-10-25 before the catch-up run**, and **reconciled against the
completion record on 2026-10-27, agreeing exactly**. The reconciliation is held with **EC-17** under
`EV-703`. It corroborates this figure and nothing else: **`AS-36`** — that the other seven rules ran
correctly throughout — remains an assumption resting on the unreconciled record class.

**No count of individuals was available on the day of discovery and one was produced before the notification
went out**, because a privacy disclosure that counts records, nights, rules, regions and tenants and not
people has counted everything except the subject.

## 4. How it was found

**On 2026-10-23 Rahul Bhargava was assembling the Q4 retention evidence sample for Ashcombe &amp; Doyle** and
pulled `CNB-C-127`'s completion records for the period from EC-17. Sixty-eight consecutive nights of "rows
deleted: 0" on one rule in one region, in a table with a rolling thirteen-month window, was visible in the
first screen of the extract.

The investigation recorded the finding in one sentence and made no attempt to soften it: **the control
produced the evidence that disproved it, and nobody looked at that evidence until an auditor asked for it. A
completion record nobody reads is a log, not a control.**

## 5. What the investigation determined was engaged, and what was not

| Instrument | Position | Reason recorded |
|---|---|---|
| **SR-08** — retention enforced by scheduled deletion jobs whose failure is alerted | **Engaged. Its first clause was not achieved** | Retention was not *enforced* in `eu-central-1` for sixty-eight nights. `02.12` §4's gloss on the requirement — that a job which silently stops deleting must not produce the same observable state as one that succeeded — describes the condition exactly. This is why DC4's **second** limb is engaged as well as its first |
| **SC-02 / O4** — 48-hour notification of a security incident affecting customer data | **Not engaged** | The clock runs from CloudNimbus's **determination** of a security incident affecting customer data. No such determination was made. Nothing left `eu-central-1`; the region pinning required by SC-04 and SR-02 held throughout; no access outside the normal processing path occurred; and the disclosure register maintained under `CNB-C-132` holds no entry arising from the condition |
| **SC-03 / O7** — deletion within 30 days of termination, with certification | **Not engaged** | That commitment is RT-08 and `CNB-C-118`. This is an **in-life retention rule failing while the contract is live**. No tenant was terminating and no certificate was due |
| **O6** — assistance with a data subject's request | **Not engaged** | No request had been made concerning any of the affected records |
| **`CNB-C-118`** and **C1.2** | **Not evidenced either way** | `CNB-C-118` operated correctly throughout the period and is a different control serving a different criterion |
| **The master services agreement** | **Silent** | It carries no term addressing over-retention of a category inside its own retention rule |

**No legal characterisation was reached or attempted at any point in the investigation**, and none appears in
this record. The investigation established what the retention rule says, what happened against it, what the
commitments say, and what management decided.

## 6. The notification decision — DEC-704, 2026-10-26

**All 41 EU-residency customers were notified on 2026-10-26**, three days after discovery: the **34** whose
tenants held affected records, and the **7** told plainly that they held none.

**No commitment required it**, as §5 records. Two reasons were minuted.

**The data processing addendum allocates the determination of purposes to the employer and obliges
CloudNimbus to process on the employer's documented instructions; whether that allocation is correct in law
is for each customer's own advisers.** On that contractual footing, a customer cannot account for its own
arrangements without knowing what CloudNimbus did, and only CloudNimbus holds the answer to the question a
customer may be asked in six months' time.

**And the retention promise in the privacy notice was made to the worker, not to the employer.** CloudNimbus
tells individuals it keeps clock-in location for thirteen months; for sixty-eight nights it kept some of
them longer; and **CloudNimbus has no channel to those individuals.** CUEC-07 puts notice of the employer's
own processing in the employer's hands and the in-product notice reaches only a worker who opens the app.
**The company cannot tell the people it made the promise to, and notifying the employer is the nearest
available thing to keeping it.**

**The alternative was stated at its strongest and refused.** Notify nobody: the data never left its region,
was never accessed outside the normal processing path, was deleted within four days of discovery, and the
correction was complete in the primary stores on the fifth. The review recorded that argument as available
and honest, and refused it on the ground that **a retention commitment is not discharged by the data having
been safe.**

The notification stated the rule, what happened against it, the duration, the record count for the
recipient's own tenant, the correction and its dates, and the date the backup residue expires. **It offered
no legal characterisation and asked the recipient to take no action.**

## 7. The dissent, minuted

**Ana-Sofia Cruz, Head of Customer Success, dissented.**

Her position, minuted in full: a notification with **no action for the customer to take** converts a
four-day internal correction into a **permanent entry in forty-one procurement files**. It will be re-read
at every renewal, quoted in every future security questionnaire, and read by some recipients as an incident
of a kind it is not, because the vocabulary available to a procurement analyst has one word for "your
supplier wrote to us about our data" and it is not "retention rule". The cost lands on Customer Success and
it lands indefinitely.

**No attendee disputed any part of it.** The review recorded the dissent as reasonable rather than as an
objection heard and set aside.

**Overruled by Tobias Lund** as General Counsel and Data Protection Officer, on the ground that the cost
identified is the cost of having told the truth, which the programme has elected to bear elsewhere. Recorded
at **DEC-704** and argued at **ADR-0032**.

## 8. Decisions arising from this investigation

| ID | Decision | Date | Decider |
|---|---|---|---|
| DEC-707 | **R-38** admitted to the risk register between quarterly reviews under DEC-306, at 3 × 4 = 12, Moderate | 2026-10-23 | Devon Ashby |
| DEC-713 | The rewrite of RT-02 as a **monthly partition drop deferred to 2027-01**, rather than change the shape of `CNB-C-127`'s completion record inside the observation window | 2026-10-24 | Devon Ashby |
| DEC-704 | All 41 EU-residency customers notified, with the dissent minuted | 2026-10-26 | Tobias Lund |
| DEC-705 | The catch-up deletion is not certified complete until the backup residue window expires | 2026-10-27 | Devon Ashby |
| DEC-708 | **R-06 held at 4 × 4 = 16**; its described event did not occur — the job did not fail, it succeeded | 2026-10-28 | Devon Ashby |

**Four of the five were taken at or before the close on 2026-10-27. DEC-708 was taken the following day, at
the `CNB-C-133` quarterly privacy review of 2026-10-28, and is recorded here because it arises from this
investigation** — which is why this section is headed by its subject rather than by a date.
 R-06 describes *a scheduled retention or deletion job **fails silently**
and data is kept past its rule*. The job did not fail. R-06 describes an absent alert on a failure; R-38
describes an alert condition that cannot see a success. **The temptation to record R-06 as having occurred
was identified at the review and refused.**

## 9. What the investigation declined to record

**A root cause naming an individual.** The migration was correct, reviewed and deployed by the ordinary
change path, and the generated job was correct against the schema it was generated for. Nobody chose to
point a job at an emptied relation; generation binds the job to the rule and does not bind it to the object
the rule is currently about, and no control required anybody to check that it still did. `CA-07-02`
addresses that and no personnel action arises.

**Any conclusion about the service auditor's opinion.** The investigation recorded a control deviation and
an identified system incident engaging **both** of DC4's limbs — the first because `CNB-C-127`'s alert
condition could not detect the failure mode, the second because the system requirement **SR-08** was not
achieved. Whether either affects a criterion is the auditor's
evaluation, has not been performed, and is not anticipated here.

**Any statement about what a law required.** See §5.

## 10. Status at 2026-11-27 — addendum

**This section is dated 2026-11-27 and was not part of the investigation closed on 2026-10-27.**

### 10.1 The control admitted

On **2026-10-28**, at the `CNB-C-133` quarterly privacy review (**GOV-27**), **`CNB-C-149` was admitted to
the control library under DEC-706**, taking the library from 148 controls to **149**. It alerts the data
platform owner where a retention job reports success having deleted zero rows on a rule whose eligible
population is non-zero, and requires the alert to be dispositioned before the next run. **31 of its 65
nights in the observation window have run at this vantage, with 0 alerts raised.** ADR-0031 records the
decision and its cost.

### 10.2 The corrective action

| ID | Corrective action | Owner | Status at 2026-11-27 |
|---|---|---|---|
| `CA-07-02` | Address the cause of `D-07-01`: a generated deletion job's resolved target is validated against the object the rule currently means, and a schema change to a store under a retention rule produces a retention rule change record | Devon Ashby | **Open.** The detection half is delivered as `CNB-C-149`; the change-record half is delivered as the template at `templates/retention-rule-change-record-template.md` and is being applied from 2026-11-01 |

**The change-record half has produced nothing yet, and the number is stated rather than left to be
inferred. Records raised between 2026-11-01 and 2026-11-27: zero.** No retention rule changed in that
interval and no schema change was made to any store sitting under one — the `us-east-1` and `us-west-2`
migrations, which are the next changes that will require one, are scheduled for **2027-01**, as is the
partition-drop rewrite of the RT-02 job under **DEC-713**. A completed record is filed as one unit of
**EC-03** against the change ticket it attaches to, so the population is countable from the change record
class rather than from anybody's recollection. **A corrective action whose output is a form is not evidenced
by the form existing**, and zero completions in twenty-seven days is the accurate position: the mechanism is
in place and has not yet been exercised.

### 10.3 The residue

**The backup residue window has not expired.** The primary stores were cleared on 2026-10-25; the 35-day
window under `CNB-C-128` runs to **2026-11-29**, two days after this vantage. **DEC-705 and ADR-0033 hold
that the catch-up deletion is not certified complete until it does**, and this record reports the correction
as **incomplete**.

### 10.4 The customers' response

Of the forty-one notified on 2026-10-26, at this vantage **6 have acknowledged**, **2 asked a follow-up
question** — both answered inside two business days — and **1 requested the deletion evidence**. **None has
opened a case, raised a claim, or treated the notification as an incident.** Thirty-two have not replied.
This is recorded because **Ana-Sofia Cruz's dissent made a prediction and a prediction nobody measures is an
opinion**; it does not refute her, since the cost she identified lands at renewal and in questionnaires
rather than in the month after, and a nil return would have been evidence too.

### 10.5 The register

**R-38 stands at 3 × 4 = 12, Moderate, owner Devon Ashby**, accepted by the risk owner under clause 6.1.3 f)
and by Karim Haddad alongside per `03.02` §6. **R-06 stands at 4 × 4 = 16.** **No CAL-06 review falls in
this period**; the Q4 review is **2026-12-29** and has not been held. The register stands at **38 — 8 High ·
18 Moderate · 12 Low.**

## Cross-References

| Document | Relationship |
|---|---|
| [07.03 The RT-02 Retention Failure](../07.03-the-rt-02-retention-failure.md) | The full account, the DC4 draft and the R-38 reasoning |
| [07.02 The Retention Schedule and the Deletion Machinery](../07.02-the-retention-schedule-and-the-deletion-machinery.md) | `CNB-C-126`, `CNB-C-127`, `CNB-C-128` and `CNB-C-149` |
| [ADR-0032](../adr/ADR-0032-notification-with-no-obligation-to-notify.md) | DEC-704, the rejected alternative and the dissent |
| [ADR-0033](../adr/ADR-0033-deletion-is-not-complete-until-the-residue-expires.md) | DEC-705 and the 2026-11-29 window |
| [ADR-0031](../adr/ADR-0031-a-new-control-admitted-mid-window.md) | DEC-706 and the library at 149 |
| [governance/GOV-27](GOV-27-q4-privacy-review-and-the-admission-of-cnb-c-149.md) | The review of 2026-10-28 at which `CNB-C-149` was admitted and DEC-708 taken |
| [templates/retention-rule-change-record-template](../templates/retention-rule-change-record-template.md) | The record `CA-07-02` introduces |
| [diagrams/07-the-rt02-failure-and-why-nothing-alerted](../diagrams/07-the-rt02-failure-and-why-nothing-alerted.md) | The sequence, and what would have had to be true for anything to fire |
| [logs/decision-log.md](../logs/decision-log.md) | DEC-704, DEC-705, DEC-707, DEC-708 and DEC-713 |
| [02.07 Personal Information Inventory and Data Subjects](../../02-system-scope-isms-boundary-and-description/02.07-personal-information-inventory-and-data-subjects.md) | PD-05 and RT-02 as published |
| [03.04 Risk Register — Baseline](../../03-risk-assessment-treatment-and-statement-of-applicability/03.04-risk-register-baseline.md) | R-06 as written, and DEC-306's second limb |
