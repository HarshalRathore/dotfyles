---
title: "Turn Detection"
category: concepts
tags:
  - voice-ai
  - turn-taking
  - voice-activity-detection
  - real-time
  - smart-turn
  - client-side-vad
sources:
  - "[[sources/watchv=ia4lzjh9sts]]"
  - "[[sources/watchv=e71ytnbcfxy]]"
  - "AIEF2025 - Milliseconds to Magic: Real‑Time Workflows using the Gemini Live API and Pipecat - https://www.youtube.com/watch?v=fWY1FQwpWkY"
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
tier: core
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/voice-ai-latency]]"
    type: related_to
  - target: "[[concepts/ambient-noise-resilience]]"
    type: related_to
  - target: "[[concepts/human-turn-taking-prediction]]"
    type: extends
---

# Turn Detection

Turn detection is the problem of determining when a human speaker has finished talking and when the AI agent should begin responding.^[extracted] It is one of the top three problems in voice AI as of 2025, alongside latency and naturalness.^[extracted]

## The Challenge

Humans are good but imperfect at knowing when a conversation partner has finished speaking.^[extracted] Voice AI agents are not yet as good at this, though the field is improving rapidly.^[extracted] The difficulty is compounded by ambient noise and background voices that can trigger false interruptions — even when modern transcription models are resilient to noise, the LLMs themselves are not.^[extracted]

## Smart Turn Model

The open-source Smart Turn model is part of the PipeCat ecosystem, providing voice activity detection for real-time turn-taking.^[extracted] It is hosted by FAL on GPU-optimized inference and runs for free inside PipeCat Cloud.^[extracted] The model detects when a human has actually finished speaking versus when they are just pausing, enabling the agent to respond at the right moment.

## Relationship to Ambient Noise

Background noise that sounds like speech triggers false turn detection, causing unwanted interruptions and injecting spurious pseudo-speech into transcripts.^[extracted] The Crisp commercial noise model is the best solution for this today — it filters out background noise before it reaches the turn detection and LLM pipeline.^[extracted] Crisp is available for free on PipeCat Cloud or with a separate license elsewhere.

## Connection to Speech-to-Speech

Moshi (Kyotai) and similar speech-to-speech architectures address turn detection at the model level through constant bi-directional streaming.^[extracted] Instead of relying on a separate turn detection model, the model itself handles turn-taking naturally through its architecture — streaming silence tokens when not speaking and producing back-channel sounds (mm, ah, yeah) as part of its normal output stream.^[extracted]

## Server-Side Turn Detection in APIs

The Gemini Live API provides server-side turn detection as a built-in capability.^[extracted] Daily also offers server-side turn detection but allows developers to disable it in favor of client-side models like Daily's own VAD.^[extracted] This flexibility acknowledges that different applications have different turn detection requirements — some developers may prefer their own VAD implementation or a model-specific approach.^[extractinferred]

## Relationship to Other Concepts

- [[concepts/voice-ai-latency]] — Turn detection directly impacts latency; false positives cause wasted inference, false negatives cause awkward pauses
- [[concepts/ambient-noise-resilience]] — Background noise is the primary adversary of accurate turn detection
- [[concepts/human-turn-taking-prediction]] — Turn detection is the AI implementation of human conversational turn-taking
- [[concepts/speech-to-speech-architecture]] — Speech-to-speech models may eventually make separate turn detection models obsolete
- [[concepts/gemini-live-api]] — Provides server-side turn detection as a built-in capability
