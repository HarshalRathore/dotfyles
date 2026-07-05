---
title: "Knowledge Injection in LLMs"
category: concepts
tags: [knowledge-injection, context, fine-tuning, llm, domain-knowledge]
aliases: [injecting knowledge, domain knowledge, context injection]
relationships:
  - target: "[[concepts/model-progression-framework]]"
    type: related_to
  - target: "[[concepts/agentic-rag]]"
    type: related_to
sources: ["[[sources/aief2025-rft]]", "[[sources/dpo]]", "[[sources/sft-fine-tuning-with-openai-—-ilan-bigio]]", "[[sources/watchv=jfalqqfxqpa]]"]
summary: "Strategies for injecting domain knowledge into LLMs: context injection is preferred over fine-tuning for knowledge acquisition, with fine-tuning reserved for later-stage optimization of behavior rather than facts."
provenance:
  extracted: 0.60
  inferred: 0.35
  ambiguous: 0.05
base_confidence: 0.65
lifecycle: draft
tier: supporting
created: 2026-07-03T15:05:02Z
updated: 2026-07-03T15:05:02Z
---

# Knowledge Injection in LLMs

Strategies for teaching LLMs new domain knowledge or personal preferences. The consensus approach is to inject knowledge through context first, using fine-tuning only as a later-stage optimization for behavior rather than facts.

## Context Injection vs Fine-tuning

- **Context injection is preferred** — always try putting things in context first before considering fine-tuning. Context is flexible, reversible, and doesn't risk model regression. ^[extracted]
- **Fine-tuning for later-stage** — only use fine-tuning when you already have data showing it would improve the outcome. Fine-tuning locks in knowledge permanently and risks regression on other tasks. ^[extracted]
- **Personal preferences** — for personal preferences and subjective knowledge (e.g., how you categorize emails), context injection with reasoning models is the recommended approach. ^[extracted]

## Prompt Tuning Approach

A hybrid approach that combines context injection with reasoning models: ^[inferred]

1. Find similar examples that have different outcomes (e.g., two similar emails, one glances and one ignores)
2. Use a reasoning model to determine what's different between the cases
3. Compile explicit principles from the reasoning model's analysis
4. Inject these principles into the prompt as context

This is described as "prompt tuning" — finding the right context to provide the model based on accumulated examples, rather than changing the model's weights.

## When Fine-tuning Knowledge Makes Sense

- You have enough labeled data to show that fine-tuning outperforms context injection
- The knowledge is stable and unlikely to change frequently
- The model needs fast access to the knowledge at inference time (no context overhead)
- The knowledge is behavioral rather than factual (e.g., preferred output style)

## Limitations

- Fine-tuning is not ideal for frequently changing knowledge — context injection can be updated instantly
- Over-inclusion in training data risks regression on other tasks ^[extracted]
- Personal preference knowledge is highly contextual and difficult to capture in a fixed training set

## Sources

- [[references/rft-dpo-sft-fine-tuning-openai|AIEF2025 - RFT, DPO, SFT: Fine-tuning with OpenAI]] — Ilan Bigio, OpenAI
