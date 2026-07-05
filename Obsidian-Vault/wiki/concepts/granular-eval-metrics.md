---
title: "Granular Eval Metrics"
category: concepts
tags:
  - evals
  - metrics
  - agent-evaluation
  - observability
  - evaluation-metrics
aliases:
  - per-span-metrics
  - step-level-evals
sources:
  - "AIEF2025 - Taming Rogue AI Agents with Observability-Driven Evaluation — Jim Bennett, Galileo - https://www.youtube.com/watch?v=xJXm4Wcw4m8"
summary: Evaluation metrics measured at individual steps within an agentic workflow — tool correctness, retrieval quality, hallucination — not binary pass/fail.
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/observability-driven-development]]"
    type: implements
  - target: "[[concepts/trace-analysis]]"
    type: analyzed_in
  - target: "[[concepts/aspect-based-evals]]"
    type: relates_to
---

# Granular Eval Metrics

**Granular Eval Metrics** are evaluation measurements taken at individual steps (spans) within an agentic workflow, rather than as a single binary pass/fail on the final output. They answer "at what step did the agent fail?" instead of "did the agent work?" ^[extracted]

## The Metric Categories

Bennett identifies several categories of metrics to measure at each step:

1. **Tool call correctness** — Did the agent call the right tool with the right parameters?
2. **RAG retrieval quality** — Did the agent retrieve the right information from the knowledge base?
3. **Answer coherence** — Does the final answer make sense given the retrieved data?
4. **Hallucination detection** — Is the output grounded in retrieved data, or fabricated?

These metrics can be applied at any span in the execution flow: orchestrator decisions, sub-agent calls, tool invocations, or final output generation. ^[extracted]

## Why Granularity Matters

In a multi-agent app where an orchestrator calls a sub-agent that calls a tool, binary evaluation tells you nothing about *which* component failed. Granular metrics let you:

- Identify whether the orchestrator routed correctly
- Determine if the sub-agent called the right tool
- Check if the tool returned correct data
- Verify the final answer is coherent and grounded

This granularity is essential for debugging and improving complex agentic systems. ^[extracted]

## Relation to Related Concepts

Granular eval metrics are the measurement mechanism of [[concepts/observability-driven-development|Observability-Driven Development]]. They are analyzed through [[concepts/trace-analysis|Trace Analysis]] and relate to [[concepts/aspect-based-evals|Aspect-Based Evals]] as a specific form of multi-dimensional evaluation.

## Related

- [[concepts/observability-driven-development]] — ODD measures these metrics at every span
- [[concepts/trace-analysis]] — Trace analysis examines these per-span metrics
- [[concepts/aspect-based-evals]] — Aspect-based evals are a related multi-dimensional approach
- [[concepts/agent-reliability-challenge]] — Granular metrics diagnose reliability failures
