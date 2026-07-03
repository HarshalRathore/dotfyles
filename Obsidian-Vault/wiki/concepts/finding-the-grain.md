---
title: "Finding the Grain"
tags:
  - ai
  - design
  - methodology
  - ux
sources:
  - "AIEF2025 - Form factors for your new AI coworkers — Craig Wattrus, Flatfile - https://www.youtube.com/watch?v=CiMVKnX-CNI"
summary: "Post-2025 AI product design concept: after feeling the material (understanding model properties), find the grain — identify where the AI is smooth/rough, weak/strong — and design form factors that work with, not against, those characteristics."
provenance:
  extracted: 0.70
  inferred: 0.28
  ambiguous: 0.02
base_confidence: 0.55
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Finding the Grain

"Finding the grain" is a design concept articulated by [[entities/craig-wattrus|Craig Wattrus]] of [[entities/flatfile|Flatfile]], extending his woodworking analogy for AI design. Once you have [[concepts/feeling-the-material|felt the material]] — understood the properties of the models you're working with — you find the grain: the natural characteristics, tendencies, and directions of the material that inform where and how to apply it.

## The Idea

In woodworking, grain determines which direction you cut and how you shape the material. Going against the grain produces splintering and poor results; working with it produces clean, strong outcomes. Wattrus applies the same thinking to AI: the design challenge is to find where the model is smooth and rough, where it is weak and strong, and design form factors that align with those characteristics. ^[extracted]

## Humility Imperative

A core insight: the material (models) changes so quickly that whatever you build will most likely need to be rebuilt. Finding the grain is an ongoing practice, not a one-time analysis. "Things are going to change and are changing so quickly that whatever we build is going to most likely need to be rebuilt." ^[extracted]

## Practical Example: Build Mode Agent UX

Wattrus showed an early version of Flatfile's build mode agent that produced a wall of text output when asked to enable automatic data mapping. The output was functionally correct (saved about a week of engineering work) but noisy. The v0 redesign rethought the interaction: ^[extracted]

Working *with* the grain (the agent's ability to reason and communicate), the redesigned interface:
- Shows visually what the agent is doing ("split personal details")
- Asks for confirmation ("is this right?")
- Makes actions reversible ("I took a snapshot, you can roll back")
- Expresses emotion (shakes its head on errors, shows frustration)
- Backs off gracefully when wrong ("handing control back over to you")

The result felt natural enough that the same conversational flow could be adapted to in-line interfaces — the grain found in one form factor transferred to another. ^[inferred]

## Relationship to Other Concepts

- [[concepts/feeling-the-material]] — Prerequisite: you must feel the material before finding the grain
- [[concepts/ai-coworker-form-factors]] — Form factors are the application of grain understanding
- [[concepts/character-coach-approach]] — Character coaching finds the grain of a model's personality
- [[concepts/agreement-alignment|Alignment]] — Finding the grain is about technical design, not safety alignment, but the metaphors overlap ^[inferred]

## Open Questions

- Can you pre-identify grain (model characteristics) at the model selection level, or is it always task-specific?
- How do you validate that you've found the right grain vs imposing your own design preferences?
- When models improve significantly, does the grain change or just the smooth/rough boundaries?

## Sources

- [[references/aief2025-form-factors-ai-coworkers-craig-wattrus-flatfile]] — Talk at AI Engineer World's Fair 2025
