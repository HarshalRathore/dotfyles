---
title: Agent Recipes
category: concepts
tags: [agent-architecture, portability, versioning, agent-loop, maker-taste]
aliases: [recipes, agent recipes, portable agent configs]
relationships:
  - target: '[[concepts/agent-loop]]'
    type: related_to
  - target: '[[concepts/polygraph]]'
    type: related_to
  - target: '[[concepts/structured-output]]'
    type: related_to
sources:
  - https://www.youtube.com/watch?v=4sX_He5c4sI
summary: Portable, versioned, provider-agnostic git repositories encoding maker taste — allowing agents to apply different makers' approaches as recipes regardless of the underlying model or tooling.
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
lifecycle_changed: 2026-07-06
tier: supporting
created: 2026-07-06T00:00:00Z
updated: 2026-07-06T00:00:00Z
---

# Agent Recipes

**Agent recipes** are portable, versioned, provider-agnostic git repositories that encode **maker taste** — the implicit preferences, patterns, and approaches that distinguish one developer's work from another. They allow agents to apply different makers' approaches as reusable "recipes" regardless of the underlying model or tooling. ^[extracted]

Presented by Roland (ex-xAI, agent infrastructure) at the AI Engineer World's Fair 2026. ^[extracted]

## The Problem

Different makers have different approaches to the same problem. Without recipes, an agent's behavior is locked to whoever built it. Recipes decouple the **approach** from the **implementation**. ^[inferred]

## Characteristics

- **Portable** — work across different models, tools, and environments
- **Versioned** — track changes to the recipe over time
- **Provider-agnostic** — not tied to any specific AI provider
- **Git-based** — stored in version control for transparency and collaboration

## Connection to Valued Work Per Watt

Recipes are a key mechanism for achieving **valued work per watt** — the idea that the future of AI belongs to those who can measure and maximize value per unit of compute. Recipes encode the "taste" that determines what counts as valuable work. ^[extracted]

## Related

- [[concepts/valued-work-per-watt|Valued Work Per Watt]] — the efficiency metric recipes optimize for
- [[concepts/agent-loop|Agent Loop]] — the execution cycle recipes configure
- [[concepts/polygraph|Polygraph]] — captures work across repos; recipes define how to do the work
- [[concepts/structured-output|Structured Output]] — contracts that make recipes machine-actionable

## Sources

- AI Engineer World's Fair 2026: https://www.youtube.com/watch?v=4sX_He5c4sI
