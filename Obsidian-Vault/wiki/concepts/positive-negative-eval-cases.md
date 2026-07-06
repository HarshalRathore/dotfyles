---
title: Positive and Negative Eval Cases
category: concepts
tags:
- evaluation
- test-cases
- coverage
- edge-cases
aliases:
- positive negative eval cases
- eval case coverage
sources:
- 'AIEF2025 - How to run Evals at Scale: Thinking beyond Accuracy or Similarity — Muktesh Mishra, Adobe - https://www.youtube.com/watch?v=coKKKKh8Vns'
provenance:
  extracted: 0.9
  inferred: 0.05
  ambiguous: 0.05
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/adaptive-evals|Adaptive Evals]]'
  type: supports
- target: '[[concepts/synthetic-data-for-evals|Synthetic Data for Evals]]'
  type: relates_to
- target: '[[concepts/evals-as-structured-tests|Evals as Structured Tests]]'
  type: extends
summary: Positive and Negative Eval Cases
---

# Positive and Negative Eval Cases

Effective evals must cover both **positive cases** (expected, correct behavior) and **negative cases** (edge cases, failure modes, adversarial inputs). ^[extracted]

## Positive Cases

Positive eval cases verify that the application produces correct outputs for well-formed inputs. These are the "happy path" tests:
- Standard Q&A queries return accurate answers
- Code generation produces valid, working code
- Agent trajectories complete tasks successfully

## Negative Cases

Negative eval cases verify that the application handles unexpected or adversarial inputs gracefully:
- Ambiguous or contradictory prompts
- Missing or incomplete data
- Adversarial inputs designed to break the system
- Edge cases at the boundaries of expected behavior

## Why Both Matter

Focusing only on positive cases gives a false sense of security — the system may work well on expected inputs but fail catastrophically on edge cases. Negative cases reveal the boundaries of the system's reliability. ^[inferred]

## Dataset Design

This principle informs eval dataset design: datasets should be curated to include both positive and negative cases across all application flows, not just the most common scenarios. ^[extracted]

## Related

- [[concepts/adaptive-evals|Adaptive Evals]] — Positive/negative cases vary by application type
- [[concepts/synthetic-data-for-evals|Synthetic Data for Evals]] — Both case types can be synthetically generated
- [[concepts/evals-as-structured-tests|Evals as Structured Tests]] — Both case types are structured tests
