---
title: "LinkedIn"
category: entities
tags:
  - linkedin
  - professional-networking
  - social-media
  - recommendation-systems
  - ai
aliases:
  - LinkedIn
sources:
  - "[[sources/watchv=u0s6cfzay5c]]"
provenance:
  extracted: 0.90
  inferred: 0.05
  ambiguous: 0.05
base_confidence: 0.90
lifecycle: draft
tier: core
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/360brew]]"
    type: uses
---
# LinkedIn

LinkedIn is a professional networking platform with billions of users, where recommendation systems are deeply integrated into daily user experiences — from feed content ranking to job search and learning recommendations.

## AI and Recommendation Systems

LinkedIn has invested heavily in LLM-based personalization. Their **360Brew** project, presented at AI Engineer World's Fair 2025 by Hamed and Maziar from LinkedIn AI, represents a major initiative to build a single large foundation model (based on LLM architecture) that can solve all of LinkedIn's personalization and ranking tasks — replacing dozens of disjoint, task-specific models. ^[extracted]

### 360Brew

360Brew is a 150B-parameter model (Brew XL) distilled down to a production-ready 3B variant. It is designed to:

- Solve all personalization tasks with one model
- Support zero-shot capability for new surfaces without retraining
- Leverage in-context learning for cold-start users
- Follow natural language instructions for user-directed personalization

The model is built through open-source base → upcycling → continuous pre-training → fine-tuning → instruction fine-tuning → alignment, then distilled from 150B → 3B for serving. ^[extracted]

## Related

- [[concepts/360brew|360Brew]] — LinkedIn's LLM-based recommendation system
- [[concepts/unified-recommendation-models|Unified Recommendation Models]] — 360Brew is another example of this pattern
- [[concepts/cold-start-recommendation|Cold Start in Recommendation Systems]] — 360Brew addresses cold start via in-context learning
- [[concepts/recsys-foundation-model|Recommendation Foundation Models]] — 360Brew is a LinkedIn-specific foundation model for recsys
