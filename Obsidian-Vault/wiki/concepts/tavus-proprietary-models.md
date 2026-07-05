---
title: "Tavus Proprietary Models"
category: concepts
tags:
  - tavus
  - video-ai
  - proprietary-models
  - sparrows-zero
  - raven-zero
sources:
  - "AIEF2025 - Realtime Conversational Video with Pipecat and Tavus — Chad Bailey and Brian Johnson, Daily & Tavus - https://www.youtube.com/watch?v=ujt0da9Z29Q"
provenance:
  extracted: 0.90
  inferred: 0.07
  ambiguous: 0.03
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[entities/tavus]]"
    type: implements
  - target: "[[entities/pipe-cat]]"
    type: related_to
  - target: "[[concepts/conversational-video-interface]]"
    type: related_to
---

# Tavus Proprietary Models

Tavus has developed two proprietary models that form their core intellectual property: Sparrow Zero and Raven Zero.^[extracted] These models power Tavus's conversational video interface and are being integrated into the Pipecat ecosystem.^[extracted]

## Sparrow Zero

Sparrow Zero is one of Tavus's proprietary models, part of their IP offering.^[extracted] It is used within Tavus's stack for conversational video processing.^[extracted]

## Raven Zero

Raven Zero is Tavus's second proprietary model, also part of their core IP.^[extracted] Like Sparrow Zero, it powers the conversational video interface and is being moved toward integration with Pipecat.^[extracted]

## Integration Strategy

Currently, Sparrow Zero and Raven Zero are offered within Tavus's own stack.^[extracted] However, Tavus is moving toward a world where these models are offered within Pipecat — making them accessible to a broader ecosystem of developers building real-time conversational video applications.^[extracted] This mirrors the pattern of proprietary voice models (like Orpheus TTS) becoming available through orchestration frameworks.^[extracted]

## Significance

The existence of proprietary models at Tavus represents a differentiation strategy in the conversational video space.^[extracted] While Pipecat remains vendor-neutral at the orchestration layer, Tavus's proprietary models provide the specialized rendering capability that powers their conversational video interface.^[extracted]

- [[entities/tavus]] — Company that owns these models
- [[entities/pipe-cat]] — Framework where models will be integrated
- [[concepts/conversational-video-interface]] — Product powered by these models
