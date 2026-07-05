---
title: "Feeling the Material"
tags:
  - ai
  - design
  - methodology
  - ux
  - prototyping
sources:
  - "[[sources/watchv=cimvknx-cni]]"
summary: "Woodworking-inspired design philosophy for AI product development: understand model properties through direct interaction and hands-on prototyping rather than through layers of mockups, specs, and click-through prototypes."
provenance:
  extracted: 0.70
  inferred: 0.28
  ambiguous: 0.02
base_confidence: 0.60
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Feeling the Material

"Feeling the material" is a design philosophy articulated by [[entities/craig-wattrus|Craig Wattrus]] of [[entities/flatfile|Flatfile]], drawing from his experience as a woodworker. The core idea: when designing with a physical material, you must understand its properties through direct touch and manipulation. The same applies to AI — you must directly interact with models to understand their capabilities, tendencies, and feel, rather than designing through layers of abstraction.

## The Core Idea

Traditional software design operates through mediated layers: mockups, click-through prototypes, PRDs, requirement specifications. These layers create distance between the designer and the material being designed. Wattrus argues that AI design needs to bypass these layers and work directly with the model: "We need to go feel the material — feel how these models work." ^[extracted]

## Practical Application

### Making v0 Prototypes

Wattrus built several quick prototypes to explore model properties: ^[extracted]

- **Chat tuner** — a tool for experimenting with system prompt parameters to feel how different personality settings affect model behavior
- **Cursor experiment** — giving an AI a cursor/trackpad to operate design tools, exploring what model agency feels like in a familiar interface
- **Forward-leaning agent prototype** — dropping files into an environment and observing what the model does unprompted (combined files, wrote reports, found duplicates)

### The Cursor Lesson

Wattrus gave an AI a cursor to interact with design tools. For a few seconds it felt "like touching AGI," but quickly became constraining — "like putting a Formula One driver in a Prius" — because the model could only move one thing at a time and was constrained by human interaction patterns. ^[extracted] The lesson: the right form factor amplifies model capabilities; the wrong one constrains them. ^[inferred]

## Finding the Grain

A companion concept: once you understand the material's characteristics through feeling it, you find its grain — where it is smooth and rough, weak and strong. The design work is then working with those characteristics rather than against them. ^[extracted]

## Moving from Determinism to Inference

A key mental shift in feeling the material: moving from deterministic to inference-based design. Traditional software engineering demands deterministic behavior — same inputs, same outputs. AI design requires understanding what the model tends to do, what it's capable of, and designing form factors that work with those tendencies. ^[extracted]

## North Star

Wattrus's new north star for AI design: "Treating an environment for these LLMs to shine — what's this form factor that can help them nail their assignment, stay aligned, and grow as the models get better?" ^[extracted]

## Relationship to Other Concepts

- [[concepts/ai-coworker-form-factors]] — Form factors are the output of feeling the material; you can't choose the right form factor without understanding model properties
- [[concepts/finding-the-grain]] — Complementary concept: working with model characteristics after understanding them
- [[concepts/character-coach-approach]] — Character coaching is one way to feel the material at the personality level
- [[concepts/gardening-as-design-paradigm]] — Related non-deterministic design paradigm: tending systems rather than specifying them
- [[concepts/bitter-design-lesson]] — The bitter lesson (that general methods scale better than hand-crafted solutions) is part of feeling the material over time
- [[entities/v0|v0 by Vercel]] — Example of a tool that lets designers feel the material through generative UI

## Open Questions

- How do you "feel the material" at scale across an organization? Is it something every designer does, or can it be systematized?
- As models improve, does the material change? How often do you need to re-feel?
- What's the right balance between feeling the material and structured evaluation?

## Sources

- [[references/aief2025-form-factors-ai-coworkers-craig-wattrus-flatfile]] — Talk at AI Engineer World's Fair 2025
