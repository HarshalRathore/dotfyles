---
title: "Scaling Laws for LLMs (2020)"
category: references
tags: [scaling-laws, power-law, llm, google, 2020, compute-data-parameter-tradeoff]
aliases: [scaling laws, scaling law, power law LLM, 2020 scaling paper]
sources:
  - "[[sources/watchv=qludzkvfp6a]]"
summary: "The 2020 breakthrough paper establishing power law relationships between test loss and compute/data/parameters in transformer models. Bigger models generalize across domains."
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/compute-scaling-laws|Compute Scaling Laws]]"
    type: source_for
  - target: "[[concepts/inference-time-compute|Inference-Time Compute Scaling]]"
    type: contrasts_with
---

# Scaling Laws for LLMs (2020)

The **2020 scaling laws paper** established a power law relationship between the test loss of large language models and three key resources: compute, data, and parameters. ^[extracted]

## The Core Finding

If you use more compute, more data, and more parameters in your transformer model, you will get a more performant model. Critically, the improvement is not just in the training domain — the model generalizes to many other domains. ^[extracted]

Generalization was essentially a feature of scaling, not a bug. ^[extracted]

## The Power Law

$$\text{Test Loss} = f(\text{Compute}, \text{Data}, \text{Parameters})$$

As any of these three axes increase, test loss decreases following a predictable power law. This meant continuous improvement across benchmarks as models got bigger. ^[extracted]

## Emergent Behavior

A key corollary of the scaling laws: capabilities emerge at scale that are not present in smaller models. This is a classic phenomenon in complex systems — when you cross a threshold in scale, entirely new behaviors appear. ^[extracted]

Chain-of-thought reasoning is one such emergent capability, first clearly demonstrated in [[references/palm-model|PALM]] (540B parameters). ^[inferred]

## Impact

The scaling laws paper set the agenda for LLM research for years: scale up compute, data, and parameters, and performance will follow. This drove the rapid progression from 2020 through PALM, PaLM 2, Gemini, and beyond. ^[extracted]

As Aakanksha Chowdhery noted at AIEF2025, benchmarks are now starting to saturate — the scaling curve is flattening, which is what motivates the shift toward [[concepts/inference-time-compute|inference-time compute scaling]]. ^[extracted]

## Sources

- AIEF2025 - RL for Autonomous Coding — Aakanksha Chowdhery, Reflection.ai - https://www.youtube.com/watch?v=QluDzKVfp6A
