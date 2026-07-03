---
title: "Mastering AI Evaluation: From Playground to Production"
tags:
  - reference
  - talk
  - aief2025
  - braintrust
  - evaluation
  - workshop
aliases: [AIEF2025 Braintrust Evals Workshop, Braintrust evals workshop, AI evaluation workshop]
sources:
  - "AIEF2025 - [Evals Workshop] Mastering AI Evaluation: From Playground to Production - https://www.youtube.com/watch?v=9iN-cPnp7xg"
summary: "Hands-on workshop at AI Engineer World's Fair 2025 teaching AI evaluation from fundamentals through production with Braintrust's platform — covering the task/dataset/score ingredients, offline vs online evals, playground vs experiments, production logging, and human-in-the-loop review."
provenance:
  extracted: 0.72
  inferred: 0.23
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# [Evals Workshop] Mastering AI Evaluation: From Playground to Production

> [!tldr] A hands-on workshop at AI Engineer World's Fair 2025 by Braintrust ([[entities/carlos-esteban|Carlos Esteban]] and Doug), covering the full AI evaluation lifecycle: fundamentals, Braintrust playground, SDK evals, production logging, online scoring, and human-in-the-loop review.

## Overview

This workshop at the AI Engineer World's Fair 2025 (AIEF2025) provided a comprehensive introduction to AI evaluation using [[entities/braintrust|Braintrust]]'s platform. It alternated between lecture-style slide presentations and hands-on activities where attendees ran evals in the Braintrust playground and via the SDK using a sample "Unreleased AI" application (a changelog generator from GitHub commits). ^[extracted]

The workshop was the first of two sessions (the second at 3:30 PM), presented by Braintrust Solutions Engineers [[entities/carlos-esteban|Carlos Esteban]] and Doug. ^[extracted]

## Key Topics

### Evaluation Fundamentals
- **Why evals**: Answering questions about model choice, cost optimization, performance on edge cases, brand consistency, regression detection. LLMs don't guarantee consistent performance — evals provide the scientific testing framework. ^[extracted]
- **The three ingredients**: [[concepts/eval-ingredients-task-dataset-score|Task, Dataset, Score]] — every eval needs these. ^[extracted]
- **Offline vs. Online evals**: Development testing vs. production monitoring. ^[extracted]
- **The [[concepts/eval-quality-matrix|Eval Quality Matrix]]**: Good/Bad output × High/Low score diagnostic for deciding whether to improve evals or the AI app. ^[extracted]

### LLM-as-Judge Design
- [[concepts/llm-judge-best-practices|Best practices]]: focused criteria per judge, use a higher-quality model as judge, eval the judge against human ground truth, confine context to relevant input/output, handle non-determinism with trial averaging. ^[extracted]
- Reading judge rationale in logs to tune evaluation prompts. ^[extracted]

### Dataset Strategy
- Start small with [[concepts/eval-dataset-strategy|synthetic data]], ground in production logs as the system matures, incorporate human review for ground truth. ^[extracted]
- Don't wait for a "golden dataset" — 10 rows and 1-2 scores provide immediate value. ^[extracted]

### The Braintrust Workflow
- **Playground** for quick iteration and A/B comparison of prompts and models. ^[extracted]
- **Experiments** for long-lived historical tracking across weeks and months. ^[extracted]
- Both [[concepts/eval-playground-experiment-workflow|UI and SDK paths]] — TypeScript and Python SDKs for version-controlling prompts, datasets, and scores alongside application code. ^[extracted]

### Production
- **Logging**: One-line `wrapOpenAI(client)` captures prompts, responses, tokens, latency, cost. Also supports Vercel AI SDK and Otel. ^[extracted]
- **Online scoring**: [[concepts/online-evals|Evaluate live traffic]] with configurable sampling rates and span-targeted scoring. ^[extracted]
- **Custom views**: Filter, sort, and save log views for team-wide access. ^[extracted]
- **[[concepts/ai-observability-production-logging|Span-to-dataset pipeline]]**: Add any production trace to the offline eval dataset with one click. ^[extracted]

### Human-in-the-Loop
- **Human review**: Manual scoring and auditing by SMEs through a pared-down interface. ^[extracted]
- **User feedback**: Thumbs up/down + comments captured directly from the application. ^[extracted]
- Both used to establish ground truth, calibrate [[concepts/llm-judge-best-practices|LLM-as-judge]], and feed improved data back into datasets. ^[extracted]

### Upcoming Features
- **Loop**: Braintrust's upcoming feature for automated prompt optimization — has access to previous experiment results, iterates on prompts agentically. ^[extracted]
- **Auto-evals**: An automated evaluation package for out-of-the-box scoring. ^[extracted]
- **Remote evals**: Exposing complex SDK-defined tasks (with intermediate steps) to the playground UI. ^[extracted]

## Practical Demos

The workshop used a "Unreleased AI" application — a changelog generator that takes a GitHub URL, finds commits since the last release, and summarizes them. Attendees: ^[inferred]

1. Set up a Braintrust account and project
2. Cloned a repo with pre-configured prompts, scores, and datasets in a `braintrust.resources.ts` file
3. Ran `pnpm install` which executed `braintrust push` to push resources to the platform
4. Used the playground to run A/B comparisons of two prompt variants
5. Created experiments to save results
6. Ran evals via the SDK (`braintrust eval`)
7. Configured online scoring rules on production logs
8. Added production traces to datasets
9. Used human review mode to score outputs manually

## Q&A Highlights

- **Traditional ML models for evals**: Acknowledged as an open question — some teams go full deterministic, others full LLM-as-judge. Highly dependent on use case. ^[extracted]
- **Few-shot prompting from datasets**: Supported in metadata column for offline evals, but not natively at inference time. ^[extracted]
- **Managing changing application logic**: Evals reference the live application via the task — they don't need updating when the app changes, as long as input/output contract is preserved. Scores should measure permanent quality dimensions. ^[extracted]
- **SME management**: Organization-specific; some hire external annotation services, give them platform access. ^[extracted]

## Related Pages Created from This Workshop

- [[concepts/eval-ingredients-task-dataset-score|Eval Ingredients: Task, Dataset, Score]]
- [[concepts/eval-quality-matrix|Eval Quality Matrix]]
- [[concepts/llm-judge-best-practices|LLM-as-Judge Best Practices]]
- [[concepts/eval-playground-experiment-workflow|Playground vs Experiments Workflow]]
- [[concepts/eval-dataset-strategy|Eval Dataset Strategy]]
- [[concepts/online-evals|Online Evals]]
- [[concepts/ai-observability-production-logging|AI Observability & Production Logging]]
- [[entities/carlos-esteban|Carlos Esteban]]

## Sources

- AIEF2025 - [Evals Workshop] Mastering AI Evaluation: From Playground to Production. https://www.youtube.com/watch?v=9iN-cPnp7xg
