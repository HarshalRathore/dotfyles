---
title: Search Fulfillment
category: concepts
tags:
- search-fulfillment
- engagement-metrics
- search-relevance
- user-actions
- aief2025
aliases:
- search fulfillment metric
sources:
- AIEF2025 - What We Learned from Using LLMs in Pinterest — Mukuntha Narayanan, Han Wang, Pinterest - https://www.youtube.com/watch?v=XdAWgO11zuk
provenance:
  extracted: 0.65
  inferred: 0.3
  ambiguous: 0.05
base_confidence: 0.7
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/search-relevance|Search Relevance]]'
  type: measures
- target: '[[concepts/user-engagement-metrics|User Engagement Metrics]]'
  type: related_to
summary: Search Fulfillment
---

# Search Fulfillment

A **user engagement metric** that measures whether search results lead to satisfying user actions — such as pin saves, clicks, or other meaningful interactions with the search results. It is distinct from relevance scores (which measure query-pin match quality) by measuring the downstream behavioral impact of search. ^[extracted]

## Role in Evaluating LLM Search Improvements

Pinterest used search fulfillment as a key online evaluation metric alongside relevance measurements (DCG, precision@8). The knowledge-distilled student model showed **increased search fulfillment** across international markets, even though training data was predominantly US-based. This demonstrated that relevance improvements translated into better real-world user outcomes. ^[extracted]

## Why It Matters

Search fulfillment measures the **end-to-end value** of search: not just whether results are relevant, but whether they lead users to find what they're looking for and take satisfying actions. It bridges the gap between model-level metrics (relevance scores) and business outcomes (user satisfaction, engagement). ^[inferred]

## Related

- [[concepts/search-relevance|Search Relevance]] — the broader evaluation framework
- [[concepts/user-engagement-metrics|User Engagement Metrics]] — related behavioral signals
- [[concepts/knowledge-distillation-search|Knowledge Distillation for Search]] — student model improvements measured by fulfillment

## Sources

- AIEF2025 - What We Learned from Using LLMs in Pinterest — Mukuntha Narayanan, Han Wang, Pinterest - https://www.youtube.com/watch?v=XdAWgO11zuk
