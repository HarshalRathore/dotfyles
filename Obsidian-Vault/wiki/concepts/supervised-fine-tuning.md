---
title: "Supervised Fine-Tuning (SFT)"
category: concepts
tags: [fine-tuning, llm, supervised-learning, imitation, openai]
aliases: [SFT, fine-tuning, continued training]
relationships:
  - target: "[[concepts/direct-preference-optimization]]"
    type: related_to
  - target: "[[concepts/reinforcement-fine-tuning]]"
    type: related_to
sources: ["[[sources/aief2025-rft]]", "[[sources/dpo]]", "[[sources/sft-fine-tuning-with-openai-—-ilan-bigio]]", "[[sources/watchv=jfalqqfxqpa]]"]
summary: "Continued training on labeled input-output pairs where the model learns to directly imitate provided examples. The foundational fine-tuning method with the lowest barrier to entry."
provenance:
  extracted: 0.75
  inferred: 0.20
  ambiguous: 0.05
base_confidence: 0.70
lifecycle: draft
tier: supporting
created: 2026-07-03T15:05:02Z
updated: 2026-07-03T15:05:02Z
---

# Supervised Fine-Tuning (SFT)

Supervised Fine-Tuning is continued training that optimizes a model for a given domain by learning from labeled input-output pairs. The model learns to directly imitate the data provided, making it the most straightforward fine-tuning method.

## How SFT Works

SFT works by providing the model with pairs of prompts and desired outputs. The model adjusts its weights to reproduce the output given the input, essentially memorizing the mapping between them. Unlike prompting, SFT changes the model's weights rather than just providing context at inference time. ^[extracted]

- The data format follows the chat completions API structure: a sequence of messages (developer, user, assistant) where the model learns from the final assistant message ^[extracted]
- The prompt matters less for SFT than for other methods — even a minimal prompt can work if the training examples are sufficiently constrained ^[extracted]
- Minimum ~100 samples to start; 500+ is recommended for better results ^[extracted]

## Strengths

- **Direct and simple** — the model learns exactly what you show it without requiring reward signals or preference comparisons ^[extracted]
- **Low prompt engineering overhead** — well-constrained examples can compensate for weak prompts ^[extracted]
- **Good for simple tasks** — best suited for constrained, well-defined tasks where the output space is limited ^[extracted]

## Limitations

- **Task regression** — testing the model on tasks not included in training may show performance regressions on those held-out tasks. Data diversity is critical. ^[extracted]
- **Not suitable for preference learning** — SFT cannot learn subjective qualities like humor or taste because it only sees examples, not preferences between alternatives ^[extracted]
- **Context dependence** — removing context (e.g., function schemas or parameters from the prompt) during training makes fine-tuning significantly harder ^[extracted]

## When to Use SFT

- You have labeled input-output pairs for a constrained task
- Prompt engineering has been exhausted and you need to push performance further
- The task is deterministic or has a well-defined output format
- You need to reduce latency by moving logic from context into model weights

## Relationship to Other Methods

SFT is the foundational step in the fine-tuning progression. [[concepts/direct-preference-optimization|DPO]] builds on SFT by adding preference signals (positive vs negative examples) rather than absolute outputs. [[concepts/reinforcement-fine-tuning|RFT]] goes further by adding a grader loop for reasoning-capable models. ^[inferred]

## Sources

- [[references/rft-dpo-sft-fine-tuning-openai|AIEF2025 - RFT, DPO, SFT: Fine-tuning with OpenAI]] — Ilan Bigio, OpenAI
