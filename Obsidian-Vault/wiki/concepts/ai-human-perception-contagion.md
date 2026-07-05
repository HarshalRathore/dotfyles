---
title: "AI and Human Perception Contagion"
category: concepts
tags:
  - human-perception
  - training-data
  - compression
  - ai-limitations
  - aief2025
summary: "The hypothesis that AI models inherit human perceptual limitations through compressed training data (internet images), creating a contagion of human perceptual flaws in AI systems."
sources:
  - "AIEF2025 - Perceptual Evaluations: Evals for Aesthetics — Diego Rodriguez, Krea.ai - https://www.youtube.com/watch?v=h5ItAJuB3Fc"
provenance:
  extracted: 0.70
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/information-theory-compression|Information Theory and Compression]]"
    type: related_to
  - target: "[[concepts/perceptual-evaluations|Perceptual Evaluations]]"
    type: related_to
---

# AI and Human Perception Contagion

Diego Rodriguez raises the hypothesis that AI models are limited not only by human data and human preference data, but by the fact that this data has already been filtered through human perceptual limitations — most notably, compression. The internet's images are JPEGs, its audio is MP3s, its video is MP4s. AI models train on these already-compressed representations. ^[extracted]

## The Contagion Chain

1. Humans perceive the world through limited senses (brightness over color, specific frequency ranges)
2. Compression formats (JPEG, MP3, MP4) remove information humans cannot perceive
3. The internet consists of compressed content
4. AI models train on internet data — data that has already been perceptually filtered
5. AI evaluation metrics also ignore perceptual dimensions
6. The cycle repeats: AI produces more compressed content for humans to consume

This creates a "contagion" of human perceptual flaws: the models are limited by the same constraints that limit human perception, and then limited again by metrics that ignore those constraints. ^[inferred]

## Philosophical Implication

Rodriguez notes that philosophers have long argued that humans are limited by their senses. The compression insight makes this concrete: when he was studying artificial systems engineering and started deleting information from images (via JPEG compression), he could see the data being removed but still perceive the same image. This is the first time the philosophical abstraction became empirically visible. ^[extracted]

## Relation to Perceptual Evaluation

If AI models are trained on perceptually-filtered data and evaluated by perceptually-blind metrics, then [[concepts/perceptual-evaluations|perceptual evaluations]] must break the cycle by introducing evaluation signals that operate at the level of human perception, not computational convenience. ^[inferred]

## Sources

- AIEF2025 - Perceptual Evaluations: Evals for Aesthetics — Diego Rodriguez, Krea.ai - https://www.youtube.com/watch?v=h5ItAJuB3Fc
