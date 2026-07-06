---
title: Upcycling
category: concepts
tags:
- upcycling
- model-size
- llm
- model-training
aliases:
- upcycling
- model upcycling
sources:
- 'https://www.youtube.com/watch?v=u0s6cfzay5c'
provenance:
  extracted: 0.9
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.75
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/360brew]]'
  type: used_by
- target: '[[concepts/model-distillation]]'
  type: related_to
summary: Upcycling
---
# Upcycling

Upcycling is the process of converting an existing open-source model into a model of a desired size, allowing teams to control the throughput-versus-quality tradeoff. In [[concepts/360brew|360Brew]], upcycling is the second step in the brewing pipeline, applied after selecting an open-source base model. ^[extracted]

## Purpose

Rather than training a model from scratch at a specific size, upcycling takes a pre-trained model and reconfigures it — typically by changing the number of layers, hidden dimensions, or attention heads — to achieve a target parameter count. This preserves the knowledge learned during the original pre-training while allowing the team to select the optimal size for their serving constraints. ^[inferred]

## Role in 360Brew

In the 360Brew pipeline: open-source model → upcycling → continuous pre-training → fine-tuning → instruction fine-tuning → alignment → distillation. Upcycling allows LinkedIn to control the size of Brew XL (~150B) to maximize quality before distillation. ^[extracted]

## Related

- [[concepts/360brew|360Brew]] — upcycling is the second stage in the brewing pipeline
- [[concepts/model-distillation|Model Distillation]] — upcycling sets up the teacher model for subsequent distillation
- [[concepts/continued-pre-training|Continued Pre-training]] — follows upcycling in the pipeline
