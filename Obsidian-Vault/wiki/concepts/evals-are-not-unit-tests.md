---
title: Evals Are Not Unit Tests
tags:
- evals
- testing
- reliability
- production-ai
- llm-reliability
relationships:
- target: '[[concepts/demo-savvy-problem]]'
  type: related_to
- target: '[[concepts/fruit-letter-counter]]'
  type: illustrates
sources:
- 'https://www.youtube.com/watch?v=l8ooyedi_ls'
- 'https://www.youtube.com/watch?v=omgpvw8tbhc'
- AIEF2025 - Why should anyone care about Evals? — Manu Goyal, Braintrust - https://www.youtube.com/watch?v=jJ45Yz1lJao
summary: 'The thesis that AI application evals are fundamentally different from unit tests: 95% of an AI app''s code works 100% of the time, but the crucial 5% (the LLM) can fail unpredictably, requiring a di...'
provenance:
  extracted: 0.83
  inferred: 0.12
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
category: concepts
updated: '2026-07-04T22:20:03.229713+00:00'
---

# Evals Are Not Unit Tests

"Evals Are Not Unit Tests" is the thesis that AI application evaluation requires a fundamentally different paradigm from traditional software testing, because LLMs are inherently unreliable and non-deterministic. ^[extracted]

## The Core Problem

In a typical AI app:
- **95% of the code works 100% of the time** — unit tests, end-to-end tests, login, sign-out — all deterministic and testable
- **The crucial 5% (the LLM) can fail unpredictably** — LLMs are non-deterministic, context-dependent, and user queries are unbounded

This means traditional testing approaches leave the most critical part of the app untested. ^[inferred]

## The Fruit Letter Counter Story

[[entities/ido-pesok|Ido Pesok]] illustrated this with a fictional app called "Fruit Letter Counter" that counts letters in fruit names:

1. **First attempt**: GPT-4.1 correctly said "three" for "how many Rs in strawberry" — worked both times tested. ^[extracted]
2. **Production failure**: A user (John) asked the same question and got "two" — the model was unreliable. ^[extracted]
3. **Prompt engineering attempt**: After a night of prompt engineering (chain-of-thought, elaborate system prompts), it worked 10 times in a row in testing. ^[extracted]
4. **Production failure again**: John asked a compound query ("how many Rs in strawberry, banana, pineapple, mango, kiwi, dragon fruit, apple, raspberry") and got "five" — wrong again. ^[extracted]

The lesson: no amount of testing on a fixed set of queries guarantees production reliability when the model is non-deterministic and user queries are unbounded. ^[inferred]

## Why This Matters

"No one is going to use something that doesn't work. It's literally unusable." ^[extracted] The demo-savvy nature of AI apps — great in demos, broken in production — is a fundamental challenge that unit tests alone cannot solve. ^[extracted]

## Tang's Refinement: Brittleness vs Non-Determinism

[[entities/leonard-tang|Leonard Tang]] (Haize Labs) at AIEF2025 refined this thesis by distinguishing two properties often conflated as "AI is unreliable": ^[extracted]

- **Non-determinism** (temperature > 0, caching quirks) — manageable by setting temperature to zero and using deterministic workflows
- **Brittleness** (Lipschitz discontinuity) — tiny input perturbations cause wildly different outputs, even at temperature zero

The demo-savvy problem is driven primarily by brittleness, not non-determinism. A static eval dataset (the unit test analog) cannot capture brittleness because it only tests the specific inputs in the dataset, not the dense perturbations around them that reveal discontinuities. ^[inferred]

This means evals must go beyond static golden datasets to cover the input space more densely — which is precisely what [[concepts/fuzz-testing-ai|fuzz testing]] proposes. ^[inferred]

## The Solution: Application-Layer Evals

The talk proposes building evals at the application layer, using a basketball court metaphor to map the difficulty spectrum of user queries and systematically improve the system across that spectrum. ^[extracted] See [[concepts/application-layer-evals|Application-Layer Evals]] for the full framework. ^[inferred]

## The Self-Driving Car Analogy

[[entities/manu-goyal|Manu Goyal]] ([[entities/braintrust|Braintrust]]) illustrated this thesis with his experience in the self-driving car industry: ^[extracted]

> "You can spend all day tuning the model, changing the architecture, adjusting the loss function, all good stuff. But it's never going to be enough for you to actually ship it to production."

Model-level metrics (image classification rate going from 98% to 99%) do not tell you whether the system works in the real world: does it avoid pedestrians? Negotiate traffic scenarios? Obey the law? ^[extracted] This is the same gap in LLM applications — model tuning alone is insufficient; you need application-level evals that measure whether the AI actually solves the user's problem. ^[inferred]

## Related

- [[concepts/application-layer-evals|Application-Layer Evals]] — The evaluation paradigm this thesis motivates
- [[concepts/reliability-over-intelligence|Reliability Over Intelligence]] — Why reliability matters more than model capability
- [[concepts/agent-reliability-challenge|Agent Reliability Challenge]] — The broader problem this thesis addresses
- [[concepts/eval-dataset-strategy|Eval Dataset Strategy]] — How to build the dataset that makes evals effective
- [[concepts/fuzz-testing-ai|Fuzz Testing in AI]] — Tang's proposed approach for dense input-space coverage
- [[concepts/evals-must-be-engineered|Evals Must Be Engineered]] — Lesson 2 from Ankur Goyal's five lessons
- [[concepts/evals-play-offense|Evals Play Offense]] — Lesson 3: using evals for strategic discovery
- [[concepts/system-level-optimization|System-Level Optimization]] — Lesson 5: optimize the whole system
- [[references/aief2025-five-hard-earned-lessons-evals-ankur-goyal-braintrust|Five Hard Earned Lessons About Evals]] — full five-lesson framework
- [[concepts/eval-baseline-first|Eval Baseline First]] — Starting point: create a baseline before perfecting datasets
