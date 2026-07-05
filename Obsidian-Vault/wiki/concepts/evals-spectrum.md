---
title: "The Evals Spectrum"
category: concepts
tags:
  - evals
  - evaluation-methodology
  - toolbox
  - llm-as-judge
  - heuristics
  - golden-dataset
aliases:
  - evals toolbox
  - eval types spectrum
summary: "Evals span a spectrum from cheap, high-scale code-based heuristics to expensive, high-quality human judgment. LLM-as-judge is only one tool — the full toolbox includes code evals, golden datasets, user feedback, and more."
sources:
  - "AIEF2025 - Engineering Better Evals: Scalable LLM Evaluation Pipelines That Work — Dat Ngo, Aman Khan, Arize - https://www.youtube.com/watch?v=spvXj9tnWAQ"
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/golden-datasets|Golden Datasets]]"
    type: includes
  - target: "[[concepts/llm-as-judge-evaluation|LLM as Judge Evaluation]]"
    type: includes
  - target: "[[concepts/evals-as-structured-tests|Evals as Structured Tests]]"
    type: extends
  - target: "[[concepts/evals-testing-pyramid|Evals Testing Pyramid]]"
    type: relates_to
---

# The Evals Spectrum

The **evals spectrum** is the principle that evaluation methods span a wide range from cheap, high-scale automated checks to expensive, high-quality human judgment. LLM-as-judge is only one tool in a much larger toolbox. ^[extracted]

## The Spectrum

Eval methods can be positioned along two axes: **scale** (how many things you can evaluate) and **quality** (how trustworthy the signal):

| Method | Scale | Quality | Cost |
|--------|-------|---------|------|
| Code-based heuristics | Very high | Context-dependent | Very low |
| LLM-as-judge (autoregressive) | High | Medium | Medium-high |
| LLM-as-judge (encoder-only, e.g. BERT) | Very high | Medium-low | Low |
| User feedback | Medium | High | Low (organic) |
| Golden datasets | Low | Very high | High (manual) |

## Code-Based Evals (The Cheap End)

Code-based evals (heuristics) are the most accessible and cost-effective eval type. Examples:

- Does the output contain specific keywords?
- Does it match a regex pattern?
- Is the output parsable JSON?
- Does it conform to a schema?

These are "infinitely cheaper, faster to run" than LLM or human evals. ^[extracted]

## LLM-as-Judge (The Middle)

LLM-as-judge uses an LLM to evaluate another LLM's output. It's valuable because:

- You don't have to grade manually
- It can evaluate semantic quality (not just pattern matching)
- The original task (judge) is different from the eval task (evaluate a summary), which research shows makes LLMs good indicators ^[extracted]

Encoder-only models (BERT-type) for LLM-as-judge are ~10x cheaper and 1-2 orders of magnitude faster than autoregressive models. ^[extracted]

## Human Judgment (The Quality End)

Human judgment provides the highest quality signal through:

- **Golden datasets** — Manually graded reference sets
- **User feedback** — Organic signals from real users (~30% of teams have implemented this)

## Key Insight

"Don't just think of LLM-as-judge when you hear evals" — the full toolbox includes methods that are "actually more cost effective." ^[extracted] Strong eval strategies combine multiple methods: code-based for breadth, LLM-as-judge for semantic quality, and golden datasets for calibration.

## Sources

- AIEF2025 - Engineering Better Evals: Scalable LLM Evaluation Pipelines That Work — Dat Ngo, Aman Khan, Arize - https://www.youtube.com/watch?v=spvXj9tnWAQ
