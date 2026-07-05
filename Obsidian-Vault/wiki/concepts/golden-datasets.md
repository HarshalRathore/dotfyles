---
title: "Golden Datasets"
category: concepts
tags:
  - evals
  - golden-dataset
  - ground-truth
  - quality
  - evaluation-methodology
aliases:
  - golden dataset
  - golden sets
summary: "Manually graded, trusted reference datasets used to calibrate and quantify the accuracy of automated evals like LLM-as-judge. Represents quality in the scale-vs-quality evals framework."
sources:
  - "AIEF2025 - Engineering Better Evals: Scalable LLM Evaluation Pipelines That Work — Dat Ngo, Aman Khan, Arize - https://www.youtube.com/watch?v=spvXj9tnWAQ"
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/llm-as-judge-evaluation|LLM as Judge Evaluation]]"
    type: validates
  - target: "[[concepts/evals-as-structured-tests|Evals as Structured Tests]]"
    type: provides-ground-truth-for
  - target: "[[concepts/llm-evaluation-framework|LLM Evaluation Framework]]"
    type: component-of
---

# Golden Datasets

**Golden datasets** are manually graded, trusted reference datasets used to calibrate and quantify the accuracy of automated evaluation methods — particularly LLM-as-judge. They represent the quality end of the evals spectrum, as opposed to the scale end. ^[extracted]

## The Scale vs. Quality Framework

[[entities/dat-ngo|Dat Ngo]] frames the evals toolbox along two dimensions:

- **Scale** — How many evaluations can you run cheaply? (LLM-as-judge wins here)
- **Quality** — How trustworthy is the signal? (Golden datasets win here)

The strategic insight: use LLM-as-judge for scale, but validate and tune it against golden datasets for quality. ^[extracted]

## How Golden Datasets Work

1. **Manual grading** — Humans grade a representative sample of inputs and outputs
2. **Ground truth** — The grades represent what you trust most (human judgment)
3. **Calibration** — Run your LLM-as-judge on the same golden dataset
4. **Quantification** — Compare LLM judge scores against human grades to measure accuracy
5. **Tuning** — Adjust the LLM judge prompt or model based on the calibration results

This process allows you to "quantify and tune your LLM-as-judge" — determining whether the automated judge approximates the human judgment you trust. ^[extracted]

## Relationship to Other Eval Types

Golden datasets sit at the intersection of several eval concepts:

- **vs. LLM-as-judge**: Golden datasets provide the ground truth that LLM judges are calibrated against
- **vs. code-based heuristics**: Golden datasets are expensive to build but provide high-quality signal; heuristics are cheap but context-limited
- **vs. user feedback**: Both are human-derived, but golden datasets are curated and controlled while user feedback is organic and uncontrolled

## Why Golden Datasets Matter

Without golden datasets, LLM-as-judge operates without calibration — you have no way to know whether the judge's scores correlate with actual quality. Golden datasets solve this by providing a trusted reference point. ^[extracted]

This is described as a "pro tip" used by "most really strong LLM teams in the world." ^[extracted]

## Sources

- AIEF2025 - Engineering Better Evals: Scalable LLM Evaluation Pipelines That Work — Dat Ngo, Aman Khan, Arize - https://www.youtube.com/watch?v=spvXj9tnWAQ
