---
title: "LLM Ops Tooling"
category: concepts
tags:
  - llm-ops
  - tooling
  - observability
  - evals
  - ai-agents
  - internal-tools
aliases:
  - LLM operations
  - LLM ops
sources:
  - "AIEF2025 - Turning Fails into Features: Zapier's Hard-Won Eval Lessons — Rafal Willinski, Vitor Balocco, Zapier - https://www.youtube.com/watch?v=blrovBxxN9o"
  - "AIEF2025 - Evals 101 — Doug Guthrie, Braintrust - https://www.youtube.com/watch?v=bk0TmxoZlUY"
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
  - target: "[[concepts/ai-observability-production-logging|AI Observability & Production Logging]]"
    type: extends
  - target: "[[concepts/evals-testing-pyramid|Evals Testing Pyramid]]"
    type: enables
  - target: "[[entities/braintrust|Braintrust]]"
    type: commercial-alternative
---

# LLM Ops Tooling

LLM Ops tooling refers to the infrastructure and software needed to understand, debug, and evaluate AI agent runs at scale. A single agent run typically involves multiple LLM calls, database interactions, tool calls, and REST calls — each a potential source of failure. Understanding what caused a cascading failure requires piecing together the full story of the run. ^[extracted]

## Build vs Buy

Zapier's approach is to do both: use commercial platforms like [[entities/braintrust|Braintrust]] and build internal tooling. The argument for building internally is strong: ^[extracted]

1. **Domain-specific understanding** — Custom tooling gives you the ability to understand your data in your own specific domain context, which off-the-shelf tools cannot provide
2. **One-click eval conversion** — Internal tooling should enable turning any interacting case or failure into an eval with minimal friction. This should become an instinct: whenever you see something interesting, one click converts it to an eval

Building internal tooling is described as "really, really easy" with modern AI coding assistants like Cursor and Claude Code, and the investment "is going to pay you massive dividends in the future." ^[extracted]

## Failure Analysis with Reasoning Models

Zapier experiments with using reasoning models to explain agent failures. When provided with trace output, inputs, instructions, and all available context, reasoning models are "pretty good at finding the root cause of a failure." Even when they don't find the root cause, they can explain the whole run or direct attention to interesting areas that help investigators find the root cause. ^[extracted]

## Scale-Level Analysis

Once individual runs are understood, LLM Ops tooling enables scale-level analysis:

- **Feedback aggregations** — Aggregate explicit and implicit feedback across runs
- **Clustering** — Group similar failures and interactions
- **Failure mode bucketing** — Categorize failure types to identify patterns
- **Tool failure ranking** — Determine which tools fail most often
- **Problematic interaction identification** — Surface the interactions that cause the most issues

This analysis creates an "almost automatic roadmap" for where to apply time and effort to improve the product. ^[extracted]

## Related

- [[concepts/ai-observability-production-logging|AI Observability & Production Logging]] — The observability foundation
- [[concepts/evals-testing-pyramid|Evals Testing Pyramid]] — Tooling enables all pyramid levels
- [[concepts/ai-iteration-loop|AI Iteration Loop]] — Ops tooling is the operational foundation
- [[entities/braintrust|Braintrust]] — Commercial platform alternative

## Sources

- AIEF2025 - Turning Fails into Features: Zapier's Hard-Won Eval Lessons — Rafal Willinski, Vitor Balocco, Zapier - https://www.youtube.com/watch?v=blrovBxxN9o
- AIEF2025 - Evals 101 — Doug Guthrie, Braintrust - https://www.youtube.com/watch?v=bk0TmxoZlUY
