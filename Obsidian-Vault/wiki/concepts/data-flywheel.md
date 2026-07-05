---
title: "Data Flywheel"
category: concepts
tags:
  - feedback-loop
  - continuous-improvement
  - ai-agents
  - production-ai
  - data-collection
aliases:
  - data flywheel
  - feedback flywheel
sources:
  - "AIEF2025 - Turning Fails into Features: Zapier's Hard-Won Eval Lessons — Rafal Willinski, Vitor Balocco, Zapier - https://www.youtube.com/watch?v=blrovBxxN9o"
  - "AIEF2025 - Evals 101 — Doug Guthrie, Braintrust - https://www.youtube.com/watch?v=bk0TmxoZlUY"
  - "AIEF2025 - Why should anyone care about Evals? — Manu Goyal, Braintrust - https://www.youtube.com/watch?v=jJ45Yz1lJao"
provenance:
  extracted: 0.75
  inferred: 0.20
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/eval-flywheel-effect|Eval Flywheel Effect]]"
    type: relates-to
  - target: "[[concepts/ai-iteration-loop|AI Iteration Loop]]"
    type: implements
  - target: "[[entities/zapier|Zapier]]"
    type: used-by
---

# Data Flywheel

The data flywheel is a continuous improvement loop specific to AI agent products, where production usage generates feedback data that improves the agent, which attracts more users, which generates more feedback data, and so on. The flywheel is the central operational model for production AI systems — once you ship, your responsibility shifts from building the prototype to building the flywheel. ^[extracted]

## The Flywheel Cycle

```
Ship to users → Collect feedback → Understand usage patterns & failures → Build more evals → Burn features → Product gets better → More users → More failures → Build more features → Repeat
```

This cycle distinguishes AI agent development from traditional software: the initial prototype is only the starting point, and the real work begins after users start interacting with the product. ^[extracted]

## The Non-Determinism Double-Bind

The data flywheel exists because of two compounding sources of non-determinism:

1. **AI is non-deterministic** — The same inputs can produce different outputs
2. **Users are non-deterministic** — Users interact with products in ways developers cannot imagine upfront

This double-bind means that no amount of upfront design can anticipate all failure modes and usage patterns. The flywheel is the mechanism for discovering and handling the "surprising amount of detail" that emerges in production. ^[extracted]

## First Step: Instrumentation

The first step in starting the flywheel is proper instrumentation — recording agent runs with enough detail to debug failures and create evals. Without instrumentation, there is no data to feed the flywheel. ^[extracted]

## Metric Consistency: The Flywheel's Engine

[[entities/manu-goyal|Manu Goyal]] ([[entities/braintrust|Braintrust]]) contributed a key insight to the data flywheel: if you apply the same metrics from offline evals to your online production data, you get data-driven signal about which examples in production are most useful for the next iteration cycle. ^[extracted]

This means production data is not just noise — it becomes the most valuable signal for improvement when the evaluation criteria are consistent between offline and online modes. The worst-performing production examples become the highest-priority additions to the offline eval dataset. ^[extracted]

## Relationship to Eval Flywheel

The data flywheel is the broader operational model; the [[concepts/eval-flywheel-effect|eval flywheel effect]] is the specific mechanism within it that converts production observations into improved evaluation datasets. The data flywheel encompasses both eval-driven improvement and feature development driven by usage patterns. ^[inferred]

## Related

- [[concepts/eval-flywheel-effect|Eval Flywheel Effect]] — The eval-specific mechanism
- [[concepts/ai-iteration-loop|AI Iteration Loop]] — The operational cycle the flywheel implements
- [[concepts/instrumentation-deep-traces|Instrumentation & Deep Traces]] — First step to starting the flywheel
- [[entities/zapier|Zapier]] — Case study provider

## Sources

- AIEF2025 - Turning Fails into Features: Zapier's Hard-Won Eval Lessons — Rafal Willinski, Vitor Balocco, Zapier - https://www.youtube.com/watch?v=blrovBxxN9o
- AIEF2025 - Evals 101 — Doug Guthrie, Braintrust - https://www.youtube.com/watch?v=bk0TmxoZlUY
