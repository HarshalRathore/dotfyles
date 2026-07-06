---
title: Offline Recommendations Table
category: concepts
tags:
- recommendation-systems
- offline-computation
- serving-cost
- recsys
aliases:
- Precomputed Recommendations
- Recommendations Lookup Table
relationships:
- target: '[[concepts/large-recommender-model]]'
  type: related_to
- target: '[[concepts/recommendation-serving-cost]]'
  type: related_to
- target: '[[concepts/generative-retrieval-recsys]]'
  type: related_to
sources:
- 'https://www.youtube.com/watch?v=lxqsq3vzdqo'
summary: A strategy to reduce LLM serving cost by precomputing recommendations offline — building a lookup table that maps 'if watching video A, what candid videos are good to watch next?' — converting real...
provenance:
  extracted: 0.65
  inferred: 0.3
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# Offline Recommendations Table

A strategy for reducing the serving cost of LLM-based recommendation systems by precomputing recommendations offline. Instead of running real-time personalized inference for each user request, the system builds a static lookup table mapping video pairs to recommended next videos. ^[extracted]

## How It Works

The approach uses the same prompt and the same model as generative retrieval, but removes the personalized aspects:

- **Input**: The context video (the video currently being watched)
- **Output**: A list of candid videos that would be good to watch next
- **Computation**: Done offline, not in real-time ^[extracted]

The result is a table: "if watching video A, what candid videos are good to watch next?" — essentially a precomputed version of what the LRM would generate in real-time. ^[extracted]

## Trade-offs

**Advantages**:
- **Massive cost reduction**: Eliminates real-time LLM inference per user request ^[inferred]
- **Consistency**: Same model and prompt as the online system, ensuring quality parity ^[extracted]
- **Scalability**: Offline computation can be batched and optimized for TPU/GPU clusters ^[inferred]

**Disadvantages**:
- **No personalization**: The table is unpersonalized — it doesn't account for individual user demographics, watch history, or preferences ^[extracted]
- **Staleness**: The table must be recomputed periodically as new videos are added and the model is updated ^[inferred]
- **Coverage**: Limited to the videos in the precomputation corpus ^[inferred]

## Relationship to LRM

YouTube explored this as an alternative strategy to real-time [[concepts/generative-retrieval-recsys|generative retrieval]] with LRM. The key insight: the same prompt and model can be used, but the personalization is removed to convert a real-time expensive problem into an offline computation. ^[extracted]

## Related Concepts

- [[concepts/large-recommender-model]] — LRM uses this as an alternative strategy
- [[concepts/recommendation-serving-cost]] — the cost problem this solves
- [[concepts/generative-retrieval-recsys]] — the online approach this complements
- [[concepts/recsys-foundation-model]] — Netflix's approach to cost via model consolidation

## Sources

- [[references/aief2025-teaching-gemini-to-speak-youtube-devansh-tandon|AIEF2025 - Teaching Gemini to Speak YouTube]]
