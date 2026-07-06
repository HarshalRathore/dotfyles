---
title: Multimodal Models
category: concepts
tags:
- multimodal
- models
- ai
- google-deepmind
- gemini
- omnimodal
summary: AI models that natively process and generate across multiple modalities — text, image, audio, video — in a single unified architecture. The trajectory moves from multimodal toward omnimodal.
provenance:
  extracted: 0.6
  inferred: 0.35
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
- target: '[[concepts/omnimodal|Omnimodal Models]]'
  type: extends
- target: '[[entities/gemini|Gemini]]'
  type: related_to
- target: '[[concepts/voice-generation|Voice Generation]]'
  type: related_to
sources: []
---

# Multimodal Models

**Multimodal models** are AI systems that natively process and generate across multiple modalities — text, image, audio, video — within a single unified architecture, rather than using separate models for each modality. ^[extracted]

## The Trajectory: Multimodal → Omnimodal

The evolution of multimodal models follows a clear trajectory:

1. **Early multimodal:** Separate models for text, image, audio with limited cross-modal understanding
2. **Unified multimodal:** Single model architecture handles text, image, video natively — [[entities/gemini|Gemini]] was built this way from the start
3. **Native audio:** Adding audio (speech-to-text, text-to-speech, conversational audio) as a first-class modality — Gemini announced native audio capabilities at Google I/O
4. **Omnimodal:** The goal is a model that handles all modalities with equal depth — not just processing them, but reasoning across them seamlessly ^[inferred]

## Gemini's Multimodal Approach

[[entities/google-deepmind|Google DeepMind]] built Gemini as a single multimodal model from its inception, designed to handle text, image, video, and audio. Key milestones:

- **Native audio:** Announced at Google I/O — text-to-speech (TTS), conversational audio, natural-sounding speech that powers experiences like Gemini Live and Astra
- **VO (Video Out):** Video generation capability described as "soda across a bunch of stuff," with massive infrastructure demand — "burning all the TPUs down"
- **Video into mainline:** Early experiments with diffusion-based video generation showed "crazy levels of tokens per second" — a research exploration area that may enter the mainline model ^[extracted]

## Research Foundations

Multimodal models benefit from research across adjacent domains: AlphaFold (science), AlphaProof and AlphaGeometry (mathematical reasoning), and robotics all upstream into the mainline models. Custom models built for specific domains improve the performance of mainline models in those domains. ^[extracted]

## Implications for Developers

Multimodal models change the developer experience:

- Single API instead of multiple modality-specific APIs
- Cross-modal reasoning (e.g., analyzing an image and generating text about it in one call)
- Audio-native interactions (conversational AI without text intermediation)
- Video understanding and generation as first-class capabilities

## Related

- [[concepts/omnimodal|Omnimodal Models]] — The next step beyond multimodal
- [[entities/gemini|Gemini]] — Google DeepMind's unified multimodal model family
- [[concepts/voice-generation|Voice Generation]] — TTS and audio capabilities within multimodal models
- [[concepts/proactive-agents|Proactive Agents]] — Multimodal understanding enables proactive behavior
