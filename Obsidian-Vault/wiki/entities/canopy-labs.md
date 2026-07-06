---
title: Canopy Labs
category: entities
tags:
- organization
- company
- tts
- voice-ai
- open-source
aliases:
- Canopy Labs
- canopy-labs
summary: Open-source AI company that created Orpheus TTS, a LLaMA-based text-to-speech model. Team includes Elias, Amu, and others.
provenance:
  extracted: 0.8
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.7
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[entities/orpheus-tts]]'
  type: implements
sources: []
---

# Canopy Labs

Canopy Labs is an open-source AI company that developed [[entities/orpheus-tts|Orpheus TTS]], a text-to-speech model built on a LLaMA 3.2 3B backbone. ^[extracted]

## Team

The team includes Elias, Amu, and others. Philip Kiely of [[entities/baseten|Baseten]] cites them as "really awesome" and a reason for featuring Orpheus in his AIEF2025 talk on voice model optimization. ^[extracted]

## Product: Orpheus TTS

Orpheus TTS is their flagship product — an open-source TTS model that is architecturally derived from LLaMA, making it compatible with the LLM inference optimization ecosystem (TensorRT-LLM, quantization, etc.). ^[extracted]

## Related
- [[entities/orpheus-tts]] — Their TTS product
- [[entities/baseten]] — Where Orpheus was featured as a case study
- [[concepts/llama-transformer-family]] — Architecture family used by Orpheus
