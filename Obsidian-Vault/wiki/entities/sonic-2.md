---
title: "Sonic 2"
category: entities
tags:
  - tts
  - text-to-speech
  - voice-ai
  - cartesia
  - state-space-models
sources:
  - "AIEF2025 - Serving Voice AI at Scale — Arjun Desai (Cartesia) & Rohit Talluri (AWS) - https://www.youtube.com/watch?v=knH3fmGAteQ"
provenance:
  extracted: 0.90
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/cartesia]]"
    type: related_to
  - target: "[[concepts/state-space-models]]"
    type: implements
  - target: "[[concepts/voice-ai-latency]]"
    type: related_to
  - target: "[[entities/orpheus-tts]]"
    type: related_to
---

# Sonic 2

Sonic 2 is Cartesia's flagship text-to-speech (TTS) model, described by co-founder Arjun Desai as "the fastest model in the world for text-to-speech." ^[extracted] It is built on Cartesia's state space model (SSM) architecture rather than traditional transformer-based approaches. ^[extracted]

## Architecture

Sonic 2 uses state space models, which maintain O(1) generation cost at inference time regardless of input length. ^[extracted] This contrasts with transformer-based TTS models whose generation cost scales quadratically with context length. ^[extracted] Cartesia claims Sonic 2 outperforms transformer-based alternatives on both latency and quality metrics. ^[extracted]

## Capabilities

Sonic 2 is designed for voice generation in interactive agent systems — not standalone TTS. ^[extracted] It must be hooked up to an LLM and a speech-to-text model to form a complete voice agent. ^[extracted] Key capabilities include:

- **Voice cloning** — creating realistic synthetic voices from sample audio
- **Accent control** — generating speech with specific regional accents
- **Background noise simulation** — natively generating phone call artifacts, background sounds, and environmental audio
- **Emotional expressiveness** — controlling tone, pace, and emotional quality of generated speech

## Use in Voice Agent Pipelines

Sonic 2 serves as the TTS layer in the standard voice agent pipeline: STT → LLM → TTS. ^[extract2] It is one component of a larger voice agent system, not a complete solution. ^[extracted] The model is designed to minimize latency in the TTS step so the overall agent has maximum time for reasoning and response generation. ^[extracted]

## Related

- [[entities/cartesia]] — Company that built Sonic 2
- [[concepts/state-space-models]] — Architecture underlying Sonic 2
- [[entities/orpheus-tts]] — Alternative production-grade TTS model
- [[concepts/voice-agents]] — Voice agent architecture where Sonic 2 is used
- [[concepts/voice-ai-latency]] — Latency requirements that drive Sonic 2's design
