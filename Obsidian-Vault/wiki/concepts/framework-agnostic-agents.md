---
title: Framework-Agnostic Agents
category: concepts
tags: [framework-agnostic, multi-framework, agent-deployment, crewai, langchain, pydantic, vercel-ai-sdk]
aliases: [framework agnostic agents, multi-framework agents, framework-independent agents]
summary: The approach of deploying and coordinating AI agents built with different frameworks (CrewAI, LangChain, Pydantic, Vercel AI SDK) within the same system, with platform-managed inter-agent communication.
sources:
  - "AIEF2025 - Conquering Agent Chaos — Rick Blalock, Agentuity - https://www.youtube.com/watch?v=yASxPZ-tZe0"
provenance:
  extracted: 0.90
  inferred: 0.07
  ambiguous: 0.03
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/agent-routing]]"
    type: enables
  - target: "[[concepts/agent-factory]]"
    type: relates_to
  - target: "[[entities/crewai]]"
    type: uses
  - target: "[[entities/langchain]]"
    type: uses
  - target: "[[entities/pydantic]]"
    type: uses
---

## Framework-Agnostic Agents

Framework-agnostic agent deployment is the approach of building, deploying, and coordinating AI agents that use different agent frameworks within the same system. Rather than forcing all agents in a project to use the same framework, this approach allows each agent to use whichever framework best fits its purpose, with platform-managed inter-agent communication.

### The Problem with Framework Lock-In

Traditional agent platforms often require all agents to use the same framework. This creates vendor lock-in and forces teams to re-architect agents when switching frameworks. In practice, different agents have different requirements — some benefit from CrewAI's multi-agent orchestration, others from LangChain's tool ecosystem, others from Pydantic's validation, and others from Vercel AI SDK's streaming capabilities.

### How It Works

[[entities/agentuity|Agentuity]] demonstrates the framework-agnostic approach:

- Agents built with CrewAI, LangChain, Pydantic, or Vercel AI SDK can coexist in the same project.
- Each agent is a first-class citizen with its own entry point, configuration, and runtime.
- Agents communicate via platform-managed internal networking with ephemeral authentication tokens.
- The platform handles routing, so agents reference each other by name or ID without framework-specific integration code.

### Internal Practice

[[entities/rick-blalock|Rick Blalock]] notes that [[entities/agentuity|Agentuity]] internally runs 50+ agents using multiple frameworks — not using any single framework exclusively, but deploying each agent with the framework that best fits its use case.

## Related Pages

- [[concepts/agent-routing|Agent Routing]] — How framework-agnostic agents communicate
- [[concepts/agent-first-class-infrastructure|Agent as First-Class Infrastructure]] — Platform-managed multi-framework deployment
- [[concepts/agent-factory|Agent Factory]] — Platform approach to agent deployment
- [[entities/crewai|CrewAI]], [[entities/langchain|LangChain]], [[entities/pydantic|Pydantic]], [[entities/openai-agents-sdk|Vercel AI SDK]] — Frameworks
