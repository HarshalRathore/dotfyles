---
title: "Gemini Live API"
category: concepts
tags:
  - gemini
  - real-time-api
  - google
  - voice-ai
  - turn-detection
  - multimodal
sources:
  - "AIEF2025 - Milliseconds to Magic: Real‑Time Workflows using the Gemini Live API and Pipecat - https://www.youtube.com/watch?v=fWY1FQwpWkY"
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.85
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/gemini]]"
    type: related_to
  - target: "[[entities/daily]]"
    type: related_to
  - target: "[[entities/pipe-cat]]"
    type: related_to
  - target: "[[concepts/real-time-apis]]"
    type: extends
  - target: "[[concepts/turn-detection]]"
    type: implements
---

# Gemini Live API

The Gemini Live API is Google's real-time API for the Gemini family of models. ^[extracted] It sits at the second layer of the voice AI stack — above the models themselves and below orchestration frameworks like Pipecat. ^[inferred] The API provides inference capabilities along with built-in features like server-side turn detection.

## Real-Time API Layer

The Gemini Live API represents a category of carefully designed, constantly evolving real-time APIs that sit between foundation models and application frameworks. ^[extracted] These APIs handle the protocol-level concerns of real-time interaction — streaming inference, bidirectional communication, and increasingly, built-in voice AI primitives like turn detection.

## Turn Detection

The Gemini Live API includes server-side turn detection as a built-in capability. ^[extracted] This represents the third phase of turn detection migration: from application code, to framework (Pipecat), to API (Gemini Live API). ^[inferred] Notably, the API allows developers to disable server-side turn detection and use client-side models instead — Daily's own VAD being one example. ^[extracted] This flexibility acknowledges that different applications have different turn detection requirements.

## Relationship to Voice AI Stack

In the four-layer voice AI stack proposed at AIEF2025, the Gemini Live API occupies the real-time API layer — above LLMs (DeepMind's frontier models) and below orchestration frameworks (Pipecat). ^[extracted] The API abstracts away complexity that developers would otherwise need to implement in application code, embodying the "stack maturity" thesis that capabilities move down the stack over time. ^[inferred]

## Related

- [[entities/gemini]] — Google's Gemini model family
- [[concepts/real-time-apis]] — The broader category of real-time APIs for AI
- [[concepts/turn-detection]] — Built-in turn detection capability
- [[concepts/voice-ai-stack]] — The four-layer stack framework where this API sits
- [[entities/pipe-cat]] — Orchestration framework that sits above this API layer
