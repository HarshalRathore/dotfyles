---
title: "Recommendation Foundation Models"
tags:
  - recommendation-systems
  - foundation-model
  - transformer
  - personalization
  - recsys
aliases:
  - RecSys Foundation Model
  - Netflix Recommendation FM
  - Unified Personalization Model
relationships:
  - target: "[[concepts/unified-recommendation-models]]"
    type: extends
  - target: "[[concepts/recsys-event-tokenization]]"
    type: uses
sources:
  - "AIEF2025 - Netflix's Big Bet: One model to rule recommendations: Yesu Feng, Netflix - https://www.youtube.com/watch?v=AbZ4IYGbfpQ"
summary: "Architectural pattern where a single large transformer is pre-trained on all user interaction data, then adapted via fine-tuning, embedding push, or subgraph integration for downstream recommendation tasks."
provenance:
  extracted: 0.75
  inferred: 0.20
  ambiguous: 0.05
base_confidence: 0.60
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Recommendation Foundation Models

An architectural pattern for [[concepts/unified-recommendation-models|unified recommendation]] where a single large auto-regressive transformer is pre-trained on all user interaction data across all surfaces, then consumed by downstream application models through fine-tuning, embedding extraction, or subgraph integration. Pioneered at Netflix as their "big bet" on personalization. ^[extracted]

## Motivation

Traditional recommendation systems develop many specialized models independently — one for ranking videos, one for ranking rows, one for new content, one for re-engagement. This leads to:

- Duplicative label and feature engineering across teams
- Hard-to-maintain feature sets with slight variations on the same factual data
- No leverage — each new use case spins up a model from scratch
- Slower innovation velocity ^[extracted]

## Architecture

### Tokenization Layer

Unlike NLP tokens (single IDs), recommendation events carry multiple facets. The [[concepts/recsys-event-tokenization|event tokenization]] decomposes each interaction into:

- **When** — time encoding of the event
- **Where** — physical location, locale, device, canvas, row, page
- **What** — target entity, interaction type, duration, metadata ^[extracted]

### Model Layers (bottom to top)

1. **Event representation** — encodes when/where/what into embeddings
2. **Embedding layer** — combines ID embeddings with semantic content information to handle [[concepts/cold-start-recommendation|cold start]]
3. **Transformer layers** — self-attention over the event sequence; hidden state output serves as the user representation
4. **Objective layer** — multi-task prediction over multiple targets (entity IDs, action type, metadata, duration) ^[extracted]

### User Representation

The hidden state output from the transformer is the primary user representation. Key design considerations: stability (user profiles change over time), aggregation across time/sequence and layers, and adaptation via fine-tuning for specific downstream objectives. ^[inferred]

### Multi-Task Objective

Richer than LLM next-token prediction — the model can predict:
- A sequence of entity IDs (next token prediction)
- Action type facets
- Entity metadata (genre, year, language)
- Interaction duration
- Device or page where the next action occurs ^[extracted]

## Consumption Patterns

Downstream applications consume the foundation model in three ways:

1. **Subgraph integration** — the FM replaces existing sequence/transformer towers in downstream neural networks as a pre-trained subgraph
2. **Embedding push** — content-side and member embeddings are pushed to a centralized store for use beyond personalization (analytics, data science)
3. **Fine-tuning and distillation** — the full model is extracted and fine-tuned for specific applications, or distilled to meet strict latency requirements ^[extracted]

## Scaling Evidence

Netflix scaled from ~10M profile parameters to 1B+ model parameters over 2.5 years, with consistent quality gains at each step. Scaling is limited not by quality ceilings but by latency and cost constraints — gains must be distilled back into smaller models for production. ^[extracted]

## LLM Learnings Transferred to RecSys

Three key techniques borrowed from the LLM world:

1. **Multi-token prediction** — forces the model to be less myopic, more robust to training-serving time shift, and to target long-term user satisfaction ^[extracted]
2. **Multi-layer representation** — layer-wise supervision, self-distillation, and multi-layer output aggregation for more stable user representations ^[extracted]
3. **Long context window handling** — truncated sliding window, sparse attention, progressive training on longer sequences ^[extracted]

## Current Research Directions

- **Universal representation for heterogeneous entities** — semantic IDs to cover expanding content types (games, live streaming)
- **Generative retrieval for collections** — multi-step decoding at inference time to naturally handle business rules and diversity
- **Faster adaptation via prompt tuning** — soft tokens swapped in/out at inference to prompt the FM to behave differently ^[extracted]

## Related Concepts

- [[concepts/unified-recommendation-models]] — broader category of using one model for many tasks
- [[concepts/recsys-event-tokenization]] — the tokenization approach for recommendation events
- [[concepts/cold-start-recommendation]] — addressed via combined ID + semantic embeddings
- [[concepts/semantic-ids]] — the direction for universal entity representation
- [[concepts/scaling-laws-recsys]] — evidence that scaling laws apply to recommendation systems
- [[concepts/llm-data-augmentation-recsys]] — complementary LLM-driven approach for RecSys
- [[entities/yesu-feng]] — architect of Netflix's recommendation foundation model

## Sources

- [[references/aief2025-netflix-one-model-recommendations-yesu-feng|AIEF2025 — Netflix's Big Bet: One Model to Rule Recommendations]]
