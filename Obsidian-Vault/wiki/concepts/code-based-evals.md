---
title: "Code-Based Evals"
category: concepts
tags:
  - evals
  - heuristics
  - code-evals
  - deterministic-evals
  - evaluation-methodology
aliases:
  - code evals
  - heuristic evals
  - deterministic evals
summary: "Cheap, fast, deterministic evaluation methods using code logic (regex, keyword matching, JSON parsing) instead of LLMs or humans. The most accessible and cost-effective eval type."
sources:
  - "AIEF2025 - Engineering Better Evals: Scalable LLM Evaluation Pipelines That Work — Dat Ngo, Aman Khan, Arize - https://www.youtube.com/watch?v=spvXj9tnWAQ"
provenance:
  extracted: 0.90
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/evals-spectrum|The Evals Spectrum]]"
    type: component-of
  - target: "[[concepts/llm-as-judge-evaluation|LLM as Judge Evaluation]]"
    type: contrasts-with
  - target: "[[concepts/golden-datasets|Golden Datasets]]"
    type: complements
  - target: "[[concepts/evals-as-structured-tests|Evals as Structured Tests]]"
    type: implements
---

# Code-Based Evals

**Code-based evals** (also called heuristic evals) are deterministic evaluation methods that use code logic instead of LLMs or humans to assess AI system outputs. They are "infinitely cheaper, faster to run" than other eval types. ^[extracted]

## Examples

Common code-based eval patterns:

- **Keyword matching** — Does the output contain specific keywords?
- **Regex patterns** — Does the output match a required pattern?
- **JSON parsing** — Is the output valid, parsable JSON?
- **Schema validation** — Does the output conform to a defined schema?
- **Length checks** — Is the output within acceptable length bounds?
- **Format checks** — Does the output follow a required format?

## Advantages

- **Cost**: Near-zero marginal cost per evaluation
- **Speed**: Run in milliseconds, not seconds or minutes
- **Determinism**: Same input always produces the same result
- **Simplicity**: Easy to write, debug, and maintain
- **Coverage**: Can evaluate every single output, not just samples

## Limitations

- **Semantic blindness**: Cannot evaluate meaning, tone, or relevance
- **Context dependency**: A keyword check may pass for the wrong reason
- **Brittleness**: Regex patterns break when output formats change

## Role in the Evals Toolbox

Code-based evals should be the **first line of defense** in any eval pipeline — catching obvious failures cheaply before running more expensive LLM-as-judge or human evals. ^[extracted]

They sit at the high-scale, low-cost end of the [[concepts/evals-spectrum|evals spectrum]], complementing higher-quality but more expensive methods. ^[inferred]

## Sources

- AIEF2025 - Engineering Better Evals: Scalable LLM Evaluation Pipelines That Work — Dat Ngo, Aman Khan, Arize - https://www.youtube.com/watch?v=spvXj9tnWAQ
