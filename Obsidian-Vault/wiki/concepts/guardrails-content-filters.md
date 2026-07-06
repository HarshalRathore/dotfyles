---
title: Guardrails & Content Filters
category: concepts
tags:
- guardrails
- content-filters
- safety
- azure-ai-foundry
- microsoft
- defense-in-depth
aliases:
- AI guardrails
- content filtering
- input-output filters
relationships:
- target: '[[concepts/layered-agent-safety]]'
  type: implements
- target: '[[concepts/prompt-shields]]'
  type: related_to
- target: '[[concepts/ai-red-teaming]]'
  type: related_to
sources:
- 'https://www.youtube.com/watch?v=jhjkgramfiu'
provenance:
  extracted: 0.85
  inferred: 0.1
  ambiguous: 0.05
base_confidence: 0.8
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
summary: Guardrails & Content Filters
---

# Guardrails & Content Filters

Guardrails are safety layers that sit outside the base model, wrapping it with input and output content filters to prevent harmful or unsafe behavior. ^[extracted] They are a core component of [[concepts/layered-agent-safety|layered agent safety]] and are provided natively in [[entities/azure-ai-foundry|Azure AI Foundry]]. ^[extracted]

## Architecture

Guardrails are NOT built into the model itself — the model remains the raw, unmodified model. ^[extracted] Instead, guardrails operate as an external filtering layer: ^[extracted]

- **Input filters** — catch toxic or harmful requests before they reach the model (e.g., CBR content, bomb-making instructions)
- **Output filters** — prevent the model from generating harmful content in its responses (e.g., sexual content, violence)

## Effectiveness

Guardrails materially reduce attack success rates. ^[extracted] In the AIEF2025 demo: ^[extracted]

- GPT-4o nano with guardrails enabled: very few attacks succeeded across 160 scans and 5 harm types
- GPT-4.1 nano with guardrails disabled: 25% violence attacks succeeded, 20% high-difficulty attacks succeeded
- GPT-4.1 nano with guardrails enabled: reduced attack success vs. disabled

## Prompt Shields

[[concepts/prompt-shields|Prompt shields]] are a specific type of guardrail designed to defend against prompt-based attacks, especially those used in AI red teaming. ^[extracted]

## Sources

- AI Red Teaming Agent: Azure AI Foundry — Nagkumar Arkalgud & Keiji Kanazawa, Microsoft. https://www.youtube.com/watch?v=JhJKgRAmfIU
