---
title: MCP Resource Server Separation
category: concepts
tags:
- mcp
- auth
- oauth
- architecture
- separation-of-concerns
sources:
- 'https://www.youtube.com/watch?v=phbghukam-w'
provenance:
  extracted: 0.85
  inferred: 0.1
  ambiguous: 0.05
base_confidence: 0.8
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/mcp-auth-spec-evolution]]'
  type: related_to
- target: '[[concepts/mcp-protected-servers]]'
  type: related_to
- target: '[[concepts/oauth-2.0]]'
  type: uses
summary: MCP Resource Server Separation
---

# MCP Resource Server Separation

The new MCP authorization spec applies the classic OAuth 2.0 pattern of separating the resource server (which exposes protected data) from the authorization server (which issues and manages tokens). This separation is the core architectural improvement over the old stable MCP auth spec.

## The Pattern

In OAuth 2.0, a resource server exposes protected resources and validates tokens, while a separate authorization server issues tokens and manages their lifecycle. The new MCP spec adopts this exact split:

- **MCP Server = Resource Server** — Exposes tools, resources, and prompts. Validates tokens. Does not mint or manage tokens.
- **Authorization Server = Identity Provider** — Handles token minting, lifetime management, and user authentication. Examples: [[entities/okta|Okta]], [[entities/auth0|Auth0]], [[entities/entra-id|Entra ID]], [[entities/keycloak|Keycloak]].

This means MCP server builders can plug in any standard identity provider without implementing OAuth from scratch. ^[extracted]

## Benefits

- **No token minting in MCP servers** — Token creation and lifecycle are entirely delegated to the authorization server. ^[extracted]
- **Off-the-shelf identity providers** — Use Okta, Auth0, Entra ID, Keycloak, or any OAuth 2.0-compliant provider. ^[extracted]
- **Standard OAuth 2.0** — Everything uses established standards and existing libraries; no custom security code. ^[extracted]
- **Lower security risk** — Non-experts don't need to write security code, reducing the chance of vulnerabilities. ^[extracted]
- **Developer focus** — Developers can focus on building the MCP server's functionality, not its auth infrastructure. ^[extracted]

## How It Works

1. MCP server hosts a PRM document declaring its authorization server(s).
2. Client discovers the PRM, identifies the authorization server.
3. Client performs the OAuth dance against the authorization server.
4. Client presents the token to the MCP server (resource server).
5. MCP server validates the token and serves the requested data.

The MCP server never touches token minting — it only validates. ^[extracted]

## Related

- [[concepts/mcp-auth-spec-evolution]] — The evolution that introduced this separation
- [[concepts/mcp-protected-servers]] — Protected servers using this pattern
- [[concepts/mcp-prm]] — PRM documents that declare the authorization server
- [[concepts/oauth-2.0]] — The underlying OAuth 2.0 protocol
