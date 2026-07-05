---
title: "LangSmith"
category: entities
tags:
  - tool
  - observability
  - evals
  - langchain
  - enterprise-ai
  - trust
sources:
  - "AIEF2025 - 3 ingredients for building reliable enterprise agents - Harrison Chase, LangChain/LangGraph - https://www.youtube.com/watch?v=kTnfJszFxCg"
summary: "LangChain's observability and evaluation platform for agents. Serves two audiences: developers debugging agents, and enterprise stakeholders reviewing agent performance for production approval."
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
  - target: "[[entities/langgraph]]"
    type: related_to
  - target: "[[concepts/observability-for-enterprise-trust]]"
    type: implements
---

# LangSmith

**LangSmith** is [[entities/langchain|LangChain]]'s observability and evaluation platform for AI agents. It was built for developers to understand what's happening inside their agents, but has proven equally valuable for communicating agent performance to enterprise stakeholders.

## Two Audiences

1. **Developers** — seeing every step inside their agent during building and debugging
2. **Enterprise stakeholders** — review panels, CISOs, management — understanding agent behavior and risk

## Key Capabilities

- **Step-by-step visibility** — seeing every LLM call, tool invocation, and decision point
- **Benchmarking** — comparing agent performance against baselines
- **Error pattern identification** — showing where the agent succeeds and fails
- **Production approval support** — presenting structured data to review panels

## Notable Use Case

A user brought LangSmith to a production review panel, showing everything inside the platform. They finished under time — "which almost never happens" at these panels. The observability data reduced the perceived risk of deploying the agent. ^[extracted]

## Related

- [[entities/langchain]] — Parent company
- [[entities/langgraph]] — Agent framework it pairs with
- [[entities/harrison-chase]] — Creator
- [[concepts/observability-for-enterprise-trust]] — The trust-building use case
- [[concepts/ciso-approval]] — CISO review as an audience
