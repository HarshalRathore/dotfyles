---
title: "MT-T-R-E (Mean Time to Resolve Explainable Errors)"
tags:
  - concept
  - ai
  - metric
  - reliability
  - operations
aliases: [mean time to resolve explainable errors, MT-T-R-E, MTTRE]
sources:
  - "AI Engineer World's Fair 2025 - Critical AI Inference your CIO can Trust — Sahil Yadav, Hariharan Ganesan, Telemetrak - https://www.youtube.com/watch?v=6Tpm4m1YxHk"
summary: "A metric measuring how quickly teams can understand why an unexpected AI behavior happened and deploy a fix. Faster MT-T-R-E correlates with more agile teams, fewer defects, and quicker problem resolution."
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.50
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# MT-T-R-E (Mean Time to Resolve Explainable Errors)

MT-T-R-E (Mean Time to Resolve Explainable Errors) is a metric introduced by [[entities/hariharan-ganesan|Hariharan Ganesan]] of [[entities/telemetrak|Telemetrak]] at AI Engineer World's Fair 2025. It measures the time it takes for a team to understand why an unexpected AI behavior happened and deploy a fix. ^[extracted]

## Why It Matters

In the talk's framing, teams without explainability and traceability spend about **70% of their time just identifying the problem**, 20% finding a solution, and 10% deploying it. In some cases, MT-T-R-E takes "several months" to even find a resolution. ^[extracted]

While an AI system makes biased or incorrect decisions for months, the damage escalates quickly — sometimes exponentially. ^[extracted]

## Guardhat Case Study

In the [[entities/guardhat|Guardhat]] GPS drift incident:
- **Without X-TOPS**: 8 months to detect, diagnose, and fix (no system to detect GPS drift) ^[extracted]
- **With X-TOPS**: 7 days (day 0: alert ignored → day 2: attribution telemetry flags anomaly → day 7: solution deployed) ^[extracted]

## Relationship

- [[concepts/x-tops|X-TOPS]] — The framework designed to reduce MT-T-R-E
- [[concepts/trust-adjusted-risk|Trust Adjusted Risk & Dollars]] — Complementary metric for quantifying failure cost
- [[concepts/silent-ai-failures|Silent AI Failures]] — The failures MT-T-R-E measures response to
- [[concepts/ai-trust-pillars|AI Trust Pillars]] — Explainability and traceability pillars enable faster MT-T-R-E

## Sources

- [[references/critical-ai-inference-cio-trust-telemetrak-2025|Critical AI Inference Your CIO Can Trust — AI Engineer World's Fair 2025]]
