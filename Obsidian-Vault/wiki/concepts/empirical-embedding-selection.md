---
title: "Empirical Embedding Selection"
category: concepts
tags:
  - embedding-models
  - evaluation
  - retrieval
  - empirical
  - model-selection
aliases:
  - empirical-embedding-selection
  - embedding-model-evaluation
summary: "The practice of selecting embedding models by empirically testing them on your own data using fast evals, rather than relying solely on public benchmark rankings like MTEB."
sources:
  - "AIEF2025 - How to look at your data — Jeff Huber (Chroma) + Jason Liu (567) - https://www.youtube.com/watch?v=jryZvCuA0Uc"
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/fast-evals|Fast Evals]]"
    type: uses
  - target: "[[concepts/golden-dataset|Golden Dataset]]"
    type: uses
  - target: "[[concepts/llm-evaluation-framework|LLM Evaluation Framework]]"
    type: relates_to
---

# Empirical Embedding Selection

**Empirical embedding selection** is the practice of choosing embedding models by testing them directly on your own data using fast evals, rather than relying on public benchmark rankings. The core insight: the best-performing model on a benchmark like MTEB is not necessarily the best for your specific application. ^[extracted]

## The Benchmark Trap

Public benchmarks like MTEB provide useful general-purpose rankings. However: ^[extracted]

- Benchmarks use overly clean, well-formed queries that don't reflect real-world data
- A model that dominates MTEB (e.g., GINA embeddings v3 for English) may underperform on your specific domain
- Benchmark performance doesn't capture application-specific retrieval needs

## The Empirical Approach

1. **Build a golden dataset** for your application — real or carefully aligned synthetic queries with expected documents ^[extracted].
2. **Run fast evals** across candidate embedding models ^[extracted].
3. **Measure success rate** — which model retrieves the expected documents most often ^[extracted].
4. **Consider secondary factors** — re-embedding cost, API reliability, speed, and engineering overhead ^[extracted].

## Case Study: Weights & Biases Chatbot

The Chroma research report evaluated four embedding models on the W&B chatbot: ^[extracted]

| Model | MTEB Performance | W&B Chatbot Performance |
|-------|-----------------|------------------------|
| text-embedding-3-small | Moderate | Worst of the four tested |
| GINA embeddings v3 | Best in English | Poor for this application |
| Voyage 3 large | Moderate | **Best for this application** |

Key finding: [[entities/voyage-ai|Voyage 3 large]] outperformed both the previously deployed model and the MTEB-dominant model on the actual application. This was only discoverable through empirical testing.

## Decision Framework

When selecting an embedding model empirically: ^[extracted]

- **North star metric** — success rate of your queries (how many documents you get back)
- **Trade-offs** — re-embedding cost, API flakiness, speed, and engineering effort
- **Systematic over guessing** — empirical data enables deterministic decisions rather than guess-and-check

## Related

- [[concepts/fast-evals|Fast Evals]] — the evaluation method used for empirical selection
- [[concepts/golden-dataset|Golden Dataset]] — the test data structure
- [[concepts/synthetic-query-generation|Synthetic Query Generation]] — method for building datasets when real queries are unavailable
- [[entities/chroma|Chroma]] — organization that demonstrated this approach
- [[entities/weights-and-biases|Weights & Biases]] — case study application
