---
title: "Trace Analysis"
category: concepts
tags:
  - observability
  - traces
  - spans
  - agent-evaluation
  - debugging
  - ai-agents
aliases:
  - agent-trace-analysis
sources:
  - "AIEF2025 - Taming Rogue AI Agents with Observability-Driven Evaluation — Jim Bennett, Galileo - https://www.youtube.com/watch?v=xJXm4Wcw4m8"
summary: Analyzing structured execution traces — sequences of spans capturing LLM calls, tool invocations, and decisions — to identify where agent failures occur.
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
  - target: "[[concepts/ai-agent-observability]]"
    type: analyzes_data_from
  - target: "[[concepts/agent-reliability-challenge]]"
    type: diagnoses
---

# Trace Analysis

**Trace Analysis** is the practice of examining structured execution traces — sequences of spans capturing every LLM call, tool invocation, data retrieval, and decision point in an AI agent's execution — to identify where failures occur within multi-step agentic workflows.

## The Problem Trace Analysis Solves

In traditional software debugging, you can trace execution through a call stack. In AI agent execution, the "call stack" is non-deterministic: the same input may produce different sequences of tool calls, different LLM decisions, and different retrieval results. Trace analysis makes these hidden execution paths visible and analyzable. ^[extracted]

## What a Trace Contains

A trace for a multi-agent workflow includes:

- **Spans** — individual steps (LLM call, tool call, retrieval, decision)
- **Metadata** — tokens used, latency, model version, temperature
- **Inputs/Outputs** — the actual content passed between steps
- **Evaluation scores** — per-span metrics from LLM-as-judge evaluation
- **Error signals** — tool failures, timeouts, invalid responses

## Per-Span Evaluation

The key insight from Bennett's talk: evaluation should happen **at every span**, not just at the trace root. For each step, you measure:

- Did the correct tool get called?
- Was the right data retrieved from RAG?
- Did the LLM make a reasonable decision?
- Is the output coherent and non-hallucinated?

This granularity lets you answer "at what step did my agent fail?" rather than "did my agent work?" ^[extracted]

## Relation to Related Concepts

Trace analysis is the analytical mechanism behind [[concepts/observability-driven-development|Observability-Driven Development]]. It takes the raw data produced by [[concepts/ai-agent-observability|AI Agent Observability]] and transforms it into actionable insights about agent reliability, feeding directly into the [[concepts/agent-reliability-challenge|Agent Reliability Challenge]] of making agents production-ready.

## Related

- [[concepts/observability-driven-development]] — The methodology trace analysis enables
- [[concepts/ai-agent-observability]] — The instrumentation that produces trace data
- [[concepts/llm-as-judge-evaluation]] — The scoring mechanism applied to each span
- [[concepts/agent-reliability-challenge]] — The problem trace analysis diagnoses
