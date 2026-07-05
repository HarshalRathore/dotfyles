---
title: "Eval Quality Matrix"
tags:
  - concept
  - evaluation
  - methodology
  - debugging
  - diagnostics
aliases: [quality score matrix, eval diagnostic matrix, output-score matrix]
sources:
  - "[[sources/watchv=9in-cpnp7xg]]"
  - "AIEF2025 - Evals 101 — Doug Guthrie, Braintrust - https://www.youtube.com/watch?v=bk0TmxoZlUY"
summary: "A 2x2 diagnostic matrix that maps human judgment of output quality (good/bad) against eval scores (high/low) to determine whether to improve the AI app or improve the evaluation itself."
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.60
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Eval Quality Matrix

The Eval Quality Matrix is a 2x2 diagnostic framework for deciding where to invest improvement effort: improve your AI application or improve your evaluations. It cross-references human judgment of output quality against automated eval scores. ^[extracted]

## The Matrix

| | High Score | Low Score |
|---|---|---|
| **Good Output** | ✅ **Verified** — Great, human and eval agree | 🔧 **Improve Evals** — Eval doesn't match human judgment |
| **Bad Output** | 🔧 **Improve Evals** — Eval doesn't catch bad outputs | ✅ **Working Correctly** — Eval catches real issues, improve the AI app |

### Quadrant Analysis

**Good Output × High Score** (Verified)
The system is working correctly for this case. Human judgment and automated scoring agree. No action needed from a measurement standpoint. ^[extracted]

**Good Output × Low Score** (Improve Evals)
The human judges the output as good, but the eval score is low. The scoring criteria or judge prompt may be misaligned with what actually constitutes a good response. Invest in improving the evaluation — refine LLM-as-judge prompts, adjust criteria, or evaluate the evaluator with human ground truth. ^[extracted]

**Bad Output × High Score** (Improve Evals)
The eval gives a passing score to clearly bad output. This signals that the score function is not sensitive to the defects humans care about. The evaluation criteria need to be tightened, expanded, or supplemented with additional score dimensions. ^[extracted]

**Bad Output × Low Score** (Working Correctly — Improve App)
The eval correctly identifies the bad output. The evaluation system is functioning as designed. Now the task is to improve the AI application — refine the prompt, try a different model, add guardrails, or adjust the workflow. ^[extracted]

## Practical Use

The matrix guides a team's improvement cycle:

1. Look for **Good Output × Low Score** and **Bad Output × High Score** — these signal eval quality issues
2. Fix the eval first (adjust scoring criteria, add more dimensions, incorporate human ground truth)
3. Then focus on the **Bad Output × Low Score** quadrant — the evals are reliable, now improve the app
4. The **Good Output × High Score** confirms your baseline is solid

> "If you think it's a good output but it's a low score, then that's a signal that you need to improve your evals. If it's a bad output but a high score, same thing. And then finally, if it's a bad output and a low score, your evals are working correctly. That's good. And now you need to focus on improving your AI app." ^[extracted]

## This Pattern Enables Eval-First Iteration

The matrix operationalizes the [[concepts/evaluation-first-development|evaluation-first development]] principle by giving teams a concrete, data-driven answer to "should I improve my prompt or improve my eval?" Without this diagnostic framework, teams waste effort tuning prompts against unreliable scoring. ^[inferred]

## Related

- [[concepts/evaluation-first-development|Evaluation-First Development]] — the methodology this matrix supports
- [[concepts/eval-ingredients-task-dataset-score|Eval Ingredients: Task, Dataset, Score]] — the score component is what the matrix diagnoses
- [[concepts/llm-judge-best-practices|LLM-as-Judge Best Practices]] — improving evals often means improving judge design
- [[concepts/online-evals|Online Evals]] — where this matrix is applied in production monitoring
- [[concepts/ai-regression-testing|AI Regression Testing]] — regression alerts triggered by score drops

## Sources

- [[references/aief2025-evals-workshop-braintrust|AIEF2025 - [Evals Workshop] Mastering AI Evaluation: From Playground to Production]] — Braintrust workshop at AI Engineer World's Fair 2025
