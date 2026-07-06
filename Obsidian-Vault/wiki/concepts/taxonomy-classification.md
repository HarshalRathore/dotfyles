---
title: Taxonomy Classification
category: concepts
tags: [taxonomy, classification, search, nlp, e-commerce, llm]
summary: "The task of mapping user queries or content to labels in a predefined hierarchical category system — a core component of search query understanding in e-commerce."
sources:
  - "https://www.youtube.com/watch?v=pjavhm_3ljg"
provenance:
  extracted: 0.75
  inferred: 0.20
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
relationships:
  - target: "[[concepts/multi-label-classification]]"
    type: related_to
  - target: "[[concepts/query-understanding]]"
    type: related_to
  - target: "[[concepts/semantic-similarity]]"
    type: related_to
created: 2026-07-04
updated: 2026-07-04
---

# Taxonomy Classification

Taxonomy classification is the task of mapping user queries or content items to labels within a predefined hierarchical category system. It is a core component of search query understanding in e-commerce and content platforms. ^[extracted]

## Scale and Complexity

Real-world taxonomies are large and hierarchical. Instacart's product taxonomy contains approximately 10,000 labels, with about 6,000 more commonly used. The hierarchical structure means that categories have parent-child relationships (e.g., "organic foods" → "fruits" → "watermelon"). ^[extracted]

## Traditional Approaches

- **Semantic neural networks** model the relationship between query text and category labels using embedding similarity
- **NPMI (Normalized Pointwise Mutual Information)** captures statistical co-occurrence patterns between queries and categories from historical interaction data

Both approaches depend on engagement data, limiting effectiveness on tail queries. ^[extracted]

## LLM-Enhanced Approach

Instacart's successful approach feeds the top-K converting categories as context to the LLM, then asks it to rank and validate. This transforms the open-ended classification problem into a constrained ranking problem, dramatically improving alignment with user behavior. ^[extracted]

## Related Concepts

- [[concepts/multi-label-classification]] — Single query can map to multiple taxonomy labels
- [[concepts/query-understanding]] — Taxonomy classification is a sub-component
- [[concepts/semantic-similarity]] — Embedding-based approach to category matching
