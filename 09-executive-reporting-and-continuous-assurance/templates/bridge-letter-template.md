# Template — Bridge Letter

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2027-T35 |
| Version | 1.0 |
| Date | 2027-03-11 |
| Owner | Marisol Vega |
| Approver | Tobias Lund |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


Completed under **O3** for each request received, and issued over the signature of the Chief Financial
Officer. **Nine were issued between 2027-03-01 and 2027-03-10** and every one of them had something to
disclose.

**The form is built around one distinction and every section serves it.**

> **A bridge letter is management-issued and unaudited.** Ashcombe &amp; Doyle LLP does not sign it, does not
> review it and is not named in it as having done anything. It carries **no practitioner opinion, no tests
> and no assurance**. **It covers a gap. It does not close one** — and its value is exactly the credibility
> of the management that signs it, which is a thing no standard measures and no reader can verify.

**And the form is built around one failure mode**, which the first letter this programme ever issued walked
straight into. `CNB-C-150` was admitted to the control library on **2027-01-08**, inside every gap period
any of the nine letters covers. **A letter stating that management was not aware of changes would have been
false.** The changes field in §3 is therefore written so that it **cannot be answered by leaving it blank**:
a blank field in a letter of representation is indistinguishable from a question nobody asked. **DEC-905**
and **ADR-0044** record the decision.

## 1. Identification

| Field | Guidance |
|---|---|
| Requesting customer | The legal entity, and the named recipient. **One letter per requesting customer** — a form letter reused across two different gap periods asserts knowledge on one customer's behalf about a period it did not ask about |
| Request received | The date. Requests arrive before the report exists; the register records receipt, and the letter records issue |
| **The report this letter refers to** | Title, service auditor, **period covered**, and **report date**. Not "our SOC 2 report" |
| **Gap period** | **From the day after the report period end, to the customer's fiscal year end.** Both dates in full |
| **Date of signature** | The date on which management's knowledge is stated. **This field constrains the gap period, not the other way round** |
| Signatory | A named officer. At CloudNimbus, the Chief Financial Officer |

## 2. The constraint that decides whether a letter can be written at all

| Field | Guidance |
|---|---|
| **Has the gap period ended?** | **Yes / No.** If **No**, the letter is not written and the request stays open. Management can state what it is aware of **to the date it signs and not one day further**, and a letter dated in February covering a gap ending in March represents a state of knowledge nobody had |
| **Does the report exist?** | A letter that bridges from a report period end presupposes a report to bridge from. Requests received before issuance are held, not answered |
| **Is there in fact a gap?** | A customer whose fiscal year ended on the report period end has no gap and needs no letter. Saying so is a better answer than issuing one |

**Two of CloudNimbus's eleven requests failed the first test on this vantage**, both with 31 March fiscal
year ends. Both were told why, in writing, and both requests remain open on the register.

## 3. Changes to the system and to the controls — the field that cannot be left blank

| Field | Guidance |
|---|---|
| **Were there changes?** | **A positive statement is required in every case.** Either *the following changed, namely…* or *nothing changed, and the following was searched to establish that* — **the population searched is named either way.** There is no third answer and no blank |
| What was searched | The control library change history, the decision log for the gap period, the incident register, the sub-processor register, and the system boundary components. Name them |
| **Where a control was added** | Say so, and say **three things**: that it is an **addition** rather than a removal or a weakening; where it came from; and **whether it bears on the period the report covers.** `CNB-C-150` was admitted after the observation window closed, has no population inside it, and cannot have improved anything the report says |
| **Where a control was removed or weakened** | The same three things, and the letter goes to the General Counsel before it goes to the customer |
| **What must not appear here** | **A change described in terms that invite the reader to treat it as an improvement.** A disclosure used as a claim is worse than a disclosure omitted, because it is harder to see and harder to correct |

## 4. Incidents

| Field | Guidance |
|---|---|
| Severity-1 or Severity-2 incidents declared | The number, and each one if any. **A zero states which kind of zero it is** — produced by detective controls with a population, or produced by nobody looking |
| Security incidents determined | The number. The word is **determined**: an alert is not an incident, and the disposition on each alert is the record that says an analyst decided it was not one |
| Service commitment failures | Any commitment in SC-01 to SC-10 not met in the gap period, whether or not it engaged a notification obligation |
| Notifications made | Any notification issued under **O4** or **O9** in the gap period, and whether either obligation was engaged at all |

## 5. The limitation, on the face of the letter

| Field | Guidance |
|---|---|
| Placement | **The letter's own last paragraph.** Not a covering email, not a footnote, and not left to the reader's knowledge of what a bridge letter is |
| Content | That the letter is **management's**, is **unaudited**, carries **no practitioner opinion**, was **not reviewed by the service auditor**, and is **not a substitute** for the report or for any examination of the period it covers |
| Restricted use | That the report the letter refers to is restricted-use, and **that this letter does not extend the report's distribution to anyone** |
| No legal conclusion | The letter states facts about management's awareness. It reaches no conclusion about any contract and about no law |

**The obligation to say what a document is worth belongs to the party writing it.** DEC-813 applied that to
Section V of the report and this form applies it to an instrument a customer's auditor will read faster and
trust more.

## 6. What this form does not do

**It does not extend the report.** Nothing in it is tested, no population is sampled, and the letter would
read identically if a control had failed in a way management had not detected — which is, on this
programme's own record, exactly what happened for sixty-eight nights inside a period that *was* examined.

**It does not answer a request for an auditor's signature.** Three of the nine requests asked for one. The
instrument does not admit of it, and a bridge letter with a practitioner's signature on it would be a
different engagement with its own report. The covering note says so; the letter does not argue with the
customer.

**It does not carry good news it was not asked for.** The ISO/IEC 27001:2022 certificate was issued
2027-01-22, inside every gap period, and is in none of the nine letters. A bridge letter answers a question
about changes to the system and the controls **the report** describes, and **a letter that answered the
question it was asked and then added a fact it was not asked for would be a marketing document with a
signature block.**

**And it does not make the customer's own reporting easier than it is.** A gap covered by a management
representation is a gap covered by a management representation. What the customer's auditor does with that
is the customer's auditor's judgement, and this form does not pre-empt it.

## Cross-References

| Document | Relationship |
|---|---|
| [09.09 The Bridge Letter](../09.09-the-bridge-letter.md) | The nine issued, what each says, and what was considered and not done |
| [09.08 Restricted Use and the Distribution](../09.08-restricted-use-and-the-distribution.md) | The restriction §5 requires the letter to state it does not extend |
| [adr/ADR-0044](../adr/ADR-0044-the-bridge-letter-discloses-cnb-c-150.md) | The decision behind §3's unblankable field |
| [logs/decision-log.md](../logs/decision-log.md) | DEC-905 and DEC-909 |
| [logs/evidence-index.md](../logs/evidence-index.md) | EV-911 and EV-912, the nine letters and the request register |
| [logs/obligation-register.md](../logs/obligation-register.md) | O3, and O4 and O9 as §4 asks about them |
| [01.11 Assurance Calendar and Obligations](../../01-program-foundation-dual-framework-governance/01.11-assurance-calendar-and-obligations.md) | O3 as registered, and §4's note on how the instrument is misunderstood |
| [01.02 SOC 2 Landscape and Trust Services Criteria](../../01-program-foundation-dual-framework-governance/01.02-soc-2-landscape-and-trust-services-criteria.md) | Restricted use and the bridge letter as the landscape chapter set them out |
| [ADR-0040](../../08-internal-audit-certification-and-type-ii-examination/adr/ADR-0040-cnb-c-150-is-admitted-outside-the-window.md) | Why `CNB-C-150` has no population inside the observation window |
| [templates/customer-privacy-notification-template.md](../../07-confidentiality-privacy-and-third-party-assurance/templates/customer-privacy-notification-template.md) | The other customer-facing form, and its commitment-engaged field |
