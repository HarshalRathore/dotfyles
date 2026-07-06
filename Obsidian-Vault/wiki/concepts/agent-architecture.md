---
title: Agent Architecture
category: concepts
tags:
- agent-architecture
- agents
- ai-agents
- agent-design
- client-server
- workflow-engine
- tool-calling
aliases:
- agent design
- agent components
- agent framework
sources:
- AIEF2025 - Building Agents (the hard parts!) - Rita Kozlov, Cloudflare - https://www.youtube.com/watch?v=j_TKDweOsYE
- AIEF2025 - Building AI Agents that actually automate Knowledge Work - Jerry Liu, LlamaIndex - https://www.youtube.com/watch?v=jVGCulhBRZI
- 'AIEF2025 - Software Development Agents: What Works and What Doesn''t - Robert Brennan, OpenHands - https://www.youtube.com/watch?v=o_hhkJtlbSs'
- AIEF2025 - How to Build Planning Agents without losing control - Yogendra Miraje, Factset - https://www.youtube.com/watch?v=sl3icG-IjHo
summary: 'Four-component framework for building agents: client (human interface), AI reasoning (executive branch), workflows (execution orchestration), and tools (action mechanisms). Complements Jerry Liu''s...'
provenance:
  extracted: 0.8
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: core
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/assistive-vs-automation-agents]]'
  type: related_to
- target: '[[concepts/micro-agents]]'
  type: related_to
- target: '[[concepts/agent-fleet-architecture]]'
  type: related_to
- target: '[[concepts/agent-workflows]]'
  type: extends
- target: '[[concepts/agent-tool-calling]]'
  type: requires
---

# Agent Architecture

**Agent architecture** refers to the structural design of AI agents — how their components are organized and interact. The most widely cited framework breaks agents into four essential components.

## Four-Component Framework

Rita Kozlov (Cloudflare) at AIEF2025 proposed that every agent consists of four parts:

1. **Client** — The interface through which humans interact with the agent. Examples: chat UI, voice/WebRTC interface, CLI, or any communication channel.
2. **AI (Reasoning)** — The "executive branch" — the LLM or reasoning engine that thinks through what to do next, generates plans, and makes decisions.
3. **Workflows** — The execution layer that carries out the reasoning agent's decisions. Tracks what actions have been executed and what actions remain to take place. Provides the loop between thinking and doing.
4. **Tools** — The actual mechanisms the agent uses to take actions in the world: APIs, web browsers, vector databases, internal services, or other MCP servers.

## Agent Stack Perspective

Jerry Liu (LlamaIndex) frames the agent stack similarly but at a higher level with two main layers:

1. **Nice tools** — Interfaces for agents to interact with the external world (MCP, A2A), surfacing relevant context and enabling external actions.
2. **Agent architecture** — General reasoning loops and constrained loops, encoding business logic through agentic workflows.

## Architecture Decisions

Building an agent requires decisions at each layer:

- **Client**: text chat vs voice (WebRTC + STT) vs other interfaces
- **Reasoning**: which model, which reasoning approach (chain-of-thought, constrained loops, etc.)
- **Workflows**: stateful vs stateless, single-agent vs multi-agent, human-in-the-loop integration
 - **Tools**: MCP servers, direct API calls, browser automation, vector database queries

 ## Coding Agent Tools

 [[entities/robert-brennan|Robert Brennan]] (OpenHands) at AIEF2025 maps the agent architecture directly to the three core tools of a software engineer's job: a code editor, a terminal, and a web browser. These are the tools given to coding agents to run their entire development loop. ^[extracted]

 The code editor is the most deceptively simple tool — contemporary agents use diff-based editors (find-and-replace) rather than full-file regeneration to save tokens on large files. The terminal presents challenges with long-running commands, parallel execution, and background processes. The web browser is the most complex, with approaches ranging from raw HTML to accessibility trees, markdown conversion, and screenshot-based interaction with labeled nodes. ^[extracted]


## Blueprint Architecture as Agent Architecture

[[entities/yogendra-miraje|Yogendra Miraje]] (FactSet) at AIEF2025 described a four-node LangGraph architecture for agentic workflows where each node represents a distinct component:

1. **Blueprint Generator** — Produces a high-level plan as natural-language steps mapped to tool capabilities
2. **Planner** — Low-level task planner that converts the Blueprint into specific tool calls and function invocations
3. **Executor** — Executes the plan
4. **Joiner** — Combines outputs from different tasks

This architecture demonstrates how the four-component framework (AI reasoning, workflows, tools) maps to a graph-based implementation where the Blueprint Generator serves as the cognitive load management layer between goal interpretation and task execution. ^[extracted]

## Tool-Microservice Relationship

Miraje emphasized that the relationship between tools and microservices in enterprise settings is not one-to-one. Building tools around microservices is the most time-consuming part of building agentic workflows, and tools must be designed from the agent's perspective so the agent knows which tool to use and has knowledge of the underlying microservices. ^[extracted]

## Type Safety as Architecture Decision

[[entities/samuel-colvin|Samuel Colvin]] argues that type safety is a critical architecture decision for AI applications. Frameworks that invest in type safety (like [[entities/pydantic-ai|Pydantic AI]]) enable coding agents to verify their own work and make refactoring "incredibly easy." Frameworks that don't (like LangChain/LangGraph) leave developers to handle type mismatches manually. ^[extracted]

## Related

- [[concepts/assistive-vs-automation-agents]] — Assistive agents vs automation agents
- [[concepts/micro-agents]] — Micro-agents as a decomposition pattern
- [[concepts/agent-fleet-architecture]] — Multi-agent fleet patterns
- [[concepts/agent-workflows]] — Workflow orchestration patterns
- [[concepts/agent-tool-calling]] — Tool calling capabilities
- [[concepts/type-safety-ai]] — Type safety as a foundation for reliable AI applications
- [[concepts/type-safe-agent-tool-deps]] — Type-safe tool dependencies
- [[entities/pydantic-ai]] — Type-safe agent framework
