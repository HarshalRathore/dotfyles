---
title: Omnimodal Models
category: concepts
tags:
- omnimodal
- multimodal
- models
- google-deepmind
- gemini
- audio
- video
summary: 'The next evolution beyond multimodal: AI models that handle all modalities (text, image, audio, video) with equal depth and native cross-modal reasoning, not just parallel processing.'
provenance:
  extracted: 0.6
  inferred: 0.35
  ambiguous: 0.05
base_confidence: 0.7
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
- target: '[[concepts/multimodal-models|Multimodal Models]]'
  type: extends
- target: '[[concepts/voice-generation|Voice Generation]]'
  type: related_to
- target: '[[entities/gemini|Gemini]]'
  type: related_to
sources: []
---

# Omnimodal Models

**Omnimodal models** represent the next evolution beyond multimodal AI — models that handle all modalities (text, image, audio, video) with equal depth and native cross-modal reasoning, rather than simply processing multiple modalities in parallel. ^[inferred]

## From Multimodal to Omnimodal

The trajectory:

1. **Multimodal:** Single architecture processes multiple modalities, but some modalities are first-class and others are secondary
2. **Omnimodal:** All modalities are equally native — the model reasons across text, audio, image, and video with no hierarchy of capability

[[entities/google-deepmind|Google DeepMind]] explicitly stated their goal of reaching "that omnimodal model" through [[entities/gemini|Gemini]]. ^[extracted]

## Current State

Gemini's path toward omnimodality includes:

- **Text:** Core capability, well-established
- **Image:** Native understanding and generation
- **Audio:** Native audio capabilities announced at Google I/O — TTS, conversational audio, natural-sounding speech powering Gemini Live and Astra
- **Video:** VO (Video Out) is available but not yet mainline; early diffusion experiments showed "crazy levels of tokens per second" — a research exploration area

The goal is a model where video generation, audio understanding, image reasoning, and text processing are all equally deep capabilities within a single architecture.

## Why Omnimodal Matters

- **Natural interaction:** Humans experience the world omni-modally — seeing, hearing, speaking, and reading simultaneously. Omnimodal models enable interfaces that match this natural interaction pattern.
- **Cross-modal reasoning:** Understanding a video requires processing visual frames, audio tracks, and textual context simultaneously — not sequentially through separate models.
- **Proactive behavior:** Omnimodal understanding enables more sophisticated proactive agents that can perceive their environment through multiple channels.

## Related

- [[concepts/multimodal-models|Multimodal Models]] — The foundation that omnimodal extends
- [[concepts/voice-generation|Voice Generation]] — Audio as a native modality
- [[entities/gemini|Gemini]] — Google DeepMind's model family pursuing omnimodality
