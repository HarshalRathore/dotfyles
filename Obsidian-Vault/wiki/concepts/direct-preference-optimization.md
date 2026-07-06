---
title: "Direct Preference Optimization (DPO)"
category: concepts
tags: [fine-tuning, preference-learning, rl, llm, openai]
aliases: [DPO, preference optimization, preference fine-tuning]
relationships:
  - target: "[[concepts/supervised-fine-tuning]]"
    type: related_to
  - target: "[[concepts/reinforcement-fine-tuning]]"
    type: related_to
  - target: "[[concepts/rlhf]]"
    type: extends
sources: ["[[sources/aief2025-rft]]", "[[sources/dpo]]", "[[sources/sft-fine-tuning-with-openai-—-ilan-bigio]]", "https://www.youtube.com/watch?v=jfalqqfxqpa"]
summary: "A fine-tuning method where the model learns the preference delta between positive and negative output pairs rather than memorizing individual examples. Operates in the model's latent embedding space."
provenance:
  extracted: 0.70
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.70
lifecycle: draft
tier: supporting
created: 2026-07-03T15:05:02Z
updated: 2026-07-03T15:05:02Z
---

# Direct Preference Optimization (DPO)

Direct Preference Optimization trains a model on pairs of positive and negative outputs rather than individual labeled examples. Instead of memorizing what the correct answer is, the model learns the preference delta between what's good and what's bad.

## How DPO Works

DPO operates in the model's latent embedding space. When you provide a positive output and a negative output for the same input, the model learns the difference vector between them — the direction in latent space that separates good from bad responses. ^[extracted]

- Each training example consists of an input paired with both a preferred (positive) output and a dispreferred (negative) output ^[extracted]
- The model learns the preference signal rather than the absolute output, making it suitable for tasks with subjective quality dimensions ^[extracted]
- Good prompts are still required — unlike SFT, DPO cannot compensate for weak prompts through example quality alone ^[extracted]

## Best Use Cases

- **Subjective quality tasks** — humor, style, tone, creativity where there's no single "correct" output but there's a clear direction toward better responses ^[extracted]
- **Preference learning** — teaching the model to distinguish nuanced quality differences rather than specific outputs ^[inferred]

## DPO Data Quality

The quality of the negative examples is critical. Bad negatives (trivially bad outputs) teach the model how to go from terrible to good, which may not be the gap you want to optimize. Better to teach the model how to go from mediocre to excellent — the negative examples should represent what you'd actually expect to see in practice. ^[extracted]

## Comparison to SFT

Unlike [[concepts/supervised-fine-tuning|SFT]], DPO does not teach the model to reproduce specific outputs. It teaches the model to recognize a quality direction in latent space. This makes DPO better for tasks with subjective quality dimensions (like humor) but worse for tasks requiring precise output formats or specific knowledge. ^[inferred]

## Sources

- [[references/rft-dpo-sft-fine-tuning-openai|AIEF2025 - RFT, DPO, SFT: Fine-tuning with OpenAI]] — Ilan Bigio, OpenAI
