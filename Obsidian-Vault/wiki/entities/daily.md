---
title: Daily
category: entities
tags:
- company
- voice-ai
- real-time
- audio
- video
- infrastructure
- open-source
sources:
- 'https://www.youtube.com/watch?v=e71ytnbcfxy'
- 'https://www.youtube.com/watch?v=ia4lzjh9sts'
- 'AIEF2025 - Milliseconds to Magic: Real‑Time Workflows using the Gemini Live API and Pipecat - https://www.youtube.com/watch?v=fWY1FQwpWkY'
- AIEF2025 - Realtime Conversational Video with Pipecat and Tavus — Chad Bailey and Brian Johnson, Daily & Tavus - https://www.youtube.com/watch?v=ujt0da9Z29Q
provenance:
  extracted: 0.88
  inferred: 0.08
  ambiguous: 0.04
base_confidence: 0.82
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-04
updated: 2026-07-05
relationships:
- target: '[[concepts/web-rtc]]'
  type: related_to
- target: '[[entities/pipe-cat]]'
  type: related_to
- target: '[[entities/nina-daily]]'
  type: related_to
- target: '[[entities/gemini]]'
  type: related_to
- target: '[[entities/tavus]]'
  type: related_to
summary: Daily
---

# Daily

Daily is a company founded in 2016 that provides global infrastructure for real-time audio, video, and AI for developers.^[extracted] Kwindla Kramer is a co-founder.^[extracted] Nina is also a co-founder.^[extracted]

## Focus Area

Daily operates at the infrastructure layer for real-time communication, providing the building blocks that developers use to build real-time audio and video applications. This includes network-level concerns (jitter buffers, packet management, bandwidth shaping) that WebRTC handles automatically.^[extracted]

## PipeCat

Daily is the home of PipeCat, an open source, vendor-neutral voice AI framework created by Kwindla Kramer and others.^[extracted] PipeCat sits higher up in the stack than Daily's traditional infrastructure business.^[extracted]

## PipeCat Cloud

PipeCat Cloud is a commercial layer built on top of Daily's global media-oriented real-time infrastructure, designed specifically for hosting voice AI agents.^[extracted] It provides:
- Global points of presence (edge servers) that terminate WebRTC and telephony connections
- Private AWS and OCI backbones for routing traffic from edge to hosting regions
- Regional availability with quarterly expansion (as of the AIEF2025 talk, Australia was planned)^[extracted]

## Turn Detection Flexibility

Daily provides server-side turn detection but allows developers to disable it and use client-side models instead. ^[extracted] This flexibility acknowledges that different applications have different turn detection requirements — some developers may prefer their own VAD implementation or a model-specific turn detection approach. ^[inferred]

## Tavus Partnership

Daily has partnered with Tavus on real-time conversational video.^[extracted] Chad Bailey from Daily and Brian Johnson from Tavus co-presented on combining Pipecat's orchestration with Tavus's video rendering to create interactive video conversations with AI-generated replicas.^[extracted] This partnership extends Daily's infrastructure from voice-only to voice-and-video real-time AI.^[extracted]

## Significance

Daily bridges the gap between low-level real-time infrastructure and application-level voice AI development. The company initially resisted building anything commercial around PipeCat but launched PipeCat Cloud in response to frequent community questions about deployment and scaling on Kubernetes.^[extracted]

## Relationship to Other Entities

- [[entities/kwindla-kramer]] — Co-founder
- [[entities/nina-daily]] — Co-founder
- [[entities/pipe-cat]] — Open source voice AI framework built on Daily's infrastructure
- [[entities/tavus]] — Partner in real-time conversational video
