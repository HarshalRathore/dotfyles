---
title: "Perceptual Evaluations"
category: concepts
tags:
  - evals
  - aesthetics
  - human-perception
  - metrics
  - generative-ai
  - perceptual-quality
summary: "The argument that AI evaluation metrics must measure human-perceived quality rather than proxy signals like FID scores — metrics should reflect what humans actually see, not what algorithms can count."
sources:
  - "AIEF2025 - Perceptual Evaluations: Evals for Aesthetics — Diego Rodriguez, Krea.ai - https://www.youtube.com/watch?v=h5ItAJuB3Fc"
provenance:
  extracted: 0.75
  inferred: 0.20
  ambiguous: 0.05
base_confidence: 0.82
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/evals-are-not-unit-tests|Evals Are Not Unit Tests]]"
    type: related_to
  - target: "[[concepts/llm-as-judge|LLM as Judge]]"
    type: implements
  - target: "[[concepts/structural-vs-superficial-understanding|Structural vs. Superficial Understanding]]"
    type: related_to
---

# Perceptual Evaluations

Perceptual evaluations are the thesis that AI evaluation metrics must measure what humans actually perceive — not proxy signals that are easy to compute but misaligned with human judgment. The core problem: current metrics like FID scores and CLIP-based object counting reward models on dimensions that do not correspond to aesthetic or perceptual quality. ^[extracted]

## The Problem with Current Metrics

Standard evaluation metrics for generative models — FID scores, CLIP similarity, object-counting accuracy — are optimized for computational convenience, not human judgment. FID scores, for example, treat JPEG-compressed images (perceptually identical to the original) as catastrophically bad outputs. The metric is measuring compression artifacts, not quality. ^[extracted]

This mirrors the broader pattern where AI systems are trained on human data and human preference data, but evaluated by metrics that capture only the most easily measurable dimensions — object presence, color labels, structural patterns — while missing meaning, composition, and aesthetic intent. ^[inferred]

## The Compression Insight

The key insight comes from classic information theory: compression formats like JPEG, MP3, and MP4 work precisely because they remove information humans cannot perceive. JPEG separates brightness from color in a transformed color space and down-samples the color channels — the result looks identical to the human eye while carrying 50% less data. This demonstrates that human perception is not a faithful recording of reality; it is a filtered reconstruction. ^[extracted]

If our training data (the internet) consists of already-compressed images, and our evaluation metrics ignore the compressed dimensions, then AI models are being evaluated on a double-filtered version of reality. The models learn the filters rather than the signal. ^[inferred]

## Perceptual vs. Proxy Evaluation

| Dimension | Proxy Evaluation | Perceptual Evaluation |
|---|---|---|
| What it measures | FID, CLIP, object counts | Human judgment, aesthetic quality |
| Sensitivity | High to artifacts, low to meaning | High to meaning, tolerant of artifacts |
| Example failure | JPEG = "horrible" image | JPEG = same image |
| What humans see | Irrelevant | Everything |

Perceptual evaluation requires metrics that align with how humans actually experience AI-generated content — whether an image looks right, whether a video flows naturally, whether the output conveys the intended meaning. ^[extracted]

## Relation to LLM-as-Judge

The [[concepts/llm-as-judge|LLM as Judge]] paradigm is one proposed solution: use LLMs to approximate human judgment. However, Diego Rodriguez's hand example demonstrates the failure mode — O3 spent 17 seconds, ran Python and OpenCV analysis, and declared a grotesque hand image "mostly natural." LLMs can also be fooled by superficial patterns. Perceptual evaluation therefore requires a hybrid approach combining human judgment, well-designed proxy metrics, and LLM judges calibrated against ground-truth human preference data. ^[inferred]

## Sources

- AIEF2025 - Perceptual Evaluations: Evals for Aesthetics — Diego Rodriguez, Krea.ai - https://www.youtube.com/watch?v=h5ItAJuB3Fc
