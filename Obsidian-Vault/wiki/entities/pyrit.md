---
title: PyRIT
category: entities
tags:
- tool
- python
- microsoft
- ai-red-teaming
- security
- open-source
aliases:
- Python Red Team Infrastructure Tool
- pyrit
relationships:
- target: '[[entities/microsoft-ai-red-team]]'
  type: implements
- target: '[[entities/azure-ai-foundry]]'
  type: uses
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
summary: PyRIT
---

# PyRIT

**PyRIT** (Python Red Team Infrastructure Tool) is an open-source [[entities/microsoft|Microsoft]] Python package developed by the [[entities/microsoft-ai-red-team|Microsoft AI Red Team]]. ^[extracted] It provides the core engine for automated adversarial testing of AI systems, and is wrapped by a hosted SDK and dashboard in [[entities/azure-ai-foundry|Azure AI Foundry]] to make it accessible to AI engineers who are not red team specialists. ^[extracted]

## Capabilities

PyRIT provides attack strategies and converters that can be composed to test AI systems: ^[extracted]

- **String reversal (Flip)** — reverses input text to bypass text-based filters
- **Base64 encoding** — encodes prompts to evade content filters
- **Caesar encoding** — character substitution cipher
- **Tense conversion** — changes grammatical tense of prompts
- **URL encoding** — URL-encodes prompt content
- **Composable strategies** — chaining multiple converters (e.g., tense conversion → URL encoding) for multi-layered attacks

These strategies are exposed via the Azure AI Foundry SDK so engineers can run automated scans against their applications and models without needing to write adversarial prompts manually. ^[extracted]

## Relationship to Azure AI Foundry

The AI Red Teaming Agent in Azure AI Foundry is essentially PyRIT wrapped in a hosted SDK with a dashboard for results visualization. ^[extracted] This makes PyRIT's capabilities accessible to AI engineers through a simple Python API rather than requiring red team expertise. ^[inferred]

## Sources

- AI Red Teaming Agent: Azure AI Foundry — Nagkumar Arkalgud & Keiji Kanazawa, Microsoft. https://www.youtube.com/watch?v=JhJKgRAmfIU
