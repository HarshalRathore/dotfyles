---
title: "Demo-Driven AI Exploration"
category: concepts
tags: [ai, llm, methodology, exploration, demo, curiosity]
relationships:
  - target: "[[concepts/ai-engineering-as-excavation]]"
    type: related_to
  - target: "[[concepts/latent-model-capabilities]]"
    type: extends
sources:
  - "https://www.youtube.com/watch?v=0f8mngpuycy"
summary: "The practice of building demos as the primary methodology for discovering what AI models can do, rather than reasoning about capabilities theoretically."
provenance:
  extracted: 0.55
  inferred: 0.40
  ambiguous: 0.05
base_confidence: 0.42
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Demo-Driven AI Exploration

A methodology for AI engineering where the primary way to understand what a model can do is to build interactive demos that test capabilities. Rather than reasoning about model behavior theoretically, practitioners build small, focused demonstrations that reveal latent capabilities through direct interaction.

## Core Thesis

AI models cannot be fully understood without interacting with them. The way to explore what's possible with a model is to build things with it — and the most effective vehicle for this exploration is the demo. ^[extracted]

## Characteristics

- **Curiosity-driven, not product-driven.** The goal is exploration, not shipping. A demo succeeds if it reveals something new about the model, regardless of whether it becomes a product. ^[inferred]
- **Immediate feedback loop.** Inspired by [[entities/brett-victor|Brett Victor]]'s principle that "creators need immediate feedback," demos provide rapid interaction cycles that build intuition about model behavior. ^[extracted]
- **Reveals unexpected capabilities.** Demos often discover capabilities that even the model's creators didn't know existed — as when [[entities/openai|OpenAI]] researchers were surprised that GPT-3 could browse the web. ^[extracted]
- **Inspires possibility.** A great demo inspires others to explore, expanding the total search space across the community. ^[extracted]

## The Pattern

Shameem describes a recurring pattern in demo building: ^[extracted]

1. A great idea feels transformative and world-changing
2. Implementation reveals it seems impossible (limited by context windows, model capabilities, APIs)
3. Through sheer effort and determination, a workaround is found
4. Success brings pride and joy, revealing new understanding of the model

## The "Foggy Pond" Metaphor

Exploring AI capabilities through demos is like crossing a foggy pond: you cannot plan the route ahead of time. You take one step on a stone, see where it leads, and if it's interesting, keep going — if not, backtrack. ^[extracted]

## Community Implications

- **Share freely.** Demos shared with the community expand everyone's understanding of what models can do. ^[extracted]
- **Inspire others.** A single demo can unlock entire new categories of application (e.g., video-first AI experiences inspired by Farza's basketball tracker). ^[extracted]
- **Lower the barrier.** Simple demos that anyone can build encourage broader participation in capability discovery. ^[inferred]

## Related

- [[concepts/ai-engineering-as-excavation|AI Engineering as Excavation]] — The underlying paradigm this methodology serves
- [[concepts/latent-model-capabilities|Latent Model Capabilities]] — What demos are designed to discover
- [[concepts/vibe-coding-origins|Vibe Coding Origins]] — Early demos that established the pattern
- [[entities/sharif-shameem|Sharif Shameem]] — Proponent of the methodology
- [[entities/lexica|Lexica]] — Company building through demo-driven exploration
- [[concepts/agentic-architecture|Agentic Architecture]] — Related paradigm for structured agent design

## Sources

- [[references/on-curiosity-sharif-shameem-ai-eng-2025|On Curiosity — Sharif Shameem, Lexica (AI Engineer World's Fair 2025)]]
