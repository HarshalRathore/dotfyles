---
title: "LangGraph"
category: entities
tags:
  - tool
  - agent-framework
  - langchain
  - workflows
  - determinism
  - enterprise-ai
sources:
  - "AIEF2025 - 3 ingredients for building reliable enterprise agents - Harrison Chase, LangChain/LangGraph - https://www.youtube.com/watch?v=kTnfJszFxCg"
summary: "An agent framework from LangChain designed around the workflow-agent spectrum, allowing developers to mix deterministic workflow steps with LLM-driven decision points anywhere on the spectrum."
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/langchain]]"
    type: created_by
  - target: "[[entities/harrison-chase]]"
    type: created_by
  - target: "[[concepts/workflow-agent-spectrum]]"
    type: implements
  - target: "[[entities/langsmith]]"
    type: related_to
---

# LangGraph

**LangGraph** is an agent framework from [[entities/langchain|LangChain]] designed around the [[concepts/workflow-agent-spectrum|workflow-agent spectrum]]. It allows developers to build agents that mix deterministic workflow steps with LLM-driven decision points, operating anywhere on the spectrum between fully deterministic and fully autonomous.

## Design Philosophy

Unlike other agent frameworks that push toward one end of the spectrum, LangGraph is explicitly designed to support the full range:

- **Deterministic sequences** — A → B → C, always in order
- **LLM-driven loops** — call a tool, decide what to do next
- **Multi-agent coordination** — Agent A finishes, then Agent B is always called
- **Mixed patterns** — some steps deterministic, others stochastic

The right position on the curve "totally depends on the application that you're building." ^[extracted]

## Relation to Enterprise Needs

LangGraph addresses the enterprise need for predictability and control. Where pure prompting might get 90% accuracy on a sequence, deterministic code gets 100%. In enterprise contexts, that 10% gap matters for CISO approval and stakeholder trust. ^[extracted]

## Ecosystem

- **LangChain** — Parent company
- **LangSmith** — Observability platform that pairs with LangGraph
- **Harrison Chase** — Creator and founder of LangChain

## Related

- [[entities/langchain]] — Parent company
- [[entities/harrison-chase]] — Creator
- [[entities/langsmith]] — Observability platform
- [[concepts/workflow-agent-spectrum]] — The design philosophy
- [[concepts/agent-workflows]] — Workflow orchestration
