# Decision Log — Phase 06

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-L21 |
| Version | 1.0 |
| Date | 2026-09-30 |
| Owner | Rahul Bhargava |
| Approver | Karim Haddad |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


This log records **who took a decision**. Where it names a different person from the RACI in `01.08`, both
are correct: the RACI governs accountability for the conduct of an activity, this log governs the decision.

| ID | Decision | Date | Decider | Recorded at |
|---|---|---|---|---|
| DEC-601 | The CAL-10 exercise report accepted; six findings entered with owners and dates | 2026-08-24 | Wes Delacroix | GOV-21 |
| DEC-602 | 04.11's cadence commitment corrected — CAL-06 operates late in its quarter by design | 2026-09-02 | Rahul Bhargava | 06.11 |
| DEC-603 | Severity-1 declared and the incident commander named | 2026-09-08 | Wes Delacroix | 06.05 |
| DEC-604 | A rolling restart chosen over a second failover | 2026-09-08 | Wes Delacroix | 06.05 |
| DEC-605 | The incident treated as a DC4 disclosure matter and the draft written at the vantage | 2026-09-09 | Rahul Bhargava | ADR-0028 |
| DEC-606 | Five post-incident actions accepted with owners and dates | 2026-09-11 | Wes Delacroix | GOV-22 |
| DEC-607 | Availability defined as a read **and** a write succeeding | 2026-09-11 | Nathan Oyelaran | ADR-0027 |
| DEC-608 | The missing August restore test recorded as a deficiency and not back-dated | 2026-09-14 | Karim Haddad | ADR-0026 |
| DEC-609 | `CNB-C-096` amended and Phase 04 re-issued | 2026-09-15 | Karim Haddad | 06.01 |
| DEC-610 | Service credits applied under the MSA on request | 2026-09-18 | Marisol Vega | 06.05 |
| DEC-611 | All six reduction proposals declined; **R-08 re-rated upward** from 4 × 3 = 12 to 5 × 3 = 15, Moderate to High, with Elise Fontaine's High-band retention minuted | 2026-09-29 | Karim Haddad | GOV-24 |
| DEC-612 | A quarterly in-region failover game day added from Q4 | 2026-09-30 | Wes Delacroix | ADR-0030 |
| DEC-613 | SC-01's maintenance-window exclusion added to `02.12` and **Phase 02 re-issued** | 2026-09-24 | Marisol Vega | 06.01 · 06.06 |

**Two of these decisions were taken inside the event they concern, and that is the exception rather than the
pattern.** DEC-603 and DEC-604 are both dated 2026-09-08 and were taken by the incident commander during
`INC-2026-031` — the declaration of Severity-1 at 14:31 and, at 15:04, the choice of a rolling restart of
the eleven services on the core write path over a second Aurora failover. Everywhere else in this
portfolio a logged decision follows the thing it decides about by days or weeks. Here it is contemporaneous
because `CNB-C-071` requires a timestamped incident record capturing decisions, actions and communications
until closure, and **a decision taken under pressure and written down afterwards is a reconstruction, not a
record.**

**Three of these decisions reach backwards into a published phase, and they reach into two different
phases.** DEC-602 corrects a commitment 04.11 made about scheduling and DEC-609 amends a control statement
04.06 published; both re-issue **Phase 04**. **DEC-613 re-issues Phase 02**: `02.12` published SC-01 as
"99.9% monthly availability of the platform" and did not state that the commitment excludes maintenance
windows announced at least fourteen days in advance. Neither is presented as a discovery of an error by
somebody else. The cadence line was written before CAL-06 had operated twice against a register;
`CNB-C-096` was written before anybody had watched a read probe report healthy through a write outage; and
SC-01's exclusion did not matter to anyone until an announced four-hour window on 2026-08-19, notified
2026-08-05 and consuming 23 customer-visible minutes, and a 71-minute unannounced outage fell in the same
quarter. **A control library that is never amended is a library nobody has
operated, and a description of a system that is never amended is a description nobody has measured
against.**

**DEC-613 is dated before DEC-612 and the identifiers are still in order.** The series is allocated in the
order decisions were recorded in this log, not in the order they were taken, and the SC-01 exclusion was
recorded once the `EC-09` re-derivation of 2026-09-24 made the exclusion arithmetically visible. Renumbering
to make the dates ascend would edit the log to look tidier than the process was.

**DEC-610 is dated ten days after the incident, and the gap is the mechanism rather than a delay.** Service
credits under the master services agreement are applied to affected tenants **on request**, so the decision
is a decision about how requests would be treated, taken once the population of affected tenants was known
from the reconstruction. No amount appears in this portfolio.

**DEC-612 is dated 2026-09-30, the phase's vantage**, and it schedules something that has not happened. The
quarterly in-region failover game day is recorded as `ACT-06-04`, scheduled for 2026-11-05 and **not
performed**. A decision to do something is not evidence that it was done, and this log distinguishes the two
in the only way available: by saying so.

## Cross-References

| Document | Relationship |
|---|---|
| [06.13 Phase Summary and Transition](../06.13-phase-summary-and-transition.md) | The thirteen decisions tabulated with the five ADRs |
| [06.05 The Severity-1 Incident of 2026-09-08](../06.05-the-severity-1-incident-of-2026-09-08.md) | DEC-603, DEC-604 and DEC-610 |
| [06.11 Operations, Monitoring and the Quarterly Review](../06.11-operations-monitoring-and-the-quarterly-review.md) | DEC-602 and DEC-611 |
| `02-system-scope-isms-boundary-and-description` | Re-issued as a consequence of DEC-613 |
| `04-unified-control-framework-and-policy-architecture` | Re-issued as a consequence of DEC-602 and DEC-609 |
