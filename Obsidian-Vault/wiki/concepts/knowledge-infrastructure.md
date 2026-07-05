---
title: "Knowledge Infrastructure"
tags:
  - ai-agents
  - infrastructure
  - context-engine
  - documentation
  - aief2025
aliases:
  - knowledge infrastructure
  - agent knowledge infrastructure
sources:
  - "AIEF2025 - Mentoring the Machine — Eric Hou, Augment Code - https://www.youtube.com/watch?v=Zniw5c9_jx8"
provenance:
  extracted: 0.75
  inferred: 0.20
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: [[concepts/context-gap|Context Gap]]
    type: addresses
  - target: [[concepts/context-engine-vs-rag|Context Engine vs RAG]]
    type: relates_to
  - target: [[concepts/agent-mentoring-model|Agent Mentoring Model]]
    type: required_by
  - target: [[concepts/parallel-ai-workstreams|Parallel AI Workstreams]]
    type: enables
---

# Knowledge Infrastructure

**Knowledge infrastructure** refers to the systems, tools, and artifacts that provide AI agents with the context they need to work autonomously. ^[extracted] Articulated by [[entities/eric-hou|Eric Hou]] at [[entities/augment-code|Augment Code]], knowledge infrastructure is the foundation that enables agents to function as effective parallel workstreams. ^[extracted]

## Components

Eric identified several components of effective knowledge infrastructure: ^[extracted]

- **Context engines** — Systems that extract and provide relevant codebase structure (imports, call graphs, cross-file relationships) to agents
- **Codebases** — The actual source code, accessible and indexed for agent querying
- **Documentation** — Project documentation, architectural guides, and conventions
- **Issue tracking** — Systems like Linear for task management and assignment
- **Communication bots** — Slack bots with agent access to context for stakeholder management

## The New Hire Example

Eric demonstrated knowledge infrastructure in action when a new hire interrupted his on-call flow asking about the extension system. ^[extracted] Instead of stopping his work to explain, he directed the new hire to the Augment Slack bot, which had access to:

- The context engine
- The codebase
- All documentation
- Linear (issue tracking)

The new hire received personalized, real-time help while Eric stayed focused on the on-call response. ^[extracted] This is knowledge infrastructure enabling parallel work: the agent serves as a 24/7 mentor that never needs a break. ^[inferred]

## Why It Matters

Without knowledge infrastructure, agents cannot work autonomously and parallelism degrades to sequential handoffs where the human must repeatedly explain context. ^[inferred] Building knowledge infrastructure is therefore a prerequisite for the agent mentoring model and parallel AI workstreams to work. ^[inferred]

## Relationship to Context Engines

Knowledge infrastructure is closely related to [[concepts/context-engine-vs-rag|context engines]], which are the technical subsystems that extract and serve codebase knowledge. ^[inferred] Augment's context engine, built over two years, is a specific example of knowledge infrastructure optimized for codebases. ^[extracted]

## Related

- [[concepts/context-gap|Context Gap]] — The problem knowledge infrastructure solves
- [[concepts/context-engine-vs-rag|Context Engine vs RAG]] — Technical subsystem
- [[concepts/agent-mentoring-model|Agent Mentoring Model]] — The framework that requires knowledge infrastructure
- [[concepts/parallel-ai-workstreams|Parallel AI Workstreams]] — Where knowledge infrastructure is exercised
