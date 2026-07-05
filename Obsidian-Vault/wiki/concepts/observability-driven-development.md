---
title: "Observability-Driven Development"
category: concepts
tags:
  - observability
  - evals
  - agent-evaluation
  - trace-analysis
  - ai-agents
  - evaluation-driven-development
aliases:
  - odd
  - observability-driven-evaluation
sources:
  - "AIEF2025 - Taming Rogue AI Agents with Observability-Driven Evaluation — Jim Bennett, Galileo - https://www.youtube.com/watch?v=xJXm4Wcw4m8"
  - "AIEF2025 - 3 ingredients for building reliable enterprise agents - Harrison Chase, LangChain/LangGraph - https://www.youtube.com/watch?v=kTnfJszFxCg"
summary: Measures AI agent performance at every step of the execution flow — tool calls, retrieval, decisions — using per-span metrics to pinpoint failures.
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/eval-driven-development]]"
    type: extends
  - target: "[[concepts/llm-as-judge-evaluation]]"
    type: uses
  - target: "[[concepts/observability-for-enterprise-trust]]"
    type: relates_to
  - target: "[[concepts/agent-reliability-challenge]]"
    type: addresses
---

# Observability-Driven Development

**Observability-Driven Development (ODD)** is an evaluation methodology for AI agents that measures performance at every step of the execution flow, not just at the final output. Instead of asking "did the agent work?" with a binary pass/fail, ODD asks "at which step did the agent fail?" — providing the granularity needed to debug and improve agentic systems. ^[extracted]

## Core Principles

### Per-Step Granularity

In a multi-agent workflow — where an orchestrator agent calls a sub-agent that calls a tool that retrieves data — ODD measures metrics at each span:

- Did the orchestrator correctly route the request?
- Did the sub-agent call the right tool?
- Did the tool return the correct data?
- Is the final answer coherent and non-hallucinated?

This contrasts with binary evaluation where a successful outcome masks intermediate failures. ^[extracted]

### The "Set a Thief to Catch a Thief" Principle

Bennett uses the British idiom "set a thief to catch a thief" to describe using LLMs to evaluate LLM outputs. A better LLM (or multiple LLM calls) scores the production LLM's behavior against defined metrics. The key insight: **AIs are about as good as humans at determining whether an AI worked**. ^[extracted]

### Cost-Effective Architecture

ODD prescribes a cost-split architecture:
- **Production LLM**: the cheapest model that does the job (cost optimization)
- **Evaluation LLM**: the best/most capable model for scoring (accuracy priority)

This separates the cost of execution from the cost of evaluation. ^[inferred]

### Day-One Integration

Bennett argues evaluations should be integrated from the start:

1. **Prompt engineering phase** — define eval metrics alongside prompts
2. **Model selection** — use evals to compare models
3. **CI/CD pipelines** — run evals on every change
4. **Production** — observe eval metrics as users stress-test the system

"The best time to put evaluations in is as you're doing prompt engineering and model selection. The second best time is now." ^[extracted]

## Relation to Related Concepts

ODD is the observability cousin of [[concepts/eval-driven-development|Eval-Driven Development]]. While EDD focuses on using evaluation results to drive development decisions, ODD focuses on the **granular measurement infrastructure** needed to make those evaluations meaningful for complex agentic systems.

It also feeds into [[concepts/observability-for-enterprise-trust|Observability for Enterprise Trust] — the same trace data that helps developers debug also helps communicate agent performance to enterprise stakeholders.

## Tools

- **Galileo** — Custom-trained small LLM for evaluation tasks
- **LangSmith** (LangChain) — Observability and evals platform
- **Phoenix** (Arize) — LLM evaluation and observability
- **Langfuse** — Open-source observability

## Related

- [[concepts/eval-driven-development]] — Using eval results to drive development
- [[concepts/llm-as-judge-evaluation]] — Using LLMs to score LLM outputs
- [[concepts/observability-for-enterprise-trust]] — Observability for stakeholder communication
- [[concepts/agent-reliability-challenge]] — The reliability problem ODD addresses
- [[concepts/trace-analysis]] — The mechanism for per-step measurement
