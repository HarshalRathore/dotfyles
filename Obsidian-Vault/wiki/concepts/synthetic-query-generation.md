---
title: "Synthetic Query Generation"
category: concepts
tags:
  - synthetic-data
  - queries
  - retrieval
  - evals
  - llm-generation
  - golden-datasets
aliases:
  - synthetic queries
  - llm-generated-queries
summary: "Using LLMs to generate test queries for retrieval evaluation, with careful prompt engineering to align synthetic queries semantically with real user query distributions."
sources:
  - "AIEF2025 - How to look at your data — Jeff Huber (Chroma) + Jason Liu (567) - https://www.youtube.com/watch?v=jryZvCuA0Uc"
provenance:
  extracted: 0.70
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.70
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/golden-dataset|Golden Dataset]]"
    type: produces
  - target: "[[concepts/fast-evals|Fast Evals]]"
    type: supports
  - target: "[[concepts/synthetic-data-for-evals|Synthetic Data for Evals]]"
    type: extends
---

# Synthetic Query Generation

**Synthetic query generation** uses LLMs to automatically generate test queries for building golden datasets in retrieval evaluation. The key challenge is ensuring synthetic queries match the linguistic patterns, specificity, and noise characteristics of real user queries. ^[extracted]

## The Problem with Naive Generation

A naive prompt like "write me a question for this document" produces overly clean, specific queries. Real-world data is never this clean. Public benchmarks like MTEB contain examples like "What is a pergola used for in a garden?" — unnaturally well-formed questions that are too easy to trick your system into thinking it works well. ^[extracted]

## The Solution: Semantic Alignment

The Chroma research report (research.truck.com) demonstrates teaching LLMs to generate queries that semantically align with real user query distributions. The approach: ^[extracted]

1. Collect real user queries from production (ground truth distribution)
2. Generate synthetic queries from documents
3. Compare the semantic distributions of both query sets
4. Iterate the prompt until synthetic queries match real queries in specificity and language patterns

## Validation

The approach was validated on the [[entities/weights-and-biases|Weights & Biases]] chatbot. Results showed: ^[extracted]

- Synthetic and ground-truth query distributions are close in semantic specificity
- The ranking order of embedding model accuracy is preserved between synthetic and real queries
- No major flips between synthetic and ground-truth rankings — a critical property

## When to Use

- **No real queries yet** — when you have documents but no production query data
- **Expanding coverage** — supplementing real queries with synthetic ones for underrepresented document types
- **Rapid prototyping** — bootstrapping evals quickly before production data accumulates

## Limitations

- Synthetic queries can never fully replicate the unpredictability of real user language ^[inferred].
- Requires iterative tuning to achieve semantic alignment — not a one-shot process ^[inferred].
- Risk of overfitting to your document corpus if synthetic queries become too specific to your data ^[extracted].

## Related

- [[concepts/golden-dataset|Golden Dataset]] — synthetic queries populate golden datasets
- [[concepts/fast-evals|Fast Evals]] — synthetic queries enable fast evals without production data
- [[concepts/synthetic-data-for-evals|Synthetic Data for Evals]] — broader category of synthetic data in evaluation
- [[entities/chroma|Chroma]] — organization that published the semantic alignment methodology
