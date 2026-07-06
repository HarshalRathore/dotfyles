---
title: "Model Distillation"
category: concepts
tags: [distillation, model-compression, llm, fine-tuning, openai]
aliases: [distillation, knowledge distillation, model compression]
relationships:
  - target: "[[concepts/supervised-fine-tuning]]"
    type: related_to
  - target: "[[concepts/model-progression-framework]]"
    type: extends
sources: ["[[sources/aief2025-rft]]", "[[sources/dpo]]", "[[sources/sft-fine-tuning-with-openai-—-ilan-bigio]]", "https://www.youtube.com/watch?v=jfalqqfxqpa"]
summary: "Technique of training a smaller, faster model to replicate the behavior of a larger, more capable model. In the demo case, GPT-3.5 was distilled to achieve GPT-4 level performance at GPT-3.5 latency."
provenance:
  extracted: 0.65
  inferred: 0.30
  ambiguous: 0.05
base_confidence: 0.70
lifecycle: draft
tier: supporting
created: 2026-07-03T15:05:02Z
updated: 2026-07-03T15:05:02Z
---

# Model Distillation

Model distillation is the process of training a smaller, more efficient model to replicate the behavior of a larger, more capable model. The larger model generates synthetic training data (outputs for unlabeled inputs), and the smaller model learns from this data through supervised fine-tuning.

## How It Works

The distillation pipeline involves: ^[extracted]

1. **Collect unlabeled inputs** — gather real inputs from the domain of interest
2. **Generate labels** — run inputs through the larger model (e.g., GPT-4) to get high-quality outputs
3. **Filter** — apply multi-stage filtering to ensure only high-quality distilled data is retained
4. **Train** — fine-tune the smaller model (e.g., GPT-3.5) on the filtered labeled dataset
5. **Evaluate** — compare the distilled model's performance against the teacher model

## Demo Case Study: GPT-3.5 → GPT-4 Distillation

OpenAI's developer experience team distilled a GPT-3.5 model to replicate GPT-4 behavior on a low-latency function-calling task: ^[extracted]

- **Goal**: Achieve GPT-4 level accuracy at GPT-3.5 latency for a function-calling assistant
- **Method**: Ran unlabeled inputs through GPT-4, generated synthetic labels, filtered them through multiple quality stages, then fine-tuned GPT-3.5
- **Result**: Achieved within 2% of GPT-4 performance at a fraction of the latency

## Lessons Learned

- **Context matters** — removing context (function schemas, parameters) during training made fine-tuning significantly harder. Always include necessary context in training data. ^[extracted]
- **Two data sources worked best** — using both real labeled data and distilled synthetic data produced the best results ^[extracted]
- **Filtering is critical** — multiple stages of quality filtering on the distilled data prevented noise from degrading the smaller model ^[extracted]

## Relationship to Fine-tuning

Distillation uses SFT under the hood — the smaller model is fine-tuned on labeled data. The difference is the source of the labels: real human labels vs synthetic labels from a larger model. ^[inferred]

## Sources

- [[references/rft-dpo-sft-fine-tuning-openai|AIEF2025 - RFT, DPO, SFT: Fine-tuning with OpenAI]] — Ilan Bigio, OpenAI
