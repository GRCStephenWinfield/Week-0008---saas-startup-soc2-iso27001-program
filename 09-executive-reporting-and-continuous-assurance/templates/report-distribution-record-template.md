# Template — Report Distribution Record

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2027-T36 |
| Version | 1.0 |
| Date | 2027-03-11 |
| Owner | Ana-Sofia Cruz |
| Approver | Tobias Lund |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


Completed **once per recipient per issuance** — not once per customer and not once per tier. **155 units
were completed for the report of 2027-02-26**: 118 enterprise-tier deliveries under **O2**, completed by
2027-03-06, and 37 of the remaining 522 delivered on request under **O1**.

**The form exists because a SOC 2 report is restricted-use.** It is intended for the management of the
service organisation, for **user entities during some or all of the period**, and for **other specified
parties with sufficient knowledge and understanding** of the nature of the service, the system and its boundaries,
internal control and its inherent limitations, the applicable criteria, the complementary controls, and how
those things interact. **The third class is a judgement about a named recipient**, and this record is where
CloudNimbus can show it made one.

## 1. The field that makes this a record of a decision

| Field | Guidance |
|---|---|
| **Which class of intended user does this recipient fall in, and why?** | **The only field that matters.** One line, naming the class and the basis. *User entity during some or all of the period* requires a contract in force for at least part of the period covered — a customer that contracted in October 2026 qualifies; one that signed in February 2027 does not. *Other specified party* requires a judgement about that recipient's **knowledge and understanding**, made before despatch |
| Why it is not derivable from the tier | The enterprise tier is a **commercial** classification based on seat count and contract form. It says nothing about whether the person receiving the report understands what an unmodified opinion is, or what a complementary user entity control obliges their own organisation to do. **DEC-907** makes the determination **per recipient and not per tier** |
| **What a record without this field is** | **A distribution record holding 155 despatch timestamps and no determinations is a record of an operation.** The operation was never the thing that had to be evidenced |
| Where the judgement was hard | Record it. **Two of the 118 nominated a recipient in procurement with no security or audit function behind them**, and both deliveries carried a covering note naming the sections that carry the complementary user entity controls and the fact that Section V is not covered by the opinion |

## 2. Recipient and basis

| Field | Guidance |
|---|---|
| Customer | The contracting entity, by legal name |
| Contract status during the period | **In force / not in force**, with dates. This decides the second class and nothing else does |
| Named recipient | The individual, their role and their organisation. Where the recipient is a user entity's **own external auditor**, say so: they are **ordinarily a specified party**, because they have the knowledge of internal control, of criteria and of the limitations of an examination that the restriction describes |
| **Prospective customers** | **Not excluded by the absence of a contract.** The illustrative restricted-use paragraph expressly names **prospective user entities**, business partners of the service organisation and of user entities, their practitioners and their regulators among the intended users — **in every case subject to sufficient knowledge and understanding.** **The test is knowledge, not contractual status**, so the determination is made about the named person: a prospective customer's security function may satisfy it and a contracted customer's procurement contact may not. What a prospective customer is **not** is a user entity during any part of the period. The determination has to be made and written, and it cannot be made by the person operating the delivery queue |
| Basis for provision | **O2** — within thirty days of issuance, for the 118 — or **O1** and **SC-10**, under non-disclosure **on request**, for the rest |
| Confidentiality position | The agreement under which the recipient holds it, with its date |

## 3. The distinction this form must not collapse

| Field | Guidance |
|---|---|
| **Restricted-use paragraph** | The **practitioner's** limitation on the use of the report under the attestation standards. It says who the report was prepared for and who can be expected to understand it |
| **Non-disclosure agreement** | **CloudNimbus's contract with its customer.** It governs what the recipient may do with what it has been given, and it is enforceable by CloudNimbus and by nobody else against anybody |
| **Neither can do the other's work** | **A customer that signs the non-disclosure agreement has not thereby become a specified party** — understanding cannot be conferred by a signature page. **A specified party who signed nothing has not thereby become free of the confidentiality terms in its own agreement.** The two instruments overlap in most cases and are independent in all of them |
| What restricted use does **not** do | **It does not stop a recipient forwarding the report.** Nothing in an attestation standard binds a third party who has not agreed to anything. What binds the recipient is the confidentiality term in its own agreement, which is a commercial question rather than a professional one |

## 4. Despatch

| Field | Guidance |
|---|---|
| Channel | The controlled channel used. **Not an outbound mailing, not a trust centre link, and not an attachment to a sales sequence.** The report is not posted for general access — **DEC-908** |
| Despatch timestamp | Date and time |
| Acknowledgement | Received from the named recipient, with date. **An unacknowledged despatch is a despatch, not a delivery**, and the two are counted separately |
| **Covering note version** | The note issued with every delivery. It names **the number of test exceptions disclosed in Section IV**, states that **Section V is not covered by the opinion**, states that the report concerns the named period **and no other**, and states that **neither the report nor any certificate is a determination of compliance with any law** |
| Why the note names the exception count | **A recipient who finds nine exceptions after being told the opinion was unmodified has been handled badly by the sender**, whatever the report says. The misreading this record most often meets is that a disclosed exception is a failed audit |

## 5. Obligation tracking

| Field | Guidance |
|---|---|
| Obligation and deadline | **O2** runs thirty days from the **actual** issuance date, not from a planned one. For 2027-02-26 the deadline was **2027-03-28** |
| Position | Delivered, outstanding, or requested and pending |
| **On-request deliveries** | Counted against **O1**, with the request date. **No percentage is computed.** The denominator is not a population of people who were asked — nobody was asked, and a customer that has not requested the report has not declined anything |
| Bridge letter requested? | **Yes / No**, with the requested gap period. The bridge letter is a separate instrument under **O3** on its own form, and **no letter may cover a period that has not ended** on the date it is signed |

## 6. What this form does not do

**It does not make the report comprehensible.** The third class of intended user **assumes** understanding;
it does not create it. The covering note is the only lever the sender has, and it is a weak one.

**It does not authorise onward provision.** A determination is made about a named recipient. It does not
travel to that recipient's affiliates, advisers or acquirers, and a request from any of them is a new
determination on a new row.

**It does not record the report's contents.** What was sent is the report as issued, retained unaltered at
**EV-905**, and this form records who received it and on what basis.

**And it does not treat a discharged obligation as an achievement.** **118 deliveries inside a thirty-day
obligation is an obligation discharged, which is the ordinary condition of a contract.** The number worth
watching is not 118 and not 37; it is whether the mechanism that produced them still exists at the next
issuance, and no distribution record can answer that.

## Cross-References

| Document | Relationship |
|---|---|
| [09.08 Restricted Use and the Distribution](../09.08-restricted-use-and-the-distribution.md) | The chapter this form belongs to; the 155 deliveries and the specified-party determination |
| [09.04 The Report and the Opinion](../09.04-the-report-and-the-opinion.md) | The report the note describes, and what an unmodified opinion is not |
| [09.06 Section IV and the Nine Exceptions as Published](../09.06-section-iv-and-the-nine-exceptions-as-published.md) | The nine the covering note names |
| [09.07 Section V and What the Opinion Does Not Cover](../09.07-section-v-and-what-the-opinion-does-not-cover.md) | The statement the covering note repeats |
| [09.09 The Bridge Letter](../09.09-the-bridge-letter.md) | The separate instrument §5's last row points at |
| [templates/bridge-letter-template.md](bridge-letter-template.md) | The form that instrument uses |
| [logs/decision-log.md](../logs/decision-log.md) | DEC-907 and DEC-908 |
| [logs/evidence-index.md](../logs/evidence-index.md) | EV-909 and EV-910, the 155 units and the covering note |
| [logs/obligation-register.md](../logs/obligation-register.md) | O1, O2 and O3 at this vantage |
| [02.12 Principal Service Commitments and System Requirements](../../02-system-scope-isms-boundary-and-description/02.12-principal-service-commitments-and-system-requirements.md) | SC-10, and the commitment to provide under non-disclosure on request |
| [01.11 Assurance Calendar and Obligations](../../01-program-foundation-dual-framework-governance/01.11-assurance-calendar-and-obligations.md) | O1, O2 and O3 as registered, and §8's runway |
