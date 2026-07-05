---
title: "Chain-of-Thought"
category: concepts
tags: [chain-of-thought, reasoning, llm, prompting, emergent-behavior, palm, aief2025]
aliases: [chain of thought, CoT, reasoning chains, think step by step]
sources:
  - "[[sources/watchv=qludzkvfp6a]]"
summary: "Asking LLMs to output their reasoning chains before answering dramatically improves performance. An emergent capability discovered in PALM (540B params) that generalized across domains."
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/emergent-behavior-in-ai|Emergent Behavior in AI]]"
    type: example_of
  - target: "[[concepts/reasoning-models|Reasoning Models]]"
    type: used_by
  - target: "[[concepts/system-1-system-2-thinking|System 1 / System 2 Thinking]]"
    type: activates
  - target: "[[concepts/inference-time-compute|Inference-Time Compute Scaling]]"
    type: relates_to
---

# Chain-of-Thought

**Chain-of-thought** (CoT) is a prompting technique where the model is asked to output its reasoning step-by-step before producing a final answer. It dramatically improves model performance on reasoning tasks and was discovered as an **emergent capability** in large language models. ^[extracted]

## Discovery in PALM

PALM (540B parameters), led by [[entities/aakanksha-chowdhery|Aakanksha Chowdhery]] at Google, demonstrated chain-of-thought in 2021 — four years before it became a mainstream concept. ^[extracted]

On math word problems (e.g., tennis ball problems), PALM's initial output looked wrong when not prompted for reasoning. But when asked to show its reasoning chains, the model's answers became correct. ^[extracted]

The solve rate on middle school math word problems increased substantially with the number of parameters in PALM, and this increase was mainly driven by chain-of-thought prompting. ^[extracted]

## Generalization

The chain-of-thought capability was not limited to math. It generalized across domains: ^[extracted]

- Question answering in other languages
- Puzzle problems
- Multi-task natural language understanding

This generalization was a key insight: reasoning capability emerged at scale and applied broadly, not just to the training domain. ^[extracted]

## Impact on Prompting Techniques

Chain-of-thought led to a whole family of prompting techniques: ^[extracted]

- **Think step by step** — Ask the model to reason through each step
- **Let's think this out** — Encourage the model to work through the problem
- **Bribe the model** — Incentivize careful reasoning with rewards
- **Ask nicely / not so nicely** — Different politeness levels to see if tone affects reasoning

These techniques all share the core insight: getting the model to externalize its reasoning improves its final answer. ^[inferred]

## Relationship to Inference-Time Scaling

Chain-of-thought is the foundational technique for [[concepts/inference-time-compute|inference-time compute scaling]]. It demonstrates that spending additional compute during inference (generating reasoning steps) predictably improves outputs, even without additional training. ^[inferred]

It is also the precursor to [[concepts/sequential-revision|sequential revision]], where models don't just generate reasoning once but iteratively review and correct it. ^[inferred]

## Limitations

- **Not universal**: Not all tasks benefit from chain-of-thought; simple factual queries may not improve
- **Token cost**: Reasoning chains consume more tokens, increasing inference cost
- **Latency**: Longer generation times for reasoning steps

## Sources

- AIEF2025 - RL for Autonomous Coding — Aakanksha Chowdhery, Reflection.ai - https://www.youtube.com/watch?v=QluDzKVfp6A
