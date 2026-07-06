---
title: Zero-Shot Learning
category: concepts
tags:
- zero-shot-learning
- zero-shot
- llm
- generalization
aliases:
- zero-shot learning
- zero-shot
sources:
- 'https://www.youtube.com/watch?v=u0s6cfzay5c'
provenance:
  extracted: 0.8
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/360brew]]'
  type: used_by
- target: '[[concepts/in-context-learning]]'
  type: related_to
summary: Zero-Shot Learning
---
# Zero-Shot Learning

Zero-shot learning is the ability of a model to perform tasks it was not explicitly trained on. In [[concepts/360brew|360Brew]], zero-shot capability means that when LinkedIn has a new recommendation surface or problem, they can prompt the model with the task description rather than collecting data, training a new model, and deploying it. ^[extracted]

## How It Works in 360Brew

Instead of the traditional pipeline — collect data → build model → train → deploy (a time-consuming process) — 360Brew enables:

1. **Prompt the model** — describe the task, the entity type, the user, and ask for relevance judgments
2. **No retraining required** — the model leverages its general knowledge to handle the new task
3. **Immediate deployment** — the model can serve the new surface out of the box ^[extracted]

## Out-of-Domain Results

360Brew was evaluated on four tasks completely unseen during training (out-of-domain surfaces). The model demonstrated generalization to problems it had never encountered, validating the zero-shot capability promise. ^[extracted]

## Why It Matters

Traditional recommendation systems require extensive data collection and model training for each new surface. Zero-shot capability dramatically reduces the time from idea to production, enabling faster experimentation and iteration. ^[inferred]

## Related

- [[concepts/360brew|360Brew]] — zero-shot is one of 360Brew's four main characteristics
- [[concepts/in-context-learning|In-Context Learning]] — ICL is the few-shot variant of zero-shot capability
- [[concepts/unified-recommendation-models|Unified Recommendation Models]] — unified models enable zero-shot via instruction variation
