---
title: "Veo 3"
category: entities
tags:
  - model
  - video-generation
  - audio-generation
  - multimodal
  - google-deepmind
aliases:
  - Veo3
sources:
  - "AIEF2025 - Veo 3 for Developers — Paige Bailey, Google DeepMind - https://www.youtube.com/watch?v=hlcAZ2lX_ZI"
summary: "Google DeepMind's state-of-the-art video generation model with native audio composition. Tokens composed across modalities natively — not audio added as a post-processing tool. Improved prompt adherence, stylistic consistency, and contextual consistency over Veo 2."
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/google-deepmind|Google DeepMind]]"
    type: related_to
  - target: "[[entities/veo-2|Veo 2]]"
    type: extends
  - target: "[[concepts/multimodal-generation|Multimodal Generation]]"
    type: implements
  - target: "[[concepts/synthid-watermarking|SynthID Watermarking]]"
    type: uses
---

# Veo 3

Veo 3 is Google DeepMind's latest state-of-the-art video generation model. It represents a significant leap from Veo 2 by introducing **native multimodal audio-video composition** — audio tokens are composed together with video tokens within the model, rather than audio being added as a post-processing step or separate tool.

## Native Audio-Video Composition

The key architectural distinction of Veo 3 is that audio and video tokens are composed together natively within the model's token space. This is analogous to how Gemini outputs audio natively alongside text and code. The model generates background noises, music, and subtle sound effects that are temporally aligned with the visual content. ^[extracted]

## Improvements Over Veo 2

Veo 3 builds on all of Veo 2's capabilities and adds:

- **Prompt adherence** — better alignment between input prompts and generated output
- **Stylistic consistency** — reduced frame-to-frame character/background jumps that historically plagued video generation
- **Contextual consistency** — backgrounds and scene elements remain coherent across frames
- **Native audio** — background sounds, music, and subtle audio effects composed alongside video

## Responsible AI

Veo 3 includes built-in responsible AI safeguards:
- **Human-visible watermarks** — subtle visual indicators of synthetic content
- **SynthID watermarks** — digital watermarking for machine-detectable synthetic media provenance

## Research Lineage

Built on years of Google DeepMind research including GQN (Generative Query Network) and WALT (What, Where, and When Time). ^[extracted]

## Related

- [[entities/veo-2|Veo 2]] — Predecessor model with creative control features
- [[entities/google-deepmind|Google DeepMind]] — Developer
- [[concepts/multimodal-generation|Multimodal Generation]] — Architecture paradigm
- [[concepts/visual-consistency|Visual Consistency]] — Key challenge addressed by Veo 3
