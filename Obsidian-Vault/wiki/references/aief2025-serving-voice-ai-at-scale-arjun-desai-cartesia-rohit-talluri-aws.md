---
title: Serving Voice AI at Scale — Arjun Desai (Cartesia) & Rohit Talluri (AWS)
category: references
tags:
- voice-ai
- enterprise-ai
- cartesia
- aws
- aief2025
- tts
- state-space-models
- sonic-2
- voice-controllability
summary: Arjun Desai (Cartesia) and Rohit Talluri (AWS) at AIEF2025 on building real-time voice AI for enterprise, covering state space models, Sonic 2, voice quality/latency/controllability pillars, and th...
provenance:
  extracted: 0.95
  inferred: 0.04
  ambiguous: 0.01
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
sources:
- AIEF2025 - Serving Voice AI at Scale — Arjun Desai (Cartesia) & Rohit Talluri (AWS) - https://www.youtube.com/watch?v=knH3fmGAteQ
relationships:
- target: '[[entities/cartesia]]'
  type: related_to
- target: '[[entities/sonic-2]]'
  type: related_to
- target: '[[entities/aws]]'
  type: related_to
- target: '[[concepts/voice-ai-latency]]'
  type: related_to
- target: '[[concepts/voice-controllability]]'
  type: related_to
- target: '[[concepts/state-space-models]]'
  type: related_to
---

# Serving Voice AI at Scale — Arjun Desai (Cartesia) & Rohit Talluri (AWS)

**Speakers:** Arjun Desai (Co-founder, Cartesia AI) & Rohit Talluri (AWS)
**Event:** AI Engineer World's Fair 2025
**Source:** https://www.youtube.com/watch?v=knH3fmGAteQ

## TL;DR

Arjun Desai (Cartesia) and Rohit Talluri (AWS) discuss building real-time voice AI for enterprise applications. Desai covers Cartesia's three-pillar approach to voice AI (quality, latency, controllability), their state space model architecture as an alternative to transformers, Sonic 2 as the fastest TTS model, the voice marketplace for creators, and enterprise use cases across healthcare, customer support, and gaming.

## Problem / Motivation

Foundation models are typically designed for cloud-based batch operations with response times of hundreds of milliseconds to seconds — acceptable for text but inadequate for interactive voice applications. ^[extracted] Voice requires near-instantaneous responses (milliseconds, not seconds) because human conversation expects rapid turn-taking. ^[extracted] When voice AI is slow, the experience feels awkward and unusable. ^[extracted]

## Method / Architecture

### Three Pillars of Voice AI

Cartesia builds voice AI around three pillars, in order of importance as stated by Desai: ^[extracted]

1. **Quality** — Voice naturalness must be exquisite; this is table stakes for any production system.
2. **Latency** — First audio bite delivered as quickly as possible, giving the end-to-end agent more time for reasoning.
3. **Controllability** — Described as "arguably most important" — the ability to customize voice to reflect brand personality and use case.

### State Space Models

Cartesia pioneered state space models (SSMs) as an alternative to transformers for voice AI. ^[extracted] Key distinction: transformers scale quadratically with input length (slower for longer inputs), while SSMs maintain O(1) generation at inference time by keeping a fixed state. ^[extracted] Cartesia claims to have closed the quality gap that historically made SSMs underperform transformers, stating their models outperform on both latency and quality. ^[extracted]

### Sonic 2

Sonic 2 is Cartesia's flagship TTS model, described as "the fastest model in the world for text-to-speech." ^[extracted] It is one component of a larger voice agent system that must be hooked up to an LLM and speech-to-text model. ^[extracted]

### Voice Marketplace

Cartesia operates a voice marketplace where voice actors can license their voices rather than being replaced by AI. ^[extracted] Desai explicitly stated Cartesia's goal is not to replace voice actors but to give them a platform to amplify their essence and personality. ^[extracted]

## Enterprise Use Cases

- **Healthcare** — patient-facing voice interfaces
- **Customer support** — enterprise voice agents for phone support
- **Real-time gaming** — dynamic NPC dialogue
- **Human narration** — a significant use case, served through the voice marketplace

## Key Takeaways

1. Voice AI requires fundamentally different engineering than text AI — milliseconds matter, not seconds. ^[extracted]
2. The three pillars (quality, latency, controllability) provide a framework for evaluating voice AI systems. ^[extracted]
3. State space models offer a viable alternative to transformers for voice AI, with constant-latency generation. ^[extracted]
4. Voice AI is about building complete agent systems, not just individual models — TTS must be integrated with STT and LLM. ^[extracted]
5. The voice marketplace reframes voice actors as amplified providers rather than displaced labor. ^[extracted]

## Limitations

- The transcript provided is incomplete — the Q&A portion with audience questions was cut off. ^[extracted]
- No specific latency numbers or benchmark comparisons were provided in the available transcript. ^[extracted]
- Cartesia's claim of SSMs outperforming transformers on both latency and quality is self-reported and not independently verified. ^[inferred]

## Related

- [[entities/cartesia]] — Arjun Desai's company
- [[entities/sonic-2]] — Cartesia's TTS model
- [[concepts/state-space-models]] — Architecture underlying Sonic 2
- [[concepts/voice-ai-latency]] — Why milliseconds matter for voice
- [[concepts/voice-controllability]] — The controllability pillar
- [[concepts/voice-naturalness]] — The quality pillar
- [[concepts/voice-marketplace]] — Voice creator licensing platform
- [[concepts/voice-agents]] — Voice agent architecture
- [[entities/aws]] — Rohit Talluri's company, infrastructure partner
