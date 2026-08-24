# Template — Access Elevation Record

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-T19 |
| Version | 1.0 |
| Date | 2026-08-11 |
| Owner | Wes Delacroix |
| Approver | Karim Haddad |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


Produced automatically for every elevation into production. There is no standing production access, so
this record exists for every privileged action there is.

| Field | Guidance |
|---|---|
| Request identifier | |
| Requester | |
| **Approver** | A second engineer. Never the requester, never a rota address |
| Reason | Free text, and it is read at review. "Investigation" is not a reason |
| Systems and scope | What the elevation reaches |
| Granted at / expires at | The ceiling is four hours and is enforced, not advised |
| Session recording | Reference to the recording |
| Actions performed | From the recording and the audit trail, not from the requester's account of them |
| Reviewed by / date | Somebody other than the requester and the approver |
| Break-glass | If this was a break-glass use: which account, the alert timestamp, and the review within 48 hours |

**What this record is for.** It is the artefact that makes privileged activity testable at all. A
privileged action performed by somebody who already had the access leaves nothing but its effect, and an
effect is not evidence of authorisation. That is the argument for the whole design, and it is an argument
about evidence rather than about prevention.

**Three access provisioning requests in July** is a small population, and a small population is where a
single missing approval becomes a large deviation rate. The record's completeness matters more here than
it would in a system with hundreds.

## Cross-References

| Document | Relationship |
|---|---|
| [05.03 Privileged Access and Production Entry](../05.03-privileged-access-and-production-entry.md) | The design |
| [diagrams/05-what-each-control-leaves-behind.md](../diagrams/05-what-each-control-leaves-behind.md) | Why it exists |
