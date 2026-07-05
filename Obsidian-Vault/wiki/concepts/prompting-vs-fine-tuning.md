---
title: "Prompting vs Fine-tuning"
category: concepts
tags: [prompting, fine-tuning, llm, model-selection, prompt-engineering]
relationships:
  - target: "[[concepts/supervised-fine-tuning]]"
    type: extends
  - target: "[[concepts/prompt-engineering]]"
    type: extends
sources: ["[[sources/aief2025-rft]]", "[[sources/dpo]]", "[[sources/sft-fine-tuning-with-openai-—-ilan-bigio]]", "[[sources/watchv=jfalqqfxqpa]]"]
summary: "A comparison framework between prompting (low barrier, quick iteration) and fine-tuning (continued training for domain optimization). The recommended decision process: always start with prompting and escalate only when evals show prompting is insufficient."
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

# Prompting vs Fine-tuning

A comparison framework for deciding between prompting and fine-tuning for LLM applications. Prompting is a low-barrier approach suitable for most tasks; fine-tuning is continued training that optimizes a model for a specific domain.

## Comparison

| Aspect | Prompting | Fine-tuning |
|---|---|---|
| **Barrier to entry** | Very low — anyone can do it | Higher — requires labeled data, API access, and eval infrastructure |
| **Speed of iteration** | Quick — change the prompt, get new results | Slower — requires training cycles and evaluation |
| **Scope** | Sufficient for most jobs today | Needed when prompting reaches its ceiling |
| **Knowledge** | Limited by context window | Limited by training data, but accessible at inference |
| **Output consistency** | Variable — depends on prompt quality | More consistent once trained |
| **Latency** | Standard — context adds overhead | Can reduce latency by moving logic into weights |

## Decision Process

The recommended decision process is: ^[extracted]

1. **Always start with prompt engineering** — try prompting first and see how far you can go
2. **Run evals** — measure whether prompting meets your quality requirements
3. **If prompting is good enough** — stop there, no need to fine-tune
4. **If still improving the prompt and getting better evals** — consider fine-tuning as the next step

## When Fine-tuning Makes Sense

- You've exhausted prompt engineering and need to push performance further
- You need to reduce latency by moving function schemas or parameters into model weights
- You need domain-specific behavior that cannot be reliably prompted
- You're building a constrained product with well-defined input-output patterns

## When Fine-tuning Does NOT Make Sense

- Early-stage products still iterating on behavior
- Tasks with high variability or broad scope
- When context injection is more appropriate (domain knowledge, personal preferences)
- When the task is subjective and preference-based (consider DPO instead)

## Sources

- [[references/rft-dpo-sft-fine-tuning-openai|AIEF2025 - RFT, DPO, SFT: Fine-tuning with OpenAI]] — Ilan Bigio, OpenAI
