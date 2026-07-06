---
title: "Demo-Savvy Problem"
category: concepts
tags:
  - evals
  - production-ai
  - reliability
  - demo-vs-production
  - llm-unreliability
relationships:
  - target: "[[concepts/application-layer-evals]]"
    type: related_to
  - target: "[[concepts/evals-are-not-unit-tests]]"
    type: related_to
  - target: "[[concepts/reliability-over-intelligence]]"
    type: extends
sources:
  - "https://www.youtube.com/watch?v=l8ooyedi_ls"
  - "https://www.youtube.com/watch?v=omgpvw8tbhc"
summary: "AI apps are demo-savvy: they look great in demos and to coworkers but break in production with real user queries. Driven primarily by brittleness (Lipschitz discontinuity), not non-determinism."
provenance:
  extracted: 0.83
  inferred: 0.12
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
tier: supporting
created: 2026-07-05
updated: 2026-07-04
---

# Demo-Savvy Problem

AI apps have a unique property: they're very **demo-savvy**. You demo it, it looks super good, you show it to your coworkers, you ship to production, and then hallucinations appear. ^[extracted] This gap between demo quality and production reliability is a fundamental challenge in building AI applications. ^[inferred]

## Why It Happens

The demo-savvy problem stems from the non-deterministic nature of LLMs. A model might work perfectly in a controlled demo (tested twice, worked both times) but fail when exposed to the unbounded variety of real user queries in production. ^[extracted]

[[entities/ido-pesok|Ido Pesok]] (Vercel) illustrated this with the "Fruit Letter Counter" story at AIEF2025: ^[extracted]

1. GPT-4.1 correctly answered "three" for "how many Rs in strawberry" — worked both times tested in a demo. ^[extracted]
2. After launching, a user reported it said "two" for the same question. ^[extracted]
3. After prompt engineering, it worked 10 times in a row in testing. ^[extracted]
4. A compound query ("strawberry, banana, pineapple, mango, kiwi, dragon fruit, apple, raspberry") returned "five" — wrong again. ^[extracted]

The lesson: no amount of testing on a fixed set of queries guarantees production reliability. ^[inferred]

## Tang's Refinement: Brittleness Is the Root Cause

[[entities/leonard-tang|Leonard Tang]] (Haize Labs) at AIEF2025 refined this understanding by arguing that the demo-savvy problem is driven primarily by **brittleness** (Lipschitz discontinuity), not non-determinism. ^[extracted]

- Non-determinism (temperature > 0, caching quirks) is manageable by setting temperature to zero
- Brittleness — tiny input perturbations causing wildly different outputs — persists even at temperature zero

A static eval dataset (the unit test analog) cannot capture brittleness because it only tests the specific inputs in the dataset, not the dense perturbations around them. ^[inferred] The demo works because the demo inputs are carefully chosen; production fails because real inputs perturb the input space in ways not covered by the test set. ^[inferred]

## The Connection to Evals

The demo-savvy problem is the primary motivation for [[concepts/application-layer-evals|application-layer evals]]. Without evals, teams have no systematic way to bridge the gap between demo quality and production reliability. ^[inferred]

> "No one is going to use something that doesn't work. It's literally unusable." ^[extracted]

## Relationship to Other Concepts

- [[concepts/evals-are-not-unit-tests|Evals Are Not Unit Tests]] — The 95% problem explains why unit tests alone can't solve the demo-savvy gap
- [[concepts/reliability-over-intelligence|Reliability Over Intelligence]] — The demo-savvy problem is a manifestation of the reliability bottleneck
- [[concepts/brittleness-lipschitz-discontinuity|Brittleness and Lipschitz Discontinuity]] — Tang's reframing of the root cause
- [[concepts/fuzz-testing-ai|Fuzz Testing in AI]] — Tang's proposed approach for bridging the demo-production gap
