---
title: 'RFT, DPO, SFT: Fine-tuning with OpenAI — Ilan Bigio, OpenAI'
category: references
tags:
- fine-tuning
- rl
- dpo
- sft
- reinforcement-learning
- llm
- openai
- aief2025
aliases:
- RFT-DPO-SFT-OpenAI
- fine-tuning-with-openai
relationships:
- target: '[[concepts/rlhf]]'
  type: related_to
- target: '[[concepts/llm-evaluation]]'
  type: related_to
sources:
- '[[sources/aief2025-rft]]'
- '[[sources/dpo]]'
- '[[sources/sft-fine-tuning-with-openai-—-ilan-bigio]]'
- 'https://www.youtube.com/watch?v=jfalqqfxqpa'
summary: OpenAI's Ilan Bigio covers SFT, DPO, and RFT as three progressive fine-tuning methods, demonstrating each with live coding and real-world case studies including a function-calling latency reduction...
provenance:
  extracted: 0.7
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.65
lifecycle: draft
tier: supporting
created: 2026-07-03 15:05:02+00:00
updated: 2026-07-03 15:05:02+00:00
---

# RFT, DPO, SFT: Fine-tuning with OpenAI

Speaker: [[entities/ilan-bigio|Ilan Bigio]], Developer Experience team at [[entities/openai|OpenAI]]. Part of the Model Maxing series at AI Engineer World's Fair 2025.

## Summary

Ilan Bigio covers OpenAI's three fine-tuning methods — **Supervised Fine-Tuning (SFT)**, **Direct Preference Optimization (DPO)**, and **Reinforcement Fine-Tuning (RFT)** — as a progression from imitation-based learning to reasoning-capable model training. The talk includes live demos of each method, a detailed case study of reducing function-calling latency by distilling GPT-4 behavior into GPT-3.5, and a live RFT demo using an email-classification task.

## Key Topics Covered

- **Prompting vs Fine-tuning** — prompting has low barrier to entry and is sufficient for most jobs; fine-tuning is continued training optimized for a given domain ^[extracted]
- **SFT** — direct example imitation; prompt quality matters less than for other methods ^[extracted]
- **DPO** — learns the delta (difference vector) between positive and negative outputs in latent space rather than memorizing examples ^[extracted]
- **RFT** — generates chain-of-thought outputs evaluated by a grader; designed specifically for reasoning models ^[extracted]
- **Real-world case study** — function-calling latency reduction via GPT-3.5→GPT-4 distillation, achieving GPT-4 level performance at GPT-3.5 latency ^[extracted]
- **Best practices** — always start with prompting, run evals, use 100+ samples minimum, prioritize data diversity ^[extracted]
- **Knowledge injection** — context injection preferred over fine-tuning for domain knowledge; fine-tuning for later-stage optimization ^[extracted]

## Live Demos

1. **SFT demo** — email classification with GPT-3.5, including data formatting, API fine-tuning endpoint, and evaluation pipeline ^[extracted]
2. **DPO demo** — joke generation with preference pairs (good vs bad jokes) ^[extracted]
3. **RFT demo** — email classification with chain-of-thought reasoning, grader-based feedback loop ^[extracted]

## Sources

- [[references/rft-dpo-sft-fine-tuning-openai|AIEF2025 - RFT, DPO, SFT: Fine-tuning with OpenAI]] — Conference talk by Ilan Bigio
- [[concepts/fine-tuning-methods|Fine-tuning Methods]] — Comparative overview
