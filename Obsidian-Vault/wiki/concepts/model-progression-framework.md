---
title: Model Progression Framework
category: concepts
tags: [model-evolution, pre-training, instruction-tuning, reasoning, RLHF]
aliases: [model progression, language model evolution, LLM training stages]
relationships:
  - target: '[[concepts/test-time-compute-scaling]]'
    type: related_to
  - target: '[[concepts/model-distillation]]'
    type: related_to
  - target: '[[concepts/reasoning-models]]'
    type: related_to
sources:
  - https://www.youtube.com/watch?v=4sX_He5c4sI
summary: The progression of language models from GPT-2 through LSTM days, instruction tuning, chatbot usability, reasoning capability, and finally test-time scaling with RL — a pattern that repeats for each new modality.
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
lifecycle_changed: 2026-07-06
tier: supporting
created: 2026-07-06T00:00:00Z
updated: 2026-07-06T00:00:00Z
---

# Model Progression Framework

The **model progression framework** describes the typical evolution path of language models (and now other modalities) through distinct capability stages: ^[extracted]

| Stage | Description | Example |
|-------|-------------|---------|
| 1. Pre-training | Raw text modeling | GPT-2, LSTM days |
| 2. Instruction tuning | Making the model usable | Chatbot capability |
| 3. Reasoning | Post-training for reasoning | Test-time scaling, RL |
| 4. Test-time scaling | Dynamic compute allocation | Thinking models |

This pattern was described by Shane from Google DeepMind's Omni team. ^[extracted]

## The Pattern

The progression follows a consistent pattern: ^[extracted]

1. **Pre-training** — the model learns to predict the next token. At this stage, the model is like GPT-2 — it can generate text but is not usable as a chatbot.
2. **Instruction tuning** — the model becomes usable as a chatbot. However, at this stage it still has significant hallucinations and the instruction tuning is not good enough for reasoning.
3. **Reasoning capability** — when pre-training and post-training become good enough for reasoning, test-time scaling in RL takes off. This is when many of the best-performing models emerge.
4. **Test-time scaling** — the model can dynamically allocate more compute to harder problems.

## Video Models Follow the Same Pattern

The same progression applies to video models: ^[inferred]

- Video models are at an earlier stage of this progression
- They are still developing their reasoning capability
- The pattern suggests video models will follow a similar trajectory

## Connection to VO3

**VO3** (the first joint audio-visual generation model) represents a milestone in this progression — it unified audio and video generation, which were previously separate modalities. ^[extracted]

## Related

- [[concepts/test-time-compute-scaling|Test-Time Compute Scaling]] — the latest stage in model progression
- [[concepts/reasoning-models|Reasoning Models]] — models with reasoning capability
- [[concepts/model-distillation|Model Distillation]] — related model improvement approach
- [[concepts/vo3|VO3]] — the first joint audio-visual generation model

## Sources

- AI Engineer World's Fair 2026: https://www.youtube.com/watch?v=4sX_He5c4sI
