---
title: "John Welsh"
tags:
  - person
  - anthropic
  - mcp
  - ai-engineering
  - tool-calling
sources:
  - "https://www.youtube.com/watch?v=0NHCyq8bBcM"
summary: "Member of Technical Staff at Anthropic focused on MCP integration, tool calling systems, and large-scale AI infrastructure."
provenance:
  extracted: 0.70
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.42
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# John Welsh

John Welsh is a Member of Technical Staff at [[entities/anthropic|Anthropic]], specializing in tool calling and MCP (Model Context Protocol) integration across the organization.

## Background

- 20 years of experience building large-scale systems and dealing with the problems that scale introduces.
- Prior to Anthropic, worked on large-scale systems across multiple organizations.
- Joined Anthropic focused on tool calling and integration, implementing MCP support for all internal and external integrations within the org.

## Key Contributions

At Anthropic, Welsh designed and built the **MCP Gateway**, a shared infrastructure piece providing a single entry point for all MCP connections across the organization. The gateway handles routing, authentication (OAuth), rate limiting, observability, and policy enforcement centrally.

- **MCP Gateway Pattern** — centralized MCP connection management with URL-based routing to internal and external MCP servers. ^[inferred]
- **Transport Agnosticism** — demonstrated that MCP works over any transport (WebSocket, gRPC, Unix socket, even IMAP/email) as long as read/write streams can be piped into the MCP SDK.
- **Unified Authentication** — OAuth handled at the gateway so individual services don't reimplement auth.
- **Pit of Success Design** — applied the philosophy of making the right thing the easiest thing to drive organizational adoption of the MCP Gateway.

## Philosophy

Welsh advocates that standardization on plumbing infrastructure is not a competitive advantage — "it's not a competitive advantage to be really good at making Google Drive talk to your app" — and that being intentionally boring on cross-cutting concerns lets teams focus on differentiating work.

## Related

- [[entities/anthropic]] — Employer where Welsh implemented MCP at scale
- [[concepts/mcp-gateway-pattern]] — The architectural pattern Welsh developed
- [[concepts/model-context-protocol]] — The protocol Welsh integrated across Anthropic
