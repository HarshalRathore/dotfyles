---
title: "Distillation"
category: concepts
tags: [distillation, knowledge-distillation, teacher-model, sft, reasoning-models, aief2025]
aliases: [distillation, model distillation, teacher-student distillation]
sources:
  - "https://www.youtube.com/watch?v=-9E9_21tx04"
summary: "Using a stronger teacher model to generate training data (reasoning traces) for a smaller student model. OpenThoughts 3 found that Qwen 32B was a better teacher than DeepSeek R1 despite R1 being stronger on benchmarks."
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.70
lifecycle: draft
tier: supporting
created: 2026-07-06
updated: 2026-07-06
relationships:
  - target: "[[concepts/sft|SFT]]"
    type: used_by
  - target: "[[concepts/open-thoughts-3|OpenThoughts 3]]"
    type: key_component_of
---

# Distillation

**Distillation** in AI refers to using a stronger "teacher" model to generate training data (reasoning traces, answers) for a smaller "student" model through supervised fine-tuning. The student learns to replicate the teacher's reasoning patterns. ^[extracted]

## The Teacher-Student Insight

Ryan Martin (Bespoke Labs) discovered a counterintuitive finding at AI Engineer World's Fair 2025: ^[extracted]

> "A better model in terms of its own performance on evaluation benchmarks does not necessarily mean it's a better teacher model."

**Qwen 32B was a stronger teacher model than DeepSeek R1**, even though R1 is stronger on benchmarks. Ryan compared this to "a brilliant researcher who's maybe a terrible lecturer."

## Why Some Models Make Better Teachers

Unknown definitively, but hypotheses include: ^[extracted]

- **Reasoning trace length distribution** — some models produce longer, more detailed traces that provide more learning signal
- **Response formatting** — some models produce better-formatted outputs that are easier for the student to learn from
- **Claude as a terrible teacher** — even very strong models can be poor teachers

## Distillation Can Surpass the Teacher

In the legal reasoning domain (classifying Supreme Court decisions), a 7B model fine-tuned on distilled data from 2K unique questions × 5 answers each **surpassed R1** — a very strong and very large reasoning model. ^[extracted]

This challenges the assumption that distillation can only catch up to the teacher; under the right conditions, it can surpass the teacher in specific domains.

## Distillation vs. RL

- **RL pushes the frontier** — only RL can push beyond the teacher's capabilities
- **Distillation catches up and can surpass** — in specific domains with good data
- **SFT + distillation is easier** — no complex RL infrastructure required
- **Verification matters more for RL** — for SFT/distillation, filtering by answer correctness didn't seem to help

## Synthetic Data Generation

Synthetic question generation is a scalable way to expand distillation datasets. Bespoke Labs built **Curator**, an open-source library for this purpose. ^[extracted]

## Sources

- AI Engineer World's Fair 2025 — Reasoning + RL Track: https://www.youtube.com/watch?v=-9E9_21tx04
