---
title: "Instrumentation & Deep Traces"
category: concepts
tags:
  - instrumentation
  - tracing
  - observability
  - debugging
  - ai-agents
  - evals
aliases:
  - deep tracing
  - agent instrumentation
sources:
  - "AIEF2025 - Turning Fails into Features: Zapier's Hard-Won Eval Lessons — Rafal Willinski, Vitor Balocco, Zapier - https://www.youtube.com/watch?v=blrovBxxN9o"
  - "AIEF2025 - Evals 101 — Doug Guthrie, Braintrust - https://www.youtube.com/watch?v=bk0TmxoZlUY"
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/ai-observability-production-logging|AI Observability & Production Logging]]"
    type: extends
  - target: "[[concepts/llm-ops-tooling|LLM Ops Tooling]]"
    type: feeds
---

# Instrumentation & Deep Traces

Instrumentation for AI agents goes beyond basic LLM call tracing. Effective agent instrumentation captures the full context needed to debug failures and create evals from production runs. The first step in building a data flywheel is ensuring your code is properly instrumented. ^[extracted]

## What to Record in Traces

Beyond basic LLM completion calls (which most teams already capture), agent traces should record:

- **Both API calls** — The request and response from each LLM call
- **Errors from those calls** — Any failures, timeouts, or unexpected responses
- **Pre-processing steps** — What transformations were applied to inputs before the LLM call
- **Post-processing steps** — What transformations were applied to outputs after the LLM call

This depth of tracing makes it "much easier to debug what went wrong with the run" because you can see the full transformation pipeline, not just the raw LLM interaction. ^[extracted]

## Repeatable Runs for Evals

A critical design principle: log data in the same shape as it appears in the runtime. This enables converting production traces into eval runs for free:

- **Pre-populate inputs and expected outputs** directly from your trace
- **Mock side effects** — If a tool call produces side effects in production, you can mock those in your evals
- **Free eval creation** — When traces capture the full runtime shape, creating evals from production data requires no manual transformation ^[extracted]

This principle connects instrumentation directly to eval creation: good traces are eval-ready by default.

## Relationship to Debugging

Deep traces are the foundation for [[concepts/llm-ops-tooling|LLM Ops tooling]]. Without comprehensive instrumentation, debugging cascading failures across multiple LLM calls, tool invocations, and API interactions becomes nearly impossible. The trace is the single source of truth for understanding agent behavior. ^[inferred]

## Related

- [[concepts/ai-observability-production-logging|AI Observability & Production Logging]] — The broader observability framework
- [[concepts/llm-ops-tooling|LLM Ops Tooling]] — Tooling built on top of traces
- [[concepts/eval-flywheel-effect|Eval Flywheel Effect]] — Traces feed the eval flywheel
- [[entities/zapier|Zapier]] — Case study provider

## Sources

- AIEF2025 - Turning Fails into Features: Zapier's Hard-Won Eval Lessons — Rafal Willinski, Vitor Balocco, Zapier - https://www.youtube.com/watch?v=blrovBxxN9o
- AIEF2025 - Evals 101 — Doug Guthrie, Braintrust - https://www.youtube.com/watch?v=bk0TmxoZlUY
