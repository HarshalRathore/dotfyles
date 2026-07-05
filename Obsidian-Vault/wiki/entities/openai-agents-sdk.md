---
title: "OpenAI Agents SDK"
category: entities
tags:
  - sdk
  - openai
  - agents
  - mcp
  - agent-framework
aliases:
  - OpenAI Agents
  - OAI Agents SDK
sources:
  - "AIEF2025 - Building Agents (the hard parts!) - Rita Kozlov, Cloudflare - https://www.youtube.com/watch?v=j_TKDweOsYE"
summary: "OpenAI's SDK for building AI agents, released shortly before AIEF2025. Shares the same name as Cloudflare's Agents SDK but is cross-compatible — the two SDKs work and play with each other.
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
  - target: "[[concepts/model-context-protocol]]"
    type: implements
  - target: "[[entities/cloudflare-agents-sdk]]"
    type: related_to
  - target: "[[entities/openai]]"
    type: owned_by
---

# OpenAI Agents SDK

The **OpenAI Agents SDK** is OpenAI's development toolkit for building AI agents. It was released shortly before AIEF2025, around the same time Cloudflare released its own Agents SDK — leading to a naming collision that Rita Kozlov acknowledged.

## Cross-SDK Compatibility

Despite sharing the same name, the two SDKs are designed to interoperate:

> "And yes, it has the same name as the one that OpenAI just released a few days ago as well. And the two actually work, play with each other really, really well."

This cross-compatibility is significant because it means developers can use Cloudflare's infrastructure (Agents SDK, Durable Objects, Workers) to host and run agents built with OpenAI's SDK — and vice versa. The shared foundation is [[concepts/model-context-protocol|MCP]], which both SDKs support.

## Relationship to MCP

Both the OpenAI Agents SDK and Cloudflare's Agents SDK build on the MCP standard for exposing tools and capabilities to agents. This shared protocol layer is what enables the cross-compatibility — both SDKs speak the same tool-exposure language.

## Related

- [[entities/cloudflare-agents-sdk]] — Cloudflare's Agents SDK (cross-compatible)
- [[entities/openai]] — OpenAI (creator)
- [[concepts/model-context-protocol]] — MCP protocol both SDKs implement
- [[concepts/agent-architecture]] — Agent architecture these SDKs enable
