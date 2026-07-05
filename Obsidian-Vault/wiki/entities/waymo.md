---
title: "Waymo"
category: entities
tags:
  - autonomous-driving
  - self-driving
  - google
  - alphabet
  - robotaxi
aliases:
  - Waymo One
sources:
  - "AIEF2025 - Waymo's EMMA: Teaching Cars to Think - Jyh Jing Hwang, Waymo - https://www.youtube.com/watch?v=iS9YFW28XyM"
summary: "Alphabet's autonomous driving subsidiary operating robotaxi services in Phoenix, San Francisco, Austin, Los Angeles, with expansion planned to 10 cities and Tokyo in 2025."
provenance:
  extracted: 0.90
  inferred: 0.10
  ambiguous: 0.00
base_confidence: 0.90
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/google]]"
    type: related_to
  - target: "[[entities/gemini]]"
    type: uses
  - target: "[[concepts/autonomous-driving]]"
    type: implements
  - target: "[[concepts/l2-vs-l4-autonomy]]"
    type: implements
---

# Waymo

[[entities/waymo|Waymo]] is Alphabet's autonomous driving subsidiary, operating Level 4 (L4) fully autonomous robotaxi services across multiple U.S. cities.

## Operations

Waymo currently operates rider-only robotaxi services in:

- Phoenix, Arizona
- San Francisco, California
- Austin, Texas
- Los Angeles, California

In 2025, Waymo expanded to approximately 10 cities across the U.S. and entered Tokyo, Japan.

## Technology Approach

Waymo's production system uses a traditional modular pipeline:

1. **Perception** — understands the world (cars, pedestrians, cyclists, traffic lights, crossroads)
2. **Prediction** — predicts future world states given the current one
3. **Planning** — determines driving actions (turn direction, acceleration, steering)

The system uses HD map priors, LiDAR, and a sophisticated oracle perception system.

## EMMA

Waymo is also developing EMMA (Embodied Multimodal Model for Autonomous driving), a foundation-model-based system built on Google's Gemini that drives using only cameras without HD maps. See [[concepts/end-to-end-driving]] and [[concepts/foundation-models-autonomous-driving]].

## Related

- [[entities/jyh-jing-hwang]] — Waymo speaker at AIEF2025
- [[entities/google]] — Alphabet parent company
- [[entities/gemini]] — Foundation model powering EMMA
- [[concepts/autonomous-driving]] — Autonomous driving overview
- [[concepts/l2-vs-l4-autonomy]] — L4 autonomy level
