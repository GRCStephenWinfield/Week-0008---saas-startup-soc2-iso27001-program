# Template — Data Subject Request Assistance Record

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-T27 |
| Version | 1.0 |
| Date | 2026-11-27 |
| Owner | Tobias Lund |
| Approver | Ana-Sofia Cruz |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


Completed once per assistance request for `CNB-C-129`. It is the record a sampler selects as one unit of
**EC-20**, so every field below is a field somebody will ask for.

**The first thing this form does is state what it is not.** **CloudNimbus assists; it does not respond.**
**SC-09**, from obligation **O6**, commits CloudNimbus to assistance with a data subject's request within
**10 business days**, and **CUEC-08** discloses that the employer responds to its employees' requests with
that assistance. The record set assembled here goes to the employer, who decides what to provide, on what
terms, and to whom. **A form that read as though CloudNimbus were answering the individual would be
describing the wrong arrangement.**

| Field | Guidance |
|---|---|
| Case identifier | The privacy case register reference, logged under `CNB-C-122` |
| **Received date** | The date the request reached CloudNimbus, by any channel. **The ten-business-day clock starts here** and not at the date somebody picked it up |
| Channel | Through the employer · direct through the in-product channel · direct to the Data Protection Officer's mailbox |
| **Due date** | Received date plus ten business days, computed and written down at logging. Not derived later. **A business day is Monday to Friday excluding the holidays on CloudNimbus's published US calendar, and the clock starts on the first business day after receipt** — state the calendar version used, because two days is the whole of the margin on this control |
| Requesting individual | Identified by tenant and worker reference. Do not record more identifying material than the assembly requires |
| Requesting tenant or tenants | See the two-tenant fields below |
| Nature of the request | Access · correction · deletion · an accounting of disclosures · a combination. State each limb separately, because the response has to answer each |
| Identity verification | Performed by whom, on what basis. Where the request arrived through the employer, the employer has verified and this field says so |
| **Tenants in scope — count** | **1, or more than 1.** If more than 1, the two-tenant fields below are mandatory |
| Categories held, per tenant | Drawn from PD-01 to PD-12. The response lists them, which is what P5.1 asks |
| **Disclosures listed** | Every entry in the disclosure register touching this individual's data, with requester, scope, stated basis and date. **This is P6.7 and it is the limb most often omitted** — an individual asking what is held is also asking who has seen it |
| Assembly performed by | A named person |
| Assembly completed date | |
| **Business days elapsed** | Against the ten. State the number, not "within SLA" |
| Delivered to | The employer's named privacy contact, or the individual where the request arrived directly and the employer has confirmed the routing |
| Delivered date | |
| Completeness | Whether the record set delivered is complete, and if not, what was withheld and on whose instruction |
| Intermediate artefacts | Where any working copy of the assembled set was held, and the date it was destroyed |
| Closure date against due date | The two dates, side by side. **EC-20's sampling unit is a case, and the sampler compares these two fields first** |

## The two-tenant fields

**Added after the request of 2026-10-29, and they exist because of it.** An individual had changed employer,
both employers use CloudNimbus, and the record set spanned two tenants. The assembly ran twice, the results
had to be combined for one person without either employer seeing the other's data, and the request was
delivered on **2026-11-16 — twelve business days against ten**. That is **`D-07-03`** and its corrective
action is **`CA-07-05`**.

**The arithmetic on that case turns on one date, which is why the calendar is a field and not an assumption.**
Ten business days from a Thursday 2026-10-29 receipt is **Thursday 2026-11-12** because CloudNimbus's
published calendar does not observe 2026-11-11; had it done so the due date would have been 2026-11-13 and
the overrun one business day rather than two. 07.06 §3 states the convention in full.

| Field | Guidance |
|---|---|
| **Second tenant identified on** | The date. **On the 2026-10-29 case this was day four, and it is the single field most likely to save the next one.** A two-tenant assembly identified on day one has ten business days; one identified on day four has six |
| Tenants in scope | Each tenant, with the date range of the individual's record set in it |
| Assembly performed per tenant | Each assembly is separate and **tenant-scoped**. The scoping predicate is `CNB-C-115`'s and there is no exception to it for this work |
| **Combination method** | How the two record sets were combined into one response **without either tenant seeing the other's data**. Name the person, the location of the working artefacts, and the destruction date |
| Threshold-crossing exports produced | Any export above the 5,000-row threshold generated by the assembly. **Log the case reference against it**, so that `CNB-C-117`'s quarterly review matches it rather than investigating it. `CNB-C-117` compares export events against the tenant's **support case history** and against nothing else, so an export produced by an assembly with no support case behind it will present as unmatched — which is the shape of `IS-32` and the reason this field exists |
| Employer notification | Each employer is told only about its own tenant's part |

**The tension this section records cannot be engineered away by a form.** The control that protects the
individual's data from the other tenant is the control that made assembling the individual's data slow, and
`CA-07-05` is an attempt at a procedure rather than an answer to an architecture. 07.06 §3.1 sets out why the
obvious designs — a privileged cross-tenant assembly role, a per-request temporary grant, an identity-linking
table — all fail on inspection, and why the likely answer is duller: **the assembly stays tenant-scoped and
the combination becomes a documented procedure with a named owner and a destruction rule.**

## What this form does not do

**It does not decide anything.** Whether the individual receives the record set, in what form and subject to
what redaction, is the employer's decision under CUEC-08. Where the request is a **correction**, the decision
belongs to the individual's manager through `CNB-C-130` — CloudNimbus routes the request and retains the
outcome, and 412 correction requests in the period produced **389 approvals and 23 declines**, none of them
CloudNimbus's.

**It reaches no legal conclusion.** No field on this form records whether any statute applied to the request,
what any statutory response period was, or what status the requester holds under any regime. Those are the
employer's questions for its own advisers. **The form records what was asked, what was assembled, when, by
whom, and what was delivered.**

## Cross-References

| Document | Relationship |
|---|---|
| [07.06 Access, Correction and Data Subject Requests](../07.06-access-correction-and-data-subject-requests.md) | The 31 requests, the one at twelve business days, and `CA-07-05` |
| [07.01 The Confidentiality Criteria and the Single Control](../07.01-the-confidentiality-criteria-and-the-single-control.md) | `CNB-C-117`'s review of 2026-10-14, the register it compares against, and `IS-32` |
| [07.07 Disclosure and the Sub-Processor Notice](../07.07-disclosure-and-the-sub-processor-notice.md) | The disclosure register the P6.7 accounting is drawn from |
| [ADR-0034](../adr/ADR-0034-the-sc-09-significance-determination.md) | The SC-09 determination and its bounds |
| [04.06 Controls for Availability, Processing Integrity, Confidentiality and Privacy](../../04-unified-control-framework-and-policy-architecture/04.06-controls-for-availability-processing-integrity-confidentiality-and-privacy.md) | `CNB-C-122`, `CNB-C-129` and `CNB-C-130` as published |
| [04.12 Evidence Architecture](../../04-unified-control-framework-and-policy-architecture/04.12-evidence-architecture.md) | EC-20, the privacy case record and its sampling unit |
| [02.11 Complementary User Entity Controls](../../02-system-scope-isms-boundary-and-description/02.11-complementary-user-entity-controls.md) | CUEC-08 and the criteria it is disclosed against |
| [02.12 Principal Service Commitments and System Requirements](../../02-system-scope-isms-boundary-and-description/02.12-principal-service-commitments-and-system-requirements.md) | SC-09 and its source in O6 |
