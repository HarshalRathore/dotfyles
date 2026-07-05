---
title: "Foundation Models in Autonomous Driving"
category: concepts
tags:
  - foundation-models
  - autonomous-driving
  - gemini
  - large-language-models
  - multimodal
aliases:
  - foundation models driving
  - LLM autonomous driving
sources:
  - "AIEF2025 - Waymo's EMMA: Teaching Cars to Think - Jyh Jing Hwang, Waymo - https://www.youtube.com/watch?v=iS9YFW28XyM"
summary: "The application of multimodal foundation models (Gemini, etc.) to autonomous driving, enabling end-to-end systems that generalize to longtail scenarios and provide explainable reasoning through chain-of-thought."
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
  - target: "[[concepts/end-to-end-driving]]"
    type: enables
  - target: "[[concepts/foundation-models]]"
    type: extends
  - target: "[[concepts/longtail-scenarios]]"
    type: related_to
  - target: "[[concepts/chain-of-thought-driving]]"
    type: related_to
---

# Foundation Models in Autonomous Driving

Foundation models — large multimodal models trained on internet-scale data — are being applied to autonomous driving, enabling a new paradigm that replaces the traditional perception-prediction-planning pipeline.

## Why Foundation Models?

Foundation models offer capabilities that address key challenges in autonomous driving:

1. **Generalization to longtail scenarios** — rare events (bird flocks, wet-road slips) that specialized models fail on
2. **Multimodal reasoning** — understanding visual + textual context simultaneously
3. **Explainability via reasoning** — chain-of-thought capabilities allow the model to articulate its decisions
4. **Scaling laws** — quality improves with model size and dataset size

## Waymo's EMMA

Waymo's EMMA (Embodied Multimodal Model for Autonomous driving) is the primary example of foundation models applied to autonomous driving:

- Built on Google's Gemini
- Takes 360° camera video + routing text as input
- Outputs future waypoints directly
- Self-supervised, camera-only, map-free

See [[concepts/end-to-end-driving]] for the full EMMA architecture.

## Chain-of-Thought Reasoning

A key enhancement is adding chain-of-thought reasoning before the planning output:

1. Model identifies critical objects on the road
2. Model predicts their behavior
3. Model states driving meta-decisions (yield, slow down, maintain speed)

This "channel-solve" process improves planner quality and provides explainability. See [[concepts/chain-of-thought-driving]].

## Scaling Laws

Foundation models in autonomous driving follow scaling laws: larger models and larger datasets yield continuous quality improvements. Waymo validated this on their Remote Open Motion dataset (100k clips, 100× larger than academic datasets). See [[concepts/scaling-laws]].

## Limitations

- **Compute requirements** — foundation models are expensive to run in real-time
- **Latency** — inference speed may be insufficient for safety-critical real-time decisions
- **Verification** — hard to verify that a foundation model's reasoning is correct

## Related

- [[concepts/end-to-end-driving]] — EMMA as an end-to-end system
- [[concepts/foundation-models]] — Foundation models general concept
- [[concepts/longtail-scenarios]] — Longtail scenarios where FM excels
- [[concepts/chain-of-thought-driving]] — Chain-of-thought reasoning
- [[entities/gemini]] — The model powering EMMA
