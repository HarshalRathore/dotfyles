---
title: "Model Size Scaling"
category: concepts
tags:
  - model-size
  - scaling
  - llm
  - recommendation-systems
aliases:
  - model size scaling
  - scaling with model size
sources:
  - "[[sources/watchv=u0s6cfzay5c]]"
provenance:
  extracted: 0.90
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.78
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/360brew]]"
    type: demonstrated_by
  - target: "[[concepts/scaling-laws]]"
    type: related_to
---
# Model Size Scaling

Model size scaling is the principle that increasing the number of parameters in a model improves its performance. In [[concepts/360brew|360Brew]], this was the second of three experimentally validated scaling levers. ^[extracted]

## Findings

Experiments across a mixture of architectures showed that increasing model size from 7B to 8×22B parameters produced consistent quality improvements. This finding aligns with broader LLM scaling laws that show performance improves with parameter count. ^[extracted]

## The Go Big to Go Small Principle

360Brew's approach — training a 150B parameter model (Brew XL) then distilling to 3B — demonstrates that you must first go big (large model) to go small (efficient model). Training a small model from scratch does not achieve the same quality as distilling from a large teacher. ^[extracted]

## The 405B → 70B → 24B Efficiency Chain

Simon Willison documented a remarkable capability retention across three model sizes during December 2024 – January 2025: ^[extracted]

| Model | Parameters | RAM | Capability |
|-------|-----------|-----|------------|
| Meta 405B | 405B | ~800GB+ | GPT-4 class (cloud only) |
| Llama 3.3 70B | 70B | ~64GB | Same as 405B (laptop possible) |
| Mistral Small 3 | 24B | ~20GB | Same as Llama 70B (laptop + other apps) |

This represented a three-step compression of capability: 405B → 70B → 24B while maintaining quality. Willison described it as "the most exciting trend in the past six months." ^[extracted]

This efficiency chain demonstrates that capability retention through model efficiency improvements (better training, architecture, data quality) is more important than raw parameter scaling. The ability to run a 24B model that "behaves the same as Llama 70B" on a laptop with room for other applications marks a practical turning point. ^[inferred]

## Related

- [[concepts/360brew|360Brew]] — model size scaling is the second scaling lever
- [[concepts/scaling-laws|Scaling Laws]] — broader context on scaling laws
- [[concepts/model-distillation|Model Distillation]] — large models are distilled to smaller variants for serving
