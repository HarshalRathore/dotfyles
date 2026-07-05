---
title: "PipeCat"
category: entities
tags:
  - tool
  - open-source
  - voice-ai
  - agents
  - framework
  - video-ai
sources:
  - "[[sources/watchv=e71ytnbcfxy]]"
  - "[[sources/watchv=ia4lzjh9sts]]"
  - "AIEF2025 - Realtime Conversational Video with Pipecat and Tavus — Chad Bailey and Brian Johnson, Daily & Tavus - https://www.youtube.com/watch?v=ujt0da9Z29Q"
provenance:
  extracted: 0.88
  inferred: 0.09
  ambiguous: 0.03
base_confidence: 0.82
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-05
relationships:
  - target: "[[concepts/voice-agents]]"
    type: enables
  - target: "[[concepts/web-rtc]]"
    type: uses
  - target: "[[concepts/turn-detection]]"
    type: uses
  - target: "[[entities/daily]]"
    type: related_to
  - target: "[[entities/tavus]]"
    type: related_to
  - target: "[[concepts/real-time-conversational-video]]"
    type: enables
---

# PipeCat

PipeCat is an open source, vendor-neutral voice AI framework created by Kwindla Kramer and others at Daily.^[extracted] It enables builders to create voice AI applications with pipeline-based architecture written in Python (with C for performance-critical paths).^[extracted]

## Capabilities

- **Voice agent construction** — Build conversational voice AI applications using programmable media handling pipelines
- **Multi-party connections** — Connect LLMs into meetings and group conversations
- **Pipeline architecture** — Pipelines are sequences of programmable elements (network → processing → network) that can be simple (3 elements) or complex (enterprise-grade with many legacy system integrations)^[extracted]
- **Model diversity** — 60+ model and service integrations covering STT, LLM, TTS, and speech-to-speech models^[extracted]
- **Native telephony** — Plug-and-play support for multiple telephony providers including Twilio and Plevo (for regions where Twilio lacks phone numbers, e.g., India)^[extracted]
- **Chained and speech-to-speech** — Supports both traditional STT→LLM→TTS chains and native speech-to-speech models, with code changes limited to a few lines^[extracted]
- **Open source** — 100% open source and completely vendor neutral^[extracted]

## Frames, Processors, and Pipelines

PipeCat's name comes from its pipeline-based architecture.^[extracted] The three fundamental abstractions are:^[extracted]

- **Frames** — Type containers for data (audio snippets of 10-20ms, video frames, context turns, VAD signals, text frames)
- **Processors** — Components that handle frames (e.g., LLM processor takes context frames, outputs streaming text frames)
- **Pipelines** — Composed chains of processors that describe bot behavior, run asynchronously to minimize latency

## Three Functional Layers

Pipecat operates across three layers:^[extracted]

1. **Input** — Receiving media from users (audio, video)
2. **Processing** — Running models and transformations
3. **Output** — Delivering generated media back to users (audio, video, UI updates)

In a traditional voice bot, input is voice, processing runs STT→LLM→TTS, and output is audio. In a Tavus replica, input includes both voice and video, processing may run Tavus as a single integrated component, and output is synchronized video and audio.^[extracted]

## PipeCat Cloud

PipeCat Cloud is the first open source voice AI cloud, built from the ground up to host voice AI agent code.^[extracted] It sits as a thin layer on top of Daily's global real-time infrastructure — essentially a thin wrapper around Docker and Kubernetes optimized for voice AI.^[extracted]

PipeCat Cloud solves:
- **Cold starts** — Fast agent startup for telephony use cases where users expect immediate response
- **Auto-scaling for real-time** — Unlike HTTP workloads, real-time voice sessions require specialized scaling
- **Global deployment** — Private AWS/OCI backbones route from edge endpoints to hosting regions, addressing latency and data residency requirements^[extracted]
- **Smart Turn model** — The open-source turn detection model runs for free, hosted by FAL on GPU-optimized inference^[extracted]
- **Crisp noise filtering** — Commercial noise model available for free on PipeCat Cloud^[extracted]

## Tavus Integration

Tavus is moving toward offering its proprietary models (Sparrow Zero and Raven Zero) within Pipecat.^[extracted] Brian Johnson of Tavus noted that when Tavus first built their system, they didn't know about Pipecat, but over time came to realize that much of what Pipecat does — turn detection, response timing, orchestration — is essential for making conversational AI real.^[extracted] This integration extends Pipecat beyond voice-only to support real-time conversational video.^[extracted]

## Significance

PipeCat appeals to developers because it's 100% open source and completely vendor neutral, supporting different providers at every layer of the stack.^[extracted] The community has grown large enough that cutting-edge ML research (like the Smart Turn model) emerges from the open source ecosystem.^[extracted]

Even Google's Gemini documentation acknowledges that while their tools are suitable for experimentation, production deployments need something like Pipecat to orchestrate the entire application.^[extracted]

## Relationship to Other Entities

- [[entities/kwindla-kramer]] — Co-creator
- [[entities/daily]] — Creator's employer and infrastructure provider
- [[entities/fal]] — Hosts Smart Turn model for PipeCat Cloud users
- [[entities/tavus]] — Partner integrating proprietary models
- [[concepts/turn-detection]] — Smart Turn model provides turn detection
