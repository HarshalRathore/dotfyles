---
title: Codex Abuse Pattern
category: concepts
tags:
- codex
- account-cycling
- model-abuse
- early-ai
- openai
- lean-startup
sources:
- AIEF2025 - The New Lean Startup — Sid Bendre, Olive - https://www.youtube.com/watch?v=pQz-PgA1eJw
provenance:
  extracted: 0.75
  inferred: 0.2
  ambiguous: 0.05
base_confidence: 0.78
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: peripheral
created: 2026-07-05 00:00:00+00:00
updated: 2026-07-05 00:00:00+00:00
relationships:
- target: '[[entities/olive]]'
  type: related_to
- target: '[[entities/openai]]'
  type: related_to
- target: '[[concepts/super-tools]]'
  type: related_to
summary: Codex Abuse Pattern
---

# Codex Abuse Pattern

The practice of cycling through multiple user accounts to bypass rate limits and access restrictions on AI models — specifically, the early use of OpenAI's Codex model (initially designed as a coding assistant) as a general-purpose conversation model by cycling through 10 different accounts.^[extracted]

## The Pattern

In early 2023, the Codex model was in beta preview and could be prompt-engineered for open-domain conversation tasks beyond its intended coding use case.^[extracted] Olive's team cycled through 10 different accounts created from friends to generate AI outputs, effectively sharing a single quota across multiple identities.^[extracted]

## The Consequence

OpenAI directly reached out to several of their accounts, identifying them as top Codex users and eventually sunset the model for abuse.^[extracted] This is an example of the cat-and-mouse game between early AI adopters and model providers trying to prevent misuse.^[inferred]

## Broader Implications

This pattern highlights a structural tension in early AI adoption: when models are accessible but constrained, users find workarounds that providers view as abuse.^[inferred] It also illustrates why early AI startups had to build resilience into their AI dependencies — relying on a single model provider with volatile access policies is a single point of failure.^[inferred]

## Sources

- [[references/aief2025-the-new-lean-startup-sid-bendre-olive|AIEF2025 — The New Lean Startup: Sid Bendre, Olive]]
