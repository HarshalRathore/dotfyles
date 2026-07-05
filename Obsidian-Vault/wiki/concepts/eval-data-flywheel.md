---
title: "Eval Data Flywheel"
category: concepts
tags:
  - evals
  - feedback-loop
  - data-flywheel
  - continuous-improvement
  - production-ai
sources:
  - "AIEF2025 - Why should anyone care about Evals? — Manu Goyal, Braintrust - https://www.youtube.com/watch?v=jJ45Yz1lJao"
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/data-flywheel|Data Flywheel]]"
    type: implements
  - target: "[[concepts/eval-flywheel-effect|Eval Flywheel Effect]]"
    type: relates_to
  - target: "[[concepts/ai-iteration-loop|AI Iteration Loop]]"
    type: enables
---

# Eval Data Flywheel

The eval data flywheel is the mechanism by which applying the same evaluation metrics from offline to online production creates a self-reinforcing loop of improvement: production data identifies the most valuable examples for the next iteration, which improves the evals, which improves the product, which generates more production data. ^[extracted]

## The Flywheel Mechanism

The flywheel operates through a specific insight: if you apply the same metrics from offline evals to your online production data, you get data-driven signal about which examples in production are most useful for the next iteration cycle. ^[extracted]

This means:

1. **Offline evals** define the metrics and scoring functions
2. **Online production** applies those same metrics to real traffic
3. **Production signal** identifies which examples are most valuable (highest error rate, highest impact)
4. **Next iteration** focuses on those high-value examples, improving the eval dataset
5. **Improved evals** catch more problems, leading to a better product
6. **More users** → more production data → the flywheel spins faster ^[extracted]

## The Key Insight

The flywheel is powered by metric consistency: using the same evaluation criteria offline and online means production data directly informs which test cases matter most. Without this consistency, production data is just noise — with it, production data becomes the most valuable signal for improvement. ^[inferred]

## Related

- [[concepts/data-flywheel|Data Flywheel]] — The broader operational model
- [[concepts/eval-flywheel-effect|Eval Flywheel Effect]] — The eval-specific mechanism
- [[concepts/ai-iteration-loop|AI Iteration Loop]] — The cycle the flywheel accelerates
- [[concepts/eval-driven-development|Eval-Driven Development]] — The methodology that benefits from the flywheel
