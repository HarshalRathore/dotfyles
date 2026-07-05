---
title: "Real-Time APIs"
category: concepts
tags:
  - real-time-api
  - voice-ai
  - streaming
  - inference
  - gemini
sources:
  - "AIEF2025 - Milliseconds to Magic: Real‑Time Workflows using the Gemini Live API and Pipecat - https://www.youtube.com/watch?v=fWY1FQwpWkY"
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/gemini-live-api]]"
    type: extends
  - target: "[[concepts/voice-ai-stack]]"
    type: related_to
  - target: "[[concepts/voice-ai-latency]]"
    type: enables
---

# Real-Time APIs

Real-Time APIs are carefully designed, constantly evolving application programming interfaces that sit between foundation models and orchestration frameworks in the voice AI stack. ^[extracted] They handle the protocol-level concerns of real-time AI interaction — streaming inference, bidirectional communication, and increasingly, built-in voice AI primitives.

## The Layer

In the four-layer voice AI stack, real-time APIs occupy the second layer from the bottom — above the LLMs themselves and below orchestration frameworks like Pipecat. ^[extracted] They serve as the bridge between model capabilities and application-level functionality.

## Google's Gemini Live API

The Gemini Live API is the primary example of a real-time API. ^[extracted] It provides:
- Streaming inference for Gemini models
- Bidirectional communication for real-time interaction
- Built-in server-side turn detection
- Flexibility to disable built-in features in favor of client-side implementations

## Characteristics

Real-time APIs are characterized by:
- **Constant evolution** — The API surface area is expanding as new voice AI primitives are added
- **Inference + extras** — Beyond raw inference, they increasingly include features like turn detection, semantic VAD, and voice activity handling
- **Abstraction layer** — They abstract away complexity that application developers would otherwise implement themselves

## Relationship to Stack Maturity

Real-time APIs are the destination for capabilities migrating down the stack. ^[inferred] Turn detection moved from application code → framework → API, and more capabilities are expected to follow this path. This makes real-time APIs an increasingly important layer for voice AI development.

## Related

- [[concepts/gemini-live-api]] — The primary real-time API example
- [[concepts/voice-ai-stack]] — Where this layer sits in the architecture
- [[concepts/turn-detection]] — A capability that migrated to this layer
- [[concepts/voice-ai-latency]] — The constraint that makes real-time APIs necessary
