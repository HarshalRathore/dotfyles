---
title: ARIA
category: concepts
tags:
- aria
- weights-and-biases
- ai-companion
- data-science
- workspaces
- parameter-importance
- weave
sources:
- 'https://www.youtube.com/watch?v=4sX_He5c4sI'
summary: Weights & Biases' AI data science companion — custom-tuned for workspaces, parameter importance charts, markdown reports, and agent-driven experiment orchestration, with mobile availability on iOS.
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
lifecycle_changed: 2026-07-06
tier: supporting
created: 2026-07-06T00:00:00Z
updated: 2026-07-06T00:00:00Z
relationships:
  - target: '[[entities/weights-and-biases]]'
    type: related_to
  - target: '[[concepts/agent-as-judge]]'
    type: relates_to
  - target: '[[concepts/observability-tool-landscape]]'
    type: relates_to
---

# ARIA

**ARIA** is Weights & Biases' AI data science companion, custom-tuned and prompted to operate inside the W&B ecosystem. It helps researchers discover insights, build workspaces, create visual reports, and orchestrate experiments. ^[extracted]

Launched at the AI Engineer World's Fair 2026, including its iOS mobile app release on the same day. ^[extracted]

## Core Capabilities

### Parameter Importance Charts

ARIA can emit a **parameter importance chart** — a more esoteric W&B panel that shows the correlation of various parameters within a training job. It told the user which parameters had the strongest correlation with the outcome. ^[extracted]

### Markdown Reports

ARIA generates reports described as "markdown files on steroids" — W&B reports with embedded plots, charts, and graphics. It understands the thesis of a project and emits data panels automatically. ^[extracted]

### Custom Workspaces

For W&B users who spend significant time designing and working with workspaces, ARIA is custom-tuned to understand how to build workspaces, build plots, and complement data analytics with live graphics using W&B's proprietary charts. ^[extracted]

## iOS Availability

ARIA was released on the W&B iOS app on the same day as the WF2026 announcement. Users can: ^[extracted]

- Conduct hyperparameter tuning jobs from mobile
- Train models remotely
- Research within the W&B ecosystem
- Steer hyperparameter tuning jobs from their device

## Agent Architecture

ARIA is built on a standard agent architecture with: ^[extracted]

- **Web/iOS client** → API server → turn database → worker harness
- **Sandbox** for arbitrary shell calls and Python data science
- **LLM provider** (GLM 5.2 or fine-tuned models) via W&B inference
- **Long-running job support** via W&B Launch and Core Weave GPUs
- **Observability layer** via W&B Weave — logging 100% of traces

### Weave Integration

Weave provides: ^[extracted]

- Agent dashboard with span volume, conversation volume, token tracking
- Conversations view — live feed of all ARIA conversations filtered to internal employees
- Spans view — visual topology of traces (tool calls, LLM calls, thinking blocks)
- Human review — notes, feedback, emoji annotations on traces
- **Signals** — LLM judges running against live traffic (user frustration, low quality response, etc.)

### Evals as CI

ARIA uses tasks defined as YAML files — unit tests for the model: ^[extracted]

- Each task has an example user prompt
- LLM judges define correctness and insight quality
- Rule-based judges measure efficiency (e.g., within 6 tool calls)
- ~200 tasks clustered into eval suites running nightly
- Weave tracks all eval results across versions

## The Vision: Automated End-to-End Research

ARIA is positioned as the foundation for a fully automated end-to-end research platform, not replacing RL researchers but complementing their workflows. It excels at: ^[extracted]

- Orchestrating jobs
- Understanding GPU workloads
- Responding to events within the W&B ecosystem
- Listening to researchers
- Looking up archive papers
- Collaborating on hypotheses

## Related

- [[entities/weights-and-biases]] — The company behind ARIA
- [[concepts/agent-as-judge]] — LLM judges used in ARIA's signal system
- [[concepts/observability-tool-landscape]] — The observability category ARIA/Weave occupies
- [[concepts/evaluate-pyramid]] — The evaluation framework ARIA's signal system implements
- [[misc/wf2026]] — Conference where ARIA was launched

## Sources

- AI Engineer World's Fair 2026: https://www.youtube.com/watch?v=4sX_He5c4sI
