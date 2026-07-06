---
title: Cartesia
category: entities
tags:
- company
- voice-ai
- tts
- state-space-models
- real-time-ai
sources:
- AIEF2025 - Serving Voice AI at Scale — Arjun Desai (Cartesia) & Rohit Talluri (AWS) - https://www.youtube.com/watch?v=knH3fmGAteQ
provenance:
  extracted: 0.9
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[entities/sonic-2]]'
  type: related_to
- target: '[[concepts/state-space-models]]'
  type: related_to
- target: '[[entities/aws]]'
  type: related_to
summary: Cartesia
---

# Cartesia

Cartesia AI is a company building real-time multimodal intelligence that runs on any device. ^[extracted] Co-founded by Arjun Desai, Cartesia focuses on bringing foundation models out of cloud batch mode and into real-time, on-device deployment across multiple modalities. ^[extracted]

## Focus: Voice AI for Enterprise

Cartesia's primary focus is voice AI for enterprise applications. ^[extracted] Their flagship model, **Sonic 2**, is a text-to-speech model designed for voice generation in interactive agent systems. ^[extracted] The company positions itself around three pillars: quality (exquisite voice naturalness), latency (first audio bite delivered as quickly as possible), and controllability (brand-aligned voice customization). ^[extracted]

## State Space Models

Cartesia pioneered the use of **state space models (SSMs)** as an alternative to transformers for voice AI. ^[extracted] While transformers scale quadratically with input length (slower for longer inputs), SSMs maintain O(1) generation at inference time by keeping a fixed state — enabling consistently low latency regardless of context length. ^[extracted] Cartesia claims to have closed the quality gap that traditionally made SSMs underperform transformers, stating their models outperform on both latency and quality. ^[extracted]

## Voice Marketplace

Cartesia operates a **voice marketplace** for creators — a platform where voice actors can license their voices rather than being replaced by AI. ^[extracted] Arjun Desai explicitly stated that Cartesia's goal is not to replace voice actors but to give them a platform to amplify their essence, personality, and brand. ^[extracted]

## Enterprise Use Cases

Cartesia's voice AI technology is deployed across multiple markets: healthcare, customer support, and real-time gaming (for dynamic non-player character dialogue). ^[extracted] The company partners with cloud infrastructure providers like AWS to support enterprise-scale deployment. ^[extracted]

## Related

- [[entities/sonic-2]] — Cartesia's flagship text-to-speech model
- [[concepts/state-space-models]] — Alternative to transformers used by Cartesia
- [[entities/aws]] — Infrastructure partner for enterprise deployment
- [[concepts/voice-agents]] — Voice agent architecture where Cartesia's models are used
- [[concepts/voice-ai-stack]] — Where Cartesia fits in the voice AI stack
