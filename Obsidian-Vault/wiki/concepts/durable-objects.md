---
title: "Durable Objects"
category: concepts
tags:
  - durable-objects
  - cloudflare
  - serverless
  - stateful-serverless
  - agent-state
  - workers
aliases:
  - Cloudflare Durable Objects
sources:
  - "AIEF2025 - Building Agents (the hard parts!) - Rita Kozlov, Cloudflare - https://www.youtube.com/watch?v=j_TKDweOsYE"
summary: "Cloudflare's serverless primitive with persistent state, analogous to serverless functions but with state management. Used by Cloudflare's Agents SDK to provide built-in state management for MCP servers and agent workflows."
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/agent-architecture]]"
    type: enables
  - target: "[[concepts/model-context-protocol]]"
    type: enables
  - target: "[[entities/cloudflare]]"
    type: owned_by
---

# Durable Objects

**Durable Objects** are Cloudflare's serverless primitive that provides persistent state in a serverless environment. They are analogous to serverless functions but with the key difference of having state management built in.

## How They Work

Durable Objects combine the scaling and deployment model of serverless functions with the ability to maintain state across invocations. This makes them particularly well-suited for:

- **Agent state management** — Tracking workflow execution state, conversation history, and agent memory
- **MCP server hosting** — Cloudflare's Agents SDK uses Durable Objects to provide built-in state management for remote MCP servers
- **Real-time applications** — WebSockets, collaborative editing, and other stateful workloads

## Role in Agent Architecture

Rita Kozlov (Cloudflare) at AIEF2025 presented Durable Objects as the state management foundation for Cloudflare's Agents SDK:

> "The really cool thing is that it has state management built into it because Cloudflare has this primitive called Durable Objects. And so, Durable Objects, the idea is basically, it's kind of like a serverless function, but with state."

This means MCP servers hosted on Cloudflare can maintain conversation state, tool call history, and authentication tokens without external database dependencies.

## Pricing Advantage

Cloudflare's architecture (isolates + Durable Objects) charges for CPU milliseconds rather than wall time. For agent workloads that make external API calls, this means users are not charged for idle wait time — only for actual computation. This is particularly advantageous for agents that spend significant time waiting for LLM responses or external API calls.

## Related

- [[entities/cloudflare]] — Cloudflare platform
- [[concepts/agent-architecture]] — Agent architecture where state management matters
- [[concepts/model-context-protocol]] — MCP servers benefit from durable state
- [[concepts/managed-substrate]] — Managed infrastructure for agents
