---
title: Semi-Supervised Learning for Model Training
category: concepts
tags:
- semi-supervised-learning
- model-training
- data-scaling
- teacher-model
- search-relevance
- aief2025
aliases:
- semi-supervised learning
sources:
- AIEF2025 - What We Learned from Using LLMs in Pinterest — Mukuntha Narayanan, Han Wang, Pinterest - https://www.youtube.com/watch?v=XdAWgO11zuk
provenance:
  extracted: 0.7
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/knowledge-distillation-search|Knowledge Distillation for Search]]'
  type: used_in
- target: '[[concepts/model-distillation|Model Distillation]]'
  type: enables
- target: '[[concepts/data-as-differentiator|Data as Differentiator]]'
  type: related_to
summary: Semi-Supervised Learning for Model Training
---

# Semi-Supervised Learning for Model Training

A training paradigm where a model labeled by a **pre-trained teacher model** generates training data at scale, which is then used to train a separate student model. The teacher is trained on a small set of human-labeled data and then produces labels for unlabeled data far beyond the original annotation budget. ^[extracted]

## How It Works in Search Relevance

Pinterest's implementation:

1. **Human annotation** — a small set of search query-pin pairs is labeled by human annotators trained on specific relevance segments (predominantly US data)
2. **Teacher model** — a large cross-encoder LLM is fine-tuned on this human-labeled data
3. **Label generation** — the teacher model processes daily search logs (billions of real user queries and pins) and assigns soft relevance scores
4. **Student training** — a smaller model is trained on the teacher-generated labels

The result is training data scaled **100x** beyond the original human annotation set, covering trending queries, fresh pins, and global language coverage. ^[extracted]

## Key Advantages

- **Scale**: Human annotation is expensive and slow; teacher labeling is cheap and continuous
- **Freshness**: Daily search logs capture trending queries and new pins that human annotators haven't seen
- **Global coverage**: The teacher generalizes labels across languages and countries beyond the US-centric human data
- **Soft scores**: The teacher produces probabilistic relevance scores (not just hard labels), providing richer training signals

## Limitations

- **Error propagation**: If the teacher model has systematic biases, those propagate to the student
- **Distribution shift**: Teacher labels may not perfectly match human judgment on edge cases
- **Dependency**: The student's quality is bounded by the teacher's accuracy ^[inferred]

## Related

- [[concepts/knowledge-distillation-search|Knowledge Distillation for Search]] — the full distillation pipeline
- [[concepts/model-distillation|Model Distillation]] — the broader concept
- [[concepts/data-as-differentiator|Data as Differentiator]] — data quality as competitive advantage

## Sources

- AIEF2025 - What We Learned from Using LLMs in Pinterest — Mukuntha Narayanan, Han Wang, Pinterest - https://www.youtube.com/watch?v=XdAWgO11zuk
