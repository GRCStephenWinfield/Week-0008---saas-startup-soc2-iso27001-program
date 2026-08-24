# Scope Exclusion Log — Phase 02

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-L07 |
| Version | 1.0 |
| Date | 2026-08-11 |
| Owner | Karim Haddad |
| Approver | Nathan Oyelaran |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


The exclusions that required a **decision**, with the reason and — where the exclusion depends on something
being true rather than on something being absent — the claim it depends on. **An exclusion whose dependency
is not written down is an exclusion nobody can re-test.**

This log is not the complete population of assets outside the SOC 2 system. That population is the 246 in
02.06 §3, and most of it is outside by simple consequence rather than by decision: 46 S3 buckets, 29 code
repositories, 16 CI/CD pipelines, 2 non-Aurora data stores and 52 documented procedures serve corporate or
non-production purposes and required no determination. What is recorded here is the subset somebody had to
choose, because those are the only ones a later reader can sensibly challenge.

| ID | Excluded from | What | Reason | Depends on |
|---|---|---|---|---|
| EX-01 | SOC 2 system | `cnb-staging` AWS account | Pre-production; no production customer data | **SR-12** |
| EX-02 | SOC 2 system | `cnb-dev` AWS account | Development; no production customer data | **SR-12** |
| EX-03 | SOC 2 system | `staging-core` Aurora cluster | Serves the excluded environments | SR-12 |
| EX-04 | SOC 2 system | The fourth EKS cluster | Serves the excluded environments | SR-12 |
| EX-05 | SOC 2 system | Professional services and implementation offering | A separate service, not the platform; scoped out under DEC-204 | Nothing — a fact about the offering |
| EX-06 | SOC 2 system | Corporate back-office systems that do not serve the platform | No role in delivering the service | Nothing — a fact about the systems |
| EX-07 | SOC 2 system | 23 of 187 personnel | No access to customer data or the production environment | Access tiering, tested in Phase 05 |
| EX-08 | SOC 2 system | 74 of 96 internal SaaS applications | No role in delivering the service | Nothing — a fact about the applications |
| EX-09 | ISMS | **Nothing** | The ISMS boundary is the whole organisation | — |

**EX-01 through EX-04 all rest on the same claim.** That concentration is deliberate and is stated so that
a reader can see it: four exclusions, one dependency, and if SR-12 fails they fail together. EX-05, EX-06
and EX-08 depend on nothing — they are facts about what the excluded things are, and no test can make them
untrue.

## Cross-References

| Document | Relationship |
|---|---|
| [02.03 Infrastructure and Cloud Architecture](../02.03-infrastructure-and-cloud-architecture.md) | EX-01 to EX-04 |
| [ADR-0007](../adr/ADR-0007-non-production-excluded-on-a-control.md) | The dependency argument |
