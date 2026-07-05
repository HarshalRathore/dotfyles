---
title: "AIEF2025 - Transforming search and discovery using LLMs — Tejaswi & Vinesh, Instacart"
category: references
tags: [search, llm, e-commerce, instacart, query-understanding, query-rewriting, taxonomy, multi-label-classification, tail-queries, aief2025]
summary: "Instacart search team presents how LLMs transformed their query understanding — category classification and query rewriting — with 18pp precision and 70pp recall gains on tail queries."
sources:
  - "[[sources/watchv=pjavhm_3ljg]]"
provenance:
  extracted: 0.90
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# AIEF2025 - Transforming search and discovery using LLMs — Tejaswi & Vinesh, Instacart

**Speakers:** Tejaswi & Vinesh, Search and Machine Learning team at Instacart
**Event:** AI Engineer World's Fair 2025
**Source:** <https://www.youtube.com/watch?v=PjaVHm_3Ljg>

## Summary

Instacart's search and ML team describes how they use LLMs to transform their search and discovery pipeline, focusing on two core models: query-to-product-category classification and query rewriting. They achieved 18 percentage point precision and 70 percentage point recall improvements on tail queries by restructuring the LLM prompting approach — specifically by feeding top-K converting categories as context rather than asking the LLM to predict categories from scratch.

## Key Points

- **Search has a dual role** in grocery e-commerce: supporting quick, efficient product find for restocking purchases, and enabling new product discovery (which increases basket sizes and helps advertisers)
- **Two classes of challenging queries**: overly broad (e.g., "snacks" — cold start problem) and very specific (e.g., "unsweetened plant-based yogurt" — insufficient engagement data)
- **Pre-LLM query understanding** relied on fast text-based neural networks (semantic query-category modeling) and NPMI statistical co-occurrence models — worked for head/torso queries but had low tail query coverage
- **Initial LLM approach** (feed all queries + 10K taxonomy labels to LLM) produced decent offline results but failed online A-B tests due to LLM misalignment with Instacart user behavior (e.g., "protein" → LLM predicts chicken/tofu, users want protein shakes/bars)
- **Successful approach**: feed top-K converting categories per query as context to the LLM, then rank and validate — simplified the problem significantly
- **Query rewriting** similarly improved by using LLMs to generate substitute, broad, and synonymous rewrites (e.g., "avocado oil" → substitute: olive oil, broad: healthy cooking oil, synonymous: avocado extract)
- **Results**: large drop in zero-result queries, significant improvements especially on tail queries

## Related Pages

- [[concepts/query-understanding]]
- [[concepts/llm-user-behavior-alignment]]
- [[concepts/tail-query-handling]]
- [[concepts/multi-label-classification]]
- [[concepts/taxonomy-classification]]
- [[concepts/product-discovery]]
- [[concepts/e-commerce-search-challenges]]
- [[entities/instacart]]
