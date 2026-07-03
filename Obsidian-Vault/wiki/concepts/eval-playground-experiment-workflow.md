---
title: "Eval Playground vs Experiments Workflow"
tags:
  - concept
  - evaluation
  - workflow
  - experimentation
  - testing
aliases: [playground vs experiments, eval workspace pattern, playground experiments comparison]
sources:
  - "AIEF2025 - [Evals Workshop] Mastering AI Evaluation: From Playground to Production - https://www.youtube.com/watch?v=9iN-cPnp7xg"
summary: "Two complementary modes for AI evaluation: the playground for rapid iteration and A/B comparison of prompts and models, and experiments for long-lived historical tracking of scores over time."
provenance:
  extracted: 0.75
  inferred: 0.20
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Eval Playground vs Experiments Workflow

AI evaluation platforms typically offer two complementary modes: a **playground** for rapid iteration and **experiments** for longitudinal tracking. [[entities/braintrust|Braintrust]] implements this pattern. ^[extracted]

## The Two Modes

| Dimension | Playground | Experiments |
|-----------|------------|-------------|
| **Purpose** | Quick iteration, A/B testing | Historical comparison over time |
| **Lifespan** | Ephemeral — not saved | Long-lived — persisted permanently |
| **Scope** | Current session, immediate comparison | Weeks/months of results |
| **Typical use** | "Does this prompt change improve scores?" | "How has quality trended since last release?" |

### Playground (Ephemeral Iteration)
The playground loads the [[concepts/eval-ingredients-task-dataset-score|three ingredients]] — task (prompts), dataset, and scores — and runs them together. Users can: ^[extracted]

- Load multiple prompts for A/B comparison side by side
- Change the underlying model and immediately see impact
- Run the full dataset in parallel against each prompt
- See summary scores at the top with per-row breakdowns below
- Save a snapshot to an experiment for future reference

> "Playground, you could think of as quick iteration experiment. So a playground ephemeral, right? Experiments, long lived historical analysis." ^[extracted]

### Experiments (Longitudinal Tracking)
Experiments persist the results so teams can: ^[extracted]

- Track how scores change over weeks and months
- Analyze the impact of every change across the team (UI or SDK)
- Integrate with CI pipelines — run evals on every PR, compare to the baseline
- Share results across the team for collaborative review

> "This allows us to track this over time. This is what we can also lay in our CI kind of workflow. So we go make a change to that prompt, make a change to that model. What are the impacts to the scores relative to what we had over history?" ^[extracted]

## The Workflow Pattern

The typical team workflow bridges both modes: ^[inferred]

1. **Playground**: Make a change, run it, review scores, iterate
2. **Experiment**: When satisfied, save the playground configuration as an experiment
3. **Monitor**: The experiment becomes the new baseline for future comparisons
4. **CI integration**: Automated eval runs in CI produce experiments that are compared against the baseline

This replaces subjective "vibe checks" with data-driven decision making for every prompt and model change. ^[extracted]

## Two Interface Paths: UI and SDK

The same two-mode workflow is accessible through both paths: ^[extracted]

- **Playground UI**: Visual interface for non-technical team members (PMs, SMEs) to run evals and compare prompts without writing code
- **SDK** (TypeScript or Python): Define tasks, datasets, and scores in code, version-controlled alongside the application, then push experiments to the platform

Braintrust supports both paths, and results from either aggregate into the same experiment view. ^[inferred]

## Related

- [[concepts/eval-ingredients-task-dataset-score|Eval Ingredients: Task, Dataset, Score]] — the components used in both modes
- [[concepts/evaluation-first-development|Evaluation-First Development]] — the methodology that uses this workflow
- [[concepts/online-evals|Online Evals]] — production monitoring as the complement to these development-mode evals
- [[concepts/eval-quality-matrix|Eval Quality Matrix]] — diagnostics applied during playground iteration
- [[concepts/ai-observability-production-logging|AI Observability & Production Logging]] — production data that feeds back into experiments

## Sources

- [[references/aief2025-evals-workshop-braintrust|AIEF2025 - [Evals Workshop] Mastering AI Evaluation: From Playground to Production]] — Braintrust workshop at AI Engineer World's Fair 2025
