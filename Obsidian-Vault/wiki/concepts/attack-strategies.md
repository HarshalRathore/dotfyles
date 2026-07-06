---
title: Attack Strategies
category: concepts
tags:
- attack-strategies
- adversarial
- prompt-injection
- obfuscation
- ai-red-teaming
- security
aliases:
- adversarial strategies
- prompt attack strategies
- AI attack patterns
relationships:
- target: '[[concepts/ai-red-teaming]]'
  type: implements
- target: '[[concepts/prompt-injection]]'
  type: related_to
- target: '[[entities/pyrit]]'
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
summary: Attack Strategies
---

# Attack Strategies

Attack strategies are adversarial techniques used to test whether AI systems can be tricked into producing harmful outputs. ^[extracted] They are the core building blocks of [[concepts/ai-red-teaming|AI red teaming]] and are implemented in tools like [[entities/pyrit|PyRIT]]. ^[extracted]

## Basic Strategies

### String Reversal (Flip)
Reverses the input text character-by-character. "how to loot a bank" becomes "knabool ot woh". ^[extracted] This bypasses text-based content filters that scan for known harmful phrases in normal order. ^[extracted]

### Base64 Encoding
Encodes the prompt in base64 format. The model decodes and processes the content, but the filter sees only alphanumeric characters. ^[extracted]

### Caesar Encoding
Applies a character substitution cipher (shift cipher) to the prompt text. ^[extracted]

### Tense Conversion
Changes the grammatical tense of the prompt while preserving its semantic content, potentially bypassing tense-specific filters. ^[extracted]

### URL Encoding
URL-encodes the prompt content, converting special characters to percent-encoded sequences. ^[extracted]

## Composable Strategies

Multiple strategies can be chained together for multi-layered attacks. ^[extracted] For example: tense conversion → URL encoding. The PyRIT SDK exposes these as composable building blocks that can be combined programmatically. ^[extracted]

## Effectiveness

Attack strategy effectiveness depends on the model and guardrail configuration. In the AIEF2025 demo, GPT-4.1 nano without guardrails was successfully attacked via Caesar encoding for violence-category prompts, while GPT-4o nano with guardrails enabled resisted the same attack surface. ^[extracted]

## Sources

- AI Red Teaming Agent: Azure AI Foundry — Nagkumar Arkalgud & Keiji Kanazawa, Microsoft. https://www.youtube.com/watch?v=JhJKgRAmfIU
