---
title: "Inference vs Training Compute"
category: concepts
tags: [inference, training, compute, economics, llm, cost-optimization, aief2025]
aliases: [inference vs training, training vs inference, compute economics, inference cost, training cost]
sources:
  - "[[sources/watchv=qludzkvfp6a]]"
summary: "The economic asymmetry between expensive pre-training (tens of millions) and cheap inference drives the shift toward inference-time compute scaling for improving model outputs."
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/inference-time-compute|Inference-Time Compute Scaling]]"
    type: motivates
  - target: "[[concepts/pre-training-costs|Pre-Training Costs]]"
    type: relates_to
  - target: "[[concepts/compute-scaling-laws|Compute Scaling Laws]]"
    type: relates_to
---

# Inference vs Training Compute

The **inference vs training compute** distinction is fundamental to LLM economics: pre-training costs tens of millions of dollars, while inference is extremely cheap. This asymmetry drives the shift toward [[concepts/inference-time-compute|inference-time compute scaling]]. ^[extracted]

## The Economic Asymmetry

| Aspect | Pre-Training | Inference |
|--------|-------------|-----------|
| Cost | Tens of millions of dollars | Extremely cheap per call |
| Frequency | Once per model | Every user request |
| Optimization | Model architecture, data, compute | Per-request techniques |
| Improvement | Requires retraining | Can improve per-call |

The numbers cited are not endorsed by any specific company but are from public sources. ^[extracted]

## The Key Question

As [[entities/aakanksha-chowdhery|Aakanksha Chowdhery]] framed it at AIEF2025: ^[extracted]

> If training is extremely costly and performance gains are saturating, can we get performance gains at inference time?

Since inference calls are cheap, spending additional compute per inference call is economically viable. This is the foundation of [[concepts/inference-time-compute|inference-time compute scaling]]. ^[inferred]

## Two Levers for Improvement

1. **Training-time**: Scale up compute, data, parameters (scaling laws) — expensive, diminishing returns
2. **Inference-time**: Multiple samples, sequential revision, verification — cheap, predictable gains

Both levers are complementary, not competing. The best systems use both. ^[inferred]

## Sources

- AIEF2025 - RL for Autonomous Coding — Aakanksha Chowdhery, Reflection.ai - https://www.youtube.com/watch?v=QluDzKVfp6A
