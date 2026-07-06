---
title: Reasoning Models for Failure Analysis
category: concepts
tags:
- reasoning-models
- failure-analysis
- debugging
- ai-agents
- llm-as-judge
aliases:
- LLM failure explanation
- reasoning models for debugging
sources:
- 'AIEF2025 - Turning Fails into Features: Zapier''s Hard-Won Eval Lessons — Rafal Willinski, Vitor Balocco, Zapier - https://www.youtube.com/watch?v=blrovBxxN9o'
provenance:
  extracted: 0.8
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.7
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/llm-as-judge|LLM as Judge]]'
  type: extends
- target: '[[concepts/llm-ops-tooling|LLM Ops Tooling]]'
  type: used-by
- target: '[[concepts/reasoning-models|Reasoning Models]]'
  type: uses
summary: Reasoning Models for Failure Analysis
---

# Reasoning Models for Failure Analysis

Reasoning models can be used to explain AI agent failures by analyzing trace outputs, inputs, instructions, and all available context. This approach leverages the analytical capabilities of modern reasoning models to automate or semi-automate the root cause analysis of agent run failures. ^[extracted]

## How It Works

When a reasoning model is provided with:

- The full trace output of an agent run
- The original inputs and instructions
- All available context (tool calls, errors, side effects)

It can perform several useful functions:

1. **Find the root cause** — The model identifies the specific point in the agent run where things went wrong
2. **Explain the whole run** — Even when it cannot pinpoint the exact root cause, it can provide a coherent narrative of what happened
3. **Direct attention** — The model can highlight specific areas of the trace that are interesting or suspicious, helping human investigators focus their review ^[extracted]

## Practical Application

Zapier uses reasoning models as part of their [[concepts/llm-ops-tooling|LLM Ops tooling]] pipeline to accelerate failure analysis. Rather than requiring engineers to manually review every trace, reasoning models provide a first-pass analysis that narrows the investigation scope. ^[extracted]

## Limitations

The approach is useful but not a silver bullet. Reasoning models may not always find the true root cause, and their explanations should be treated as hypotheses to be validated by human investigation. The value is in the speed and breadth of initial analysis, not in replacing human judgment. ^[inferred]

## Related

- [[concepts/reasoning-models|Reasoning Models]] — The model type used
- [[concepts/llm-as-judge|LLM as Judge]] — Related LLM-analyses-LLM pattern
- [[concepts/llm-ops-tooling|LLM Ops Tooling]] — Operational context
- [[concepts/ai-observability-production-logging|AI Observability & Production Logging]] — Trace data source

## Sources

- AIEF2025 - Turning Fails into Features: Zapier's Hard-Won Eval Lessons — Rafal Willinski, Vitor Balocco, Zapier - https://www.youtube.com/watch?v=blrovBxxN9o
