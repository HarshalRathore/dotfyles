---
title: "Trust Adjusted Risk & Dollars"
tags:
  - concept
  - ai
  - metric
  - risk
  - enterprise
aliases: [trust adjusted risk, TAR, trust risk premium, trust cost quantification]
sources:
  - "AI Engineer World's Fair 2025 - Critical AI Inference your CIO can Trust — Sahil Yadav, Hariharan Ganesan, Telemetrak - https://www.youtube.com/watch?v=6Tpm4m1YxHk"
summary: "A metric that puts a dollar value on what happens when AI trust breaks — including fines, lost customers, reputational damage, and engineering effort. Designed to help CIOs quantify the business case for AI governance investment."
provenance:
  extracted: 0.82
  inferred: 0.15
  ambiguous: 0.03
base_confidence: 0.50
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Trust Adjusted Risk & Dollars

Trust Adjusted Risk & Dollars is a metric introduced by [[entities/hariharan-ganesan|Hariharan Ganesan]] of [[entities/telemetrak|Telemetrak]] at AI Engineer World's Fair 2025. It aims to put a price tag on what happens when AI trust breaks — fines, lost customers, damaged reputation, engineering effort, and regulatory scrutiny. ^[extracted]

## Why It Matters

The talk argues that a serious AI incident — like a privacy bug or bias in a credit decisioning system — could quickly escalate to **$700 million** in total costs when considering all fallout vectors. ^[extracted]

Components of trust failure cost:
1. **Direct fines** — Regulatory penalties ^[extracted]
2. **Engineering effort** — Cost to diagnose and fix ^[extracted]
3. **Regulatory scrutiny** — Ongoing compliance costs ^[extracted]
4. **Loss of trust and brand value** — The hardest to quantify, but potentially the largest ^[extracted]

## Challenges

Reputational damage is described by [[entities/sahil-yadav|Sahil Yadav]] as a **silent failure** — very hard to measure precisely. "You can find ways to quantify some dollars to it, but it's really hard to predict." ^[extracted]

## Business Case

CIO-level conversations about AI trust must be framed in dollar terms. The talk presents the metric as the primary language for convincing CIOs to invest in [[concepts/x-tops|X-TOPS]] and trust infrastructure:

- Risk exposure at [[entities/guardhat|Guardhat]]: ~$2.5 million per site per year ^[extracted]
- Direct fine savings from solving the GPS drift: $500K per site per year ^[extracted]

## Related

- [[concepts/mttre|MT-T-R-E]] — Complementary metric for response time
- [[concepts/x-tops|X-TOPS]] — The framework for reducing both MT-T-R-E and trust adjusted risk
- [[concepts/silent-ai-failures|Silent AI Failures]] — The failures this metric quantifies
- [[concepts/ai-trust-pillars|AI Trust Pillars]] — The principles that reduce trust adjusted risk

## Sources

- [[references/critical-ai-inference-cio-trust-telemetrak-2025|Critical AI Inference Your CIO Can Trust — AI Engineer World's Fair 2025]]
