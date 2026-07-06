---
title: Agent Stack for Unstructured Data
category: concepts
tags:
- agent
- architecture
- unstructured-data
- mcp
- a2a
- workflow
summary: 'The two-component stack required to build agents that automate knowledge work over unstructured enterprise data: tool interfaces (MCP, A2A) and agent architecture (reasoning loops, workflows).'
provenance:
  extracted: 0.85
  inferred: 0.1
  ambiguous: 0.05
base_confidence: 0.65
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/document-toolbox]]'
  type: implements
- target: '[[concepts/agent-design-patterns]]'
  type: related_to
- target: '[[concepts/mcp]]'
  type: uses
sources: []
---

# Agent Stack for Unstructured Data

The two-component architecture required to build AI agents that automate knowledge work over unstructured enterprise data. Framed by [[entities/jerry-liu|Jerry Liu]] at AI Engineer World's Fair 2025. ^[extracted]

## Component 1: Nice Tools

Tools that allow agents to interface with the external world — surfacing relevant context and enabling external actions. Key protocols and patterns:

- **MCP (Model Context Protocol)** — Standardized tool interface for agents
- **A2A (Agent-to-Agent)** — Protocol for agents to communicate with each other
- **Document MCP server** — Specialized tool interfaces for document interaction (search, lookup, manipulation, querying)

The tools layer answers: "How does the agent interact with the data and the world?"

## Component 2: Agent Architecture

The reasoning and orchestration layer that encodes business logic through agentic workflows. Key patterns:

- **General reasoning loops** — Open-loop agent cycles (observe → think → act → observe)
- **Constrained loops** — Workflow-guided execution with deterministic steps
- **Agent design patterns** — Chaining, routing, parallelization, orchestrator-workers, evaluator-optimizer

The architecture layer answers: "How does the agent reason about and act on the data?"

## The Full Stack

Both components are required. Nice tools without agent architecture produce dumb tool-calling agents. Agent architecture without nice tools produces agents that can reason but cannot access the data they need. The [[concepts/document-toolbox|document toolbox]] is the concrete instantiation of the tools layer for unstructured data, and [[concepts/assistive-vs-automation-agents|assistive/automation agents]] are the two categories of agents that consume this stack. ^[extracted]

## Related

- [[concepts/document-toolbox]] — The tools layer for documents
- [[concepts/agent-design-patterns]] — The architecture layer patterns
- [[concepts/mcp]] — Model Context Protocol
- [[concepts/assistive-vs-automation-agents]] — Agent categories
- [[entities/jerry-liu]] — Framed at AIEF2025
