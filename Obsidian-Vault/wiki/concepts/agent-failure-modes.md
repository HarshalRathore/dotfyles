---
title: "Agent Failure Modes"
category: concepts
tags:
  - failure-modes
  - ai-agents
  - debugging
  - evals
  - classification
aliases:
  - failure mode analysis
  - agent failures
sources:
  - "AIEF2025 - Turning Fails into Features: Zapier's Hard-Won Eval Lessons — Rafal Willinski, Vitor Balocco, Zapier - https://www.youtube.com/watch?v=blrovBxxN9o"
provenance:
  extracted: 0.75
  inferred: 0.20
  ambiguous: 0.05
base_confidence: 0.70
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/evals-testing-pyramid|Evals Testing Pyramid]]"
    type: informs
  - target: "[[concepts/llm-ops-tooling|LLM Ops Tooling]]"
    type: analyzed-by
  - target: "[[concepts/data-flywheel|Data Flywheel]]"
    type: feeds
---

# Agent Failure Modes

Agent failure modes are the distinct categories of ways AI agents fail in production. Understanding and classifying failure modes at scale enables teams to prioritize improvement efforts and create an "almost automatic roadmap" for product development. ^[extracted]

## Failure Mode Bucketing

Once individual agent runs are understood through deep instrumentation, the next step is scale-level analysis:

- **Feedback aggregations** — Group explicit and implicit feedback by type
- **Clustering** — Identify similar failure patterns across runs
- **Failure mode bucketing** — Categorize failures into distinct types (e.g., tool call failures, prompt interpretation errors, side effect issues, timing problems)
- **Interaction bucketing** — Categorize user interactions by type and difficulty ^[extracted]

## Key Metrics

The two most actionable failure-mode metrics are:

1. **Which tools fail the most** — Identifies the weakest links in the agent's tool repertoire
2. **Which interactions are most problematic** — Reveals the user scenarios that cause the most issues

These metrics create a prioritized roadmap: apply time and effort to the failure modes that cause the most user impact. ^[extracted]

## Failure Mode Analysis Workflow

1. **Instrument** — Capture deep traces of every agent run
2. **Analyze individually** — Use reasoning models or human review to understand each failure
3. **Aggregate and cluster** — Group similar failures across the population
4. **Bucket and rank** — Categorize by type and frequency
5. **Prioritize** — Focus on the highest-impact failure modes
6. **Build evals** — Create targeted evals for each failure mode bucket ^[inferred]

## Relationship to Evals

Failure mode analysis directly informs the [[concepts/evals-testing-pyramid|evals testing pyramid]]. Each failure mode bucket becomes a target for unit test evals (checking specific tool calls or parameters), trajectory evals (checking multi-step failure scenarios), and A-B tests (checking real-world impact). ^[inferred]

## Related

- [[concepts/evals-testing-pyramid|Evals Testing Pyramid]] — Evals target specific failure modes
- [[concepts/llm-ops-tooling|LLM Ops Tooling]] — Tooling for failure mode analysis
- [[concepts/data-flywheel|Data Flywheel]] — Failure modes feed the flywheel
- [[entities/zapier|Zapier]] — Case study provider

## Sources

- AIEF2025 - Turning Fails into Features: Zapier's Hard-Won Eval Lessons — Rafal Willinski, Vitor Balocco, Zapier - https://www.youtube.com/watch?v=blrovBxxN9o
