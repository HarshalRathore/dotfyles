---
title: "Search Relevance"
category: concepts
tags: [search-relevance, relevance-model, classification, five-point-scale, search-quality, aief2025]
aliases:
  - search relevance
sources:
  - "AIEF2025 - What We Learned from Using LLMs in Pinterest — Mukuntha Narayanan, Han Wang, Pinterest - https://www.youtube.com/watch?v=XdAWgO11zuk"
provenance:
  extracted: 0.65
  inferred: 0.30
  ambiguous: 0.05
base_confidence: 0.72
lifecycle: draft
tier: core
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/cross-encoder-relevance-model|Cross-Encoder Relevance Model]]"
    type: implemented_by
  - target: "[[concepts/re-ranking|Re-ranking]]"
    type: used_in
  - target: "[[concepts/hybrid-search|Hybrid Search]]"
    type: used_in
  - target: "[[concepts/search-fulfillment|Search Fulfillment]]"
    type: measured_by
---

# Search Relevance

The quality of how well search results match a user's query intent. In production systems, search relevance is typically modeled as a **classification problem** where a model predicts how well each document (pin, article, product) matches the search query. ^[extracted]

## Five-Point Relevance Scale

Pinterest uses a five-point scale for relevance classification:

1. **Most relevant** — exact match to user intent
2. **Highly relevant** — strong match with minor gaps
3. **Moderately relevant** — partial match
4. **Slightly relevant** — weak or tangential match
5. **Most irrelevant** — no match to user intent

This granular scale provides richer training signals than binary relevant/irrelevant labels, enabling models to learn nuanced relevance patterns. ^[extracted]

## Measuring Relevance

Key metrics include:
- **DCG** (Discounted Cumulative Gain) — measures ranked quality of results
- **Precision@K** — fraction of top-K results that are relevant
- **Search fulfillment** — downstream engagement on search fulfilling actions

Pinterest evaluates these metrics across specific segments (e.g., US, Germany, France) and internationally. ^[extracted]

## LLM Impact on Relevance

LLMs have substantially improved search relevance prediction:
- Cross-encoder LLMs capture fine-grained query-document interactions
- Fine-tuned open-source models (Llama 3) outperform traditional embedding models by 12-20%
- Knowledge distillation preserves relevance gains while enabling production-scale serving
- International generalization occurs even with limited source-market training data ^[extracted]

## Related

- [[concepts/cross-encoder-relevance-model|Cross-Encoder Relevance Model]] — how relevance is modeled
- [[concepts/re-ranking|Re-ranking]] — where relevance models are applied
- [[concepts/search-fulfillment|Search Fulfillment]] — downstream engagement metric
- [[concepts/hybrid-search|Hybrid Search]] — retrieval method feeding relevance models

## Sources

- AIEF2025 - What We Learned from Using LLMs in Pinterest — Mukuntha Narayanan, Han Wang, Pinterest - https://www.youtube.com/watch?v=XdAWgO11zuk
