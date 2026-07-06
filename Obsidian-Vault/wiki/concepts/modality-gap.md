---
title: Modality Gap
category: concepts
tags: [multimodal, audio, video, understanding, generation, unified-models]
aliases: [modality gap, audio-video gap, understanding-generation gap]
relationships:
  - target: '[[concepts/vo3]]'
    type: related_to
  - target: '[[concepts/multimodal-ai]]'
    type: extends
  - target: '[[concepts/omnimodal]]'
    type: related_to
sources:
  - https://www.youtube.com/watch?v=4sX_He5c4sI
summary: The gap between understanding and generation of video — machines perceive audio and video as the same modality, but current SOTA models do not unify understanding and generation.
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
lifecycle_changed: 2026-07-06
tier: supporting
created: 2026-07-06T00:00:00Z
updated: 2026-07-06T00:00:00Z
---

# Modality Gap

The **modality gap** is the disconnect between how machines perceive different modalities and how humans experience them. From a machine's perspective, **audio and video are the same modality** — they see no fundamental difference. However, current SOTA models do not unify understanding and generation across modalities. ^[extracted]

This insight was presented by Shane from Google DeepMind's Omni team at the AI Engineer World's Fair 2026. ^[extracted]

## The Technical Reality

On a technical level, there are some differences between audio and video, but they are relatively minor. From the model's perspective, both are sequences of data that can be processed similarly. ^[extracted]

## The Understanding-Generation Gap

The key insight: **understanding and generation of video should be unified but are not at SOTA.** ^[extracted]

Current models typically:
- Have separate models for understanding (recognition, classification) and generation (creation, synthesis)
- Do not share representations between understanding and generation
- Treat audio and video as separate domains even when they are perceptually similar

## VO3 as a Milestone

**VO3** was announced as the first model that did joint audio-visual generation — unifying audio and video in a single generation pipeline. This was described as a significant milestone, though the understanding side remains separate. ^[extracted]

## Implications

1. **Unified models are coming** — the technical basis for unified understanding+generation exists
2. **Audio-video are closer than assumed** — the gap between them is smaller than the gap between understanding and generation
3. **Evaluation is nascent** — media model evaluation is more nascent than text model evaluation, and human judgment still plays a large role

## Related

- [[concepts/vo3|VO3]] — the first joint audio-visual generation model
- [[concepts/multimodal-ai|Multimodal AI]] — the broader field of multimodal models
- [[concepts/omnimodal|Omnimodal]] — the vision of fully unified modalities
- [[concepts/multimodal-evaluation|Multimodal Evaluation]] — the challenge of evaluating multimodal models

## Sources

- AI Engineer World's Fair 2026: https://www.youtube.com/watch?v=4sX_He5c4sI
