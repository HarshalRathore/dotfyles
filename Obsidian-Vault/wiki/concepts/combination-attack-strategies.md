---
title: Combination Attack Strategies
category: concepts
tags:
- attack-strategies
- adversarial
- composability
- ai-red-teaming
- pyrit
aliases:
- composable attack strategies
- chained attack strategies
- multi-layer attacks
relationships:
- target: '[[concepts/attack-strategies]]'
  type: extends
- target: '[[entities/pyrit]]'
  type: implements
- target: '[[concepts/ai-red-teaming]]'
  type: implements
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
summary: Combination Attack Strategies
---

# Combination Attack Strategies

Combination attack strategies are multi-layered adversarial techniques that chain multiple basic [[concepts/attack-strategies|attack strategies]] together to increase the likelihood of bypassing AI safety defenses. ^[extracted] They represent an escalation from single-converter attacks (e.g., just base64 encoding) to composed attacks that apply transformations sequentially. ^[extracted]

## How They Work

Instead of applying a single obfuscation technique, combination strategies chain converters so each step adds a new layer of transformation. ^[extracted] For example:

- **Tense conversion → URL encoding**: First change the grammatical tense of the prompt, then URL-encode the result. The model must reverse both transformations to interpret the content, while content filters may only check one layer. ^[extracted]
- **String reversal + Caesar encoding**: Reverse the string, then apply a substitution cipher to the reversed output. ^[inferred]

## Named Strategy Sets

The [[entities/pyrit|PyRIT]] SDK includes named strategy sets that group common combinations: ^[extracted]

- **Easy** — simple converter combinations like string reversal
- **Mars** — a named set of composable attack strategies ^[extracted]

These named sets allow red teamers to select a pre-configured combination rather than manually chaining converters. ^[extracted]

## Composable Architecture

The Azure AI Foundry SDK exposes these strategies as composable building blocks. ^[extracted] Engineers can programmatically compose their own attack chains by combining individual converters, enabling custom multi-layered adversarial prompts tailored to specific application defenses. ^[extracted]

## Effectiveness

Combination strategies are more likely to bypass defenses than single converters because they exploit the gap between how content filters process text and how models decode it — at multiple transformation levels simultaneously. ^[inferred] However, guardrails in [[entities/azure-ai-foundry|Azure AI Foundry]] (input/output content filters) are designed to handle these layered attacks. ^[extracted]

## Sources

- AI Red Teaming Agent: Azure AI Foundry — Nagkumar Arkalgud & Keiji Kanazawa, Microsoft. https://www.youtube.com/watch?v=JhJKgRAmfIU
