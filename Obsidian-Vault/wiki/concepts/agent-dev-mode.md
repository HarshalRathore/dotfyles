---
title: Agent Dev Mode
category: concepts
tags: [agent-dev-mode, agent-testing, agent-simulator, local-agent-development, agent-observability]
aliases: [agent development mode, agent dev environment, agent simulator]
summary: A local development environment for AI agents that includes a built-in simulator, port-assigned agent running, production-mirror observability, and multi-project support.
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
  - target: "[[concepts/agent-infrastructure]]"
    type: implements
  - target: "[[concepts/ai-agent-gateway]]"
    type: uses
---

## Agent Dev Mode

Agent dev mode is a local development environment for building and testing AI agents. It provides a production-mirror experience — the same observability, gateway, and routing available in production are available locally — allowing developers to test agents before deployment.

### Key Features

**Port-assigned agent running.** When running `agentuity dev`, each agent is assigned a specific port, making it easy to test via HTTP. For multiple projects, each agent in each project gets its own port.

**Built-in simulator.** Agentuity provides a simulator for testing agents with different input types — text, JSON, HTML, PDF, and email. This allows developers to test how agents handle different input modalities without building custom test clients.

**Production-mirror observability.** The dev mode observability dashboard is a mirror of the production dashboard. Developers can see traces, spans, AI gateway calls, costs, prompts, and responses — the same data available in production.

**Public routing via tunneling.** For testing with external services during development, Agentuity provides public tunneling to agents, exposing them publicly while still running locally.

**Log inspection.** Agents can inspect their own logs in dev mode, seeing terminal output and detailed trace data for debugging.

### Session Management

Sessions are tracked in dev mode, enabling developers to review agent execution history and observe how agents interact with the AI gateway over time. This mirrors the production session management available in Agentuity's observability dashboard.

## Related Pages

- [[concepts/agent-infrastructure|Agent Infrastructure]] — Dev mode as part of agent infrastructure
- [[concepts/ai-agent-gateway|AI Agent Gateway]] — Gateway in dev mode
- [[concepts/agent-self-observability|Agent Self-Observability]] — Self-observability in dev mode
- [[entities/agentuity|Agentuity]] — Platform implementing dev mode
