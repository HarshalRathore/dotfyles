---
title: Tavus
category: entities
tags:
- company
- video-ai
- real-time
- conversational-video
- rendering
- ai-research
sources:
- AIEF2025 - Realtime Conversational Video with Pipecat and Tavus — Chad Bailey and Brian Johnson, Daily & Tavus - https://www.youtube.com/watch?v=ujt0da9Z29Q
provenance:
  extracted: 0.9
  inferred: 0.07
  ambiguous: 0.03
base_confidence: 0.82
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
- target: '[[entities/pipe-cat]]'
  type: related_to
- target: '[[entities/daily]]'
  type: related_to
- target: '[[concepts/conversational-video-interface]]'
  type: provides
- target: '[[concepts/tavus-proprietary-models]]'
  type: owns
summary: Tavus
---

# Tavus

Tavus is an AI company that offers a conversational video interface — an end-to-end pipeline that allows users to have real-time conversations with a video replica of anyone.^[extracted] Users can create their own digital replica, put it online, and converse with it in real time.^[extracted]

## Origins

Tavus started as an AI research company built around a single rendering model.^[extracted] The team quickly realized the rendering model needed to operate in a real-time context to be useful — it had to be fast, and required missing pieces like turn detection, response timing, signal processing, and orchestration.^[extracted]

## Conversational Video Interface

Tavus now offers a full conversational video interface.^[extracted] The system enables video replicas with response times around 600 milliseconds — though Brian Johnson noted these are sometimes intentionally slowed down depending on the models being used, since faster isn't always better for natural conversation flow.^[extracted]

## Proprietary Models

Tavus has developed two proprietary models that form their intellectual property:

- **Sparrow Zero** — Tavus's proprietary model
- **Raven Zero** — Tavus's proprietary model

These models are currently offered in Tavus's own stack but are being moved toward integration with Pipecat for broader accessibility.^[extracted]

## Partnership with Pipecat

Tavus has been partnering with Pipecat over the last year.^[extracted] Brian Johnson noted that when Tavus first built their system, they didn't know about Pipecat, but over time came to realize that much of what Pipecat does — turn detection, response timing, orchestration — is essential for making conversational AI real.^[extracted] Tavus is moving toward offering their models within the Pipecat ecosystem.^[extracted]

## Website

[tavus.io](https://tavus.io)

- [[entities/pipe-cat]] — Orchestration framework they integrate with
- [[entities/daily]] — Infrastructure provider behind Pipecat
- [[entities/brian-johnson]] — Speaker from Tavus
- [[concepts/conversational-video-interface]] — Tavus's product offering
