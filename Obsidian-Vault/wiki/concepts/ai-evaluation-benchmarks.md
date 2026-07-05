---
title: "AI Evaluation Benchmarks"
category: concepts
tags:
  - evaluation
  - benchmarking
  - llm
  - intelligence-index
  - aief2025
aliases:
  - ai benchmarks
  - model evaluation
sources:
  - "AIEF2025 - Trends Across the AI Frontier — George Cameron, ArtificialAnalysis.ai - https://www.youtube.com/watch?v=sRpqPgKeXNk"
summary: "Systematic evaluation of AI models across multiple dimensions — intelligence, cost, speed, verbosity — using composite indices and per-token/per-latency metrics to compare models objectively."
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
  - target: "[[concepts/ai-evaluation-benchmarks|AI Evaluation Benchmarks]]"
    type: uses
  - target: "[[concepts/model-quality-latency-tradeoff|Model Quality vs Latency Tradeoff]]"
    type: relates_to
---

# AI Evaluation Benchmarks

**AI evaluation benchmarks** are systematic methods for measuring and comparing AI models across multiple dimensions of capability and performance. Unlike single-metric evaluations, comprehensive benchmarking considers intelligence, cost, latency, and output verbosity together.

## The Artificial Analysis Intelligence Index

Artificial Analysis constructs its Intelligence Index from a composite of **seven evaluations**, weighted to produce a generalist perspective on model intelligence. This approach avoids over-weighting any single capability and provides a single comparable score across 150+ models. ^[extracted]

## Multi-Dimensional Benchmarking

Effective AI benchmarking goes beyond intelligence to measure: ^[extracted]

- **Output token count** — how many tokens a model produces to complete evaluations (reasoning models use 10–100× more than non-reasoning models)
- **API latency** — median time to receive a full response via API (from 4.7 seconds for GPT 4.1 to over 40 seconds for O4 Mini High)
- **Cost per evaluation** — total dollar cost to run the same benchmark (O3 at ~$2,000 vs GPT 4.1 at ~$67 — roughly 30× cheaper)
- **Per-token pricing** — cost per million tokens, which alone is misleading without considering verbosity

## Why Composite Metrics Matter

Benchmarking by per-token price alone is misleading because labs may hide reasoning tokens or models may vary dramatically in verbosity. The real cost of accessing intelligence is the product of per-token price × output token count. ^[extracted]

## Intelligence Bands and Cost Trends

Models can be bucketed into intelligence bands, and within each band, costs have fallen dramatically over time. Accessing GPT-4 level intelligence has fallen over 100× since mid-2023, and new quality bands see costs halve within months of release. ^[extracted]

## Related

- [[entities/artificial-analysis|Artificial Analysis]] — Primary benchmarking organization discussed
- [[concepts/reasoning-models|Reasoning Models]] — Key dimension of benchmarking trade-offs
- [[concepts/llm-cost-structure|LLM Cost Structure]] — Cost dimension of evaluation

## Sources

- AIEF2025 - Trends Across the AI Frontier — George Cameron, ArtificialAnalysis.ai - https://www.youtube.com/watch?v=sRpqPgKeXNk
