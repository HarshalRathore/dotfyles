---
title: "Agentic Workflow Latency"
category: concepts
tags:
  - agents
  - latency
  - agentic
  - sequential-calls
  - aief2025
aliases:
  - agent latency
  - agentic workflow latency
sources:
  - "AIEF2025 - Trends Across the AI Frontier — George Cameron, ArtificialAnalysis.ai - https://www.youtube.com/watch?v=sRpqPgKeXNk"
summary: "Model latency compounds multiplicatively in agentic workflows — a 10-second model with 30 sequential calls creates a 5-minute wait, constraining what applications can be built."
provenance:
  extracted: 0.90
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/reasoning-model-tradeoffs|Reasoning Model Trade-offs]]"
    type: relates_to
  - target: "[[concepts/agent-architecture|Agent Architecture]]"
    type: constrains
---

# Agentic Workflow Latency

**Agentic workflow latency** refers to the compounded end-to-end response time in applications where AI agents make multiple sequential API calls. Because reasoning models introduce 10× latency per call, agentic workflows are disproportionately affected — a 30-call workflow with a 10-second model takes 5 minutes instead of 30 seconds.

## The Multiplier Effect

In agentic applications, queries are made in succession rather than in parallel. The total latency is the sum of individual call latencies: ^[extracted]

- **30 sequential queries** × 10 seconds = **300 seconds (5 minutes)** with reasoning models
- **30 sequential queries** × 1 second = **30 seconds** with non-reasoning models

This is not a linear difference — it's a qualitative one that changes what applications are feasible. ^[extracted]

## Application Design Constraints

The latency multiplier constrains what you can build: ^[extracted]

- **Contact center applications**: 30 seconds might be acceptable; 5 minutes is not
- **Search-like interactions**: If every Google function call took 5 minutes, the product would be unusable
- **Agentic tool use**: More queries per task means slower end-to-end completion

## Impact on Agent Architecture

Higher per-call latency changes agent architecture decisions: ^[inferred]

- Fewer queries per task becomes necessary
- Batch parallelization becomes more valuable
- Model selection shifts toward speed over intelligence for tool-use phases
- Caching and memoization become more important

## Related

- [[concepts/reasoning-model-tradeoffs|Reasoning Model Trade-offs]] — Source of the latency multiplier
- [[concepts/agent-architecture|Agent Architecture]] — How latency shapes architecture
- [[concepts/llm-cost-structure|LLM Cost Structure]] — Cost compounds similarly with sequential calls

## Sources

- AIEF2025 - Trends Across the AI Frontier — George Cameron, ArtificialAnalysis.ai - https://www.youtube.com/watch?v=sRpqPgKeXNk
