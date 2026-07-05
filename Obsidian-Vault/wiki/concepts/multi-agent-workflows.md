---
title: "Multi-Agent Workflows"
tags:
  - ai-agents
  - multi-agent
  - network-operations
  - aws
  - strands-agents
sources:
  - "AIEF2025 - Building Agents at Cloud Scale — Antje Barth, AWS - https://www.youtube.com/watch?v=WJjInLeaJjo"
  - "AIEF2025 - Multi Agent AI and Network Knowledge Graphs for Change — Ola Mabadeje, Cisco - https://www.youtube.com/watch?v=m0dxZ-NDKHo"
  - "AIEF2025 - Vibe Coding with Confidence — Itamar Friedman, Qodo - https://www.youtube.com/watch?v=n991Yxo1aOI"
summary: "Patterns for coordinating multiple AI agents working together — including graph-based workflows, swarm approaches, and inter-system agent-to-agent communication across platform boundaries."
provenance:
  extracted: 0.75
  inferred: 0.20
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-04
updated: 2026-07-05
relationships:
  - target: "[[entities/strands-agents|Strands Agents]]"
    type: related_to
  - target: "[[entities/alexa|Alexa]]"
    type: implements
  - target: "[[concepts/agent-coordination|Agent Coordination]]"
    type: extends
  - target: "[[entities/service-now|ServiceNow]]"
    type: used_by
---
# Multi-Agent Workflows

Patterns for coordinating multiple AI agents working together to accomplish complex tasks that exceed the capability of a single agent. ^[extracted]

## Two Primary Patterns

### Graph-Based Workflows

Agents are arranged in a directed graph where each node represents an agent or action, and edges define the flow of control and data between them. This provides explicit structure and predictable execution paths. ^[extracted]

### Swarm of Sub-Agents

Multiple independent agents work in parallel or semi-autonomously, each with its own capabilities and goals. A coordination layer manages their interactions and resolves conflicts. This provides flexibility and adaptability. ^[extracted]

## Implementation in Strands Agents

Strands Agents comes with pre-built tools to implement multi-agent workflows:

- Built-in support for both graph-based and swarm patterns
- Agents can share context and pass information between each other
- Coordination layer manages task decomposition and result aggregation

## Real-World Example: Alexa Plus

Alexa Plus demonstrates multi-agent workflows at scale:

- **Hundreds of specialized expert systems** — each handles a specific domain (calendar, travel, smart home, shopping, media)
- **Orchestration layer** — coordinates across expert systems and tens of thousands of partner services
- **Seamless collaboration** — agents work together transparently from the user's perspective

## Inter-System Agent Communication

A distinct pattern where agents on different platforms communicate with each other across system boundaries. In Cisco's network operations system, agents running inside [[entities/service-now|ServiceNow]] ITSM communicate directly with agents running on Cisco's platform, using natural language as the coordination protocol. This enables cross-system change management workflows without custom API integrations for every tool pair. ^[extracted]
## Real-World Example: Cisco Network Operations

Cisco's OutShift team built a multi-agent system for network change management:

- **Specialized agents** — impact assessment, testing, failure reasoning
- **Dual interface** — both human engineers and other systems (ServiceNow) interact via natural language
- **Knowledge graph integration** — agents query a [[concepts/network-knowledge-graph|network knowledge graph]] for context
- **Agent-to-agent communication** — ServiceNow agents talk to Cisco agents across platform boundaries ^[extracted]

## Design Considerations

- **Specialization**: Each agent should have a focused capability domain.
- **Communication**: Agents need well-defined interfaces for sharing context and results.
- **Conflict resolution**: When agents have overlapping responsibilities, coordination rules prevent conflicts.
- **Scale**: At large scale (600M+ devices), the coordination layer must be highly efficient.
- **Cross-system coordination**: Agents operating across platform boundaries require shared protocols (e.g., natural language) rather than custom APIs. ^[inferred]

## Related Pages

- [[entities/alexa]] — Real-world multi-agent system at scale
- [[entities/strands-agents]] — SDK with multi-agent workflow tools
- [[concepts/agent-coordination|Agent Coordination]] — Broader coordination patterns
- [[concepts/model-driven-agent-design|Model-Driven Agent Design]] — Design approach for individual agents

## SDLC Agent Coordination

Friedman (Qodo) described the game-changing opportunity as "squeezing the V" — shifting review and testing left in the SDLC timeline. This requires [[concepts/agent-to-agent-communication|agent-to-agent communication]] where different agents (coding agents, testing agents, review agents) talk to each other through protocols like [[concepts/model-context-protocol|MCP]] and A2A. One agent can use tools that connect all SDLC parts, enabling a holistic solution rather than point tools for each phase. ^[extracted]
