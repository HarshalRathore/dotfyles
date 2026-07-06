---
title: JEPA
category: concepts
tags: [model-architecture, Yann-LeCun, self-supervised, reflection, Pareto-pool, optimization]
aliases: [JEPA, Joint Embedding Predictive Architecture, joint embedding predictive architecture]
relationships:
  - target: '[[concepts/optimize-anything]]'
    type: implements
  - target: '[[concepts/model-distillation]]'
    type: related_to
  - target: '[[concepts/self-supervised-learning]]'
    type: extends
sources:
  - https://www.youtube.com/watch?v=4sX_He5c4sI
summary: Yann LeCun's Joint Embedding Predictive Architecture — a self-supervised learning approach using a Pareto pool for reflective optimization, delivering 7× AMD NPU improvement and 90× Databricks cost reduction.
provenance:
  extracted: 0.75
  inferred: 0.20
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
lifecycle_changed: 2026-07-06
tier: supporting
created: 2026-07-06T00:00:00Z
updated: 2026-07-06T00:00:00Z
---

# JEPA

**JEPA** (Joint Embedding Predictive Architecture) is a self-supervised learning architecture developed by Yann LeCun. It uses a reflective optimization loop — collect feedback, run LLM reflection, apply Pareto pool selection — to improve model prompts and harnesses without gradient-based training. ^[extracted]

Presented at the AI Engineer World's Fair 2026. ^[extracted]

## The Algorithm

JEPA's core optimization loop: ^[extracted]

1. **Collect feedback** — gather performance data from the model's outputs
2. **LLM reflection** — use an LLM to analyze the feedback and generate insights
3. **Pareto pool** — the key differentiator: select the best-performing configurations from a pool, keeping only the Pareto-optimal ones

The Pareto pool is described as JEPA's "key innovation." ^[extracted]

## Performance Results

- **7× improvement on AMD NPU** — significant hardware-specific optimization
- **90× cost reduction on Databricks** — dramatic efficiency gains in production ML workloads
- Used in production by companies including **Dropbox** and **Shopify** ^[extracted]

## Multi-Hop Question Answering

JEPA was demonstrated on a multi-hop question answering system where: ^[extracted]

1. Given a question, retrieve documents that could potentially answer it
2. Look at those documents and summarize them
3. Finally answer the question

JEPA discovered that first-hop documents often cover one entity or aspect, and second-hop documents should recover documents related to it. This revealed a pattern that human researchers had also observed. ^[extracted]

## Learning Fast and Slow

JEPA's "Learning Fast and Slow" paper proposes **co-optimizing model weights and prompt harnesses** — a continual learning algorithm with strong properties. The reflective optimization paradigm has become a successful pattern used by leading production teams. ^[extracted]

## Open Questions

- How does JEPA scale to multimodal inputs beyond text?
- Can the Pareto pool approach generalize to reinforcement learning?
- What is the theoretical foundation for why LLM reflection improves JEPA's outputs?

## Related

- [[concepts/optimize-anything|Optimize Anything]] — the API built on JEPA's methodology
- [[concepts/model-distillation|Model Distillation]] — related approach to improving model efficiency
- [[concepts/self-supervised-learning|Self-Supervised Learning]] — the broader paradigm JEPA belongs to
- [[entities/yann-lecun|Yann LeCun]] — JEPA's creator
- [[entities/dropbox|Dropbox]] — production user of JEPA
- [[entities/shopify|Shopify]] — production user of JEPA

## Sources

- AI Engineer World's Fair 2026: https://www.youtube.com/watch?v=4sX_He5c4sI
