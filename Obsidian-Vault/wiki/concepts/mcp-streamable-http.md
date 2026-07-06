---
title: "MCP Streamable HTTP Transport"
category: concepts
tags:
  - mcp
  - streamable-http
  - transport
  - sse
  - model-context-protocol
summary: "MCP's modern transport protocol using streamable HTTP as a replacement for SSE, reducing stateful server churn while maintaining streaming capabilities."
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.65
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-05
sources:
  - "https://www.youtube.com/watch?v=exed-8gfumm"
  - "AIEF2025 - MCP: Origins and Requests For Startups — Theodora Chu, Model Context Protocol PM, Anthropic - https://www.youtube.com/watch?v=x-8pBqWiTzk"

---

# MCP Streamable HTTP Transport

Streamable HTTP is the [[concepts/model-context-protocol|MCP]] transport protocol that uses HTTP streaming as a replacement for Server-Sent Events (SSE). ^[extracted]

## Why It Matters

SSE creates "really stateful churn on your servers" — each SSE connection requires server-side state management. Streamable HTTP eliminates this by using standard HTTP streaming, which is stateless from the server's perspective. ^[extracted]

## Agent-First Rationale

Theo Chu (MCP PM at Anthropic) explained that the shift from SSE to Streamable HTTP was a "controversial decision" driven by the agent-first design principle: Streamable HTTP enables more bidirectionality, which is essential for agent-to-agent communication. If agents are the future of MCP, they need to be able to communicate with each other, and Streamable HTTP makes that possible. ^[extracted]

## Status

Streamable HTTP has been working in [[entities/microsoft|VS Code]] for two versions as of the AIEF2025 talk. However, testing has been difficult because few servers implemented it yet — creating a chicken-and-egg problem for adoption. ^[extracted]

Theo Chu noted that Streamable HTTP was "launched as the primary transport" replacing SSE in the last six months as part of MCP's project updates. ^[extracted]

[[entities/harald-kirschner]] urged server hosts to migrate to streamable HTTP rather than continuing with SSE: "SSE is still possible to use with HTTP, so you get both benefits, but you're avoiding this really stateful churn on your servers." ^[extracted]

## Relationship to Other Transports

[[entities/john-welsh|John Welsh]] of [[entities/anthropic|Anthropic]] has noted that MCP is fundamentally about JSON streams, and transport is an implementation detail — any transport providing read and write streams can carry MCP. ^[inferred] Streamable HTTP is the modern, recommended transport, while SSE remains supported for backward compatibility.

## Related

- [[concepts/model-context-protocol]] — MCP protocol overview
- [[concepts/mcp-gateway-pattern]] — Centralized gateway architecture
- [[concepts/enterprise-mcp-deployment]] — Enterprise MCP deployment
- [[entities/harald-kirschner]] — VS Code MCP advocate
- [[entities/microsoft]] — Microsoft/VS Code
- [[concepts/mcp-server-simplicity-optimization|MCP Server Simplicity Optimization]] — Why server simplicity matters
