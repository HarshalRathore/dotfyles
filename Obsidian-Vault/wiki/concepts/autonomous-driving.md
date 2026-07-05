---
title: "Autonomous Driving"
category: concepts
tags:
  - autonomous-driving
  - self-driving
  - robotaxi
  - perception
  - prediction
  - planning
aliases:
  - self-driving cars
  - autonomous vehicles
sources:
  - "AIEF2025 - Waymo's EMMA: Teaching Cars to Think - Jyh Jing Hwang, Waymo - https://www.youtube.com/watch?v=iS9YFW28XyM"
summary: "The field of enabling vehicles to navigate and operate without human intervention, evolving from 1980s neural networks through modular perception-prediction-planning pipelines to foundation-model-based end-to-end systems."
provenance:
  extracted: 0.85
  inferred: 0.15
  ambiguous: 0.00
base_confidence: 0.85
lifecycle: draft
tier: core
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/end-to-end-driving]]"
    type: related_to
  - target: "[[concepts/l2-vs-l4-autonomy]]"
    type: related_to
  - target: "[[concepts/perception-prediction-planning]]"
    type: related_to
  - target: "[[concepts/foundation-models-autonomous-driving]]"
    type: related_to
---

# Autonomous Driving

Autonomous driving is the capability of a vehicle to navigate and operate without human intervention. The field has evolved through several paradigms since the 1980s.

## Historical Evolution

- **1980s:** Simple neural networks with three layers
- **2000s–2010s:** Deeper neural networks, modular pipelines
- **2020:** End-to-end driving models published by NVIDIA and other research labs — demonstrated L2-level autonomous driving that could follow lanes but still drifted
- **2025:** Foundation-model-based systems (e.g., Waymo's EMMA) achieving L4-level autonomy with generalization to rare scenarios

## Traditional Architecture

The dominant approach in production autonomous vehicles (e.g., Waymo's current system) uses a modular pipeline:

1. **Perception** — understands the world: detects cars, pedestrians, cyclists, traffic lights, crossroads
2. **Prediction** — predicts future world states given the current one
3. **Planning** — determines driving actions: turn direction, acceleration, steering

This pipeline is highly sophisticated but requires HD maps, LiDAR, and oracle perception systems.

## New Paradigm: Foundation Models

Foundation models like Google's Gemini are enabling a shift toward end-to-end systems that take camera video and routing instructions as input and directly output driving decisions. This approach is self-supervised, camera-only, and map-free. See [[concepts/end-to-end-driving]] and [[concepts/foundation-models-autonomous-driving]].

## Key Challenges

- **Longtail scenarios:** Rare events (bird flocks, wet-road slips, conflicting traffic signals) that occur frequently at scale
- **Explainability:** End-to-end models lack transparency into decision-making
- **Scaling:** Proving that larger models and datasets yield continuous quality improvements

## Related

- [[entities/waymo]] — Production L4 autonomous driving
- [[concepts/end-to-end-driving]] — End-to-end driving systems
- [[concepts/l2-vs-l4-autonomy]] — Autonomy levels
- [[concepts/perception-prediction-planning]] — Traditional modular pipeline
- [[concepts/foundation-models-autonomous-driving]] — Foundation model approach
