---
title: "Model Selection by Application"
category: concepts
tags:
  - model-selection
  - application-design
  - tradeoffs
  - frontier
  - aief2025
aliases:
  - choosing models by use case
  - application-driven model selection
sources:
  - "AIEF2025 - Trends Across the AI Frontier — George Cameron, ArtificialAnalysis.ai - https://www.youtube.com/watch?v=sRpqPgKeXNk"
summary: "Model selection should be driven by application requirements (latency, cost, intelligence) rather than raw benchmark scores alone."
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/multiple-ai-frontiers|Multiple AI Frontiers]]"
    type: extends
  - target: "[[concepts/reasoning-model-tradeoffs|Reasoning Model Trade-offs]]"
    type: applies_to
---

# Model Selection by Application

**Model selection by application** is the principle that the choice of AI model should be driven by the specific requirements of the application — latency, cost structure, intelligence level, and openness — rather than by raw benchmark scores alone. The most intelligent model is not always the right model.

## The Core Principle

George Cameron's AIEF2025 talk centered on this principle: you should not always use the leading most intelligent model. Each application has different constraints that make different models optimal. ^[extracted]

## Application-Driven Selection Matrix

Different application types favor different frontiers: ^[extracted]

| Application Type | Priority | Preferred Model Type |
|-----------------|----------|---------------------|
| Contact center chatbot | Speed | Non-reasoning, low latency |
| Agentic workflow (many calls) | Cost | Cheaper per-token model |
| Complex reasoning task | Intelligence | Reasoning model |
| Compliance-sensitive deployment | Openness | Open-weight model |

## The Latency Constraint

For applications requiring responsiveness — such as consumer chatbots or contact center tools — latency is the dominant constraint. A 5-minute response time (from reasoning model + 30 sequential calls) makes an application unusable, while 30 seconds may be acceptable. ^[extracted]

## The Cost Constraint

For applications with high call volume — such as agentic workflows making 30+ sequential API calls — cost dominates. An agentic application with 30 calls on GPT 4.1 Nano could still be cheaper than a single O3 query. ^[extracted]

## The Intelligence Constraint

For tasks requiring complex reasoning, planning, or multi-step problem solving, the intelligence frontier matters most. Reasoning models deliver significantly higher quality on these tasks, even at higher cost. ^[extracted]

## Implications

This principle means that: ^[inferred]

- Model evaluation should include application-specific metrics, not just benchmark scores
- Organizations should benchmark models on their actual workloads, not just public evals
- The "best" model for a given application may change over time as costs and capabilities shift
- Multi-model architectures (using different models for different phases) become economically rational

## Related

- [[concepts/multiple-ai-frontiers|Multiple AI Frontiers]] — The framework that makes this principle necessary
- [[concepts/reasoning-model-tradeoffs|Reasoning Model Trade-offs]] — The trade-offs that inform selection
- [[concepts/llm-cost-structure|LLM Cost Structure]] — The cost dimension of selection
- [[concepts/agentic-workflow-latency|Agentic Workflow Latency]] — The latency dimension of selection

## Sources

- AIEF2025 - Trends Across the AI Frontier — George Cameron, ArtificialAnalysis.ai - https://www.youtube.com/watch?v=sRpqPgKeXNk
