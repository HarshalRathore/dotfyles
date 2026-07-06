---
title: Explicit Intent Communication
tags:
- agent-communication
- prompt-crafting
- copilot
- human-ai-collaboration
- aief2025
- github
summary: The principle of communicating intent explicitly to AI coding agents — don't be passive-aggressive, don't expect agents to infer unstated requirements, and share context incrementally through natur...
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
- target: '[[concepts/ai-pair-programmer-analogy|AI Pair Programmer Analogy]]'
  type: implements
- target: '[[concepts/code-quality-as-context|Code Quality as Context]]'
  type: complements
- target: '[[concepts/prompt-crafting|Prompt Crafting]]'
  type: extends
category: concepts
sources: []
---

# Explicit Intent Communication

**Explicit intent communication** is the principle of communicating your goals, constraints, and requirements clearly and directly to AI coding agents — rather than expecting them to infer unstated intentions from terse prompts. ^[extracted]

## The Core Advice

[[entities/christopher-harrison|Christopher Harrison]] of GitHub gives this direct advice: "Don't be passive aggressive with Copilot." ^[extracted]

The pattern he observes: new developers send a very short prompt, then wonder why Copilot didn't figure out part of the task. The answer is usually simple — they didn't tell Copilot about that part. ^[extracted]

> "If there's an important piece of information that you need Copilot to consider, go ahead and make sure that you tell Copilot that." ^[extracted]

## Why Terse Prompts Fail

Many developers come from older chatbot experiences where terse, command-line-like prompts were necessary because the tools couldn't process natural language well. Copilot is not built for that paradigm. ^[extracted]

It's built for natural language conversation with growing context — the same way humans collaborate with other humans. ^[extracted]

## The Iterative Model

Explicit intent communication works through an iterative model: ^[extracted]

1. Start with a broad goal
2. Add detail as it becomes relevant
3. Refine based on what the agent produces
4. Correct course when needed

This mirrors how a human pair programmer works — you don't need to explain everything upfront because the conversation naturally surfaces new requirements. ^[inferred]

## Relationship to Code Quality

Explicit intent communication is the conversational counterpart to [[concepts/code-quality-as-context|code quality as context]]. Where code quality makes the codebase readable for the agent, explicit intent communication makes the task requirements readable. ^[inferred] Together, they form the two halves of effective agent collaboration. ^[inferred]

## Sources

- AIEF2025 — The Agent Awakens: Collaborative Development with Copilot, Christopher Harrison, GitHub. https://www.youtube.com/watch?v=tHJSZ1-ZqcA
