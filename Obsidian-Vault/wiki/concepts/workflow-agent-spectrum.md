---
title: Workflow-Agent Spectrum
category: concepts
tags:
- agent-workflows
- agents
- determinism
- langgraph
- enterprise-ai
- control
sources:
- AIEF2025 - 3 ingredients for building reliable enterprise agents - Harrison Chase, LangChain/LangGraph - https://www.youtube.com/watch?v=kTnfJszFxCg
- AIEF2025 - How to Build Planning Agents without losing control - Yogendra Miraje, Factset - https://www.youtube.com/watch?v=sl3icG-IjHo
summary: The spectrum between fully deterministic workflows and fully autonomous agents. Enterprise agents typically need a mix of both — deterministic sequences for predictability, LLM-driven decisions for...
provenance:
  extracted: 0.85
  inferred: 0.1
  ambiguous: 0.05
base_confidence: 0.8
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/agent-workflows]]'
  type: extends
- target: '[[concepts/agent-reliability-challenge]]'
  type: related_to
- target: '[[concepts/deterministic-vs-autonomous-agents]]'
  type: related_to
- target: '[[concepts/enterprise-agent-adoption-equation]]'
  type: affects
- target: '[[concepts/agentic-workflow-vs-workflow-agent|Agentic Workflow vs Workflow Agent]]'
  type: extends
- target: '[[concepts/when-not-to-use-agentic-workflows|When NOT to Use Agentic Workflows]]'
  type: related_to
---

# Workflow-Agent Spectrum

The **workflow-agent spectrum** is the design space between fully deterministic workflows (always execute A → B → C) and fully autonomous agents (LLM decides what to do next). Enterprise agents typically need a mix of both — deterministic sequences for predictability and control, LLM-driven decisions for flexibility.

## The False Dichotomy

[[entities/harrison-chase|Harrison Chase]] argues against the framing of "workflows versus agents." The reality is "workflows **and** agents": parts of an agentic system loop and call tools, while other parts follow deterministic sequences. The right position on the spectrum depends on the application. ^[extracted]

This was also highlighted in an [[entities/anthropic|Anthropic]] blog post that Chase references.

## Why Enterprises Want Determinism

Enterprises need more predictability than pure prompting provides:

- **Control over execution order** — "I always want step A after step B"
- **Auditability** — knowing exactly what happened at each step
- **Risk reduction** — deterministic paths eliminate LLM hallucination at known steps
- **CISO approval** — deterministic workflows are easier to review and approve

Pure prompting might get 90% accuracy on a sequence; deterministic code gets 100%. In enterprise contexts, that 10% gap matters. ^[extracted]

## Multi-Agent Architectures as a Middle Ground

Multi-agent systems sit in the middle of this spectrum: Agent A runs, then Agent B is always called. Is this a workflow or an agent? It's both — the inter-agent sequence is deterministic, while the internal behavior of each agent may be stochastic. ^[extracted]

## Framework Design Implications

[[entities/harrison-chase|LangGraph]] is explicitly designed around this spectrum, allowing developers to place any part of their system anywhere on the curve. Other frameworks tend to push toward one end; LangGraph's differentiator is the full range. ^[extract4ed]


## Workflow Agent vs Agentic Workflow on the Spectrum

[[entities/yogendra-miraje|Yogendra Miraje]] (FactSet) at AIEF2025 formalized this spectrum with a precise distinction:

- **Workflow agent** — A predefined, static workflow run by an agent. The workflow is in control; the sequence of steps is fixed.
- **Agentic workflow** — A workflow that is planned and run by an agent. The agent is in control; the workflow is dynamic.

On the agentic spectrum, agentic workflows have more "agenticness" than workflow agents. This is not a binary distinction but a continuum — systems can be positioned anywhere between fully static workflows and fully autonomous agentic workflows. ^[extracted]

## When NOT to Use Agentic Workflows

Miraje identified four cases where agentic workflows are the wrong choice:

1. **Fixed and repeated tasks** — Use ETL pipelines instead
2. **Uncapturable workflows** — If a workflow cannot be decomposed into steps, agentic workflows are not worth the investment
3. **Deterministic outcomes required** — Strict compliance and safety-critical contexts need deterministic approaches
4. **Low latency / cost-centered environments** — Agentic workflows involve multiple LLM calls, making them expensive and slow ^[extracted]
## Related

- [[concepts/agent-workflows]] — Workflow orchestration layer
- [[concepts/agent-reliability-challenge]] — Reliability problem this spectrum addresses
- [[concepts/deterministic-vs-autonomous-agents]] — Related taxonomy
- [[concepts/enterprise-agent-adoption-equation]] — Positioning on the spectrum affects P(success)
