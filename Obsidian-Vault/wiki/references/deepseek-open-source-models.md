---
title: "DeepSeek Open Source Models"
category: references
tags: [deepseek, open-source, llm, coding-benchmark, swe-bench, inference-time-compute, aief2025]
aliases: [DeepSeek, deep seek, deepseek models, open source deepseek]
sources:
  - "[[sources/watchv=qludzkvfp6a]]"
summary: "Open-source DeepSeek models demonstrated that inference-time compute scaling works on real coding benchmarks. SWE-bench verified scores improved predictably with more samples, reaching ~80% by end of 2024."
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.70
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/inference-time-compute|Inference-Time Compute Scaling]]"
    type: demonstrates
  - target: "[[concepts/swingbench-verified|SWE-bench Verified]]"
    type: evaluated_on
  - target: "[[concepts/pass-at-k|Pass@k / Coverage Score]]"
    type: used_with
---

# DeepSeek Open Source Models

**DeepSeek** is an open-source LLM provider whose models have been used to demonstrate the practical value of [[concepts/inference-time-compute|inference-time compute scaling]] on real-world coding benchmarks.

## Key Finding: Inference-Time Scaling on SWE-bench

Stanford research (publicly published) used open-source DeepSeek models to show that: ^[extracted]

- Pass@k (coverage score) on SWE-bench verified improves predictably with more samples
- The improvement curve is smooth — more inference compute → better results
- By end of 2024, SWE-bench verified scores were roughly 80%

This is one of the strongest pieces of evidence that inference-time compute scaling works for coding tasks. ^[extracted]

## Significance

DeepSeek's open-source models are significant because they demonstrate that: ^[inferred]

1. **You don't need frontier models** — Open-source models can achieve strong results with inference-time techniques
2. **Inference-time scaling is model-agnostic** — The technique works across different model architectures
3. **The barrier to autonomous coding is lowering** — Teams can use open models + inference scaling instead of proprietary APIs

## Relationship to Other Models

DeepSeek models are mentioned alongside [[references/palm-model|PALM]] and [[concepts/reasoning-models|reasoning models]] (O3, Claude Code) as part of the broader trend toward reasoning-capable models that benefit from inference-time scaling. ^[inferred]

## Sources

- AIEF2025 - RL for Autonomous Coding — Aakanksha Chowdhery, Reflection.ai - https://www.youtube.com/watch?v=QluDzKVfp6A
