---
title: "MCP Gateway Pattern"
tags:
  - mcp
  - architecture
  - infrastructure
  - enterprise
  - gateway
sources:
  - "https://www.youtube.com/watch?v=0NHCyq8bBcM"
summary: "Architectural pattern for centralizing MCP connections through a shared gateway service that handles routing, auth, rate limiting, observability, and policy enforcement."
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

## Related

- [[concepts/model-context-protocol]] — The protocol the gateway serves
- [[concepts/enterprise-mcp-deployment]] — The gateway pattern supports enterprise deployment stages
- [[concepts/pit-of-success-design]] — Design philosophy behind making the gateway the default path
