---
title: "LLMs Are Hard at Evals"
category: concepts
tags:
  - evals
  - llm-as-judge
  - self-evaluation
  - automated-evals
  - ai-evaluation
aliases:
  - llm-eval-difficulty
  - automated-evals-challenge
sources:
  - "AIEF2025 - [Full Workshop] Building Metrics that actually work — David Karam, Pi Labs (fmr Google Search) - https://www.youtube.com/watch?v=jxrGodnopHo"
  - "AIEF2025 - Engineering Better Evals: Scalable LLM Evaluation Pipelines That Work — Dat Ngo, Aman Khan, Arize - https://www.youtube.com/watch?v=spvXj9tnWAQ"
provenance:
  extracted: 0.85
  inferred: 0.15
  ambiguous: 0.00
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/llm-as-judge-evaluation|LLM as Judge Evaluation]]"
    type: contrasts_with
  - target: "[[concepts/eval-driven-development|Eval-Driven Development]]"
    type: motivates
  - target: "[[concepts/evals-are-not-unit-tests|Evals Are Not Unit Tests]]"
    type: relates_to
---

# LLMs Are Hard at Evals

A counterintuitive finding in AI evaluation: while LLMs can perform many human tasks, they tend to be hard at evaluating their own outputs. This makes fully automated evals — the universal goal of replacing human evaluators — significantly more difficult than expected. ^[extracted]

## The Pattern

The common approach to automation is to "lean on AI to do human tasks." This works for many domains, but evals are an exception. LLMs struggle with evaluating their own outputs because:

1. **Self-evaluation bias** — Models tend to rate their own outputs more favorably
2. **Lack of ground truth awareness** — Without explicit ground truth, models can't reliably distinguish good from bad
3. **Missing evaluation criteria** — Models need explicit quality dimensions to judge against

## Implications

This finding has significant implications for the evals labor problem:

- **Automated evals are harder than expected** — The path to replacing human evaluators is not simply "use an LLM"
- **Human-in-the-loop remains important** — At least for now, human evaluation is still necessary for reliable quality assessment
- **LLM-as-judge needs careful design** — When using LLMs as judges, explicit criteria and ground truth references are essential

Dat Ngo ([[entities/arize-ai|Arize AI]]) notes that only ~50% of practitioners use LLM-as-judge, and it's only one tool among many. The finding that LLMs are hard at evaluating their own outputs reinforces the need for the full evals toolbox: code-based heuristics, golden datasets, and user feedback provide alternative signal sources that don't suffer from self-evaluation bias. ^[extracted]

## Related

- [[concepts/llm-as-judge-evaluation|LLM as Judge Evaluation]] — Method for automated evaluation with careful design
- [[concepts/eval-driven-development|Eval-Driven Development]] — Methodology acknowledging eval difficulty
- [[concepts/evals-are-not-unit-tests|Evals Are Not Unit Tests]] — Why evals resist automation
- [[concepts/human-in-the-loop|Human-in-the-Loop]] — Human oversight in evaluation
