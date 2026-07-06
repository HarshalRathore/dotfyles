---
title: Query Understanding
category: concepts
tags: [search, llm, query-processing, nlp, e-commerce, taxonomy, multi-label-classification]
summary: "The most upstream component of the search stack, responsible for normalizing, tagging, classifying, and mapping user queries to a product taxonomy before retrieval and ranking."
sources:
  - "https://www.youtube.com/watch?v=pjavhm_3ljg"
provenance:
  extracted: 0.75
  inferred: 0.20
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
relationships:
  - target: "[[concepts/query-rewriting]]"
    type: extends
  - target: "[[concepts/taxonomy-classification]]"
    type: extends
  - target: "[[concepts/engagement-data]]"
    type: related_to
  - target: "[[concepts/tail-query-handling]]"
    type: related_to
created: 2026-07-04
updated: 2026-07-04
---

# Query Understanding

Query understanding is the most upstream component of the search stack. It processes a user's raw query and produces structured outputs that enable better retrieval, recall, and ranking downstream. ^[extracted]

## Core Models

A typical query understanding module contains multiple models:

- **Query normalization**: Cleaning and standardizing the raw query text
- **Query tagging**: Attaching metadata tags to the query (e.g., brand, dietary preference, product type)
- **Query classification**: Determining the user's intent category
- **Category classification**: Mapping the query to labels in a product taxonomy

## E-commerce Challenges

In e-commerce search, query understanding faces unique challenges:

- **Overly broad queries** (e.g., "snacks") map to thousands of products, creating cold start problems where products can't accumulate engagement data
- **Very specific queries** (e.g., "unsweetened plant-based yogurt") have insufficient historical engagement data for traditional models
- **Multi-label classification**: A single query can map to multiple taxonomy labels, requiring models that handle overlapping categories

## Pre-LLM Approaches

Traditional query understanding relied on:

- **Fast text-based neural networks** that model semantic relationships between queries and categories
- **NPMI (Normalized Pointwise Mutual Information)** statistical co-occurrence models between queries and categories

These approaches worked well for head and torso queries but had low coverage on tail queries due to data sparsity. ^[extracted]

## LLM-Enhanced Query Understanding

LLMs can significantly improve query understanding when prompted correctly. The key insight from Instacart is that feeding top-K converting categories as context to the LLM — rather than asking it to predict categories from scratch — dramatically improves alignment with actual user behavior. ^[extracted]

## Related Concepts

- [[concepts/query-rewriting]] — Transforms queries for better retrieval
- [[concepts/taxonomy-classification]] — Mapping queries to hierarchical categories
- [[concepts/cold-start-recommendation]] — Challenge of broad queries with no engagement data
- [[concepts/tail-query-handling]] — Strategies for low-frequency queries
- [[concepts/e-commerce-search-challenges]] — E-commerce specific search problems
