---
title: Instacart
category: entities
tags: [e-commerce, grocery, search, machine-learning, instacart, aief2025]
summary: "Leader in online grocery in North America. Search and ML team uses LLMs to transform search and discovery, achieving major tail-query precision/recall gains."
sources:
  - "[[sources/watchv=pjavhm_3ljg]]"
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
relationships:
  - target: "[[concepts/e-commerce-search-challenges]]"
    type: uses
  - target: "[[concepts/query-understanding]]"
    type: uses
  - target: "[[entities/tejaswi]]"
    type: related_to
  - target: "[[entities/vinesh]]"
    type: related_to
created: 2026-07-04
updated: 2026-07-05
---

# Instacart

Instacart is the leader in online grocery in North America. Their mission is to create a world where everyone has access to the food they love and more time to enjoy it together. ^[extracted]

## Search and Discovery

Instacart's search and machine learning team works on transforming search and discovery using LLMs. Their search system handles two primary customer behaviors:

- **Restocking purchases**: The majority of customer purchases are repeat buys of items bought in the past, requiring quick and efficient search
- **New product discovery**: Customers trying items for the first time, requiring discovery capabilities that increase basket sizes and help advertisers

The search team built a query understanding module that includes query normalization, query tagging, query classification, and category classification across a taxonomy of ~10,000 labels (6,000 commonly used). ^[extracted]

## LLM Integration

Instacart successfully integrated LLMs into their search pipeline, achieving 18 percentage point precision and 70 percentage point recall improvements on tail queries through a novel prompting approach that feeds top-K converting categories as context. ^[extracted]

## Key People

- [[entities/tejaswi]] — Search and ML team member
- [[entities/vinesh]] — Search and ML team member

## Gumloop Relationship

An Instacart representative who discovered [[entities/gumloop|Gumloop]] and brought it into Instacart later quit his job to join Gumloop full-time. He now handles enterprise relationships and works with large customers, bringing deep domain knowledge to the company. ^[inferred]
