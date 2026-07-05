---
title: "Spurious Correlation Detection"
category: concepts
tags:
  - rag
  - spurious-correlations
  - data-quality
  - hallucination
  - evaluation
summary: "Using spurious correlation data as a stress test for RAG systems — evaluating whether retrieval systems correctly handle data that contradicts conventional wisdom rather than regurgitating expected patterns."
sources:
  - "AIEF2025 - Forget RAG Pipelines—Build Production Ready Agents in 15 Mins: Nina Lopatina, Rajiv Shah, Contextual - https://www.youtube.com/watch?v=lArgRvBV3tQ"
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.65
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/contextual-ai]]"
    type: related_to
  - target: "[[concepts/quantitative-reasoning-rag]]"
    type: related_to
  - target: "[[concepts/rag-evaluation]]"
    type: related_to
  - target: "[[concepts/rag-agent-symbiosis]]"
    type: related_to
---

# Spurious Correlation Detection

Spurious correlation detection is an evaluation technique for RAG systems that tests whether the system retrieves and reports actual data from documents rather than generating plausible-sounding but incorrect answers based on conventional wisdom. ^[extracted]

## The Concept

When RAG systems are queried about topics where the retrieved documents contain data that contradicts common expectations, a well-designed system should return the actual data from the documents. A poorly designed system may:

- Regurgitate expected patterns from its training data rather than the retrieved content
- Generate answers that sound plausible but contradict the actual retrieved documents
- Fail to recognize when retrieved data contradicts prior beliefs

## Contextual's Demonstration

At AI Engineer World's Fair 2025, **[[entities/contextual-ai|Contextual AI]]** used spurious correlation data as part of their live demonstration. They ingested datasets containing spurious correlations — data points that appear correlated but have no causal relationship — to stress-test whether their RAG system would correctly report the actual data in the documents or generate answers based on conventional expectations. ^[extracted]

This serves as a practical evaluation of the **[[concepts/rag-agent-symbiosis|RAG-agent symbiosis]]** — whether the agent layer can properly evaluate retrieved context and report it faithfully rather than overriding it with model priors. ^[inferred]

## Broader Implications

Spurious correlation testing is particularly relevant for RAG systems deployed in domains where:

- Conventional wisdom may be outdated or incorrect
- Enterprise data contains surprising or counterintuitive findings
- Decision-makers need to discover unexpected patterns in their data

The technique complements **[[concepts/rag-evaluation|RAG evaluation]]** frameworks by providing a specific test case for faithfulness to retrieved context. ^[inferred]
