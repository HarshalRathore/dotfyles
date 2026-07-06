---
title: AI Pair Programmer Analogy
tags:
- ai-pair-programmer
- copilot
- human-ai-collaboration
- mental-model
- aief2025
- github
summary: The mental model of treating GitHub Copilot as a human pair programmer — sharing context incrementally through natural conversation, rather than crafting terse prompts for a dumb tool.
provenance:
  extracted: 0.8
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
- target: '[[concepts/context-management-for-agents|Context Management for Agents]]'
  type: relates-to
- target: '[[entities/github-copilot|GitHub Copilot]]'
  type: describes
- target: '[[concepts/code-quality-as-context|Code Quality as Context]]'
  type: requires
category: concepts
sources: []
---

# AI Pair Programmer Analogy

The **AI pair programmer analogy** is the mental model of treating [[entities/github-copilot|GitHub Copilot]] as a human pair programmer — someone who reads your code, shares context incrementally, and adapts their responses as new information emerges. ^[extracted]

## Origin

[[entities/christopher-harrison|Christopher Harrison]] of GitHub introduced this framing at AI Engineer World's Fair 2025 as the primary way to think about Copilot interaction. ^[extracted]

> "You want to think about it as an AI pair programmer... not only is it wonderful marketing, it kind of is, but it's also a fantastic description of how best to think about GitHub Copilot." ^[extracted]

## The Brunch Analogy

Harrison illustrates the model with a brunch conversation:

1. Partner: "I want to go to brunch."
2. Harrison recommends a spot.
3. Partner: "Been there lately. I want somewhere new." (new context)
4. Harrison recommends another spot.
5. Partner: "Actually, I'm craving waffles." (more context emerged during conversation)
6. Harrison recommends a waffle place.

Each turn adds or refines context, and each response adapts. This is how humans collaborate with other humans — and it's how Copilot should be treated. ^[extracted]

## Practical Implications

The analogy has concrete implications for how developers interact with Copilot: ^[extracted]

- **Share context incrementally** — Don't try to provide all information in one prompt. Start broad, add detail as you go.
- **Read your code** — Copilot reads your code the way a human pair programmer would. Good names, structure, and comments matter.
- **Be explicit** — If you know something important, tell Copilot. Don't expect it to infer unstated requirements.
- **Iterate naturally** — The first suggestion won't be right. Refine through conversation, not through perfect initial prompts.

This model distinguishes Copilot from older chatbot paradigms where terse, command-line-like prompts were necessary. Copilot is built for natural language conversation with growing context. ^[extracted]

## Related Concepts

- [[concepts/code-quality-as-context|Code Quality as Context]] — The concrete practices that make code readable for AI pair programmers
- [[concepts/context-management-for-agents|Context Management for Agents]] — Active strategies for managing agent context windows
- [[concepts/prompt-crafting|Prompt Crafting]] — The narrower skill that the pair programmer model subsumes

## Sources

- AIEF2025 — The Agent Awakens: Collaborative Development with Copilot, Christopher Harrison, GitHub. https://www.youtube.com/watch?v=tHJSZ1-ZqcA
