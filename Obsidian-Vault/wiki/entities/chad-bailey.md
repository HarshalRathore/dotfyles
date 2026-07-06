---
title: Chad Bailey
category: entities
tags:
- person
- voice-ai
- real-time
- daily
- pipecat
- speaker
sources:
- AIEF2025 - Realtime Conversational Video with Pipecat and Tavus — Chad Bailey and Brian Johnson, Daily & Tavus - https://www.youtube.com/watch?v=ujt0da9Z29Q
provenance:
  extracted: 0.95
  inferred: 0.03
  ambiguous: 0.02
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
- target: '[[entities/daily]]'
  type: related_to
- target: '[[entities/pipe-cat]]'
  type: related_to
- target: '[[entities/brian-johnson]]'
  type: related_to
- target: '[[entities/tavus]]'
  type: related_to
summary: Chad Bailey
---

# Chad Bailey

Chad Bailey is a speaker from Daily who co-presented "Realtime Conversational Video with Pipecat and Tavus" at AI Engineer World's Fair 2025 with Brian Johnson of Tavus.^[extracted]

## Background

Chad comes from a traditional voice AI background, familiar with the standard cascading pipeline of speech-to-text → LLM inference → text-to-speech.^[extracted] He brings deep domain knowledge of voice AI systems and their real-time constraints to the intersection of voice and video.

## AIEF2025 Talk

Chad co-presented with Brian Johnson on building real-time conversational video systems, covering the three essential layers: models, orchestration (via Pipecat), and deployment.^[extracted] He introduced the Pipecat architecture (frames, processors, pipelines) and explained how the framework handles input, processing, and output for real-time AI interactions that include both audio and video streams.^[extracted]

## Key Contributions

Chad articulated why real-time video is more complicated than voice — it requires coordinating video generation, audio synchronization, and response timing all within tight latency budgets.^[extracted] He demonstrated how Pipecat serves as the orchestration layer that connects models to deployment, enabling production-grade conversational AI systems.^[extracted]

- [[entities/daily]] — His company
- [[entities/pipe-cat]] — The framework he presented
- [[entities/brian-johnson]] — Co-presenter from Tavus
- [[entities/tavus]] — Partner company in the talk
