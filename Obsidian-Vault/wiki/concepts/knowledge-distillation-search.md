---
title: "Knowledge Distillation for Search"
category: concepts
tags: [knowledge-distillation, model-distillation, search-relevance, teacher-student, semi-supervised, production-ml, aief2025]
aliases:
  - knowledge distillation search
  - search model distillation
sources:
  - "AIEF2025 - What We Learned from Using LLMs in Pinterest — Mukuntha Narayanan, Han Wang, Pinterest - https://www.youtube.com/watch?v=XdAWgO11zuk"
provenance:
  extracted: 0.75
  inferred: 0.20
  ambiguous: 0.05
base_confidence: 0.78
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/cross-encoder-relevance-model|Cross-Encoder Relevance Model]]"
    type: used_by
  - target: "[[concepts/bi-encoder-search|Bi-Encoder Search]]"
    type: produces
  - target: "[[concepts/semi-supervised-learning|Semi-Supervised Learning]]"
    type: uses
  - target: "[[concepts/model-distillation|Model Distillation]]"
    type: extends
---

# Knowledge Distillation for Search

A production strategy where a large, accurate **teacher model** (typically a cross-encoder LLM) is distilled into a smaller, faster **student model** (typically a bi-encoder) for online serving. The student learns to reproduce the teacher's relevance scores while being orders of magnitude cheaper to serve. ^[extracted]

## The Distillation Pipeline

Pinterest's approach follows this sequence:

1. **Teacher training** — a large cross-encoder LLM (e.g., Llama 3, 8B) is fine-tuned on a small set of human-labeled relevance data
2. **Data generation** — daily search logs are sampled, and the teacher model labels them with soft relevance scores at scale
3. **Student training** — a smaller bi-encoder model is trained to predict the teacher's five-scale soft scores
4. **Online serving** — the student model serves real-time relevance predictions

The key insight: the teacher provides high-quality labels on data the human annotators never saw, including trending queries and fresh pins. ^[extracted]

## Semi-Supervised Data Generation

The teacher model labels training data using a **semi-supervised learning setup**:

- Sample daily search logs from Pinterest (includes trending queries, freshest pins, global coverage across 45+ languages)
- Only a small subset comes from the US (where human-labeled data originates)
- The teacher produces labels at **100x scale** across domains, languages, and countries
- These labeled examples train the student model

This approach scales training data far beyond what human annotation alone could provide, while maintaining label quality through the well-trained teacher. ^[extracted]

## Architecture Shift: Cross-Encoder → Bi-Encoder

The distillation involves an architecture change:

- **Teacher**: Cross-encoder — query and pin encoded together, full interaction, high accuracy, high latency
- **Student**: Bi-encoder — query and pin encoded separately, cached offline, low latency, good accuracy

The student uses the same text features as the teacher but trades cross-attention for scalability. ^[extracted]

## Results

Despite training on predominantly US data, the distilled student model achieved **international relevance gains** and improved **search fulfillment** (engagement on search fulfilling actions) across non-US markets. This demonstrates LLMs' ability to generalize across domains and languages even with limited source data. ^[extracted]

## Related

- [[concepts/cross-encoder-relevance-model|Cross-Encoder Relevance Model]] — the teacher architecture
- [[concepts/bi-encoder-search|Bi-Encoder Search]] — the student architecture
- [[concepts/semi-supervised-learning|Semi-Supervised Learning]] — the data generation method
- [[concepts/model-distillation|Model Distillation]] — the broader concept

## Sources

- AIEF2025 - What We Learned from Using LLMs in Pinterest — Mukuntha Narayanan, Han Wang, Pinterest - https://www.youtube.com/watch?v=XdAWgO11zuk
