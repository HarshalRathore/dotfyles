---
title: 'AIEF2025 — Waymo''s EMMA: Teaching Cars to Think'
category: references
tags:
- waymo
- emma
- end-to-end-driving
- foundation-models
- autonomous-driving
- gemini
- jyh-jing-hwang
aliases:
- EMMA Waymo
- Waymo EMMA
sources:
- 'AIEF2025 - Waymo''s EMMA: Teaching Cars to Think - Jyh Jing Hwang, Waymo - https://www.youtube.com/watch?v=iS9YFW28XyM'
summary: Jyh Jing Hwang presents EMMA — a foundation-model-based autonomous driving system built on Google's Gemini that drives using only cameras, without HD maps, and uses chain-of-thought reasoning for e...
provenance:
  extracted: 0.95
  inferred: 0.05
  ambiguous: 0.0
base_confidence: 0.85
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[entities/waymo]]'
  type: related_to
- target: '[[entities/gemini]]'
  type: uses
- target: '[[entities/jyh-jing-hwang]]'
  type: related_to
---

# AIEF2025 — Waymo's EMMA: Teaching Cars to Think

**Speaker:** Jyh Jing Hwang, Waymo
**Event:** AI Engineer World's Fair 2025
**Video:** https://www.youtube.com/watch?v=iS9YFW28XyM

## Summary

Jyh Jing Hwang presents EMMA (Embodied Multimodal Model for Autonomous driving), a new approach to autonomous driving that leverages foundation models — specifically Google's Gemini — to replace the traditional perception-prediction-planning pipeline with a single end-to-end system. EMMA drives using only cameras (no LiDAR), requires no HD maps, and uses chain-of-thought reasoning for explainability.

## Key Points

- **EMMA Architecture:** Takes routing instructions as text + 360° camera video input from 8 cameras, outputs future waypoints directly via a Gemini-based model.
- **Three Design Traits:** Self-supervised (trained on driving logs), camera-only (no LiDAR needed), map-free (no HD maps, only Google Maps).
- **Performance:** Achieves state-of-the-art on the NewSync open-loop planner benchmark with this simple formulation.
- **Chain-of-Thought Enhancement:** A "channel-solve" process adds reasoning before planning output — the model identifies critical objects, predicts their behavior, and states driving meta-decisions (yield, slow down, maintain speed). This improves planner quality further.
- **Scaling Laws Validated:** Larger models and larger datasets (Waymo's Remote Open Motion dataset, 100k clips — 100× larger than NewSync) show continued quality improvements.
- **Longtail Challenges:** EMMA excels at rare scenarios (bird flocks attacking cars, wet-road scooter slips, conflicting traffic signals) where foundation models generalize better than specialized models.
- **Waymo Scale:** Currently operating in Phoenix, San Francisco, Austin, Los Angeles; expanding to 10 cities and Tokyo in 2025.

## Related

- [[entities/waymo]] — Waymo's autonomous driving operations
- [[entities/jyh-jing-hwang]] — Speaker and presenter
- [[concepts/end-to-end-driving]] — EMMA as an end-to-end driving system
- [[concepts/foundation-models-autonomous-driving]] — Foundation models applied to driving
- [[concepts/chain-of-thought-driving]] — Chain-of-thought reasoning for driving decisions
- [[concepts/longtail-scenarios]] — Rare edge cases in autonomous driving
