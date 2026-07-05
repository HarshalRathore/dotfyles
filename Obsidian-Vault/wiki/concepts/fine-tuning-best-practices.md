---
title: "Fine-tuning Best Practices"
category: concepts
tags: [fine-tuning, best-practices, llm, data-quality, evals]
aliases: [fine-tuning guidelines, fine-tuning tips, ft best practices]
relationships:
  - target: "[[concepts/model-progression-framework]]"
    type: extends
  - target: "[[concepts/supervised-fine-tuning]]"
    type: related_to
sources: ["[[sources/aief2025-rft]]", "[[sources/dpo]]", "[[sources/sft-fine-tuning-with-openai-—-ilan-bigio]]", "[[sources/watchv=jfalqqfxqpa]]"]
summary: "Actionable best practices for fine-tuning models: always start with prompting, run evals, use diverse data, handle overfitting, include context in training, and begin with the biggest model."
provenance:
  extracted: 0.75
  inferred: 0.20
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
tier: supporting
created: 2026-07-03T15:05:02Z
updated: 2026-07-03T15:05:02Z
---

# Fine-tuning Best Practices

Practical guidelines for successfully fine-tuning language models, derived from OpenAI's real-world experience.

## Strategy

- **Always start with prompting** — never fine-tune without first exhausting prompt engineering. Fine-tuning is the escalation step, not the first option. ^[extracted]
- **Run evals at each stage** — measure quality objectively before deciding to escalate to fine-tuning. ^[extracted]
- **Always start with the biggest model** — begin with the most capable and expensive model that works, then optimize for efficiency (distillation, quantization) afterward. ^[extracted]
- **Context over fine-tuning for knowledge** — always try injecting domain knowledge through context first. Fine-tune only when you already have data showing fine-tuning would help. ^[extracted]

## Data

- **Minimum 100 samples** to start; 500+ is best for robust results. ^[extracted]
- **Data diversity is critical** — anything not included in training may show regression. Be comprehensive in your training data. ^[extracted]
- **High-signal data** — especially critical for RFT, which is extremely sensitive to noisy data. ^[extracted]
- **Quality filtering** — apply multiple stages of filtering to training data, especially when using synthetic/d distilled data. ^[extracted]

## Implementation

- **Include context in training** — do not remove function schemas or parameters from context during training; this makes fine-tuning significantly harder. ^[extracted]
- **Good prompts for DPO/RFT** — unlike SFT, DPO and RFT require well-crafted prompts to guide the model. ^[extracted]
- **Overfitting management** — watch for overfitting; stopping training early is one valid approach. ^[extracted]
- **Test on held-out tasks** — testing on tasks not included in training may reveal performance regressions. ^[extracted]

## Data Quality for Preference Methods

- **Avoid trivially bad negatives** — when using DPO, negative examples should be mediocre (what you'd actually see), not terrible. Teaching the model to go from mediocre to good is more useful than from terrible to good. ^[extracted]
- **Grader quality limits RFT** — the grader is the limiting factor; invest in building a robust grader. ^[extracted]

## Sources

- [[references/rft-dpo-sft-fine-tuning-openai|AIEF2025 - RFT, DPO, SFT: Fine-tuning with OpenAI]] — Ilan Bigio, OpenAI
