---
title: Eval Baseline First
category: concepts
tags:
- evals
- methodology
- getting-started
- production-ai
- braintrust
sources:
- AIEF2025 - Evals 101 — Doug Guthrie, Braintrust - https://www.youtube.com/watch?v=bk0TmxoZlUY
provenance:
  extracted: 0.9
  inferred: 0.05
  ambiguous: 0.05
base_confidence: 0.8
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/eval-flywheel-effect|Eval Flywheel Effect]]'
  type: precedes
- target: '[[concepts/eval-quality-matrix|Eval Quality Matrix]]'
  type: enables
- target: '[[concepts/eval-driven-development|Eval-Driven Development]]'
  type: relates_to
summary: Eval Baseline First
---

# Eval Baseline First

The "baseline first" principle states that teams should start evaluating immediately with whatever data they have, rather than getting stuck trying to create a perfect golden dataset. A baseline is the foundation that all subsequent improvement builds upon. ^[extracted]

## The Problem: Golden Dataset Paralysis

A common pattern is teams spending excessive time creating comprehensive golden test datasets before running any evals. This delays feedback and prevents the flywheel from starting. The baseline-first approach rejects this: start small, establish a foundation, then improve iteratively. ^[extracted]

## The Principle

> "Just get started. Create that baseline that you can then iterate and build from." ^[extracted]

This means:

1. **Start with what you have** — Even a small set of real user interactions is better than no evals
2. **Establish a foundation** — Run your first evals against this baseline to understand current performance
3. **Iterate from there** — Use the baseline as a reference point for measuring improvement as you add more test cases and refine scoring

## The Eval Quality Matrix as a Diagnostic

The baseline-first approach works hand-in-hand with the [[concepts/eval-quality-matrix|Eval Quality Matrix]] diagnostic:

| Situation | Action |
|---|---|
| Good output, low score | Improve your evals |
| Bad output, high score | Improve your evals or scoring |
| Bad output, low score | Evals working correctly — improve the AI app |

This matrix tells teams where to target their effort once a baseline exists. ^[extracted]

## Relationship to Other Concepts

Baseline-first is the practical starting point for [[concepts/eval-driven-development|eval-driven development]]. Without a baseline, there is nothing to measure improvement against. The baseline is the seed from which the [[concepts/eval-flywheel-effect|eval flywheel]] grows.

## Sources

- AIEF2025 - Evals 101 — Doug Guthrie, Braintrust - https://www.youtube.com/watch?v=bk0TmxoZlUY
