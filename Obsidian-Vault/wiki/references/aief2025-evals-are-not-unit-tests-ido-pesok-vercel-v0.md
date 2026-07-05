---
title: "AIEF2025 - Evals Are Not Unit Tests — Ido Pesok, Vercel v0"
tags:
  - aief2025
  - evals
  - testing
  - production-ai
  - vercel
  - talk
sources:
  - "[[sources/watchv=l8ooyedi_ls]]"
summary: "Ido Pesok (Vercel) explains why AI application evals differ fundamentally from unit tests, using a basketball court metaphor for building eval datasets."
provenance:
  extracted: 0.95
  inferred: 0.03
  ambiguous: 0.02
base_confidence: 0.80
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-05
relationships:
  - target: "[[entities/ido-pesok]]"
    type: authored_by
  - target: "[[entities/vzero]]"
    type: about
  - target: "[[concepts/fruit-letter-counter]]"
    type: introduces
  - target: "[[concepts/basketball-court-metaphor]]"
    type: introduces
  - target: "[[concepts/demo-savvy-problem]]"
    type: introduces
---

# AIEF2025 - Evals Are Not Unit Tests — Ido Pesok, Vercel v0

## TL;DR

Ido Pesok, an engineer at Vercel working on vZero, delivers an introduction to evals at the application layer. Using a fictional "Fruit Letter Counter" app as a running example, he demonstrates why LLMs are inherently unreliable and why application-layer evals — not model benchmarks or unit tests — are needed to make AI apps work for real users. He introduces a basketball court metaphor for eval datasets, explains the "constants in data, variables in task" pattern, advocates deterministic scoring, and recommends integrating evals into CI. ^[extracted]

## Speaker

[[entities/ido-pesok|Ido Pesok]] — Engineer at [[entities/vercel|Vercel]] working on [[entities/vzero|vZero]], a full-stack vibe coding platform. At the time of the talk, vZero had crossed 100 million messages sent. ^[extracted]

## Problem Statement

LLMs are unreliable by nature. An AI app can work perfectly in demo (tested twice, worked both times) and fail in production with a single user query. ^[extracted] The "demo-savvy" nature of AI apps — great demos, broken production — is a fundamental challenge. ^[extracted] In production, approximately 95% of an AI app's code works 100% of the time, but that crucial 5% (the LLM) can fail unpredictably. ^[extracted]

## The Fruit Letter Counter Story

Ido illustrated the problem with a fictional app that counts letters in fruit names:

1. V0 (vZero) generated the app using the AI SDK. GPT-4.1 correctly answered "three" for "how many Rs in strawberry" — worked twice in testing. ^[extracted]
2. After launching, user John reported it said "two" for the same question. ^[extracted]
3. After prompt engineering (chain-of-thought, elaborate system prompts), it worked 10 times in a row in testing. ^[extracted]
4. John asked a compound query ("strawberry, banana, pineapple, mango, kiwi, dragon fruit, apple, raspberry") and got "five" — wrong again. ^[extracted]

The lesson: testing on a fixed set of queries doesn't guarantee production reliability when the model is non-deterministic and user queries are unbounded. ^[inferred]

## The Basketball Court Metaphor

The talk's central visualization: evaluating an AI app is like basketball practice on a court. ^[extracted]

- **The basket** = the golden circle (correct answer)
- **Data points** = positions on the court (user queries), with distance from the basket representing difficulty
- **Blue** = shot made (correct answer)
- **Red** = shot missed (incorrect answer)
- **Out of bounds** = queries outside the app's domain (e.g., "how many syllables are in caret" for a fruit counter)

Key insight: you must understand your court before building evals. ^[extracted]

## Eval Ingredients Framework

Ido formalized evals into three components, mapped to the basketball metaphor: ^[extracted]

| Component | Basketball Metaphor | Description |
|---|---|---|
| **Data** | The point on the court | User queries to test against |
| **Task** | The shot | How you shoot the ball (system prompt, RAG, preprocessing) |
| **Score** | Did it go in the basket | Check of correctness (pass/fail) |

## Key Principles

### 1. Understand Your Court

The most important step. Map boundaries, collect real user queries, and understand where your system succeeds vs fails. ^[extracted]

### 2. Avoid the Out-of-Bounds Trap

Don't spend time building evals for data your users don't care about. ^[extracted]

### 3. Avoid Concentrated Points

Don't have a concentrated set of test cases. Distribute across the entire court. ^[extracted]

### 4. Constants in Data, Variables in Task

Put constant user queries in the dataset; put what you're testing (system prompts, RAG, preprocessing) in the task. This enables clarity, reuse, and generalization. ^[extracted]

### 5. Share Code Between Evals and Production

Use the same middleware (e.g., Vercel AI SDK middleware) for both production and evals. Practice should be as similar as possible to the real game. ^[extracted]

### 6. Prefer Deterministic Scoring

Lean toward deterministic pass/fail scoring. Complex scores are hard to debug, share, and distribute. ^[extracted]

### 7. Add Structured Output Hints

For harder-to-score outputs, add a prompt hint like "output your final answer in these answer tags" to make string matching easy. ^[extracted]

### 8. Run Evals in CI

Integrate evals into CI/CD pipelines. Use tools like Braintrust to generate reports showing improvements and regressions across the entire dataset when PRs are submitted. ^[extracted]

## Q&A Highlights

- **How often to run evals?** Daily or at least on some schedule. Running every day gives a good sense of where you're failing and whether regressions occurred. ^[extract0ed]
- **What's the pass rate?** The speaker ran a query five times and got 4/5 or 5/5 passes — illustrating the inherent non-determinism of LLMs. ^[extracted]
- **Does difficulty scale with distance?** Yes — as you go farther from the basket (harder queries), the pass rate drops. ^[extracted]

## Key Quotes

> "Improvement without measurement is limited and imprecise." ^[extracted]

> "No one is going to use something that doesn't work. It's literally unusable." ^[extracted]

> "95% of our app works 100% of the time. We can have unit tests for every single function... But it's that most crucial 5% that can fail on us." ^[extracted]

## Related Pages

- [[concepts/evals-are-not-unit-tests|Evals Are Not Unit Tests]] — The thesis introduced in this talk
- [[concepts/application-layer-evals|Application-Layer Evals]] — The broader evaluation paradigm
- [[concepts/eval-dataset-strategy|Eval Dataset Strategy]] — Building eval datasets
- [[concepts/constants-in-data|Constants in Data, Variables in Task]] — Eval design pattern
- [[concepts/deterministic-eval-scoring|Deterministic Eval Scoring]] — Scoring principles
- [[concepts/evals-in-ci|Evals in CI]] — CI/CD integration
- [[entities/ido-pesok|Ido Pesok]] — Speaker
- [[entities/vzero|vZero]] — Platform discussed
- [[entities/braintrust|Braintrust]] — Eval platform referenced
