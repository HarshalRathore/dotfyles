---
title: Holistic Eval Framework
category: concepts
tags:
- evals
- benchmarking
- multi-metric
- ai-search
- aief2025
aliases:
- holistic evaluation
- multi-dimensional evals
sources:
- 'AIEF2025 - Evaluating AI Search: A Practical Framework for Augmented AI Systems — Quotient AI + Tavily - https://www.youtube.com/watch?v=wRJD0inpmjU'
provenance:
  extracted: 0.9
  inferred: 0.06
  ambiguous: 0.04
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
- target: '[[concepts/llm-evaluation-framework]]'
  type: extends
- target: '[[concepts/evals-spectrum]]'
  type: uses
- target: '[[concepts/reference-free-evaluation]]'
  type: incorporates
summary: Holistic Eval Framework
---

# Holistic Eval Framework

A **holistic eval framework** is an evaluation approach that measures AI search systems across multiple dimensions beyond simple accuracy. The core principle: you should measure accuracy, but not stop there. ^[extracted]

## Dimensions of Holistic Evaluation

A holistic framework for AI search evaluation includes: ^[extracted]

1. **Accuracy** — Does the system return correct answers? (measured via benchmarks like SimpleQA)
2. **Source diversity** — Does the system draw from a varied set of sources, or does it converge on the same few? Diverse sourcing reduces bias and increases robustness.
3. **Source relevancy** — Are the retrieved sources actually relevant to the query, beyond just being factually correct?
4. **Hallucination rates** — How often does the system generate information not grounded in the retrieved sources?

## Beyond Accuracy: Reference-Free Evaluation

A holistic framework also leverages **reference-free (unsupervised) evaluation methods** that remove the need for labeled ground-truth data. This enables two key advantages: ^[extracted]

- **Scale** — Evaluated systems can be assessed continuously without manual labeling
- **Subjectivity handling** — When absolute truth is hard to pin down, reference-free methods provide fairer evaluation

## Static vs Dynamic Benchmarking Comparison

The Quotient AI + Tavily collaboration demonstrated that static and dynamic benchmarks can produce very different results for the same search providers. Using SimpleQA (static) vs a dynamically generated benchmark of ~1,000 rows, they showed that static benchmarking is not a comprehensive method for evaluating AI search — providers that score well on static sets may perform differently on dynamic ones, and vice versa. ^[extracted]

## Related

- [[concepts/llm-evaluation-framework]] — Broader evaluation framework
- [[concepts/dynamic-eval-sets]] — Dynamic benchmarking component
- [[concepts/reference-free-evaluation]] — Reference-free metrics component
- [[concepts/evals-spectrum]] — Positioning holistic eval on the evals spectrum
