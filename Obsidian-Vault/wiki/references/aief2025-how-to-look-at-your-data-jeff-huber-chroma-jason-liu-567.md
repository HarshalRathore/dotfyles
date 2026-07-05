---
title: "AIEF2025 - How to look at your data — Jeff Huber (Chroma) + Jason Liu (567)"
category: references
tags:
  - aief2025
  - evals
  - retrieval
  - embedding-models
  - fast-evals
  - conversation-analysis
  - implicit-feedback
  - golden-datasets
  - synthetic-queries
summary: "Two-part talk on empirically measuring and improving AI systems: Jeff Huber covers fast evals for retrieval systems and embedding model selection; Jason Liu covers analyzing conversation outputs at scale to extract product and agent insights."
sources:
  - "AIEF2025 - How to look at your data — Jeff Huber (Chroma) + Jason Liu (567) - https://www.youtube.com/watch?v=jryZvCuA0Uc"
provenance:
  extracted: 0.90
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.90
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/llm-evaluation-framework|LLM Evaluation Framework]]"
    type: relates_to
  - target: "[[concepts/implicit-feedback-signal|Implicit Feedback Signals]]"
    type: extends
---

# AIEF2025 - How to look at your data — Jeff Huber (Chroma) + Jason Liu (567)

Two-part talk from AI Engineer World's Fair 2025. All code and slides are open source.

## Part One: Looking at Your Inputs (Jeff Huber, Chroma)

Jeff Huber argues that you can only manage what you measure, and the key to systematic improvement in retrieval systems is **fast evals** — sets of query-document pairs that run in seconds for pennies, enabling rapid experimentation. He presents a methodology for using LLMs to generate synthetic queries that semantically align with real user queries, validated against the Weights & Biases chatbot case study where synthetic and ground-truth query distributions matched closely in both specificity and model ranking order. Key finding: the best-performing embedding model on public benchmarks (MTEB) is not always the best for a specific application — empirical testing on your own data is essential.

## Part Two: Looking at Your Outputs (Jason Liu, 567)

Jason Liu covers analyzing conversation outputs at scale. When you have hundreds of conversations, manual review is feasible; at thousands or tens of thousands, you need systematic analysis. Much of the most valuable feedback — "try again," "be less lazy" — lives implicitly in conversation transcripts rather than explicit feedback widgets. The talk emphasizes using conversation data to understand what products to build, what tool portfolios agents need, and what patterns emerge at scale.

## Key Concepts Introduced

- Fast evals and golden datasets for retrieval evaluation
- Synthetic query generation aligned to real user queries
- Embedding model selection via empirical testing on application data
- Conversation output analysis for product insight at scale
- Implicit feedback signals in conversation transcripts

## Sources

- AIEF2025 - How to look at your data — Jeff Huber (Chroma) + Jason Liu (567) - https://www.youtube.com/watch?v=jryZvCuA0Uc
