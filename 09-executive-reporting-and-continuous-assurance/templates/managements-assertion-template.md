# Template — Management's Written Assertion

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2027-T34 |
| Version | 1.0 |
| Date | 2027-03-11 |
| Owner | Elise Fontaine |
| Approver | Lorraine Kessler |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


Completed once per examination and issued over the signatures of the **Chief Executive Officer** and the
**Chief Technology Officer**, dated the report date. It becomes **Section II** of the report, and it is the
statement the practitioner's opinion is expressed in relation to.

**Under AT-C section 205 — *Assertion-Based Examination Engagements* since SSAE No. 21 — the responsible
party provides a written assertion about the subject matter.** The practitioner does not draft it, does not
negotiate it and does not improve it. **An entity that cannot make the assertion has no engagement**, and
the form is written so that discovering this is possible before the report date rather than after it.

## 1. The distinction the form exists to protect

**This is not the representation letter, and the two are not variants of one instrument.**

| Field | Guidance |
|---|---|
| **What this document is** | **The assertion. It is Section II of the report and every reader of the report sees it** |
| **What it is not** | **The representation letter under O12.** That is a separate instrument, addressed to the practitioner, dated the report date, covering the period **and the interval through the report date**, and representing among other things all known noncompliance, all knowledge of fraud, all deficiencies of which management is aware and all subsequent events. **No user of the report ever sees it** |
| Why the confusion is common | Both carry the same two signatures, on the same day, from the same meeting. **That is the only thing they share** |
| The consequence of conflating them | A description of the engagement in which management is thought to have privately told the auditor what it publicly asserted, or in which the reader is thought to have seen a document they have not. **Conflating them is the commonest error in describing a SOC 2 engagement** |

## 2. Scope of the assertion

| Field | Guidance |
|---|---|
| **The system** | Named exactly as the description names it. For CloudNimbus: **the CloudNimbus Workforce Platform**. A description of one service and an assertion about another is a defect nobody catches, because the two documents are read weeks apart |
| **The period** | The examination period, **both dates**, stated as *throughout the period*. A Type II assertion covers a period; a Type I assertion is *as of* a date and asserts design alone. **The two forms are not interchangeable and this form is the first** |
| **The criteria, named** | **TSP section 100**, the 2017 trust services criteria with revised points of focus, 2022 — with the categories and the number in scope. **DC section 200**, the 2018 description criteria, DC1 to DC9 |
| **Categories** | Every category in scope, listed. A category is in scope or it is not; **there is no mechanism in the trust services criteria for setting a criterion aside within a selected category** |

## 3. The three limbs, and each one is capable of failing alone

| Limb | What it asserts | Guidance |
|---|---|---|
| **Presentation** | That the description **presents the system that was designed and implemented throughout the period in accordance with the description criteria** | **A description can be entirely truthful and fail this limb**, by omitting something DC section 200 requires. DC4 and DC9 are the two most often missing, because both require somebody to have been recording events against the criterion while they happened |
| **Suitability of design** | That the controls stated in the description were **suitably designed** to provide reasonable assurance that the applicable criteria would be achieved **if the controls operated as described** | The conditional is part of the assertion and is not a hedge. Where complementary user entity controls or complementary subservice organisation controls are assumed in the design, **the limb is stated as depending on them** |
| **Operating effectiveness** | That the controls **operated effectively throughout the period** to provide reasonable assurance that the applicable criteria were achieved | **The limb a Type II exists for.** It is about whether the criteria were achieved, not about whether every occurrence of every control was clean |

## 4. What must be stated on the face of the assertion

| Field | Guidance |
|---|---|
| **Subservice organisations and the method** | Every subservice organisation, named, with the method used. **Carve-out** means their controls are excluded from the description and complementary subservice organisation controls are stated instead; **inclusive** means their controls are described and tested. CloudNimbus carves out both, with **14** complementary controls |
| **Complementary user entity controls** | That the description states them and that they are the **user entity's** controls, not CloudNimbus's. **Nobody in the engagement tests whether the user entities perform them**, and the assertion must not read as though somebody did |
| **The inherent limitation** | That controls provide **reasonable** assurance, not absolute, and that the projection of any evaluation to future periods is subject to the risk that conditions change |
| **What the assertion does not cover** | **Section V is not covered by the assertion and is not covered by the opinion.** Where information is provided in Section V, the assertion says so rather than leaving a reader to infer it from the structure |

## 5. The field that costs something

| Field | Guidance |
|---|---|
| **Was the assertion considered and nearly not made?** | **Yes / No**, with the reasons on both sides, recorded in the approving body's minute rather than in the assertion itself. For the 2026 examination the answer was **yes**: exception 5 and exception 1 were put to the board on 2027-02-24 as candidates for not signing — **DEC-902**, minuted at **GOV-33** |
| **The reasoning that resolved it** | Recorded in full, including the arguments against. The assertion concerns whether **the criteria were achieved**, not whether every occurrence was clean; a criterion is met by everything that serves it |
| Why the field exists | **A board minute recording that the question was asked is worth more than a signature recorded without one.** An assertion approved without the question having been put is indistinguishable, in the record, from an assertion nobody examined |
| **The consequence of not signing** | Stated to the approving body before it resolves. **Had management concluded it could not sign, the engagement would have ended there and no report would exist.** There is no version of an assertion-based examination in which a practitioner opines on an assertion the responsible party declined to make, and no version in which the practitioner writes one instead |

## 6. Signature and date

| Field | Guidance |
|---|---|
| Signatories | The officers who can accept responsibility for the description, the controls and the assertion. **Not the programme owner and not the Compliance Manager**, whichever of them assembled it |
| **Date** | **The report date**, not the date of approval. The board approved on 2027-02-24 and the assertion is dated 2027-02-26 |
| Approval record | The governing body, the date and the decision identifier. **DEC-901**, GOV-33 |

## 7. What this form does not do

**It does not assert anything about certification.** A SOC 2 examination produces an opinion. **No
certificate exists against it and nobody holds one**, and an assertion using the language of certification
would be asserting something that does not exist.

**It does not reach any legal conclusion.** Neither the report nor any certificate is a determination of
compliance with any law, and the assertion says nothing about whether a contract has been performed or
breached.

**It does not carry the exceptions.** Deviations are the service auditor's to record, in Section IV, with
the service auditor's evaluation. **An assertion that listed them would be management writing Section IV**,
and an assertion that was worded to accommodate them would be an assertion about something narrower than the
criteria.

**And it does not cover any period other than the one it names.** The instrument for the interval after the
period end is the **bridge letter**, which is management-issued, unaudited, carries no practitioner opinion,
and covers a gap without closing one.

## Cross-References

| Document | Relationship |
|---|---|
| [09.01 Management's Assertion and the Representation Letter](../09.01-managements-assertion-and-the-representation-letter.md) | The chapter this form belongs to; the assertion as made on 2027-02-26 |
| [09.02 The Description of the System](../09.02-the-description-of-the-system.md) | The description the first limb is about |
| [09.04 The Report and the Opinion](../09.04-the-report-and-the-opinion.md) | The opinion expressed in relation to this assertion |
| [09.07 Section V and What the Opinion Does Not Cover](../09.07-section-v-and-what-the-opinion-does-not-cover.md) | The section neither this assertion nor the opinion reaches |
| [governance/GOV-33](../governance/GOV-33-board-approval-of-managements-assertion.md) | The approval of 2027-02-24, and §5's field as answered |
| [templates/bridge-letter-template.md](bridge-letter-template.md) | The instrument for the interval this assertion does not cover |
| [logs/decision-log.md](../logs/decision-log.md) | DEC-901 and DEC-902 |
| [logs/evidence-index.md](../logs/evidence-index.md) | EV-901 and EV-902 |
| [logs/obligation-register.md](../logs/obligation-register.md) | O12, which requires both instruments |
| [02.10 Subservice Organisations and the Carve-Out](../../02-system-scope-isms-boundary-and-description/02.10-subservice-organisations-and-carve-out.md) | The carve-out method and the 14 complementary controls §4 requires to be stated |
| [02.11 Complementary User Entity Controls](../../02-system-scope-isms-boundary-and-description/02.11-complementary-user-entity-controls.md) | The eleven, and the criteria each is necessary for |
