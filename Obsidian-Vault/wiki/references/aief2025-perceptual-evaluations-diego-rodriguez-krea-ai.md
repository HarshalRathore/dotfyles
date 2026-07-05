---
title: "Perceptual Evaluations: Evals for Aesthetics"
category: references
tags:
  - aief2025
  - perceptual-evals
  - aesthetics
  - evals
  - human-perception
  - compression
  - fid-score
summary: "Diego Rodriguez (Krea.ai) argues that AI evaluation metrics must measure human-perceived quality rather than proxy signals like FID scores, which are optimized for computational convenience over human judgment."
sources:
  - "AIEF2025 - Perceptual Evaluations: Evals for Aesthetics — Diego Rodriguez, Krea.ai - https://www.youtube.com/watch?v=h5ItAJuB3Fc"
provenance:
  extracted: 0.90
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/diego-rodriguez|Diego Rodriguez]]"
    type: related_to
  - target: "[[entities/krea-ai|Krea.ai]]"
    type: related_to
  - target: "[[entities/cheng-lu|Cheng Lu]]"
    type: related_to
---

# Perceptual Evaluations: Evals for Aesthetics

**Speaker:** Diego Rodriguez, Co-founder, Krea.ai
**Event:** AI Engineer World's Fair 2025
**Video:** https://www.youtube.com/watch?v=h5ItAJuB3Fc

## Summary

Diego Rodriguez argues that AI evaluation metrics must measure what humans actually perceive — not proxy signals that are easy to compute but misaligned with human judgment. He traces this problem through information theory, compression formats, and the limitations of metrics like FID scores.

## Key Arguments

### 1. The Hand Example

An AI-generated image of a hand looks horrible to any human observer. When shown to O3, the model spent 17 seconds running Python and OpenCV analysis before declaring it "mostly natural." This demonstrates that even advanced models cannot replicate the immediate, intuitive human judgment about quality. ^[extracted]

### 2. Information Theory and Compression

Shannon's communication theory and compression formats (JPEG, MP3, MP4) exploit human perceptual limitations. JPEG separates brightness from color and down-samples color channels — the result looks identical while carrying 50% less data. If AI training data (the internet) consists of already-compressed content, models inherit human perceptual blind spots. ^[extracted]

### 3. FID Score Failure

FID scores treat JPEG-compressed images (perceptually identical to the original) as catastrophically bad. The metric measures compression artifacts, not quality. This is a specific instance of the broader problem: metrics optimize for computational convenience, not human judgment. ^[extracted]

### 4. Cars vs Traffic

Cheng Lu (MidJourney) distinguishes between predicting cars (easy — swap horse energy for engine energy) and predicting traffic (hard — emergent behavior). The AI field focuses on cars (model architectures, API contracts) while missing traffic (human perception, user behavior, emergent quality). ^[extracted]

### 5. Tower of Babel

Language barriers prevent coordination. AI translation models solve this — people can now communicate across languages. Rodriguez demonstrates this by providing customer support to Japanese users while speaking only English, using AI translation. ^[extracted]

### 6. Metrics and Meaning

Automated metrics cannot capture artistic intent, meaning, or context. A clock with impossible geometry is a Dali reference, not an error. Metrics have no concept of meaning beyond literal accuracy. ^[extracted]

## Three Framing Stories

1. **Cars vs Traffic** — predictable components vs unpredictable emergent behavior
2. **Tower of Babel** — language barriers and AI as a solution
3. **Korea Fox Ad** — speed of AI adoption (sign-up to broadcast in two days)

## Related Pages

- [[concepts/perceptual-evaluations|Perceptual Evaluations]] — core thesis
- [[concepts/cars-vs-traffic-metaphor|Cars vs Traffic Metaphor]] — Cheng Lu's insight
- [[concepts/information-theory-compression|Information Theory and Compression]] — Shannon and JPEG
- [[concepts/clean-fid|Clean FID and Its Limitations]] — FID score failure mode
- [[concepts/eval-metrics-relativity|Evaluation Metrics Relativity]] — meaning gap in metrics
- [[concepts/ai-human-perception-contagion|AI and Human Perception Contagion]] — compressed data hypothesis
- [[entities/diego-rodriguez|Diego Rodriguez]] — speaker
- [[entities/krea-ai|Krea.ai]] — company
- [[entities/cheng-lu|Cheng Lu]] — MidJourney engineer
