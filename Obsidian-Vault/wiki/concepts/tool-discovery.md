---
title: Tool Discovery
category: concepts
tags:
- mcp
- tool-discovery
- dynamic-discovery
- ai-agents
- model-context-protocol
aliases:
- dynamic tool discovery
- tool discovery
- MCP tool discovery
sources:
- AIEF2025 - The rise of the agentic economy on the shoulders of MCP — Jan Curn, Apify - https://www.youtube.com/watch?v=blW-lSd5CYQ
provenance:
  extracted: 0.7
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/mcp-dynamic-tool-discovery|MCP Dynamic Tool Discovery]]'
  type: related_to
- target: '[[concepts/the-agentic-economy]]'
  type: enables
- target: '[[entities/apify]]'
  type: used_by
summary: Tool Discovery
---

# Tool Discovery

**Tool discovery** is the capability for AI agents to dynamically discover available tools at runtime, rather than having them statically configured. Jan Čern of Apify calls it the "killer feature" of MCP that will make it a "huge differentiator from OpenAPI." ^[extracted]

## Why It Matters

With marketplaces containing thousands of tools (Apify has 5,000 Actors), there is no way to publish all tools through OpenAPI because the context would be too large and the risk of incorrect results increases with tool count. Tool discovery exposes tools only as needed, solving the context window problem. ^[extracted]

## How It Works

1. A client connects to an MCP server
2. The client dynamically queries the server for available tools
3. Tools are exposed to the agent based on the current workflow context
4. The agent reasons about which tools to use

## Current State

Tool discovery support was limited as of the AIEF2025 talk. Recent developments include:
- **VS Code** — added tool discovery support (mentioned as "just yesterday" at time of talk)
- **Claude Desktop** — added tool discovery support (mentioned as "two days ago" at time of talk) ^[extracted]

## Contrast with OpenAPI

OpenAPI requires all tools to be declared upfront in a static schema. This works for small tool sets but breaks down at scale. Tool discovery enables:
- Dynamic tool exposure based on context
- Scalability to thousands of tools
- Reduced context window pressure
- Runtime adaptation to workflow needs ^[inferred]

## Relationship to Other Concepts

Tool discovery is the mechanism that makes the [[concepts/the-agentic-economy|agentic economy]] possible — without it, agents cannot discover services at scale. It complements [[concepts/agent-identity-and-payments|agent identity and payments]] to enable full agent autonomy. ^[inferred]

## Related Pages

- [[concepts/the-agentic-economy]] — The agentic economy concept
- [[concepts/mcp-dynamic-tool-discovery]] — MCP's dynamic tool discovery spec
- [[entities/apify]] — Apify's MCP server using tool discovery
