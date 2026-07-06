---
title: "Fruit Letter Counter"
category: concepts
tags:
  - evals
  - example
  - llm-unreliability
  - production-ai
  - demonstration
relationships:
  - target: "[[concepts/evals-are-not-unit-tests]]"
    type: implements
  - target: "[[concepts/demo-savvy-problem]]"
    type: illustrates
  - target: "[[concepts/application-layer-evals]]"
    type: relates_to
sources:
  - "https://www.youtube.com/watch?v=l8ooyedi_ls"
summary: "A fictional app used by Ido Pesok at AIEF2025 to illustrate why LLMs are unreliable in production. The app counts letters in fruit names — works in demo, fails with real users."
provenance:
  extracted: 0.95
  inferred: 0.03
  ambiguous: 0.02
base_confidence: 0.85
lifecycle: draft
tier: supporting
created: 2026-07-05
updated: 2026-07-05
---

# Fruit Letter Counter

The Fruit Letter Counter is a fictional app used as a running example by [[entities/ido-pesok|Ido Pesok]] (Vercel) at AIEF2025 to illustrate why LLMs are inherently unreliable and why application-layer evals are needed. ^[extracted]

## The Story

The app's vision: make a logo with ChatGPT, have [[entities/v0|v0]] build the UI and backend, and ship. ^[extracted]

1. **First attempt**: V0 generated the app using the AI SDK. GPT-4.1 correctly answered "three" for "how many Rs in strawberry" — worked both times tested. ^[extracted]
2. **Production failure**: After launching on Twitter, user John reported it said "two" for the same question. ^[extracted]
3. **Prompt engineering**: After a night of work (chain-of-thought, elaborate system prompts like "You're an exuberant, fruit-loving AI on an epic quest"), it worked 10 times in a row in testing. ^[extracted]
4. **Production failure again**: John asked a compound query ("how many Rs in strawberry, banana, pineapple, mango, kiwi, dragon fruit, apple, raspberry") and got "five" — wrong again. ^[extracted]

## Why This Example Matters

The Fruit Letter Counter demonstrates that:

- **LLMs are non-deterministic** — same question, different answer on different runs ^[extracted]
- **Testing on a fixed set doesn't guarantee production reliability** — even 10/10 test passes can't cover unbounded user queries ^[extracted]
- **Prompt engineering has limits** — elaborate prompts work for simple cases but fail on compound queries ^[extracted]
- **95% of the app works 100% of the time** — the non-LLM code is fine, but the crucial 5% (the LLM) is unreliable ^[extracted]

## Connection to Evals

The Fruit Letter Counter story motivates the need for [[concepts/application-layer-evals|application-layer evals]] and the [[concepts/basketball-court-metaphor|basketball court metaphor]] for building eval datasets. ^[inferred]

## Sources

- [[references/aief2025-evals-are-not-unit-tests-ido-pesok-vercel-v0|AIEF2025 - Evals Are Not Unit Tests — Ido Pesok, Vercel v0]]
