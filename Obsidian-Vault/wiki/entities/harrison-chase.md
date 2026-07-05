---
title: "Harrison Chase"
category: entities
tags:
  - person
  - entrepreneur
  - langchain
  - langgraph
  - langsmith
  - ai-agents
sources:
  - "AIEF2025 - 3 ingredients for building reliable enterprise agents - Harrison Chase, LangChain/LangGraph - https://www.youtube.com/watch?v=kTnfJszFxCg"
summary: "Founder of LangChain, creator of LangGraph and LangSmith. Speaks on enterprise agent reliability, the workflow-agent spectrum, and observability for enterprise trust."
provenance:
  extracted: 0.90
  inferred: 0.07
  ambiguous: 0.03
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/langchain]]"
    type: founded
  - target: "[[entities/langgraph]]"
    type: created
  - target: "[[entities/langsmith]]"
    type: created
  - target: "[[concepts/workflow-agent-spectrum]]"
    type: defines
  - target: "[[concepts/enterprise-agent-adoption-equation]]"
    type: defines
---

# Harrison Chase

Harrison Chase is the founder of [[entities/langchain|LangChain]] and creator of [[entities/langgraph|LangGraph]] and [[entities/langsmith|LangSmith]]. He is a prominent voice in enterprise AI agent design, focusing on reliability, deterministic workflows, and observability.

## Key Ideas

### Enterprise Agent Adoption Equation

Chase proposes that enterprise agent adoption is determined by:

$$\text{Adoption} = (\text{P(success)} \times \text{Value|success}) - (\text{Cost|error})$$

This must exceed the cost of running the agent. The three terms define the design space for enterprise agent success. ^[extracted]

### Workflow-Agent Spectrum

Chase argues against "workflows versus agents" and for "workflows **and** agents." The right position on the spectrum depends on the application. LangGraph is designed to operate anywhere on this spectrum. ^[extracted]

### Observability for Enterprise Trust

Chase describes a second role for observability beyond developer debugging: communicating agent performance to enterprise stakeholders (review panels, CISOs, management) to reduce perceived risk and accelerate approval. ^[extracted]

## Products

- **LangChain** — Agent framework and tooling
- **LangGraph** — Agent framework designed around the workflow-agent spectrum
- **LangSmith** — Observability and evals platform for agents

## Related

- [[entities/langchain]] — The company
- [[entities/langgraph]] — The agent framework
- [[entities/langsmith]] — The observability platform
- [[concepts/workflow-agent-spectrum]] — His framework for agent design
- [[concepts/enterprise-agent-adoption-equation]] — His adoption framework
- [[concepts/observability-for-enterprise-trust]] — Observability as trust-building
