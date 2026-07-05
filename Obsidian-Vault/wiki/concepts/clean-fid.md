---
title: "Clean FID and Its Limitations"
category: concepts
tags:
  - fid-score
  - evaluation-metrics
  - generative-ai
  - perceptual-quality
  - aief2025
summary: "FID (Fréchet Inception Distance) scores measure how well diffusion models reproduce images, but they penalize JPEG artifacts heavily — treating perceptually identical images as catastrophically bad."
sources:
  - "AIEF2025 - Perceptual Evaluations: Evals for Aesthetics — Diego Rodriguez, Krea.ai - https://www.youtube.com/watch?v=h5ItAJuB3Fc"
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.82
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/perceptual-evaluations|Perceptual Evaluations]]"
    type: related_to
  - target: "[[concepts/evals-are-not-unit-tests|Evals Are Not Unit Tests]]"
    type: related_to
---

# Clean FID and Its Limitations

FID (Fréchet Inception Distance) is a standard metric for evaluating how well generative models — particularly diffusion models — reproduce images. The "Clean FID" variant attempts to address some biases, but both share a fundamental flaw: they are highly sensitive to compression artifacts while being blind to perceptual quality. ^[extracted]

## The JPEG Problem

When a perceptually identical image is compressed with JPEG, the FID score drops dramatically — the metric declares the compressed image "horrible" even though a human observer cannot perceive any difference. This is because FID operates on feature-space statistics from the Inception network, which are sensitive to pixel-level differences introduced by compression. ^[extracted]

| Image | Perceptual Quality | FID Score |
|---|---|---|
| Original | Excellent | Good |
| JPEG compressed | Identical to human eye | Horrible |

This demonstrates that FID measures something other than what humans care about. The metric is optimized for statistical similarity in feature space, not for human-perceived quality. ^[extracted]

## Why This Matters for AI Evaluation

FID scores are widely used to compare generative models and report progress. If the metric is insensitive to what humans actually perceive, then model comparisons based on FID are comparing models on the wrong axis. This is a specific instance of the broader problem that [[concepts/perceptual-evaluations|perceptual evaluations]] must address: metrics should measure human judgment, not computational convenience. ^[inferred]

## Sources

- AIEF2025 - Perceptual Evaluations: Evals for Aesthetics — Diego Rodriguez, Krea.ai - https://www.youtube.com/watch?v=h5ItAJuB3Fc
