---
title: Self-Supervised Learning
category: concepts
tags: [representation-learning, JEPA, Yann-LeCun, pre-training, unsupervised-learning]
aliases: [self-supervised learning, SSL, self-supervised representation learning, self-supervised pre-training]
relationships:
  - target: '[[concepts/JEPA]]'
    type: foundational_for
  - target: '[[concepts/reinforcement-learning]]'
    type: related_to
  - target: '[[concepts/chain-of-thought]]'
    type: related_to
sources:
  - https://www.youtube.com/watch?v=4sX_He5c4sI
summary: A learning paradigm where models generate their own supervisory signal from the structure of the data itself — the foundation for JEPA's representation learning and a key enabler of modern AI.
provenance:
  extracted: 0.60
  inferred: 0.30
  ambiguous: 0.10
base_confidence: 0.55
lifecycle: draft
lifecycle_changed: 2026-07-06
tier: supporting
created: 2026-07-06T00:00:00Z
updated: 2026-07-06T00:00:00Z
---

# Self-Supervised Learning

**Self-supervised learning (SSL)** is a learning paradigm where models generate their own supervisory signal from the structure of unlabeled data, rather than relying on human-annotated labels. It is the foundation of JEPA (Joint Embedding Predictive Architecture) and a core enabler of modern representation learning. ^[extracted]

## Core Principle

Unlike supervised learning (which requires labeled examples) or unsupervised learning (which finds patterns without explicit objectives), self-supervised learning: ^[inferred]

1. **Defines a pretext task** — predict missing parts of the input from available parts
2. **Generates labels from data structure** — the supervisory signal is inherent in the data
3. **Learns useful representations** — the representations learned for the pretext task transfer to downstream tasks

## JEPA: A Concrete Implementation

Yann LeCun's **JEPA** (Joint Embedding Predictive Architecture) is a self-supervised architecture that: ^[extracted]

- Learns representations by predicting embeddings of one part of the input from another
- Uses a **reflective optimization loop** (collect feedback → LLM reflection → Pareto pool)
- Achieved **7x AMD NPU improvement** and **90x Databricks cost reduction**
- Used in production by Dropbox and Shopify ^[extracted]

## Representation Learning

Self-supervised learning is the foundation of **representation learning** — the process of discovering the underlying structure and features of data without explicit supervision. Key properties: ^[inferred]

- **Compositionality** — learned features combine to represent complex concepts
- **Transferability** — representations generalize across tasks
- **Scalability** — can leverage unlabeled data at internet scale
- **Emergent structure** — models often discover semantically meaningful features (object boundaries, relationships) without being taught

## Role at WF2026

At the AI Engineer World's Fair 2026, self-supervised learning was discussed primarily through JEPA and Yann LeCun's research direction — where the paradigm enables models to improve themselves through reflective optimization rather than requiring new labeled data. ^[extracted]

## Related

- [[concepts/JEPA|JEPA]] — the self-supervised architecture presented at WF2026
- [[concepts/reinforcement-learning|Reinforcement Learning]] — another paradigm for learning without labeled data
- [[concepts/chain-of-thought|Chain of Thought]] — reasoning approach that complements self-supervised representations
- [[concepts/model-distillation|Model Distillation]] — related technique for transferring learned representations
- [[concepts/optimize-anything|Optimize Anything]] — the API built on JEPA's self-supervised methodology
- [[entities/yann-lecun|Yann LeCun]] — key advocate of self-supervised learning

## Sources

- AI Engineer World's Fair 2026: https://www.youtube.com/watch?v=4sX_He5c4sI
