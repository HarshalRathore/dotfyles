---
title: "Yesu Feng"
tags:
  - person
  - netflix
  - recommendation-systems
  - recsys
aliases:
  - Yesu Feng Netflix
  - Yisoo Feng
sources:
  - "AIEF2025 - Netflix's Big Bet: One model to rule recommendations: Yesu Feng, Netflix - https://www.youtube.com/watch?v=AbZ4IYGbfpQ"
summary: "Netflix engineer who architected the company's unified recommendation foundation model, a single transformer-based model covering all personalization use cases."
provenance:
  extracted: 0.70
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Yesu Feng

Engineer at [[Netflix]] leading the development of a unified transformer-based foundation model for recommendation and personalization across all Netflix surfaces. Presented this work at AI Engineer World's Fair 2025 (AIEF2025), introduced by [[entities/eugene-yan|Eugene Yan]]. ^[extracted]

## Key Contributions

- **Netflix Recommendation Foundation Model** — Architected a single auto-regressive transformer model (1B+ parameters) serving all Netflix recommendation use cases, replacing dozens of independently developed specialized models. ^[extracted]
- **Scaling Law Validation for RecSys** — Demonstrated that scaling laws apply to recommendation systems, with consistent quality gains from ~10M to ~1B parameters over a 2.5-year scaling period. ^[extracted]
- **LLM-to-RecSys Knowledge Transfer** — Adapted multi-token prediction, multi-layer representation aggregation, and long-context window techniques from NLP to the recommendation domain. ^[extracted]
- **Three Consumption Patterns** — Defined how downstream applications consume the foundation model: subgraph integration, embedding push, and fine-tuning/distillation. ^[extracted]

## Future Directions

Feng identified three active research directions for Netflix's recommendation infrastructure:
1. Universal representation for heterogeneous entities via semantic IDs
2. Generative retrieval for collection recommendations using multi-step decoding
3. Faster adaptation through prompt tuning (soft tokens) ^[extracted]

## Sources

- [[references/aief2025-netflix-one-model-recommendations-yesu-feng|AIEF2025 — Netflix's Big Bet: One Model to Rule Recommendations]]
