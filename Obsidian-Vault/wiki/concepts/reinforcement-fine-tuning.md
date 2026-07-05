---
title: "Reinforcement Fine-Tuning (RFT)"
category: concepts
tags: [fine-tuning, reinforcement-learning, reasoning, llm, openai, grader]
aliases: [RFT, reasoning fine-tuning, reinforcement learning fine-tuning]
relationships:
  - target: "[[concepts/llm-reasoning]]"
    type: extends
  - target: "[[concepts/rlhf]]"
    type: related_to
  - target: "[[concepts/direct-preference-optimization]]"
    type: related_to
sources: ["[[sources/aief2025-rft]]", "[[sources/dpo]]", "[[sources/sft-fine-tuning-with-openai-—-ilan-bigio]]", "[[sources/watchv=jfalqqfxqpa]]"]
summary: "OpenAI's fine-tuning method for reasoning models: the model generates chain-of-thought outputs evaluated by a grader that provides feedback for continued training. Designed to reach state-of-the-art performance on reasoning tasks."
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

# Reinforcement Fine-Tuning (RFT)

Reinforcement Fine-Tuning is OpenAI's fine-tuning method specifically designed for reasoning models. The model generates chain-of-thought outputs that are evaluated by a grader, and the feedback is used for continued training. It is described as the first public reinforcement learning algorithm from OpenAI that can reach state-of-the-art results on targeted tasks.

## How RFT Works

The RFT training loop follows a distinct pattern: ^[extracted]

1. **Input generation** — a set of inputs is fed to the model
2. **Chain-of-thought generation** — for each input, the model produces a chain-of-thought reasoning followed by an output
3. **Grading** — a grader evaluates the output and produces a feedback signal
4. **Feedback loop** — the grader's signal is used to update the model's weights through reinforcement learning
5. **Iteration** — the process repeats, with the model improving its reasoning over time

The grader can use any fields accessible to it — including structured reference answers — to produce the evaluation signal. ^[extracted]

## Requirements

- **High-signal data** — RFT is extremely sensitive to noisy data; garbage in means garbage out ^[extracted]
- **Solid grader** — the quality of the grader is the limiting factor; a poor grader produces a poor model ^[extracted]
- **Good prompts** — unlike SFT, RFT requires well-crafted prompts to guide the model's reasoning process ^[extracted]
- **Reference answers** — providing reference answers to the grader strengthens the feedback signal ^[extracted]

## Best Results

When both high-signal data and a solid grader are provided, RFT is likely to reach state-of-the-art performance on the targeted task. ^[extracted]

## Limitations

- **Single-turn only** — RFT currently only handles single-turn interactions; multi-step agentic workflows with function calling and result feedback are not yet supported ^[extracted]
- **Agentic use cases limited** — the model cannot call a function, receive the result, and continue reasoning in a loop ^[extracted]
- **Only for reasoning models** — RFT is not applicable to non-reasoning models; DPO and SFT are the correct choices for those ^[extracted]

## Demo: Email Classification

In the talk, a live RFT demo was performed on an email classification task (glance vs ignore). The grader evaluated chain-of-thought outputs and the model was iteratively improved through the feedback loop. ^[extracted]

## Relationship to Other Methods

RFT represents the most advanced fine-tuning method for reasoning tasks. [[concepts/supervised-fine-tuning|SFT]] teaches imitation, [[concepts/direct-preference-optimization|DPO]] teaches preferences between outputs, and RFT teaches the model how to reason effectively through a grader loop. ^[inferred]

## Sources

- [[references/rft-dpo-sft-fine-tuning-openai|AIEF2025 - RFT, DPO, SFT: Fine-tuning with OpenAI]] — Ilan Bigio, OpenAI
