---
title: MCP-to-MCP Protocol
category: concepts
tags:
- mcp
- protocol
- remote
- security
- agent
sources:
- 'https://www.youtube.com/watch?v=rkvilz06y08'
provenance:
  extracted: 0.7
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.65
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
summary: MCP-to-MCP Protocol
---

# MCP-to-MCP Protocol

The MCP-to-MCP protocol is an extension of [[concepts/model-context-protocol|MCP]] that enables MCP servers to communicate with other MCP servers, potentially across network boundaries. This allows MCP servers to run in protected environments (e.g., behind firewalls) while still serving data to IDE-based agents. ^[extracted]

## How It Works

In the MCP-to-MCP model:

1. An MCP server runs on a remote server in a protected environment.
2. The remote server processes MCP requests and returns results.
3. Results are transmitted back to the IDE where the agent can use them.

This pattern enables secure access to internal data sources without exposing the underlying infrastructure to the developer's local machine. ^[inferred]

## Status

Jon Peck mentioned the MCP-to-MCP protocol at AIEF2025 but noted he was "not super familiar with it." The protocol was referenced as an emerging capability rather than a fully matured feature. ^[extracted]

## Relationship to Other Security Models

The MCP-to-MCP protocol complements:

- **[[concepts/mcp-permission-gate]]** — User permission gating still applies even for remote MCP connections.
- **[[entities/github-copilot]] security model** — Firewalled, ephemeral, branch-only operations.
- **Remote MCP over stdio** — Alternative to local MCP servers for enterprise scenarios. ^[2]

## Related

- [[concepts/model-context-protocol]] — The MCP protocol
- [[concepts/mcp-permission-gate]] — Permission gating
- [[entities/github-copilot]] — Copilot security model
