# Template — Asset Record

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-T05 |
| Version | 1.0 |
| Date | 2026-08-11 |
| Owner | Wes Delacroix |
| Approver | Karim Haddad |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


One record per asset in the inventory. **Two boundary flags, not one** — that is the mechanical consequence
of ADR-0006, and an inventory with a single in-scope flag cannot support two frameworks with different
boundaries.

| Field | Guidance |
|---|---|
| Asset ID | Sequential within the asset class |
| Asset class | AC-01 to AC-12 |
| Description | What it is, in a sentence a non-specialist can check |
| Owner | A named individual. Never a team, never a rota |
| Classification | Restricted · Confidential · Internal · Public. A container inherits the highest classification it holds |
| **In the ISMS** | Always yes. The ISMS boundary is the whole organisation, so a "no" here means the record is in the wrong register |
| **In the SOC 2 system** | Yes or no, with the reason. A "no" that depends on a control being effective must name the requirement it depends on — see the scope exclusion log |
| Personal data | Which PD categories, if any |
| Residency | Region, where the asset holds personal data at rest |
| Retention | Which RT rule governs the data it holds |
| Dependencies | Subservice organisations, sub-processors, other assets |
| Last reviewed | Date and reviewer |

**The field that fails most often is Owner.** An asset owned by "Platform Engineering" is an asset nobody
answers for, and the first time it matters is when a criterion is being tested against it.

## Cross-References

| Document | Relationship |
|---|---|
| [02.06 Information Asset Inventory](../02.06-information-asset-inventory.md) | The inventory this populates |
| [logs/scope-exclusion-log.md](../logs/scope-exclusion-log.md) | Where a dependent exclusion is recorded |
