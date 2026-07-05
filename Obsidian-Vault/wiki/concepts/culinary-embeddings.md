---
title: "Culinary Embeddings"
category: concepts
tags:
  - embeddings
  - computer-vision
  - cooking
  - thermal-imaging
  - food-perception
  - foundation-models
summary: Food-specific embedding representations derived from thermal and RGB imagery that encode cooking state (doneness, browning, texture) for use in recipe state machines and perception models.
sources:
  - "[[sources/watchv=mbwgiwjdlso]]"
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.82
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/thermal-computer-vision]]"
    type: uses
  - target: "[[concepts/recipe-state-machines]]"
    type: uses
  - target: "[[concepts/robot-foundation-models]]"
    type: related_to
---

Culinary embeddings are learned vector representations of food state derived from thermal and RGB imagery. Unlike general-purpose image embeddings (e.g., CLIP), these are specialized to encode cooking-relevant properties: doneness, browning level, texture, moisture, and cooking progress.

CloudChef's system uses "thermal and visual embeddings that are specific to cooking" to reason about food during the cooking process. The robot compares current embeddings against embeddings from expert demonstrations to determine whether the food has reached the desired state.

The embedding model is trained on:
- **Private thermal/RGB data** from active commercial kitchens (hundreds of thousands of meals)
- **Public scraped data** with self-supervised learning
- **Expert demonstration data** where a chef cooks a recipe and the system records the thermal/RGB trajectory

These embeddings power the recipe state machines — each state transition is triggered when the current embedding crosses a threshold relative to the expert demonstration embedding. For example, the transition from "sautéing onions" to "next step" occurs when the onion embedding matches the embedding captured when the expert chef determined the onions were "brown enough."

The embeddings are described as being trained on "a combination" of private and public data, with the private thermal data being the critical differentiator that general-purpose models lack.
