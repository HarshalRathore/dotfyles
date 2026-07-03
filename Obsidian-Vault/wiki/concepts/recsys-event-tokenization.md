---
title: "Event Tokenization for Recommendation Systems"
tags:
  - recommendation-systems
  - tokenization
  - transformer
  - recsys
  - representation-learning
aliases:
  - RecSys Event Tokenization
  - When-Where-What Tokenization
sources:
  - "AIEF2025 - Netflix's Big Bet: One model to rule recommendations: Yesu Feng, Netflix - https://www.youtube.com/watch?v=AbZ4IYGbfpQ"
summary: "The process of encoding user interaction events as tokens for recommendation transformers, decomposing each event into when, where, and what facets."
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.60
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Event Tokenization for Recommendation Systems

Unlike language tokenization (single token = one word/subword ID), recommendation system tokenization must encode multi-faceted user interaction events. Each event is an interaction with rich information spanning multiple dimensions. ^[extracted]

## The Three Facets

Netflix's framework decomposes each interaction event into three categories:

### When — Temporal Encoding

When the event happened. Time encoding provides the sequence ordering and temporal context critical for understanding user behavior patterns. ^[extracted]

### Where — Location and Context

The physical and contextual location of the event:
- Physical location and locale (country)
- Device type
- Canvas (homepage, search page, kids homepage, mobile feed)
- Row position in 2D layouts
- Page identifier ^[extracted]

### What — Entity and Interaction

The target and nature of the interaction:
- Target entity or title interacted with
- Interaction type (click, play, rate, etc.)
- Duration or engagement depth
- Associated metadata about the entity ^[extracted]

## Design Considerations

### Granularity vs. Context Window

There is a fundamental tradeoff between token granularity and context window length. Fine-grained tokens capture more information but consume more of the context window. The right abstraction depends on the use case — pre-training may use different tokenization than fine-tuning. ^[extracted]

### Cold Start Through Facets

Unlike LLMs where token IDs are the only representation, recommendation systems must handle new entities the model has never seen. The facet-based tokenization allows combining learned ID embeddings with semantic content information from the "what" facet, mitigating the [[concepts/cold-start-recommendation|cold start problem]]. ^[extracted]

### Multi-Task Target Fields

The same facets used in tokenization can serve as prediction targets for multi-task learning. The model can predict not just the next entity ID, but also the action type, entity metadata (genre, year, language), interaction duration, or device context — depending on the downstream use case. ^[extracted]

## Relationship to NLP Tokenization

Similar to LLM tokenization, tokenization decisions in recommendation systems have profound downstream impact — they percolate through all model layers and manifest as quality problems or improvements. However, the multi-faceted nature of recommendation events makes tokenization a richer design space with more degrees of freedom. ^[extracted]

## Related Concepts

- [[concepts/recsys-foundation-model]] — the foundation model that uses this tokenization
- [[concepts/cold-start-recommendation]] — cold start mitigated by facet-based representations
- [[concepts/semantic-ids]] — a direction for universal entity representation tokenization
- [[concepts/unified-recommendation-models]] — the broader architectural pattern

## Sources

- [[references/aief2025-netflix-one-model-recommendations-yesu-feng|AIEF2025 — Netflix's Big Bet: One Model to Rule Recommendations]]
