---
title: "Information Theory and Compression"
category: concepts
tags:
  - information-theory
  - compression
  - human-perception
  - jpeg
  - mp3
  - shannon
  - aief2025
summary: "Claude Shannon's information theory and compression formats (JPEG, MP3, MP4) exploit human perceptual limitations — removing information we cannot perceive. This has implications for AI training data quality."
sources:
  - "AIEF2025 - Perceptual Evaluations: Evals for Aesthetics — Diego Rodriguez, Krea.ai - https://www.youtube.com/watch?v=h5ItAJuB3Fc"
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.83
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/perceptual-evaluations|Perceptual Evaluations]]"
    type: related_to
  - target: "[[concepts/structural-vs-superficial-understanding|Structural vs. Superficial Understanding]]"
    type: related_to
---

# Information Theory and Compression

Claude Shannon's master's thesis laid the mathematical foundations for communication theory — originally titled "Mathematical Foundation for Communication Theory." His model describes a source, a channel, a destination, and noise between them. The principle of compression — removing information that does not affect the destination's perception — flows directly from this model. ^[extracted]

## Compression Exploits Human Perception

JPEG, MP3, and MP4 are all compression formats that work by removing information humans cannot perceive:

- **JPEG** transforms RGB color space to separate brightness from color, then down-samples the color channels. The resulting image looks identical to the human eye while carrying 50% less data. ^[extracted]
- **MP3** removes audio frequencies outside human hearing range. ^[extracted]
- **MP4** extends the same principle across time (video frames). ^[extracted]

A key demonstration: in a JPEG compression illusion, two patches labeled A and B appear to be different colors but are actually identical. The human visual system cannot perceive the difference without a reference point. This is not a bug — it is how human perception works. ^[extracted]

## The Contagion Problem

Diego Rodriguez raises a critical question: if our AI training data comes from the internet, and the internet's images are already compressed (JPEG, etc.), then AI models are learning from data that has already been filtered through human perceptual limitations. The models inherit the same perceptual blind spots as their human creators. ^[extracted]

This creates a "contagion" of human perceptual flaws: humans compress data → AI trains on compressed data → AI evaluates with metrics that ignore compressed dimensions → the cycle repeats. The models are limited not just by human data, but by human-compressed data. ^[inferred]

## Relation to Evaluation

This insight connects directly to [[concepts/perceptual-evaluations|perceptual evaluations]]. If training data is already perceptually filtered, and evaluation metrics are also computationally convenient (ignoring perceptual dimensions), then the entire AI pipeline operates on a double-filtered version of reality. The question becomes: what signal are we actually optimizing for? ^[inferred]

## Sources

- AIEF2025 - Perceptual Evaluations: Evals for Aesthetics — Diego Rodriguez, Krea.ai - https://www.youtube.com/watch?v=h5ItAJuB3Fc
