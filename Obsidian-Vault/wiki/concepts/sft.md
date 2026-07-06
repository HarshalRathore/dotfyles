---
title: "SFT (Supervised Fine-Tuning)"
category: concepts
tags: [sft, fine-tuning, supervised-learning, distillation, reasoning-models, aief2025]
aliases: [supervised fine-tuning, sft, supervised-fine-tuning]
sources:
  - "https://www.youtube.com/watch?v=-9E9_21tx04"
summary: "Supervised fine-tuning as a method for training reasoning models. OpenThoughts 3 demonstrated that SFT on carefully curated reasoning datasets can outperform distilled R1 models."
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
  - target: "[[concepts/reinforcement-learning|Reinforcement Learning]]"
    type: complements
  - target: "[[concepts/distillation|Distillation]]"
    type: relates_to
  - target: "[[concepts/open-thoughts-3|OpenThoughts 3]]"
    type: used_by
---

# SFT (Supervised Fine-Tuning)

**Supervised Fine-Tuning (SFT)** is a training method where a pre-trained model is further trained on a curated dataset of input-output pairs. In the context of reasoning models, SFT on reasoning traces teaches models to produce long chain-of-thought outputs. ^[extracted]

## SFT vs. RL for Reasoning

Ryan Martin (Bespoke Labs) at AI Engineer World's Fair 2025 highlighted key distinctions: ^[extracted]

- **DeepSeek R1 is ultimately an SFT model** — the final weights come from DeepSeek V3 base fine-tuned on 800K SFT examples (600K reasoning)
- **RL was used to create the training data**, but the final model is SFT
- **SFT is extremely easy and extremely effective** — compared to the complexity of RL infrastructure (4 model copies for PPO, 3 for GRPO)
- **Scaling SFT is easier** — scaling RL is exponentially more expensive; SFT scaling is more manageable

## How SFT Makes Models "Think Longer"

SFT works because the training data includes the thinking/reasoning traces alongside the answers. The model learns to use its context window to produce long thinking traces through imitation — what Ryan called "SFT imitation." ^[extracted]

## SFT vs. Regular SFT

The difference between reasoning SFT and regular SFT is in the data: reasoning SFT uses data where the answers contain extended chain-of-thought reasoning. The model learns the format and the reasoning patterns from the data. ^[extracted]

## Domain-Specific SFT

- **Difficulty filtering works differently by domain** — difficulty labels work for code but response length works better for math/science
- **Distillation can surpass the teacher** — in the legal reasoning domain, a 7B model fine-tuned on distilled data surpassed R1

## Sources

- AI Engineer World's Fair 2025 — Reasoning + RL Track: https://www.youtube.com/watch?v=-9E9_21tx04
