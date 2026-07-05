---
title: "Lyria 2"
category: entities
tags:
  - model
  - music-generation
  - audio-generation
  - google-deepmind
aliases:
  - Lyria2
sources:
  - "AIEF2025 - Veo 3 for Developers — Paige Bailey, Google DeepMind - https://www.youtube.com/watch?v=hlcAZ2lX_ZI"
summary: "Google DeepMind's high-fidelity music generation model with granular creative control over tones and styles. Built in collaboration with musicians including Jacob Collier and Toru Iuma. Includes SynthID watermarking."
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/google-deepmind|Google DeepMind]]"
    type: related_to
  - target: "[[concepts/synthid-watermarking|SynthID Watermarking]]"
    type: uses
---

# Lyria 2

Lyria 2 is Google DeepMind's high-fidelity music generation model, designed for professional-grade audio. It provides granular creative control over the tones and styles of generated music.

## Creative Control

- Granular steering of inputs and outputs
- Control over musical tones and styles
- Built-in collaboration with creative industry musicians

## Artist Collaborations

Lyria 2 was built in deep collaboration with musicians:
- **Jacob Collier** — Described as a "legend" by Paige Bailey
- **Toru Iuma** — Musician who performed at Google I/O

## Philosophy

Paige Bailey articulated a philosophy for music AI: "a big part of teaching music is giving people a chance to play music and play with music. However, people don't have access to the whole of music from day one." She characterized Lyria as offering "the whole of music" — encompassing mathematics, physics, history, geography, the human body, language, spelling, and syntax. ^[inferred]

## Watermarking

Lyria incorporates SynthID techniques for digital watermarking of generated assets. ^[extracted]

## Related Products

- **Music AI Sandbox** — Visual product for music generation (Ableton-like workflow)
- **Music Effects** — Compose beats via natural language (from Google Labs)
- **Lyria Real Time** — Real-time music collaboration tool

## Related

- [[entities/google-deepmind|Google DeepMind]] — Developer
- [[concepts/synthid-watermarking|SynthID Watermarking]] — Watermarking technology used
- [[references/aief2025-veo-3-for-developers-paige-bailey-google-deepmind|AIEF2025 Talk]] — Presentation context
