---
title: "Multimodal Generation"
category: concepts
tags:
  - multimodal
  - ai-generation
  - video
  - audio
  - tokens
aliases:
  - Multimodal AI
  - Cross-Modal Generation
sources:
  - "AIEF2025 - Veo 3 for Developers — Paige Bailey, Google DeepMind - https://www.youtube.com/watch?v=hlcAZ2lX_ZI"
summary: "The paradigm of generating content across multiple modalities (video, audio, text, images) within a single model architecture, where tokens from different modalities are composed together natively rather than as separate post-processing steps."
provenance:
  extracted: 0.70
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.70
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/native-audio-video-composition|Native Audio-Video Composition]]"
    type: extends
  - target: "[[concepts/visual-consistency|Visual Consistency]]"
    type: related_to
---

# Multimodal Generation

Multimodal generation is the paradigm of producing content across multiple modalities — video, audio, text, images — within a single unified model architecture. The defining characteristic is that tokens from different modalities are composed together natively, rather than generating one modality and adding others as separate post-processing steps.

## Native vs. Post-Processing Composition

The key distinction in multimodal generation is whether modalities are composed **natively** or **sequentially**:

- **Native composition** (Veo 3, Gemini): Audio, video, text, and image tokens are all part of the same token space. The model generates them together, ensuring temporal and semantic alignment. ^[extracted]
- **Sequential composition**: One modality is generated first, then additional modalities are added as separate tools or post-processing steps. This approach can produce misaligned or inconsistent cross-modal results. ^[inferred]

## Examples

- **Veo 3** — Video tokens composed with audio tokens natively, generating background noises, music, and subtle sound effects aligned with visual content
- **Gemini** — Outputs text, code, images, edited images, and composed audio from the same model
- **Lyria 2** — Music generation with granular creative control over tones and styles

## Implications

Multimodal generation enables:
- **Temporal alignment** — audio and video are naturally synchronized
- **Semantic coherence** — cross-modal content shares a unified representation
- **Creative control** — users can steer multiple modalities from a single prompt
- **Simplified pipelines** — one model replaces multiple specialized models

## Related

- [[entities/veo-3|Veo 3]] — Native audio-video multimodal model
- [[concepts/native-audio-video-composition|Native Audio-Video Composition]] — Specific implementation
- [[concepts/visual-consistency|Visual Consistency]] — Cross-modal coherence challenge
