---
title: "Prompt Shields"
category: concepts
tags:
  - prompt-shields
  - guardrails
  - prompt-injection
  - defense
  - azure-ai-foundry
  - microsoft
aliases: [prompt injection defense, prompt shields]
relationships:
  - target: "[[concepts/guardrails-content-filters]]"
    type: extends
  - target: "[[concepts/attack-strategies]]"
    type: related_to
  - target: "[[concepts/prompt-injection]]"
    type: related_to
sources:
  - "[[sources/watchv=jhjkgramfiu]]"
provenance:
  extracted: 0.70
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.70
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# Prompt Shields

Prompt shields are a specialized guardrail feature in [[entities/azure-ai-foundry|Azure AI Foundry]] designed to defend against prompt-based attacks, particularly those used in [[concepts/ai-red-teaming|AI red teaming]]. ^[extracted]

## Purpose

Prompt shields target the class of attacks where adversarial prompts are crafted to bypass content filters — such as string reversal, base64 encoding, Caesar ciphers, and context injection. ^[extracted] They operate as part of the input filtering layer, intercepting and neutralizing these obfuscated prompts before they reach the model. ^[inferred]

## Relationship to Guardrails

Prompt shields are a subset of [[concepts/guardrails-content-filters|guardrails]], specifically focused on prompt injection and adversarial prompt patterns rather than general content moderation. ^[inferred]

## Sources

- AI Red Teaming Agent: Azure AI Foundry — Nagkumar Arkalgud & Keiji Kanazawa, Microsoft. https://www.youtube.com/watch?v=JhJKgRAmfIU
