---
title: Multi-Label Classification
category: concepts
tags: [ml, classification, taxonomy, search, nlp, e-commerce]
summary: "A classification problem where a single input maps to multiple output labels simultaneously — common in search query-to-category mapping where queries can belong to several taxonomy categories."
sources:
  - "[[sources/watchv=pjavhm_3ljg]]"
provenance:
  extracted: 0.65
  inferred: 0.30
  ambiguous: 0.05
base_confidence: 0.70
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
relationships:
  - target: "[[concepts/taxonomy-classification]]"
    type: related_to
  - target: "[[concepts/query-understanding]]"
    type: related_to
  - target: "[[concepts/semantic-similarity]]"
    type: related_to
created: 2026-07-04
updated: 2026-07-04
---

# Multi-Label Classification

Multi-label classification is a machine learning problem where a single input can map to multiple output labels simultaneously, as opposed to multi-class classification where each input maps to exactly one class. ^[extracted]

## E-commerce Application

In e-commerce search, multi-label classification is fundamental to query-to-category mapping. A query like "watermelon" maps to multiple categories: fruits, organic foods, fresh produce, summer items, etc. ^[extracted]

Instacart's taxonomy contains approximately 10,000 labels, with about 6,000 more commonly used. A single query can map to multiple of these labels, making this inherently a multi-label classification problem. ^[extracted]

## Traditional Approaches

- **Fast text-based neural networks** model the semantic relationship between query and category pairs
- **NPMI (Normalized Pointwise Mutual Information)** captures statistical co-occurrence between queries and categories across user interaction data

Both approaches require sufficient engagement data, which limits their effectiveness on tail queries. ^[extracted]

## LLM Approach

LLMs can handle multi-label classification by being prompted to output multiple relevant categories. However, the open-ended nature of this task can lead to misalignment with actual user behavior — requiring contextual grounding through top-K converting categories. ^[extracted]

## Related Concepts

- [[concepts/taxonomy-classification]] — Mapping inputs to hierarchical category systems
- [[concepts/query-understanding]] — Where multi-label classification is applied in search
- [[concepts/semantic-similarity]] — The underlying signal used in classification
