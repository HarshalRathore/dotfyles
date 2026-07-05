---
title: "Cars vs Traffic Metaphor"
category: concepts
tags:
  - prediction
  - emergent-behavior
  - ai-strategy
  - metaphor
  - aief2025
summary: "Cheng Lu's (MidJourney) metaphor distinguishing predictable AI components (cars = engines + wheels) from unpredictable emergent behavior (traffic). Engineers should focus on traffic, not cars."
sources:
  - "AIEF2025 - Perceptual Evaluations: Evals for Aesthetics — Diego Rodriguez, Krea.ai - https://www.youtube.com/watch?v=h5ItAJuB3Fc"
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
  - target: "[[concepts/emergent-behavior-in-ai|Emergent Behavior in AI]]"
    type: related_to
  - target: "[[concepts/perceptual-evaluations|Perceptual Evaluations]]"
    type: related_to
  - target: "[[entities/cheng-lu|Cheng Lu]]"
    type: related_to
---

# Cars vs Traffic Metaphor

The cars vs traffic metaphor, articulated by Cheng Lu (MidJourney), distinguishes between predictable components of a system and unpredictable emergent behavior. It is a framing device for understanding where AI engineering effort should be concentrated. ^[extracted]

## The Metaphor

Predicting the car when everything was horses is easy: "we have a thing that goes like this, we have horses that make energy, so you swap the thing for the engine, that's essentially a car." The components are well-understood and mechanically predictable. ^[extracted]

Predicting traffic is hard. Traffic is emergent behavior arising from the interaction of many unpredictable agents (drivers), each making decisions based on context, mood, and incomplete information. You cannot predict traffic by understanding cars. ^[extracted]

## Application to AI

The metaphor maps to AI engineering as follows:

| Cars (Easy to Predict) | Traffic (Hard to Predict) |
|---|---|
| Model architectures | Human perception of outputs |
| API contracts | User behavior and interaction patterns |
| FID scores | Aesthetic quality |
| JSON-to-JAML conversion | Meaningful user outcomes |
| Infrastructure debates (Kubernetes vs not) | Actual product value |

The key insight: engineers and researchers should focus on traffic — the emergent, unpredictable behaviors that actually matter — not cars, which are well-understood components. ^[inferred]

## Relation to Perceptual Evaluation

The cars vs traffic metaphor directly motivates [[concepts/perceptual-evaluations|perceptual evaluations]]. FID scores are "cars" — easy to compute, well-understood, but missing the point. Human perception is "traffic" — hard to predict, hard to measure, but what actually matters. Diego Rodriguez argues that the field is spending too much effort on cars and not enough on traffic. ^[inferred]

## Sources

- AIEF2025 - Perceptual Evaluations: Evals for Aesthetics — Diego Rodriguez, Krea.ai - https://www.youtube.com/watch?v=h5ItAJuB3Fc
