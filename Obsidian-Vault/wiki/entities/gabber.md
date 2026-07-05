---
title: "Gabber"
category: entities
tags:
  - company
  - startup
  - voice-ai
  - consumer-ai
  - ai-personas
  - real-time
  - open-source
  - orpheus
aliases:
  - Gabber AI
summary: Real-time AI personas startup founded by Neil and Jack Dwyer. Focuses on consumer voice AI (companions, therapists, trainers) using self-hosted Orpheus TTS on NVIDIA L40s GPUs at ~$1/hr.
provenance:
  extracted: 0.90
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[entities/neil-dwyer]]"
    type: related_to
  - target: "[[entities/orpheus-tts]]"
    type: uses
  - target: "[[entities/snack]]"
    type: uses
  - target: "[[concepts/voice-cloning]]"
    type: uses
---

# Gabber

Gabber is a real-time AI personas startup founded by brothers **Neil Dwyer** and **Jack Dwyer**. The company builds AI voice experiences for consumer applications, deliberately differentiating from the enterprise AI voice space (call centers, customer support, AI SDRs).

## Product

Core building blocks:
- **Voice** — real-time TTS via self-hosted Orpheus
- **Memory** — persistent AI persona memory
- **Video inputs** — coming soon
- **Tool calling** — AI personas can interact with external systems

## Focus: Consumer AI

Gabber's thesis: real-time synchronous AI experiences will be "as ubiquitous as websites and apps in the next two to five years." They see consumer use cases as the volume play that proprietary voice platforms ($5+/hr) can't serve:

- AI companions / AI girlfriends (the first use case, because users accept credit-based spending)
- AI MPCs
- AI therapists
- AI personal trainers
- AI toys for kids

## Infrastructure

- Self-hosts **Orpheus TTS** on **NVIDIA L40s** GPUs
- Uses **LoRA fine-tuning** for voice cloning (rank 16, alpha 32)
- Target cost: ~$1/hr per voice stream (vs. $5+/hr for proprietary platforms)
- Went viral after Jack's tweet about the Orpheus-powered demo

## History

Neil and Jack previously co-founded a multiplayer gaming startup targeting AAA-style multiplayer for web games with voice. They used LiveKit and shut that company down. Neil then joined LiveKit, built the Agents platform, and after leaving LiveKit, founded Gabber with Jack.

## Sources

- AIEF2025 - Serving Voice AI at $1/hr: Open-source, LoRAs, Latency, Load Balancing - https://www.youtube.com/watch?v=rD23-VZZHOo
