# GOV-12 — Forecast Discipline Record

| Field | Value |
|---|---|
| Document ID | CNB-TRUST-2026-G12 |
| Version | 1.0 |
| Date | 2026-08-11 |
| Owner | Karim Haddad |
| Approver | Lorraine Kessler |
| Classification | Confidential — Trust &amp; Assurance Programme // Illustrative Portfolio Sample |


## 1. Matter

Whether to publish a forecast of the risk register at programme close, and on what condition.

## 2. Why the question was asked at all

A programme of this kind is expected to say where its risk profile will be when it finishes. The expectation
is reasonable and the practice is dangerous, because a forecast published early becomes a number the
programme is later measured against, and the pressure at that point is to make the register agree with the
forecast rather than the forecast agree with the register.

The failure mode is specific and has been seen: a close position is published that the register's **own
movement rules make unreachable**, and the closing phase has to report the miss. The rules that make it
unreachable are the rules that make the register honest — impact does not move, likelihood 1 is reserved,
eight is a floor — so the choice at that point is between abandoning the discipline and admitting the error.

## 3. The condition adopted

**No close forecast is published until the arithmetic has been re-derived from the register, entry by entry,
and shown to produce it.** Not estimated. Not sense-checked. Re-derived, by applying the movement rules to
every entry independently and counting the bands that come out.

The derivation is published as working — `diagrams/03-forecast-derivation.md` — rather than kept. A
derivation nobody can see is a derivation nobody can check.

## 4. The forecast published

**0 High · 16 Moderate · 22 Low = 38.**

For the thirty-six baseline entries the rules give **0 High · 14 Moderate ·
22 Low**. Two entries are provided for as additions on evidence, entering as one Moderate and
one High that treatment is expected to bring to Moderate.

**Twelve entries are forecast not to move at all.** Naming them in advance is the point: it is much harder
to quietly assume improvement in an entry you have already told the committee cannot improve.

## 5. What the committee was careful to say

That this is a **forecast**, that Phase 09 reports the actual, and that **the two may differ for reasons
that are events rather than errors**. An entry forecast to fall on likelihood and then contradicted by
something that actually happened must not be honoured. Lorraine Kessler asked for that sentence to be
minuted, and it is minuted here.

## Cross-References

| Document | Relationship |
|---|---|
| [03.07 Risk Acceptance and Residual Risk](../03.07-risk-acceptance-and-residual-risk.md) | Where the forecast is published |
| [diagrams/03-forecast-derivation.md](../diagrams/03-forecast-derivation.md) | The working |
| [ADR-0015](../adr/ADR-0015-no-forecast-until-proved-reachable.md) | The discipline |
