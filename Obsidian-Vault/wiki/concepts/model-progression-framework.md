---
title: "Model Progression Framework"
category: concepts
tags: [model-selection, fine-tuning, prompt-engineering, llm, strategy]
aliases: [model ladder, model selection framework, prompting to reasoning]
relationships:
  - target: "[[concepts/prompting-vs-fine-tuning]]"
    type: extends
  - target: "[[concepts/supervised-fine-tuning]]"
    type: related_to
sources: ["[[sources/aief2025-rft]]", "[[sources/dpo]]", "[[sources/sft-fine-tuning-with-openai-—-ilan-bigio]]", "[[sources/watchv=jfalqqfxqpa]]"]
summary: "A decision framework for progressing from simplest to most capable approach: start with prompting, escalate to SFT for domain adaptation, DPO for preference learning, and RFT for reasoning model optimization."
provenance:
  extracted: 0.70
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.65
lifecycle: draft
tier: supporting
created: 2026-07-03T15:05:02Z
updated: 2026-07-03T15:05:02Z
---

# Model Progression Framework

A decision framework for choosing the right model strategy based on task complexity and performance requirements. The framework progresses from the simplest approach (prompting) to increasingly sophisticated techniques.

## The Progression Ladder

1. **Prompting** — Start here. Low barrier to entry, quick iteration, sufficient for most jobs. If prompt engineering gets you to your target quality, stop.
2. **Supervised Fine-Tuning (SFT)** — Use when prompted reaches its ceiling. Best for simple, constrained tasks with labeled input-output pairs. 100+ samples minimum, 500+ recommended.
3. **Direct Preference Optimization (DPO)** — Use for subjective quality dimensions (humor, style, taste) where you can define positive and negative examples but not a single correct output.
4. **Reinforcement Fine-tuning (RFT)** — Use for reasoning-capable models. Requires high-signal data, a solid grader, and is limited to single-turn interactions.
5. **Distillation** — Use when you need to trade model capability for latency. Distill a larger model's behavior into a smaller, faster model.

## Key Principles

- **Always start with prompting** — never jump to fine-tuning without first exhausting prompt engineering ^[extracted]
- **Run evals at each step** — measure quality objectively before deciding to escalate ^[extracted]
- **Always start with the biggest model** — begin with the most capable and expensive model that works, then optimize for efficiency afterward ^[extracted]
- **Context over fine-tuning for knowledge** — inject domain knowledge through context first; fine-tune for later-stage optimization ^[extracted]

## When to Skip Steps

- If prompting is working well, there's no benefit to fine-tuning
- If you need domain knowledge rather than behavior changes, use context injection instead of any fine-tuning method
- For reasoning tasks, skip directly to RFT if you have the infrastructure for it

## Sources

- [[references/rft-dpo-sft-fine-tuning-openai|AIEF2025 - RFT, DPO, SFT: Fine-tuning with OpenAI]] — Ilan Bigio, OpenAI
