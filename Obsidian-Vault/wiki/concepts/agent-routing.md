---
title: Agent Routing
category: concepts
tags: [agent-routing, agent-networking, agent-to-agent, internal-networking, agent-communication]
aliases: [agent routing, agent-to-agent routing, internal agent networking]
summary: The mechanism by which agents discover, authenticate, and communicate with each other within a multi-agent system — using ephemeral tokens scoped to execution lifetime and platform-managed routing.
sources:
  - "AIEF2025 - Conquering Agent Chaos — Rick Blalock, Agentuity - https://www.youtube.com/watch?v=yASxPZ-tZe0"
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/framework-agnostic-agents]]"
    type: enables
  - target: "[[concepts/agent-first-class-infrastructure]]"
    type: component_of
  - target: "[[concepts/agent-deployment-challenges]]"
    type: solves
---

## Agent Routing

Agent routing is the mechanism by which agents in a multi-agent system discover, authenticate, and communicate with each other. Unlike traditional microservice routing, agent routing must handle framework-agnostic communication, ephemeral authentication scoped to execution lifetime, and multimodal data exchange.

### Key Characteristics

**Ephemeral tokens.** When Agent A needs to call Agent B, the platform generates an ephemeral token that is valid only for the duration of Agent A's execution. This prevents long-lived credentials from being shared between agents and limits the blast radius of credential exposure.

**Framework-agnostic.** Agents built with different frameworks (CrewAI, LangChain, Pydantic, Vercel AI SDK) can communicate seamlessly. The routing layer abstracts away framework differences.

**Platform-managed.** The infrastructure handles all routing automatically. Agents reference each other by name or ID, and the platform resolves and routes requests without developer-built routing logic.

**Multimodal support.** Routing supports different data formats — text, JSON, HTML, PDF, email — allowing agents to exchange data in the format most appropriate for each interaction.

### Gateway vs. Routing

It's important to distinguish agent routing from AI gateway routing:

- **AI Gateway** routes agent requests to model providers (abstracting model API keys).
- **Agent Routing** routes requests between agents (enabling multi-agent coordination).

Both are needed for a complete agent infrastructure. ^[inferred]

## Related Pages

- [[concepts/framework-agnostic-agents|Framework-Agnostic Agents]] — Agents across frameworks communicating
- [[concepts/agent-first-class-infrastructure|Agent as First-Class Infrastructure]] — Platform-managed routing
- [[concepts/ai-agent-gateway|AI Agent Gateway]] — Model routing (distinct from agent routing)
- [[concepts/agent-deployment-challenges|Agent Deployment Challenges]] — Gateway wiring problem
