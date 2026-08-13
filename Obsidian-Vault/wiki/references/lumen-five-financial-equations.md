---
title: "Five Financial Equations — Lumen X Article"
category: references
tags:
  - finance
  - mathematics
  - investing
  - financial-literacy
  - decision-making
sources:
  - "https://x.com/i/article/2082101954206130402"
  - "https://x.com/i/status/2083603666603528596"
summary: "Distillation of Lumen's X Article on compound growth, doubling time, present value, geometric mean, and inflation-adjusted returns."
provenance:
  extracted: 0.76
  inferred: 0.14
  ambiguous: 0.10
base_confidence: 0.53
lifecycle: draft
lifecycle_changed: "2026-08-02"
tier: supporting
created: "2026-08-02T10:46:10Z"
updated: "2026-08-02T10:46:10Z"
relationships:
  - target: "[[concepts/financial-equations|Financial Equations]]"
    type: implements
  - target: "[[concepts/mathematics|Mathematics]]"
    type: related_to
  - target: "[[concepts/runway-and-burn-rate|Runway and Burn Rate]]"
    type: related_to
---
# Five Financial Equations — Lumen X Article

> [!tldr] The article turns five familiar financial ideas into a compact inspection kit: compound growth, Rule of 72, present value, geometric mean, and real return.

## Overview

Lumen's quoted X Article argues that personal finance becomes less mysterious when decisions are translated into a small set of equations. It presents the formulas as a practical way to inspect salaries, loans, investments, fees, pensions, and inflation rather than accept a headline number. ^[extracted]

The page is an X-native article, not a separate finance blog or independently reviewed financial publication. Its equations are standard; its broad claims about how much of finance they explain and what “the rich” do are rhetorical and assumption-dependent. ^[ambiguous]

## The Five Equations

### 1. Compound growth

$$ FV = PV × (1 + r)^n $$

- `FV`: future value
- `PV`: present value
- `r`: return per period
- `n`: number of periods

The exponent is the key: time lets returns earn returns. The article's example—$10,000 compounding at 8% for 10, 20, 30, 40, and 50 years—illustrates how later decades contribute more than early decades. ^[extracted]

### 2. Rule of 72

$$ \text{doubling time in years} ≈ 72 ÷ \text{return rate in percent} $$

The article presents 72 divided by the percentage return as a mental approximation for doubling time, and applies the same intuition in reverse to inflation and loss of purchasing power. ^[extracted]

### 3. Present value

$$ PV = FV ÷ (1 + r)^n $$

Present value translates a future amount into today's equivalent under a discount or opportunity rate. The article applies it to lottery annuities, insurance payouts, mortgages, and delayed compensation. ^[extracted]

### 4. Geometric mean

$$ ((1 + r₁) × (1 + r₂) × … × (1 + rₙ))^(1/n) − 1 $$

The geometric mean describes compounded performance; the arithmetic mean describes a simple average. Volatility can make the compounded result lower than the advertised arithmetic average. ^[extracted]

### 5. Real return

$$ ((1 + \text{nominal return}) ÷ (1 + \text{inflation})) − 1 $$

Real return measures purchasing-power change after inflation. The article also gives the small-rate approximation `real return ≈ nominal return − inflation`. ^[extracted]

## Practical Reading Rules

- Ask which equation governs a financial claim before reacting to its headline number. ^[extracted]
- Compare time horizons, not only nominal amounts; an earlier dollar has more time to compound. ^[extracted]
- Ask whether a quoted average is arithmetic or geometric. ^[extracted]
- Convert nominal return to real return before deciding whether money actually grew. ^[extracted]
- Treat fees, taxes, risk, liquidity, and changing rates as additional inputs rather than assuming the five equations alone settle a decision. ^[inferred]

## Internal Inconsistency and Scope

The article uses a `+50%, −50%, +50%` example. It first calls the compounded result “closer to +7%,” then calculates $100 → $112.50 and says the annual compounded result is roughly 4%. The latter follows from the stated cash path; the two claims cannot both describe the same CAGR. ^[ambiguous]

The article's claim that these equations explain “roughly 90%” of every honest financial decision, and its claims about fees consuming half of wealth or the rich always earning above inflation, depend on definitions and assumptions that the page does not specify. ^[ambiguous]

This is an educational distillation, not individualized investment, tax, mortgage, insurance, or retirement advice. ^[inferred]

## Related

- [[concepts/financial-equations|Financial Equations]] — cross-source concept page
- [[concepts/mathematics|Mathematics]] — mathematical foundation
- [[concepts/runway-and-burn-rate|Runway and Burn Rate]] — adjacent financial decision context
- [[misc/web-x-com-i-status-2083603666603528596|Lumen's X post]] — parent post and embedded lecture

## Sources

- [Lumen's X Article](https://x.com/i/article/2082101954206130402)
- [Parent X post](https://x.com/i/status/2083603666603528596)
