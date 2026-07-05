---
title: "Quantization-Aware Training"
category: concepts
tags: [quantization, embeddings, storage-optimization, training, voyage-ai, aief2025]
summary: "Training technique that lowers embedding vector numerical precision during training, achieving 10–100× storage reduction with 0–10% accuracy loss."
sources:
  - "AIEF2025 - RAG in 2025: State of the Art and the Road Forward — Tengyu Ma, MongoDB (acq. Voyage AI) - https://www.youtube.com/watch?v=W_CYk2ogcDI"
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.70
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/embedding-models]]"
    type: used_by
  - target: "[[concepts/matricial-learning]]"
    type: related_to
  - target: "[[concepts/rag-pipeline-architecture]]"
    type: used_in
---

# Quantization-Aware Training

Quantization-aware training (QAT) is a model training technique that simulates and optimizes for reduced numerical precision during the training process, enabling embedding vectors to be stored with lower precision while maintaining high retrieval accuracy.

## How It Works

During training, QAT simulates the effects of quantization (e.g., reducing from 32-bit float to 8-bit integer or lower) by inserting quantization noise into the forward pass. The model learns to produce embeddings that are robust to this precision loss. After training, the vectors can be stored at the reduced precision.

## Storage vs. Accuracy Trade-off

| Quantization Level | Storage Reduction | Accuracy Loss |
|---|---|---|
| 10× | ~10× | Negligible |
| 100× | ~100× | 5–10% |

Voyage AI demonstrates that their quantized models at 100× storage reduction still outperform OpenAI's baseline (unquantized) accuracy — a result of a better Pareto frontier enabled by improved training methodology. ^[extracted]

## Domain-Specific Advantage

Domain-specific embedding models achieve even better quantization trade-offs than general-purpose models. This suggests that domain-specific training produces embeddings that are more robust to precision loss, likely because the domain-specific signal is concentrated and consistent rather than diffuse. ^[extracted]

## Relation to Matricial Learning

QAT reduces numerical precision; [[concepts/matricial-learning|matricial learning]] reduces dimension count. They are complementary and can be combined for multiplicative storage savings. For example, 256-dim matricial learning (8×) combined with 100× quantization yields 800× total storage reduction.

## Limitations

- Requires retraining the embedding model with quantization simulation — not a post-hoc technique
- The accuracy loss at extreme quantization (100×) may be unacceptable for some applications
- No standard benchmark exists for quantization-aware embedding models

## Related

- [[concepts/embedding-models]] — embeddings are the target of quantization
- [[concepts/matricial-learning]] — complementary dimensionality reduction
- [[entities/voyage-ai]] — demonstrated state-of-the-art QAT for embeddings

## Sources

- AIEF2025 - RAG in 2025: State of the Art and the Road Forward — Tengyu Ma, MongoDB (acq. Voyage AI) - https://www.youtube.com/watch?v=W_CYk2ogcDI
