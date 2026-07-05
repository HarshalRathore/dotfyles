---
title: "Netflix"
tags:
  - company
  - streaming
  - recommendation-systems
  - personalization
  - recsys
aliases:
  - Netflix Inc.
sources:
  - "[[sources/watchv=abz4iygbfpq]]"
summary: "Global streaming entertainment company that pioneered a single transformer-based foundation model for all recommendation and personalization use cases."
provenance:
  extracted: 0.70
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
tier: peripheral
created: 2026-07-03
updated: 2026-07-03
---

# Netflix

Global streaming entertainment platform with diverse recommendation needs spanning movies, TV shows, games, and live streaming, each delivered across multiple surfaces (homepage, search, kids, mobile feed). ^[extracted]

## Key AI/ML Infrastructure

- **Recommendation Foundation Model** — Single auto-regressive transformer (1B+ params) serving all personalization use cases, replacing dozens of specialized models. Architected by [[entities/yesu-feng|Yesu Feng]]. ^[extracted]
- **Graph knowledge model** — Dedicated sub-team building graph models around the content knowledge graph for the entertainment ecosystem. Graph embeddings are used as semantic embeddings to help with cold-start coverage. ^[extracted]
- **Unicorn (Unified Contextual Ranker)** — Earlier unified model covering search, pre-query recommendations, and "more like this". ^[extracted]

## Recommendation Challenges

- Diverse roles (genre rows, trending, new releases, Netflix-only)
- Expanding content types (games, live streaming)
- Multiple page layouts (2D homepage, linear mobile feed, kids homepage)
- Heterogeneous user engagement patterns ^[extracted]

## Related

- [[entities/yesu-feng]] — Engineer who architected the recommendation foundation model
- [[concepts/recsys-foundation-model]] — The foundation model architecture
- [[concepts/unified-recommendation-models]] — Category of unified recommendation approaches
- [[concepts/recsys-event-tokenization]] — How Netflix tokenizes user interaction events

## Sources

- [[references/aief2025-netflix-one-model-recommendations-yesu-feng|AIEF2025 — Netflix's Big Bet: One Model to Rule Recommendations]]
