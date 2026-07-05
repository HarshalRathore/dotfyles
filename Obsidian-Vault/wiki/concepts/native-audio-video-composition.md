---
title: "Native Audio-Video Composition"
category: concepts
tags:
  - audio
  - video
  - tokens
  - multimodal
  - composition
aliases:
  - Native Audio Video
  - Audio-Video Tokens
sources:
  - "AIEF2025 - Veo 3 for Developers — Paige Bailey, Google DeepMind - https://www.youtube.com/watch?v=hlcAZ2lX_ZI"
summary: "The architecture pattern where audio and video tokens are composed together within a single model's token space, enabling temporally and semantically aligned audio-video generation without post-processing."
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
  - target: "[[concepts/multimodal-generation|Multimodal Generation]]"
    type: extends
  - target: "[[entities/veo-3|Veo 3]]"
    type: related_to
---

# Native Audio-Video Composition

Native audio-video composition is the architecture pattern where audio tokens and video tokens are generated together within a single model's token space. Rather than generating video first and then adding audio as a separate step (or vice versa), the model composes both modalities simultaneously from the same underlying representation.

## How It Works

In native composition:
1. A single prompt (or set of inputs) generates both video and audio tokens
2. Audio and video tokens share the same latent space
3. The model ensures temporal alignment between audio events and visual events
4. Subtle audio elements (background noise, ambient sounds, music) are generated alongside the visual content

## Comparison to Sequential Approaches

| Aspect | Native Composition | Sequential (Post-Processing) |
|--------|-------------------|------------------------------|
| Temporal alignment | Natural, model-enforced | Requires separate synchronization |
| Semantic coherence | Shared token space | Risk of mismatch |
| Subtle audio | Generated with video | Often missing or generic |
| Pipeline complexity | Single model | Multiple models/steps |

## Examples

- **Veo 3** — Generates video with native audio including background noises, music, and subtle sound effects
- **Gemini** — Outputs text, code, images, and audio from the same model

## Related

- [[concepts/multimodal-generation|Multimodal Generation]] — Broader paradigm
- [[entities/veo-3|Veo 3]] — Implementation
- [[concepts/visual-consistency|Visual Consistency]] — Related coherence challenge
