---
title: MCP Gateway Pattern
tags:
- mcp
- architecture
- infrastructure
- enterprise
- gateway
sources:
- 'https://www.youtube.com/watch?v=0nhcyq8bbcm'
- 'https://www.youtube.com/watch?v=fci4jt86gsw'
summary: Architectural pattern for centralizing MCP connections through a shared gateway service that handles routing, auth, rate limiting, observability, and policy enforcement.
provenance:
  extracted: 0.7
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.42
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
category: concepts
---

# MCP Gateway Pattern

The MCP Gateway pattern is an architectural approach pioneered at [[entities/anthropic|Anthropic]] by [[entities/john-welsh|John Welsh]] for centralizing Model Context Protocol connections within a large organization. Rather than each service implementing its own MCP client infrastructure, a shared gateway provides a single entry point.

## The Pattern

Engineers call a single `connectToMCP(url, orgId, accountId)` function that returns an MCP SDK client session. The gateway handles everything else transparently:

- **URL-based routing** — the same call routes to external MCP servers (e.g., `mcp.asana.com`) or internal servers.
- **Credential management** — OAuth is handled at the gateway, not duplicated across services. The gateway stores and manages credentials centrally.
- **Authentication** — requests include a signed token; the gateway validates and injects stored credentials as bearer tokens for the downstream MCP server.
- **Rate limiting** — centralized rate limit enforcement across all MCP consumers.
- **Observability** — all MCP traffic flows through one point, enabling comprehensive monitoring.

## Code Interface

```
connectToMCP(url, orgId, accountId) → MCPSDKClientSession
```

The returned object is a standard MCP SDK client session, which means protocol feature updates propagate automatically when internal MCP packages are updated — no per-service changes needed.

## Key Benefits

- **Portable credentials** — batch jobs and background processes authenticate through the same gateway without user re-authorization.
- **Single point of ingress/egress** — all model context flowing in and out of the organization passes through one observable point.
- **Policy enforcement** — standardized message format (JSON-RPC) makes it easy to hook into streams for content classification, tool execution auditing, and malicious server banning.
- **Security** — eliminates the need for outbound external network connectivity from individual services; the gateway is the sole egress point.
- **Operational simplicity** — standardizing on one approach accelerates engineer onboarding: "having a single approach to learn as engineers makes things faster."

## Practitioner Perspective

[[entities/david-cramer|David Cramer]] ([[entities/sentry|Sentry]]) reinforces the gateway pattern through his advocacy of remote MCP over stdio for B2B SaaS. Remote MCP servers, accessed through a shared gateway, give enterprises the same advantages cloud always provided: iteration speed, centralized security control, and operational agility. ^[extracted] The gateway becomes the natural place to enforce the "design for unknown consumer" principle — since the gateway is the single entry point, it's where context should be optimized for any model or client, not a specific one. ^[inferred]

## Related

- [[concepts/model-context-protocol]] — The protocol the gateway serves
- [[concepts/enterprise-mcp-deployment]] — The gateway pattern supports enterprise deployment stages
- [[concepts/pit-of-success-design]] — Design philosophy behind making the gateway the default path
- [[entities/david-cramer]] — Practitioners' perspective on remote MCP architecture
- [[entities/sentry]] — Production remote MCP server implementation
- [[references/aief2025-mcp-is-not-good-yet-david-cramer-sentry]] — Full talk reference
