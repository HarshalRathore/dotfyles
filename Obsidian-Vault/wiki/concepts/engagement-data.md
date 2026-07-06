---
title: Engagement Data
category: concepts
tags:
- data
- engagement
- search
- ml
- e-commerce
- cold-start
- data-sparsity
summary: User interaction signals (clicks, purchases, views) used to train search and recommendation models — the core data source that traditional ML depends on, and the source of cold-start and tail-query...
sources:
- 'https://www.youtube.com/watch?v=pjavhm_3ljg'
provenance:
  extracted: 0.7
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.7
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
relationships:
- target: '[[concepts/cold-start-recommendation]]'
  type: related_to
- target: '[[concepts/tail-query-handling]]'
  type: related_to
- target: '[[concepts/data-flywheel]]'
  type: related_to
- target: '[[concepts/llm-user-behavior-alignment]]'
  type: related_to
created: 2026-07-04
updated: 2026-07-04
---

# Engagement Data

Engagement data refers to user interaction signals — clicks, views, purchases, cart additions — that are used to train search and recommendation models. It is the primary data source that traditional ML-based search systems depend on. ^[extracted]

## The Data Dependency Problem

Instacart's experience demonstrates the fundamental limitation of engagement-data-driven models:

- **Head queries** have abundant engagement data → models perform well
- **Tail queries** have insufficient engagement data → models have low coverage and poor accuracy
- **New products** have no engagement data → cold start problem

This creates a self-reinforcing cycle: products that aren't exposed can't accumulate engagement data, so they can't be ranked highly, so they remain unseen. ^[extracted]

## LLMs as a Complement

LLMs offer a path to handle queries and products with insufficient engagement data by leveraging pre-trained world knowledge. However, LLMs must be grounded in actual user behavior (via top-K conversions) to produce useful outputs. ^[extracted]

## Related Concepts

- [[concepts/cold-start-recommendation]] — New items lack engagement data
- [[concepts/tail-query-handling]] — Low-frequency queries lack engagement data
- [[concepts/data-flywheel]] — The virtuous cycle of engagement data improving models
- [[concepts/llm-user-behavior-alignment]] — LLMs need engagement data for grounding
