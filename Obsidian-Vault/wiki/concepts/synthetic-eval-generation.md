---
title: Synthetic Eval Generation
tags:
- ai
- evaluation
- llm
- testing
- synthetic-data
sources:
- 'https://www.youtube.com/watch?v=mc55hdwlq4o'
provenance:
  extracted: 0.72
  inferred: 0.23
  ambiguous: 0.05
base_confidence: 0.58
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
category: concepts
summary: Synthetic Eval Generation
---

# Synthetic Eval Generation

Rather than manually writing test cases, use a capable LLM (such as O3) to generate an evaluation dataset from the source materials that define your domain. This enables comprehensive test coverage at a fraction of the manual effort. ^[extracted]

## The Process

1. Provide the source materials (FAQs, documentation, knowledge base) as context to a capable LLM
2. Specify the personas the system needs to serve — different users may ask the same question in completely different ways but expect the same correct answer
3. The LLM generates realistic user questions and, for each question, a specific criteria checklist of information the answer must contain
4. Generate variations of each question to test robustness against different phrasings and edge cases ^[inferred]

## Persona-Based Testing

Different user personas ask the same question in different ways. A teenager, a senior, and a business professional asking "how do I reset my password?" will phrase it differently, but they all expect the same correct answer. Synthetic generation accounts for this by creating question variations across defined personas. ^[extracted]

## Criteria Extraction

For each generated question, the LLM identifies specific pieces of information that must appear in the correct answer. For example, a password reset answer must mention SMS code verification and what to do if the user doesn't have a mobile number. These become the [[concepts/checklist-based-evaluation|evaluation criteria checklist]]. ^[extracted]

## Tool Independence

This approach is methodology-dependent, not platform-dependent. [[entities/multinear|Multinear]], the open-source evaluation platform built by [[entities/dmitry-kuchin|Dmitry Kuchin]], implements this workflow, but the technique can be reproduced with any LLM and evaluation framework. ^[extracted]

## Related
- [[concepts/loop-automated-eval-optimization|Loop — Automated Eval Optimization Agent]] — uses synthetic eval generation as part of its optimization triad
- [[concepts/cloud-4-model-breakthrough|Cloud 4 Model Breakthrough]] — the model enabling synthetic eval generation at scale
- [[references/aief2025-the-future-of-evals-ankur-goyal-braintrust|The Future of Evals — AIEF2025 Talk]] — Cloud 4's 6x improvement in eval tasks
## Sources

- [[references/ai-eng-worlds-fair-2025-talk-practical-tactics-reliable-ai|Practical tactics to build reliable AI apps — Dmitry Kuchin, Multinear]] — Conference talk
