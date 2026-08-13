---
title: "Financial Equations"
category: concepts
tags:
  - finance
  - mathematics
  - investing
  - financial-literacy
  - decision-making
sources:
  - "[[references/lumen-five-financial-equations|Five Financial Equations — Lumen X Article]]"
  - "https://x.com/i/article/2082101954206130402"
summary: "Five compact formulas for inspecting financial claims: compound growth, doubling time, present value, geometric mean, and real return."
provenance:
  extracted: 0.74
  inferred: 0.17
  ambiguous: 0.09
base_confidence: 0.37
lifecycle: draft
lifecycle_changed: "2026-08-02"
tier: supporting
created: "2026-08-02T10:46:10Z"
updated: "2026-08-02T10:46:10Z"
relationships:
  - target: "[[references/lumen-five-financial-equations|Five Financial Equations — Lumen X Article]]"
    type: derived_from
  - target: "[[concepts/mathematics|Mathematics]]"
    type: related_to
  - target: "[[concepts/runway-and-burn-rate|Runway and Burn Rate]]"
    type: related_to
---
# Financial Equations

Financial claims become easier to inspect when their headline numbers are translated into a few mathematical relationships. The five-equation toolkit distilled from [[references/lumen-five-financial-equations|Lumen's X Article]] covers growth, time, discounting, volatility, and purchasing power. ^[extracted]

## The Toolkit

| Question | Formula | What it exposes |
|---|---|---|
| What does money become over time? | `FV = PV × (1 + r)^n` | Compound growth and the value of time |
| How fast does money double? | `years ≈ 72 ÷ rate (%)` | A fast estimate for growth or inflation |
| What is a future amount worth now? | `PV = FV ÷ (1 + r)^n` | Discounting and opportunity cost |
| What did a changing investment actually compound at? | `((1+r₁)(1+r₂)…(1+rₙ))^(1/n) − 1` | Geometric mean versus arithmetic average |
| Did purchasing power increase? | `(1 + nominal return) ÷ (1 + inflation) − 1` | Real rather than nominal return |

The formulas are compact tools, not a complete financial model. Taxes, fees, liquidity, default risk, changing rates, and cash-flow timing can materially change a decision. ^[inferred]

## Reading Practice

- Compare future and present amounts using the same rate and horizon.
- Treat a quoted “average return” as incomplete until its averaging method is known.
- Separate nominal account growth from real purchasing-power growth.
- Use the Rule of 72 as a mental estimate, then calculate precisely when the decision matters.
- Ask which assumptions make the result change; the equation makes those assumptions visible. ^[inferred]

## Boundaries

The source article's claim that five formulas explain most financial decisions is a rhetorical organizing device, not a measured result. ^[ambiguous] The `+50%, −50%, +50%` example also contains an internal mismatch: its stated cash path implies about 4% annual compounding, while an earlier sentence says “closer to +7%.” ^[ambiguous]

This page is educational and does not provide individualized investment, tax, credit, insurance, or retirement advice. ^[inferred]

## Related

- [[references/lumen-five-financial-equations|Five Financial Equations — Lumen X Article]] — source distillation
- [[concepts/mathematics|Mathematics]] — mathematical foundation
- [[concepts/runway-and-burn-rate|Runway and Burn Rate]] — adjacent financial planning concept
- [[misc/web-x-com-i-status-2083603666603528596|Lumen's X post]] — parent source
