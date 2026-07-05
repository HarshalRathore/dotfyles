---
title: "Shristha"
category: entities
tags:
  - person
  - speaker
  - voice-ai
  - aief2025
  - models
  - apis
summary: Shristha — Speaker at AIEF2025, focused on models and APIs for voice AI. Co-presenter with Thor Schaeff on the Gemini Live API and Pipecat.
sources:
  - "AIEF2025 - Milliseconds to Magic: Real‑Time Workflows using the Gemini Live API and Pipecat - https://www.youtube.com/watch?v=fWY1FQwpWkY"
provenance:
  extracted: 0.90
  inferred: 0.10
  ambiguous: 0.00
base_confidence: 0.80
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/thor-schaeff]]"
    type: related_to
  - target: "[[entities/gemini]]"
    type: related_to
  - target: "[[concepts/gemini-live-api]]"
    type: related_to
---

# Shristha

Shristha is a speaker at AI Engineer World's Fair 2025, focused on the models and APIs side of voice AI. ^[extracted] She co-presented "Milliseconds to Magic: Real-Time Workflows using the Gemini Live API and Pipecat" with Thor Schaeff, approaching the topic from the models/APIs angle while Thor covered the application layer and agent framework direction. ^[extracted]

## AIEF2025 Talk

Together with Thor, Shristha presented the four-layer voice AI stack framework and the "stack maturity" thesis — that capabilities move down the stack over time from application code to frameworks to APIs to models. ^[extracted] She also discussed turn detection as the canonical example of this stack migration, noting that the Gemini Live API provides server-side turn detection while still allowing developers to disable it in favor of client-side models. ^[inferred]

## Related

- [[entities/thor-schaeff]] — Co-presenter
- [[entities/gemini]] — Google's Gemini models and APIs
- [[concepts/gemini-live-api]] — The real-time API they discussed
- [[concepts/voice-ai-stack]] — The stack framework they proposed
