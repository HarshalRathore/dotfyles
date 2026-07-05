---
title: "Cloudflare Agents SDK"
category: entities
tags:
  - sdk
  - cloudflare
  - agents
  - mcp
  - durable-objects
  - serverless
  - oauth
aliases:
  - Cloudflare Agents
  - CF Agents SDK
sources:
  - "AIEF2025 - Building Agents (the hard parts!) - Rita Kozlov, Cloudflare - https://www.youtube.com/watch?v=j_TKDweOsYE"
summary: "Cloudflare's SDK for building and hosting AI agents and MCP servers. Provides built-in OAuth, transport (SSE/WebSockets), HTTP streaming, and state management via Durable Objects. Compatible with OpenAI's Agents SDK."
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/model-context-protocol]]"
    type: implements
  - target: "[[concepts/durable-objects]]"
    type: uses
  - target: "[[entities/cloudflare]]"
    type: owned_by
  - target: "[[concepts/agent-architecture]]"
    type: enables
---

# Cloudflare Agents SDK

The **Cloudflare Agents SDK** is a development toolkit for building and hosting AI agents and MCP servers on Cloudflare's infrastructure. It abstracts away the operational complexity of agent infrastructure — OAuth, transport protocols, state management — so developers can focus on agent logic.

## Key Features

- **MCP Server Hosting** — Built-in `MCPAgents` class for hosting remote MCP servers with OAuth, transport (SSE/WebSockets), and HTTP streaming
- **State Management** — Leverages Cloudflare's Durable Objects for persistent agent state without external database dependencies
- **OAuth Abstraction** — "For people who never want to touch OAuth again" — handles authentication flows automatically
- **Cross-SDK Compatibility** — Works with OpenAI's Agents SDK despite sharing the same name

## Use Cases

- Hosting MCP servers that expose enterprise APIs to LLMs
- Building agent workflows that need persistent state (conversation history, workflow execution tracking)
- Running multi-client MCP architectures where multiple agents connect to the same server
- Voice agent infrastructure (WebRTC transport, STT integration)

## Architecture

The SDK sits on Cloudflare's Workers platform, which provides:

- **CPU-millisecond pricing** — Only charged for actual computation, not idle wait time (advantageous for agents waiting on LLM responses)
- **Durable Objects** — Stateful serverless primitives for agent state management
- **Global edge network** — Low-latency access for agents serving users worldwide

## Related

- [[entities/cloudflare]] — Cloudflare platform
- [[concepts/model-context-protocol]] — MCP protocol the SDK implements
- [[concepts/durable-objects]] — State management primitive
- [[concepts/agent-architecture]] — Agent architecture the SDK enables
- [[concepts/agent-tool-calling]] — Tool calling the SDK facilitates
