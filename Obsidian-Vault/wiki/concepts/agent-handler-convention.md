---
title: Agent Handler Convention
category: concepts
tags: [agent-handler, agent-convention, agent-entry-point, agent-routing, agent-context]
aliases: [agent handler, agent entry point convention, agent request handler]
summary: The convention for agent entry points — a default export function serving as a request handler, with platform-injected routing, context objects, and multi-modal input support on the request object.
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
  - target: "[[concepts/agent-first-class-infrastructure]]"
    type: implements
  - target: "[[concepts/agent-routing]]"
    type: relies_on
---

## Agent Handler Convention

The agent handler convention defines how agent entry points are structured — a default export function serving as a request handler, with the platform injecting routing information, context objects, and multi-modal input support onto the request object. This convention is similar to Next.js API routes or Cloudflare Workers handlers.

### Structure

An agent project has a minimal convention:

- **YAML configuration file.** Agent deployment configuration is defined in a YAML file at the project root.
- **Agents folder.** Contains the agent entry point(s), organized similarly to Python package structure.
- **Entry point.** A default export function that serves as the request handler.

### Request Object

The platform injects routing information onto the request object:

- The request can carry different input types — email, phone, JSON, PDF, or text.
- The platform routes the correct input to the correct agent based on configuration.
- Streaming is supported for long-running agent responses.

### Context Object

The context object provides first-class agent capabilities:

- `ctx.getAgent(idOrName)` — retrieve another agent by ID or name within the same project.
- Returns an ephemeral token allowing the calling agent to invoke the target agent for the duration of its execution.
- Supports synchronous calls, async calls, and streaming responses.

### Minimal Conventions

[[entities/agentuity|Agentuity]] keeps conventions minimal — the YAML config and the entry point function are the primary structural requirements. Additional framework-specific conventions (e.g., Monstra templates) are optional and provided as examples.

## Related Pages

- [[concepts/agent-first-class-infrastructure|Agent as First-Class Infrastructure]] — Platform-injected routing
- [[concepts/agent-handler-convention|Agent Handler Convention]] — Entry point structure
- [[concepts/agent-routing|Agent Routing]] — How routing reaches the handler
- [[entities/agentuity|Agentuity]] — Platform defining the convention
