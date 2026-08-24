# Template — Vendor Assurance Reading

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-T26 |
| Version | 1.0 |
| Date | 2026-11-27 |
| Owner | Tobias Lund |
| Approver | Rahul Bhargava |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


Completed once per quarter for each **Tier 1** vendor under **`CNB-C-092`**, and on onboarding for any
vendor under `CNB-C-090`. The control requires the current assurance artefact **together with a reading of
what that document does and does not cover**, with the conclusion recorded in the vendor register — so this
form is the reading, and a completed form is the conclusion.

| Field | Guidance |
|---|---|
| Vendor | |
| **Tier** | 1, 2 or 3. **The tier is an axis of the register and not its classification** — it does not follow from either flag below and neither follows from it. ADR-0035 |
| **Sub-processor?** | Yes or no, against the documented test: does this party process personal data on CloudNimbus's behalf under a data processing addendum? A separate flag |
| **Subservice organisation?** | Yes or no, against 02.10 §2's documented test: does this party perform controls necessary, in combination with CloudNimbus's own, for an applicable trust services criterion to be met? A separate flag. **Access to data is not the test and criticality is not the test** |
| Reading date, and reader | A named person |
| **Artefact type** | Service auditor's report · certificate · **both** · **none**. Record which. "Assurance received" is not an artefact type, and **there is no such thing as a "SOC 2 certificate"** |
| Issuer | The CPA firm that signed the report, or the certification body and its accreditation body for a certificate. **ISO does not certify anybody** |
| **Period, or validity and cycle position** | A report has a **period** — record it. A certificate has an **issue date, an expiry date and a position in the three-year cycle** — record whether the most recent surveillance audit has taken place. The two fields are not interchangeable |
| **Expiry or period end** | Knowable on the day the artefact is first read. `D-07-02` is what happens when a lapse is discovered by the next quarterly refresh instead — and then by the one after that: **2 of 24**, the same vendor absent at 2026-07-30 and at 2026-10-07 |
| **Period against CloudNimbus's observation window** | **Which months of 2026-07-01 to 2026-12-31 this artefact's period covers, which a bridge letter reaches, and which nothing reaches.** Recorded as three counts summing to six. Added under **`CA-07-06`**: Halcyon Identity's report period ended 2026-06-30, the day before the window opened, and that subtraction was available in March and performed in October because no field asked for it |
| **Scope statement** | For a certificate, the scope as printed on it, transcribed rather than summarised. **A certificate whose scope covers a corporate function and not the service CloudNimbus consumes is a certificate about something else** |
| Categories or criteria covered | For a report, the trust services categories in scope, or the equivalent for another framework. A Security-only report says nothing about availability, confidentiality or privacy |
| **What the artefact does cover** | In the reader's own words, not the vendor's |
| **What the artefact does not cover** | The half the control names explicitly. Record period gaps against CloudNimbus's own observation window, categories out of scope, services out of scope, and **the vendor's own subservice organisations**, whose controls are carved out of the vendor's report exactly as CloudNimbus carves out its own |
| **Exceptions, deviations or nonconformities disclosed** | Record what the artefact discloses about itself — test exceptions in Section IV of a report, nonconformities where a certification body's summary states them. **A report with disclosed exceptions is not a worse artefact than one without; it is a more informative one**, and a reading that treats any exception as disqualifying will teach vendors to send the least informative document they hold |
| **Complementary user entity controls stated, and their disposition** | The count, then each one dispositioned: **already performed by a named library row** · **not applicable to the services in use** · **no owner at CloudNimbus**. See the section below — this is the field the form exists for |
| Bridge letter | Requested, received, period covered, and **the date it arrived**. A bridge letter is management-issued and unaudited |
| **Conclusion** | What CloudNimbus relies on this artefact for, and what it does not rely on it for |
| Next refresh due | The earlier of the quarterly refresh and the expiry date recorded above |

## The negative case must be completed, not skipped

**Where the vendor holds no current artefact, this form is completed anyway**, and the fields are answered
with what is true: no artefact, the date the last one lapsed, what was concluded, and what CloudNimbus is
relying on in its absence.

A reading form that can only be filled in when a document exists produces a gap in the evidence at exactly
the point where the finding is. Eleven of the twelve Tier 1 readings performed on **2026-07-30** record what
an artefact covers, and so do eleven of the twelve performed on **2026-10-07**; **the twelfth on each date
records that there is none, that the last report lapsed on 2026-06-30, and what CloudNimbus was relying on
instead** — and it is those two that a sampler will select. `D-07-02` at **2 of 24**, and `CA-07-03`.

**The second negative reading is the one that does the work.** A single completed negative form records a
lapse detected. Two of them, a quarter apart and saying the same thing, record a lapse detected and left
standing — which is why the corrective action addresses the cadence and not the vendor.

## The complementary user entity control section, and why it was added

Until **2026-10-07** this form had no such section, and the consequence is set out at 07.10. A subservice
organisation's report states the complementary user entity controls the reader must perform for the report's
conclusions to hold, and **those are obligations on CloudNimbus arriving from the opposite direction to the
eleven CloudNimbus states in its own description.** AWS's report states **58** and Halcyon Identity's states
**19**. Two of the 58 had no owner at CloudNimbus.

Three rules govern the disposition column.

**"Already performed" names a row.** Not "covered by our access controls" — the specific `CNB-C-` identifier,
so that the assertion can be tested by somebody else. **A mapping is an assertion by the mapper**, and an
assertion with no row behind it is a hope.

**"Not applicable to the services in use" carries the date it was decided.** It is a judgement about the
estate on a particular day and it becomes wrong the day a service is adopted — PR-46. Where the disposition
is used, the row is also flagged for re-reading at `CNB-C-093`'s review of any new cloud service.

**"No owner" is the answer that has to be available.** A disposition set that offers only "covered" and "not
applicable" will produce one of those two answers for every line, because a form with no way to say *nobody
does this* invites the reader to find the nearest control that nearly reaches. **The two obligations found
in October would both have been dispositioned "covered" by a form without this option** — `CNB-C-116`
touches key material and `CNB-C-060` touches configuration drift — and both activities would have remained
exactly as unperformed as they were.

## A certificate and a report answer different questions

The form records the artefact type first because the two are not substitutes and the register must not treat
them as interchangeable.

**An ISO/IEC 27001:2022 certificate**, granted by an accredited certification body, attests that a management
system conforms to the requirements of clauses 4 to 10 at a point in time within a three-year cycle, with
annual surveillance audits between. It tells you a management system exists, what its scope is, and that an
independent body audited it.

**A SOC 2 Type II report** carries a practitioner's opinion on the suitability of design and the operating
effectiveness of specified controls **throughout a period**, with the controls, tests and results in Section
IV. It tells you what was tested, on what population, and what was found. It is **restricted-use**.

**Neither is better. A register that records "certified" against a vendor holding a report has recorded the
wrong instrument**, and will be relied on by somebody who needed the difference.

## Cross-References

| Document | Relationship |
|---|---|
| [07.09 The Vendor Register, Tiering and Assurance](../07.09-the-vendor-register-tiering-and-assurance.md) | The twelve readings, `D-07-02`, and the certificate-versus-report argument |
| [07.10 Reading the Other Side's Complementary Controls](../07.10-reading-the-other-sides-complementary-controls.md) | The 58 and the 19, and the disposition rules above |
| [07.11 Subservice Organisations and the Uncovered Months](../07.11-subservice-organisations-and-the-uncovered-months.md) | The period arithmetic the period-against-window field produces, and `CA-07-06` |
| [adr/ADR-0035](../adr/ADR-0035-tier-is-an-axis-not-a-classification.md) | The tier field and the three independent flags |
| [governance/GOV-25](../governance/GOV-25-cal-08-q4-vendor-and-sub-processor-review.md) | The review at which this form was used twelve times |
| [04.05 Controls for the Common Criteria CC6 to CC9](../../04-unified-control-framework-and-policy-architecture/04.05-controls-for-the-common-criteria-cc6-to-cc9.md) | `CNB-C-090`, `CNB-C-092` and `CNB-C-093` as published |
| [02.10 Subservice Organisations and the Carve-Out](../../02-system-scope-isms-boundary-and-description/02.10-subservice-organisations-and-carve-out.md) | The two tests behind the flags, and the AWS point |
| [04.12 Evidence Architecture](../../04-unified-control-framework-and-policy-architecture/04.12-evidence-architecture.md) | The evidence class a completed reading satisfies |
