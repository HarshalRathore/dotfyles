---
title: "Taming Rogue AI Agents with Observability-Driven Evaluation — Jim Bennett, Galileo"
category: references
tags:
  - aief2025
  - observability
  - evals
  - agent-evaluation
  - llm-as-judge
  - talk
  - galileo
sources:
  - "AIEF2025 - Taming Rogue AI Agents with Observability-Driven Evaluation — Jim Bennett, Galileo - https://www.youtube.com/watch?v=xJXm4Wcw4m8"
summary: Jim Bennett (Galileo) presents observability-driven evaluation for AI agents: per-span metrics, LLMs evaluating LLMs, and day-one eval integration.
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/observability-driven-development]]"
    type: defines
  - target: "[[concepts/set-a-thief-to-catch-a-thief]]"
    type: introduces
  - target: "[[concepts/non-deterministic-evaluation]]"
    type: addresses
  - target: "[[entities/jim-bennett]]"
    type: features_speaker
  - target: "[[entities/galileo]]"
    type: features_speaker_organization
---

# Taming Rogue AI Agents with Observability-Driven Evaluation — Jim Bennett, Galileo

Jim Bennett from Galileo presented at the AI Engineer World's Fair 2025 on the challenge of evaluating non-deterministic AI agents through observability-driven evaluation. The talk opens with vivid examples of AI hallucination (the Chicago Sun Times' AI-generated summer reading list, lawyers citing false case law) to establish why we cannot simply "trust AI" and must build evaluation infrastructure.

## The Non-Determinism Problem

Bennett establishes that AI agents are fundamentally non-deterministic systems. Unlike traditional software where `add(2, 2) === 4`, agentic workflows produce different execution paths on different runs. You cannot write unit tests that say "this input produces this output" for complex multi-step agents. ^[extracted]

This makes evaluation inherently probabilistic and requires a different approach than binary pass/fail testing. ^[extracted]

## The "Set a Thief to Catch a Thief" Principle

The talk's central thesis: **use an LLM to evaluate an LLM**. Bennett's reasoning:

- AIs are about as good as humans at determining whether an AI worked
- This opens up the possibility of automated, scalable evaluation
- The key is using a *better* LLM for evaluation than the one in production

Production LLM = cheapest model that does the job
Evaluation LLM = best model available for scoring ^[extracted]

## Observability-Driven Evaluation

Bennett demonstrates with a FinTech chatbot that answers account balance queries. The bot eventually succeeds (user gets their balance) but through a multi-step process requiring clarification. The evaluation question: **did it work?** Two valid answers:

- Yes — the user got their data
- No — it took three steps and multiple clarifications (poor UX)

This illustrates why binary evaluation is insufficient. You need **granular metrics at every step**: tool call correctness, RAG retrieval quality, answer coherence, hallucination detection. ^[extracted]

## Day-One Integration

The talk prescribes a lifecycle for evaluation integration:

1. **Prompt engineering** — define eval metrics alongside prompts
2. **Model selection** — use evals to compare models
3. **CI/CD** — run evals on every change
4. **Production** — observe eval metrics as users stress-test

"The best time to put evaluations in is as you're doing prompt engineering and model selection. The second best time is now." ^[extracted]

## Galileo's Contribution

Galileo offers a **custom-trained small language model** specifically designed for evaluation tasks — optimizing for the unique requirements of scoring LLM outputs rather than general-purpose generation. ^[extracted]

## Key Quotes

- "We do not trust AI in the slightest."
- "AIs are not bad at this. They're about as good as a human is at determining whether an AI actually worked."
- "The best time to put evaluations in is as you're doing prompt engineering model selection. The second best time is now."

## Related

- [[concepts/observability-driven-development]] — The methodology formalized in this talk
- [[concepts/set-a-thief-to-catch-a-thief]] — The LLM-evaluates-LLM principle
- [[concepts/non-deterministic-evaluation]] — The fundamental challenge addressed
- [[concepts/granular-eval-metrics]] — Per-span evaluation approach
- [[entities/jim-bennett]] — The speaker
- [[entities/galileo]] — The company
