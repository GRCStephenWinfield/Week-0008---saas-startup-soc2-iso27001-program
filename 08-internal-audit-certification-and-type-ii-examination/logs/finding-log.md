# Finding Log — Phase 08

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2027-L31 |
| Version | 1.0 |
| Date | 2027-02-05 |
| Owner | Karim Haddad |
| Approver | Rahul Bhargava |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


**Six independent parties produced findings about CloudNimbus between 2026-09-14 and 2027-02-05, and their
outputs are not the same kind of thing.** This log carries every one of them with the requirement it was
raised against, its status at the vantage, where it is reported, and — the column this log exists for —
**which vocabulary it belongs to.**

> **"Nonconformity" is ISO. "Exception" and "deviation" are SOC 2.** They are not synonyms, they are not
> degrees of one another, and the same fact can be both, either or neither. A log that ran them into one
> column would be asserting that an accredited certification body and a CPA firm had reached the same
> conclusion about the same thing, which neither of them did and neither of them could.

## 1. This phase's findings

| ID | Framework | Requirement | Finding | Status at 2027-02-05 | Classification | Reported at |
|---|---|---|---|---|---|---|
| `MAJ-01` | ISO/IEC 27001:2022 | **Clause 9.2.1**, **clause 9.2.2 a)**, and **A.5.22** | The internal audit of 2026-09-14 to 09-25 covered the 93 Annex A controls in the Statement of Applicability — the 91 determined necessary against their implementation status and the 2 excluded against their justification; it did not cover clauses 4 to 10 and did not cover `eu-central-1` operations. `CNB-C-146` states a programme across clauses 4 to 10. The scope CloudNimbus gave its supplier was never reviewed for adequacy | **Verified closed 2027-01-15.** Correction and plan 2026-12-19; supplementary audit 2027-01-13 | **ISO major nonconformity. Not a test exception** | 08.05, 08.07, 08.12 |
| `MIN-01` | ISO/IEC 27001:2022 | **Clause 7.5.3** | Two further items of documented information past their review date | Corrective action plan accepted 2026-12-19; implementation scheduled for verification at the first surveillance audit | **ISO minor nonconformity** | 08.06 |
| `MIN-02` | ISO/IEC 27001:2022 | **A.5.30**, **clause 8.1** | ICT readiness for business continuity: two of the four limbs — implementation and maintenance — are carried by no control in the library | Corrective action plan accepted 2026-12-19; **closes `IS-24`** | **ISO minor nonconformity** | 08.06 |
| `MIN-03` | ISO/IEC 27001:2022 | **A.8.16**, **clause 9.1** | The evaluation-methods gap remained open for four of the sixteen assurance calendar items | Corrective action plan accepted 2026-12-19 | **ISO minor nonconformity** | 08.06 |
| `MIN-04` | ISO/IEC 27001:2022 | **A.5.19**, **A.5.22** | One Tier 1 vendor held no current assurance artefact at two consecutive quarterly refreshes | Corrective action plan accepted 2026-12-19; `CA-07-03` open | **ISO minor nonconformity — and the same fact is test exception 6** | 08.06, 08.11 |
| `NC-INT-01` | ISO/IEC 27001:2022 | **Clause 7.5.3** | Three items of documented information carried a review date that had passed by more than thirty days | **Closed 2026-10-09** — and the mechanism was not fixed, which is `MIN-01` | **ISO minor nonconformity** (internal audit) | 08.01 |
| `NC-INT-02` | ISO/IEC 27001:2022 | **Clause 9.1** | For six of the sixteen assurance calendar items the ISMS does not document the methods for evaluating the results | **Partially closed** — four remained open and became `MIN-03` | **ISO minor nonconformity** (internal audit) | 08.01 |
| `AOC-01` | ISO/IEC 27001:2022 | **Clause 6.1.3 d)** | Statement of Applicability status fields stale: A.5.28 and A.8.32 `Partial` with no dated completion plan; A.7.10 and A.7.4 statuses overtaken by DEC-511 and `CNB-C-047`. **Would have escalated to a major at Stage 2** | **Closed** — SoA reissued 2026-10-30, DEC-803 | **Neither — Stage 1 area of concern** | 08.03 |
| `AOC-02` | ISO/IEC 27001:2022 | **Clause 4.3** | The ISMS scope statement did not reflect the region-partitioned security log archive or the sub-processor change then in notice. **Would have escalated to a major at Stage 2** | **Closed** — scope statement reissued 2026-10-28, Northgate notified inside O10's thirty days, DEC-804. Ties **R-32** | **Neither — Stage 1 area of concern** | 08.03 |
| `AOC-03` | ISO/IEC 27001:2022 | **Clause 10.2** | `CNB-C-136`'s re-scheduled 2026-08 occurrence did not happen and the clause 10.2 record carried no dated closure | **Closed** — `CA-06-04` dated; occurrence performed 2026-12-08 | **Neither — Stage 1 area of concern** | 08.03 |
| `AOC-04` | ISO/IEC 27001:2022 | **Clause 7.2** | Competence records incomplete for two of the eight security staff | **Closed 2026-11-06** | **Neither — Stage 1 area of concern** | 08.03 |
| `AOC-05` | ISO/IEC 27001:2022 | **Clause 4.2** | The interested-parties determination had not been reviewed since 2026-02 | **Closed** — reviewed 2026-11-13 | **Neither — Stage 1 area of concern** | 08.03 |
| `AOC-06` | ISO/IEC 27001:2022 **Amd 1:2024** | **Clause 4.1** | The climate determination was recorded in a decision log and not in the clause 4.1 documented information | **Closed** — moved into the clause 4.1 record 2026-10-22 | **Neither — Stage 1 area of concern** | 08.03 |
| `OFI-01` | ISO/IEC 27001:2022 | Clause 7.4 | Communication about the ISMS is performed but is not planned as a set — on what, when, with whom, by whom and how | **Not adopted at the time.** The same subject was raised as a **minor nonconformity** at the January correction audit | **Neither — opportunity for improvement** | 08.06 |
| `OFI-02` | ISO/IEC 27001:2022 | Clause 6.2 | Two of the eight objectives carry a measure read from a status report rather than from the evidence store, which `CNB-C-144` requires | Adopted; both measures re-sourced 2027-01-15 | **Neither — opportunity for improvement** | 08.06 |
| `OFI-03` | ISO/IEC 27001:2022 | A.5.7 | Threat intelligence dispositions are recorded, but the source set itself is not periodically re-evaluated | Adopted; added to `CNB-C-134`'s semi-annual membership review | **Neither — opportunity for improvement** | 08.06 |
| `OFI-04` | ISO/IEC 27001:2022 | Clause 7.2 | Competence for the two people who operate the evidence store is held informally, against the concentration **R-25** describes | Adopted; scheduled into the 2027 competence cycle | **Neither — opportunity for improvement** | 08.06 |
| `OFI-05` | ISO/IEC 27001:2022 | A.8.16 | Alert-tuning decisions from `CNB-C-070`'s weekly review are not linked to the register entries they bear on | **Declined, with the reason recorded.** The link would be created by hand and would decay | **Neither — opportunity for improvement** | 08.06 |
| `OFI-06` | ISO/IEC 27001:2022 | Clause 9.1 | Monitoring results are presented to the management review annually where the underlying data is monthly | Adopted; the monthly series is carried to the 2027 review | **Neither — opportunity for improvement** | 08.06 |
| `OFI-07` | ISO/IEC 27001:2022 | A.5.36 | `CNB-C-023` reports controls overdue against their cadence and does not report a control whose evidence class produced **no unit** | **Declined for now, and referred.** It is `IS-33`'s question asked from the other end | **Neither — opportunity for improvement** | 08.06 |
| `PT2-01` | — | Second penetration test — mobile application | The Android client retained the last export summary in an unencrypted preferences store after sign-out | Remediated 2026-11-11, retested clean 2026-11-20 | **Neither — penetration test finding, Medium** | 08.04 |
| `PT2-02` | — | Second penetration test — payroll export path | The export service returned an empty file for a period outside the tenant's configured pay calendar, so a caller could not distinguish "no data" from "wrong period" | Remediated 2026-11-11, retested clean 2026-11-20 | **Neither — penetration test finding, Medium** | 08.04 |
| `PT2-03` | — | Second penetration test — payroll export path | An export file's signed URL remained valid for its full twenty-four hours after the file had been re-issued, so a superseded URL could be replayed to retrieve a file the tenant had corrected. **A confidentiality finding in the export path, not an isolation finding** | Remediated **2026-11-11** ahead of the mobile release under DEC-805, retested clean **2026-11-20** | **Neither — penetration test finding, High** | 08.04 |
| `PT2-04` | — | Second penetration test — mobile application | Certificate pinning, shipped as `PT-14`'s remediation in the 2026-08-14 release, did not extend to the export-download host | Remediated 2026-11-11, retested clean 2026-11-20 | **Neither — penetration test finding, Medium** | 08.04 |
| `PT2-05` | — | Second penetration test — mobile application | The iOS client wrote the tenant identifier and export file name to the device console at informational level | Remediated 2026-12-04 | **Neither — penetration test finding, Low** | 08.04 |
| `PT2-06` | — | Second penetration test — payroll export path | Response timing distinguished a valid from an invalid export file identifier | Remediated 2026-12-04 | **Neither — penetration test finding, Low** | 08.04 |
| `PT2-07` | — | Second penetration test — mobile application | The record set was not cleared from memory when the application was backgrounded | Remediated 2026-12-04 | **Neither — penetration test finding, Low** | 08.04 |
| `PT2-08` | — | Second penetration test — payroll export path | A response header on the export host disclosed the storage backend | Remediated 2026-11-20 | **Neither — penetration test finding, Low** | 08.04 |
| `PT2-09` | — | Second penetration test — payroll export path | TLS session tickets on the export host carried a lifetime longer than the internal standard permits | Remediated 2026-12-04 | **Neither — penetration test finding, Low** | 08.04 |

**Nine penetration test findings: 0 Critical · 1 High · 3 Medium · 5 Low.** 0 + 1 + 3 + 5 = 9.

## 2. The nine test exceptions — a different register entirely

**These are not findings of any audit in §1.** They are the results of the service auditor's tests of
operating effectiveness, they will be disclosed in **Section IV** with the service auditor's evaluation
alongside them, and every one of them was found by CloudNimbus before it was found by Ashcombe &amp; Doyle.
08.11 carries them in full.

| # | Criterion | Control | Deviations / population | Classification | Reported at |
|---|---|---|---|---|---|
| 1 | A1.2 | `CNB-C-098` | 1 of 6 | **Both** — test exception **and** clause 10.2 nonconformity. Requirement not fulfilled: **A.8.13**, backup information, which the SoA determines necessary and `CNB-C-098` implements. `CA-06-01` | 08.11; `D-06-01` |
| 2 | A1.1, A1.2 | `CNB-C-096` | 1 event | **Test exception and NOT a nonconformity** — a design corrected by amendment is a correction, and nothing the ISMS required was left undone | 08.11; `D-06-02` |
| 3 | PI1.3 | `CNB-C-108` | 2 of 58 | **Both.** Requirement not fulfilled: a **documented procedure** — `POL-09`'s two-business-day clearance requirement, which `CNB-C-108` carries. The row cites **no Annex A control**, and the record says so rather than reaching for one. `CA-06-02` | 08.11; `D-06-03` |
| 4 | CC8.1 | `CNB-C-082` | 2 of 15 | **Both.** Requirement not fulfilled: **A.8.32**, change management, and `POL-10`'s five-business-day retrospective approval. `CA-06-03` | 08.11; `D-06-04` |
| 5 | P4.2 | `CNB-C-126`, `CNB-C-127` | 68 of 184 nights on 1 rule in 1 region — **37.0%** | **Both.** Requirement not fulfilled: **A.8.10**, information deletion, which both controls implement. `CA-07-02` | 08.11; `D-07-01` |
| 6 | CC9.2 | `CNB-C-092` | 2 of 24 | **Both.** Requirement not fulfilled: **A.5.19** and **A.5.22**, which is the same fact as `MIN-04`. `CA-07-03` | 08.11; `D-07-02` |
| 7 | P5.1 | `CNB-C-129` | 1 of 58 | **Both.** Requirement not fulfilled: **A.5.34**, privacy and protection of PII, and the SC-09 ten-business-day commitment `CNB-C-129` carries into the ISMS. `CA-07-05` | 08.11; `D-07-03` |
| 8 | CC6.2 | `CNB-C-037` | 2 of 40 | **Both.** Requirement not fulfilled: **A.5.18**, access rights provisioned in accordance with the topic-specific policy, and `POL-03`. `CA-08-01` | 08.11 |
| 9 | CC6.3 | `CNB-C-040` | 3 of 47 revocations | **Both.** Requirement not fulfilled: **A.5.18** — access rights removed in accordance with the topic-specific policy — and **A.8.2** on privileged access. `CA-08-02` | 08.11 |

**Every row classified *Both* names the requirement that was not fulfilled**, because the phase's own
`templates/nonconformity-record-template.md` says a nonconformity is the non-fulfilment of a requirement and
that **a finding with no nameable requirement behind it is an observation**. Of the eight: four name an Annex
A control the Statement of Applicability determines necessary and nothing else — exceptions 1, 5, 6 and 9;
three name an Annex A control together with the policy or commitment that carries it into the ISMS —
exceptions 4, 7 and 8; and **one names a documented procedure and no Annex A control at all**, which is
exception 3's position and is written down rather than papered over, because `CNB-C-108` carries a dash in
its Annex A column and the ISO limb of that finding rests on `POL-09` alone. A *Both* with nothing in the
requirement line would be a classification asserting an ISO finding that no ISO requirement supports.

**And one nonconformity that is not among the nine.** `D-06-05` — `CNB-C-136`'s re-scheduled 2026-08
occurrence did not take place — is a clause 10.2 nonconformity with `CA-06-04` attached, and it is **not a
test exception**, because `CNB-C-136` is ISO-only, cites no trust services criterion, and appears in no
Section IV. Its window population is one and its deviation rate is one hundred per cent, against nothing the
examination assesses.

## 3. Four facts and four different answers

| Fact | ISO nonconformity? | SOC 2 test exception? |
|---|---|---|
| `D-06-01` — the August restore test was not performed | **Yes** | **Yes** |
| `MAJ-01` — the internal audit programme did not cover clauses 4 to 10 or `eu-central-1` | **Yes** | **No** |
| `D-06-02` — `CNB-C-096`'s probe performed a read | **No** | **Yes** |
| `D-06-05` — `CNB-C-136`'s sole window occurrence did not happen | **Yes** | **No** |

08.12 §5 argues each of the four. What the table is for here is the property no summary sentence carries:
**the two columns are populated by different tests applied by different parties, and neither column can be
derived from the other.**

## 4. Three things this log records that are easy to lose

**Three of the four minors were already in CloudNimbus's own records before Northgate arrived.** `MIN-01` is
Camberwell's `NC-INT-01`, recorded closed on 2026-10-09 — a closure that fixed three items and did not fix
the mechanism that let them go stale, which is exactly the distinction **clause 10.2 draws between a
correction and a corrective action**, with a date on it. `MIN-03` is `NC-INT-02` partially closed and found
again by the next auditor. `MIN-04` is Phase 07's `D-07-02`, found by CloudNimbus in July, again in October,
and by Northgate in December — **finding it three times and not closing it is the finding.**

**`MAJ-01` was also in CloudNimbus's records, and that is worse rather than better.** It was there as a
**decision**, not as a finding: Camberwell's scope note at §1.3, read on 2026-09-25, agreed on 2026-09-28
under DEC-801, presented to the management review of 2026-09-30 under input d) 3) and deferred under
DEC-802. An entity that failed to notice a gap has a detection problem. **An entity that noticed it and
decided to leave it has a different problem**, and 08.12 §3 records that the engagement team read the
decision record and that it does not help.

**An opportunity for improvement is not a nonconformity and carries no obligation** — which is why `OFI-05`
and `OFI-07` were declined with reasons recorded and nothing further is owed on either. It is also why
`OFI-01` is the row in §1 worth reading twice. Northgate raised the clause 7.4 communication planning gap as
an opportunity in December, CloudNimbus did not adopt it, and **the same subject came back six weeks later
as a minor nonconformity in the correction audit CloudNimbus itself commissioned.** No obligation was
breached by declining it. The finding still arrived.

## 5. The correction audit, 2027-01-05 to 2027-01-09

The internal audit of clauses 4 to 10 and of `eu-central-1` operations, conducted by Camberwell Risk
Partners under a scope CloudNimbus rewrote, raised **1 minor nonconformity — clause 7.4, on how the ISMS
communicates changes to interested parties — and 4 opportunities for improvement.** Its findings are
entered in the improvement register under the **2027** internal audit programme rather than in this log,
which covers the 2026 programme and the certification audit, and they carry that programme's identifiers.

**The audit that was supposed to exist found something, which is the point of it existing.** A correction
audit that returned nothing would have raised the question of whether the scope had been rewritten or only
re-worded.

## Cross-References

| Document | Relationship |
|---|---|
| [08.01 The Clause 9.2 Internal Audit](../08.01-the-clause-9-2-internal-audit.md) | `NC-INT-01`, `NC-INT-02` and the scope note |
| [08.03 ISO Stage 1](../08.03-iso-stage-1-and-what-a-readiness-review-does-not-do.md) | `AOC-01` to `AOC-06`, and the two that would have escalated |
| [08.04 The Second Penetration Test](../08.04-the-second-penetration-test.md) | `PT2-01` to `PT2-09` and the forty-one crafted access paths |
| [08.05 Stage 2 and the Major Nonconformity](../08.05-stage-2-and-the-major-nonconformity.md) | `MAJ-01` as Northgate stated it |
| [08.06 The Minor Nonconformities and the Opportunities](../08.06-the-minor-nonconformities-and-the-opportunities.md) | `MIN-01` to `MIN-04` and `OFI-01` to `OFI-07` |
| [08.07 Correction, Corrective Action and the Certificate](../08.07-correction-corrective-action-and-the-certificate.md) | §5's correction audit and the certification sequence |
| [08.11 The Nine Test Exceptions](../08.11-the-nine-test-exceptions.md) | §2's nine in full |
| [08.12 The Scheduling Collision](../08.12-the-scheduling-collision.md) | §3's four cases argued |
| [logs/raid-log.md](raid-log.md) | `IS-24` closed by `MIN-02`, and `IS-35` and `IS-36` |
| [logs/decision-log.md](decision-log.md) | DEC-801 to DEC-806 and DEC-811 |
| [06.12 Quarter Three Operating Record](../../06-availability-processing-integrity-and-operations/06.12-quarter-three-operating-record.md) | `D-06-01` to `D-06-05` and the clause 10.2 test applied to each |
| [07.12 Quarter Four to Date — Operating Record](../../07-confidentiality-privacy-and-third-party-assurance/07.12-quarter-four-to-date-operating-record.md) | `D-07-01` to `D-07-03` |
| [05.11 Penetration Testing Programme and Findings](../../05-security-criteria-and-technical-controls/05.11-penetration-testing-programme-and-findings.md) | `PT-01` to `PT-16`, the first test, and `PT-14` which `PT2-04` returns to |
