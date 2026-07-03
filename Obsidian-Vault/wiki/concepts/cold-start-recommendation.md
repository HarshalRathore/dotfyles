---
title: "Cold Start in Recommendation Systems"
category: concepts
tags: [recommendation-systems, cold-start, data-sparsity, recsys]
aliases: [RecSys Cold Start, Item Cold Start, Category Cold Start]
relationships:
  - target: "[[concepts/semantic-ids]]"
    type: related_to
  - target: "[[concepts/llm-data-augmentation-recsys]]"
    type: related_to
  - target: "[[concepts/recsys-foundation-model]]"
    type: related_to
sources:
  - "https://www.youtube.com/watch?v=2vlCqD6igVA"
summary: "The challenge of making accurate recommendations for new items or categories with no interaction history, addressed by semantic IDs and LLM-based data augmentation."
provenance:
  extracted: 0.60
  inferred: 0.35
  ambiguous: 0.05
base_confidence: 0.60
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Cold Start in Recommendation Systems

The fundamental challenge in recommendation systems where new items have no user interaction history, making it impossible for hash-ID-based embedding methods to generate meaningful recommendations. Cold start manifests at both the item level (new products, videos) and the category level (entirely new content types). ^[extracted]

## Item Cold Start

- Hash-based item IDs don't encode item content
- Every new item requires the model to re-learn its representation from scratch
- Results in popularity bias — the system defaults to recommending already-popular items
- Long-tail items (1-10 interactions) remain poorly served due to sparsity ^[extracted]

**Semantic IDs solution**: By encoding content features (visual, textual, audio) directly into item identifiers, new items receive meaningful embeddings immediately, enabling recommendations without interaction data. Kuaishou's multimodal semantic IDs increased cold-start coverage by 3.6% and improved cold-start velocity. ^[extracted]

## Category Cold Start

When a platform introduces an entirely new category (e.g., Spotify adding podcasts and audiobooks to a music-focused platform):

- No user behavior data exists for the new category
- Users don't know to search for it
- Requires exploratory search and query recommendation to surface the new category
- Spotify's solution: LLM-generated exploratory queries that inform users about new content categories ^[extracted]

## Solutions
1. **Semantic IDs**: Content-aware item embeddings that generalize to new items ([[concepts/semantic-ids|Semantic IDs]])
2. **LLM-based data augmentation**: Generate synthetic interaction data and metadata ([[concepts/llm-data-augmentation-recsys|LLM Data Augmentation for RecSys]])
3. **Query recommendation systems**: Surface exploratory queries for new categories ([[concepts/exploratory-query-recommendation|Exploratory Query Recommendation]])
4. **Unified models**: Leverage shared representations across tasks to bootstrap new use cases ([[concepts/unified-recommendation-models|Unified Recommendation Models]]) ^[inferred]
5. **Combined ID + semantic embeddings**: Netflix's recommendation foundation model combines learned ID embeddings with semantic content information from graph models, enabling cold-start recommendations for new titles without interaction history. ^[extracted]

## Related Concepts

- [[concepts/recsys-foundation-model]] — Foundation model mitigates cold start via combined ID + semantic embeddings
- [[concepts/llm-data-augmentation-recsys]] — Addresses data sparsity at scale
- [[concepts/exploratory-query-recommendation]] — Solution for category cold start
- [[concepts/unified-recommendation-models]] — Shared representations help mitigate cold start
- [[concepts/quality-vs-quantity-recommendations]] — Quality improvements reduce cold-start impact

## Sources

- [[references/aief2025-netflix-one-model-recommendations-yesu-feng|AIEF2025 — Netflix's Big Bet: One Model to Rule Recommendations]]
