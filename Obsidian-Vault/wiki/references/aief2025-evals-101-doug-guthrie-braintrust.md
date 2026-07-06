---
title: Evals 101 — Doug Guthrie, Braintrust
category: references
tags:
- evals
- intro
- braintrust
- aief2025
- evaluation-methodology
sources:
- AIEF2025 - Evals 101 — Doug Guthrie, Braintrust - https://www.youtube.com/watch?v=bk0TmxoZlUY
provenance:
  extracted: 0.95
  inferred: 0.05
  ambiguous: 0.0
base_confidence: 0.9
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/eval-flywheel-effect|Eval Flywheel Effect]]'
  type: introduces
- target: '[[concepts/eval-baseline-first|Eval Baseline First]]'
  type: introduces
- target: '[[concepts/eval-ingredients-task-dataset-score|Eval Ingredients: Task, Dataset, Score]]'
  type: elaborates
- target: '[[entities/braintrust|Braintrust]]'
  type: represents
summary: Evals 101 — Doug Guthrie, Braintrust
---

# Evals 101 — Doug Guthrie, Braintrust

Doug Guthrie, a solutions engineer at [[entities/braintrust|Braintrust]], delivered an introductory talk on AI evaluation at AI Engineer World's Fair 2025. The talk covers the why, what, and how of evals, from foundational concepts to Braintrust's SDK-based workflow connecting local development to production monitoring.

## Agenda

1. **Why evals** — Answering whether model/prompt changes improve or degrade application quality; moving beyond non-deterministic guesswork to rigorous development processes
2. **What evals are** — Structured tests that check how well an AI system performs, measuring quality, reliability, and correctness
3. **Eval ingredients** — Task (the prompt or workflow), dataset (real-world examples), and score (grading logic: LLM-as-judge or code-based)
4. **Offline vs online evals** — Pre-production iteration vs real-time production tracing and diagnosis
5. **Braintrust platform** — Playground (IDE for LLM outputs), SDK workflow, observability, human review, and user feedback
6. **The flywheel effect** — Connecting production logs back into eval datasets to create a continuous improvement loop

## Key Themes

- **Evals as offense, not just defense** — Beyond catching regressions, evals help determine which use cases are viable and guide investment decisions
- **Start with a baseline** — Don't get stuck creating a perfect golden dataset; start small, establish a foundation, then iterate
- **SDK-first workflow** — Define prompts, datasets, and scores in code (TypeScript/Python), push to the platform, and run evals from CI or the command line
- **Production feedback loop** — Human review of production logs and user thumbs-up/down feedback feed back into offline eval datasets, creating a flywheel

## Distinctive Contributions

Unlike the [[references/aief2025-five-hard-earned-lessons-evals-ankur-goyal-braintrust|five hard-earned lessons]] talk by Ankur Goyal (which focuses on strategic eval design), Guthrie's talk is a practical introduction to the mechanics of running evals, emphasizing the end-to-end workflow from local development through production monitoring and back to dataset improvement.

## Sources

- AIEF2025 - Evals 101 — Doug Guthrie, Braintrust - https://www.youtube.com/watch?v=bk0TmxoZlUY
