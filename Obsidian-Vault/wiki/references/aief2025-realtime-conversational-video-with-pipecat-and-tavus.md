---
title: AIEF2025 — Realtime Conversational Video with Pipecat and Tavus
category: references
tags:
- aief2025
- video-ai
- pipecat
- tavus
- real-time
- conversational-video
- voice-ai
sources:
- AIEF2025 - Realtime Conversational Video with Pipecat and Tavus — Chad Bailey and Brian Johnson, Daily & Tavus - https://www.youtube.com/watch?v=ujt0da9Z29Q
provenance:
  extracted: 0.95
  inferred: 0.03
  ambiguous: 0.02
base_confidence: 0.88
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
- target: '[[entities/chad-bailey]]'
  type: related_to
- target: '[[entities/brian-johnson]]'
  type: related_to
- target: '[[entities/daily]]'
  type: related_to
- target: '[[entities/tavus]]'
  type: related_to
- target: '[[entities/pipe-cat]]'
  type: related_to
summary: AIEF2025 — Realtime Conversational Video with Pipecat and Tavus
---

# AIEF2025 — Realtime Conversational Video with Pipecat and Tavus

**Speakers:** Chad Bailey (Daily) and Brian Johnson (Tavus)
**Video:** https://www.youtube.com/watch?v=ujt0da9Z29Q

## Summary

Chad Bailey from Daily and Brian Johnson from Tavus presented on building real-time conversational video systems — combining Pipecat's orchestration framework with Tavus's video rendering capabilities to create interactive video conversations with AI-generated replicas.^[extracted]

## Key Topics

### Three Layers of Real-Time AI

The talk structured real-time AI around three essential layers:^[extracted]

1. **Models** — The AI models (STT, LLM, TTS, video rendering)
2. **Orchestration layer** — Connecting models into a pipeline (Pipecat)
3. **Deployment** — Where and how the bot is served

### Pipecat Architecture

Chad Bailey introduced Pipecat's three fundamental abstractions:^[extracted]

- **Frames** — Type containers for data (audio snippets, video frames, context turns, VAD signals, text)
- **Processors** — Components that transform frames (LLM processor, TTS, STT)
- **Pipelines** — Composed chains of processors that describe bot behavior, run asynchronously to minimize latency

### Pipecat's Three Functional Layers

Pipecat handles:^[extracted]

1. **Input** — Receiving media from users (audio, video)
2. **Processing** — Running models and transformations
3. **Output** — Delivering generated media (video, audio, UI updates)

### Tavus's Conversational Video Interface

Brian Johnson presented Tavus's end-to-end conversational video pipeline:^[extracted]

- Users can create their own video replica, deploy it online, and converse with it
- Response times around 600 milliseconds (sometimes intentionally slowed for naturalness)
- Proprietary models: Sparrow Zero and Raven Zero
- Moving toward integration with Pipecat for broader accessibility

### Real-Time Video Complexity

The talk highlighted that real-time video is more complicated than voice because:^[extracted]

- Video generation must stay synchronized with audio
- Response timing requires pacing, not just speed
- Input processing must handle both audio and video channels
- Video synchronization is "a really, really hard thing to do well"

### Robot Concierge Problem

The talk opened by noting that robot concierge kiosks "don't work" and are "terrible," but real-time AI makes it possible to build this kind of system that actually works.^[extracted]

## Entities Discussed

- [[entities/chad-bailey]] — Speaker from Daily
- [[entities/brian-johnson]] — Speaker from Tavus
- [[entities/daily]] — Chad's company, home of Pipecat
- [[entities/tavus]] — Brian's company, conversational video interface
- [[entities/pipe-cat]] — Orchestration framework

## Concepts Discussed

- [[concepts/real-time-conversational-video]] — The core topic
- [[concepts/conversational-video-interface]] — Tavus's product
- [[concepts/frames-processors-pipelines]] — Pipecat's architecture
- [[concepts/orchestration-layer]] — The middleware between models and deployment
- [[concepts/video-generation-real-time]] — Real-time video output
- [[concepts/tavus-replica]] — Personal video replicas
- [[concepts/tavus-proprietary-models]] — Sparrow Zero and Raven Zero
