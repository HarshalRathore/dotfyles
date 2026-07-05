---
title: "End-to-End Driving"
category: concepts
tags:
  - end-to-end
  - autonomous-driving
  - neural-networks
  - camera-only
  - map-free
aliases:
  - end-to-end autonomous driving
  - end-to-end driving models
sources:
  - "AIEF2025 - Waymo's EMMA: Teaching Cars to Think - Jyh Jing Hwang, Waymo - https://www.youtube.com/watch?v=iS9YFW28XyM"
summary: "An autonomous driving paradigm where a single model takes raw sensory input (camera video + routing text) and directly outputs driving actions (waypoints), eliminating the modular perception-prediction-planning pipeline."
provenance:
  extracted: 0.80
  inferred: 0.20
  ambiguous: 0.00
base_confidence: 0.80
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/perception-prediction-planning]]"
    type: replaces
  - target: "[[concepts/foundation-models-autonomous-driving]]"
    type: related_to
  - target: "[[concepts/self-supervised-driving]]"
    type: related_to
---

# End-to-End Driving

End-to-end driving is an autonomous driving paradigm where a single neural network maps raw sensory input directly to driving actions, eliminating the traditional modular pipeline of perception, prediction, and planning.

## How It Works

The simplest end-to-end formulation:

1. **Input:** 360° camera video (8 cameras) + routing instructions as text (e.g., "turn left at next intersection")
2. **Model:** A large multimodal model (e.g., Google's Gemini)
3. **Output:** Future waypoints — the car's predicted locations over the next few seconds

## Three Key Traits

1. **Self-supervised** — trained on driving logs where the car's actual future trajectory is known. Any driving log provides training data without manual labeling.
2. **Camera-only** — no LiDAR required. The model is trained on camera data alone.
3. **Map-free** — no HD maps needed. Only standard map data (e.g., Google Maps) is used.

## Performance

This simple formulation achieved state-of-the-art on the NewSync open-loop planner benchmark, outperforming all other models at the time — including customized small models, large models, and specialized systems.

## Limitations

- **No explainability** — only the planner output is visible; internal reasoning is opaque
- **Generalization gaps** — while foundation models handle rare scenarios better than specialized models, they still struggle with extreme edge cases

## Chain-of-Thought Enhancement

Adding a "channel-solve" reasoning step before planning output — where the model identifies critical objects, predicts their behavior, and states driving meta-decisions — further improves quality. See [[concepts/chain-of-thought-driving]].

## Related

- [[concepts/perception-prediction-planning]] — Traditional modular pipeline that end-to-end replaces
- [[entities/waymo]] — Waymo's EMMA implements end-to-end driving
- [[concepts/foundation-models-autonomous-driving]] — Foundation models enable end-to-end driving
- [[concepts/self-supervised-driving]] — Training methodology for end-to-end systems
