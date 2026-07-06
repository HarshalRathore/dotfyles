---
title: LLM Latency in Consumer Apps
category: concepts
tags:
- latency
- llm
- consumer-apps
- user-experience
- performance
aliases:
- LLM Latency
- LLM Response Time
- Consumer App Latency
sources:
- AIEF2025 - How Intuit uses LLMs to explain taxes to millions of taxpayers - Jaspreet Singh, Intuit - https://www.youtube.com/watch?v=_zl_zimMRak
summary: Consumer-facing LLM applications face 3-10 second latency, far from backend-service SLAs of 100-200ms. This latency gap requires different UX design patterns and optimization strategies than tradit...
provenance:
  extracted: 0.8
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.8
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/application-latency-tolerance|Application Latency Tolerance]]'
  type: relates_to
- target: '[[concepts/inference-pareto-frontier|Inference Pareto Frontier]]'
  type: relates_to
---

# LLM Latency in Consumer Apps

**LLM latency in consumer apps** refers to the reality that consumer-facing LLM applications operate at significantly higher latency than traditional backend services, requiring different UX design and optimization strategies. ^[extracted]

## The Latency Gap

Traditional backend services target 100-200ms response times. LLM responses in production typically take **3-10 seconds**. ^[extracted]

This gap is driven by:
- Token generation speed (autoregressive generation is inherently sequential)
- Retrieval overhead (RAG adds latency before generation begins)
- Model complexity (larger models trade speed for quality)
- User data complexity (complicated user situations with multiple data sources require more processing)

## User Impact

For applications like TurboTax, where users may have complex financial situations (home ownership, stock holdings, multiple income sources), the latency compounds:

- The system must retrieve relevant tax information
- Inject it into the prompt
- Generate a coherent, accurate response
- All while the user waits

## Design Implications

- **Streaming responses** — Show partial results as they generate
- **Progress indicators** — Communicate that the system is working
- **Acceptable latency range** — 3-10 seconds is tolerable for tax applications where quality matters more than speed
- **Fine-tuning for prompt reduction** — Shorter prompts = faster responses (as Intuit found with their GPT-3.5 fine-tuning)

## Related

- [[concepts/application-latency-tolerance|Application Latency Tolerance]] — Different apps tolerate different latency
- [[concepts/inference-pareto-frontier|Inference Pareto Frontier]] — Latency is one axis of the quality-cost-latency tradeoff
- [[concepts/vendor-lock-in-llm|Vendor Lock-in in LLM]] — Model switching affects latency characteristics
