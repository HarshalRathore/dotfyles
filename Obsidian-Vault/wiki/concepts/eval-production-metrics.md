---
title: "Eval Production Metrics"
category: concepts
tags:
  - evals
  - metrics
  - observability
  - production
  - braintrust
sources:
  - "AIEF2025 - Evals 101 — Doug Guthrie, Braintrust - https://www.youtube.com/watch?v=bk0TmxoZlUY"
provenance:
  extracted: 0.90
  inferred: 0.05
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/online-evals|Online Evals]]"
    type: uses
  - target: "[[concepts/ai-observability-production-logging|AI Observability & Production Logging]]"
    type: relates_to
---

# Eval Production Metrics

Production metrics provide visibility into the performance characteristics of AI applications in real time: latency, cost, token usage, and duration. These metrics are captured through application instrumentation and inform both online evals and operational decisions. ^[extracted]

## Core Metrics

| Metric | Description | Use Case |
|---|---|---|
| **Latency** | Time from request to response | Performance monitoring, SLA tracking |
| **Cost** | Estimated cost per call based on model + tokens | Budget tracking, cost optimization |
| **Token usage** | Input and output token counts | Cost modeling, context window management |
| **Duration** | Total time for multi-step workflows | Agent performance, bottleneck identification |

> "Based on how you instrument your application, we can pull back lots of different metrics related to cost and tokens and duration, and all of these things help inform how we build this application." ^[extracted]

## How Metrics Are Captured

Metrics are captured through instrumentation — wrapping the LLM client or using tracing decorators. The instrumentation layer automatically captures:

- Model inputs and outputs
- Token counts (input, output, total)
- Latency per call
- Cost estimates (model-specific pricing)
- Intermediate steps and tool calls in agentic workflows

## Metrics in Decision Making

Production metrics inform several key decisions:

- **Model selection** — Compare cost/quality tradeoffs across models
- **Performance optimization** — Identify latency bottlenecks in the pipeline
- **Budget management** — Track spending and set alerts
- **Capacity planning** — Project infrastructure needs based on token growth

## Relationship to Eval Scores

Metrics measure *how* the application performs; eval scores measure *how well*. Together they provide a complete picture: a response might be cheap and fast (good metrics) but wrong (bad score), or expensive and slow but highly accurate (good score, bad metrics). ^[inferred]

## Related

- [[concepts/online-evals|Online Evals]] — Metrics are captured alongside eval scores in production
- [[concepts/ai-observability-production-logging|AI Observability & Production Logging]] — The infrastructure that captures metrics
- [[concepts/eval-quality-matrix|Eval Quality Matrix]] — Metrics complement the quality matrix in diagnosing issues
