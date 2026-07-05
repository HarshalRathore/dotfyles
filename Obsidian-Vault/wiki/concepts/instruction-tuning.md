---
title: "Instruction Tuning"
category: concepts
tags:
  - instruction-tuning
  - llm
  - fine-tuning
  - personalization
aliases:
  - instruction tuning
  - instruction fine-tuning
  - IFT
sources:
  - "[[sources/watchv=u0s6cfzay5c]]"
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
  - target: "[[concepts/360brew]]"
    type: used_by
  - target: "[[concepts/model-distillation]]"
    type: related_to
---
# Instruction Tuning

Instruction tuning (also called instruction fine-tuning or IFT) is the process of training a large language model to follow natural language instructions. In the context of [[concepts/360brew|360Brew]], it is one of the key training stages that enables the model to act as a recommendation system that responds to user-directed personalization requests. ^[extracted]

## Role in 360Brew

In the 360Brew pipeline, instruction tuning comes after continuous pre-training and fine-tuning. It teaches the model to:

- Accept recommendation tasks described in natural language
- Follow instructions about what type of recommendation to perform
- Respond to user requests like "these are my niche interests, find me relevant content"

This enables the **instruction-following** capability that is one of 360Brew's four main characteristics. ^[extracted]

## Why It Matters

Without instruction tuning, an LLM can only perform tasks it was trained on during pre-training. Instruction tuning gives the model the ability to generalize to new tasks described in natural language — enabling zero-shot capability for new recommendation surfaces without retraining. ^[inferred]

## Related

- [[concepts/360brew|360Brew]] — instruction tuning is a key stage in the brewing pipeline
- [[concepts/model-distillation|Model Distillation]] — instruction-tuned models are distilled to smaller variants for serving
- [[concepts/in-context-learning|In-Context Learning]] — instruction tuning complements few-shot in-context approaches
