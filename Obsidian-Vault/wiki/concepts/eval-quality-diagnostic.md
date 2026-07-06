---
title: Eval Quality Diagnostic
category: concepts
tags:
- evals
- diagnostics
- debugging
- methodology
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
- target: '[[concepts/eval-quality-matrix|Eval Quality Matrix]]'
  type: elaborates
- target: '[[concepts/eval-baseline-first|Eval Baseline First]]'
  type: uses
- target: '[[concepts/eval-driven-iteration|Eval-Driven Iteration]]'
  type: guides
summary: Eval Quality Diagnostic
---

# Eval Quality Diagnostic

The eval quality diagnostic is the practice of interpreting eval results to determine where to invest improvement effort: the AI application or the evaluation itself. It is operationalized through the [[concepts/eval-quality-matrix|Eval Quality Matrix]]. ^[extracted]

## The Diagnostic Question

Every eval run raises a fundamental question: "Is the problem with my AI app or with my eval?" The diagnostic framework answers this by cross-referencing human judgment with automated scores. ^[extracted]

## The Diagnostic Flow

1. **Run the eval** — Execute the task against the dataset
2. **Human review** — Subject matter experts judge the quality of representative outputs
3. **Compare** — Map human judgment against eval scores
4. **Decide** — The matrix tells you whether to improve the app or the eval

> "If you think it's a good output but it's a low score, then that's a signal that you need to improve your evals. If it's a bad output but a high score, same thing. And then finally, if it's a bad output and a low score, your evals are working correctly. That's good. And now you need to focus on improving your AI app." ^[extracted]

## Diagnostic Outcomes

| Human Judgment | Eval Score | Diagnosis | Action |
|---|---|---|---|
| Good | High | Evals working | Continue iteration on app |
| Good | Low | Evals misaligned | Improve the eval/scorer |
| Bad | High | Evals missing defects | Improve the eval/scorer |
| Bad | Low | Evals catching issues | Improve the AI app |

## When to Run Diagnostics

- **After initial baseline** — Verify that the baseline evals are aligned with human judgment
- **After score changes** — When modifying scorers, re-diagnose to confirm alignment
- **After app changes** — When the app changes significantly, re-diagnose to confirm scores still match human judgment
- **Periodically** — Human judgment evolves; evals should be recalibrated

## Related

- [[concepts/eval-quality-matrix|Eval Quality Matrix]] — The 2x2 framework for diagnostics
- [[concepts/eval-baseline-first|Eval Baseline First]] — Diagnostics start after baseline is established
- [[concepts/eval-driven-iteration|Eval-Driven Iteration]] — Diagnostics guide what to iterate on
