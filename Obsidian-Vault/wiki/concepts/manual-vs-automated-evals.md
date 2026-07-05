---
title: "Manual vs Automated Agent Evaluation"
category: concepts
tags:
  - evaluation
  - manual-evals
  - automated-evals
  - agent-testing
  - evaluation-methodology
aliases: [manual evaluation, automated evaluation, eval progression, evaluation phases]
relationships:
  - target: "[[concepts/azure-ai-evaluation-sdk]]"
    type: extends
  - target: "[[concepts/agent-evaluation-pipeline]]"
    type: related_to
sources:
  - "[[sources/watchv=mc55hdwlq4o]]"
  - "AIEF2025 - Five hard earned lessons about Evals — Ankur Goyal, Braintrust - https://www.youtube.com/watch?v=a4BV0gGmXgA"
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# Manual vs Automated Agent Evaluation

Agent evaluation follows a progression from manual, small-scale inspection to automated, large-scale assessment. Each phase serves a distinct purpose and the phases are complementary rather than mutually exclusive. ^[extracted]

## The Four-Phase Progression

### Phase 1: Manual Model Evaluation
Spot-check individual model responses to specific prompts. Understand baseline quality before adding agent complexity. Automatic metrics can miss nuances that only manual inspection reveals. ^[extracted]

### Phase 2: Systemic Agent Evaluation
Evaluate the complete agent (model + tools + prompts) end-to-end on specific inputs. Verify the full pipeline works correctly, including tool calls, data extraction, and response formatting. ^[extracted]

### Phase 3: Batch Manual Evaluation
Run the agent across a small dataset (dozens of inputs), manually reviewing each output with thumbs up/down. Export results as JSON Lines for integration into automated systems. This bridges the gap between single-example inspection and automated scale. ^[extracted]

### Phase 4: Automated Scale Evaluation
Use the [[concepts/azure-ai-evaluation-sdk|Azure AI Evaluation SDK]] to run bulk evaluations with built-in quality, NLP, and risk/safety evaluators across hundreds or thousands of data points. Programmatically configurable via Python notebooks. ^[extracted]

## Why Manual Evaluation Comes First

"Before evaluating at scale you need first to cherry pick and look at specific examples." ^[extracted] A high average score from automated evaluation can mask poor performance on specific critical cases. Manual evaluation of representative examples provides the context needed to interpret automated scores correctly. ^[extracted]

## Manual Data Collection for Evals

[[entities/ido-pesok|Ido Pesok]] (Vercel) emphasized that manual data collection is essential for building eval datasets: ^[extracted]

- **Thumbs up / thumbs down data** — Noisy but can be good signal for where your app is struggling
- **Random log sampling** — Read through random samples in your observability logs (e.g., 100 samples per week) to understand user behavior
- **Community forums** — Users report issues with LLM behavior directly
- **Social media (X/Twitter)** — Can be noisy but surfaces real user frustration

There is no shortcut — you must do the work to understand what your court looks like. ^[extracted] This manual effort is what makes automated evals meaningful: the dataset must reflect real user behavior, not synthetic convenience. ^[inferred]

## Tooling

- **Manual phases (1–3):** [[concepts/ai-toolkit-vscode|AI Toolkit VS Code extension]] for side-by-side comparison, agent creation, batch evaluation with manual scoring, and JSON Lines export.
- **Automated phase (4):** [[concepts/azure-ai-evaluation-sdk|Azure AI Evaluation SDK]] for programmatic bulk evaluation with configurable thresholds. ^[inferred]

## Related

- [[concepts/azure-ai-evaluation-sdk]] — Automated evaluation at scale
- [[concepts/loop-automated-eval-optimization|Loop — Automated Eval Optimization Agent]] — the automated eval product that closes the manual-to-automated gap
- [[concepts/dashboard-dumpster-diving|Dashboard Dumpster Diving]] — the manual eval pattern Loop replaces
- [[references/aief2025-the-future-of-evals-ankur-goyal-braintrust|The Future of Evals — AIEF2025 Talk]] — Ankur Goyal's talk on the future of automated evals
- [[concepts/eval-dataset-strategy|Eval Dataset Strategy]] — Manual data collection methods for building eval datasets
