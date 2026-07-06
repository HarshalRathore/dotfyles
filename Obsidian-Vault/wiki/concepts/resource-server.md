---
title: Resource Server
category: concepts
tags:
- oauth
- api
- tokens
- authorization
sources:
- AIEF2025 - How to Secure Agents using OAuth — Jared Hanson (Keycard, Passport.js) - https://www.youtube.com/watch?v=blmAkayzE8M
provenance:
  extracted: 0.9
  inferred: 0.05
  ambiguous: 0.05
base_confidence: 0.95
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/oauth-2.0|OAuth 2.0]]'
  type: related_to
- target: '[[concepts/authorization-server|Authorization Server]]'
  type: related_to
- target: '[[concepts/access-token|Access Token]]'
  type: related_to
- target: '[[concepts/mcp-resource-server-separation|MCP Resource Server Separation]]'
  type: related_to
summary: Resource Server
---

# Resource Server

The resource server is one of the three core roles in [[concepts/oauth-2.0|OAuth 2.0]]. It holds the protected data (resources) and validates tokens presented by clients. It does NOT handle authentication, consent, or token management — those are the authorization server's responsibilities.

## Responsibilities

- **Expose protected resources** — APIs, tools, data endpoints that require authorization
- **Validate tokens** — Verify that presented access tokens are valid (signature, expiration, scope)
- **Serve data** — Return the requested resource if the token is valid and scoped appropriately
- **Reject unauthorized requests** — Return appropriate error codes for invalid or expired tokens

## What It Does NOT Do

- Does NOT authenticate users
- Does NOT manage consent flows
- Does NOT issue or mint tokens
- Does NOT manage token lifecycle (rotation, expiration, revocation)

## The Separation Benefit

By separating the resource server from the authorization server, APIs can focus on their core functionality without needing to implement authentication infrastructure. This is the key architectural insight behind OAuth: hand off authentication and consent to a dedicated authority, and only validate tokens.

## In the Agent Context

For [[concepts/model-context-protocol|MCP]] servers, the resource server model is the corrected architecture. MCP servers should expose tools and resources, validate tokens, and serve data — but should NOT mint tokens or handle user consent. The original MCP auth spec incorrectly collapsed these roles into the MCP server itself, requiring server builders to become OAuth experts.

## Related

- [[concepts/oauth-2.0]] — OAuth 2.0 protocol
- [[concepts/authorization-server]] — The authorization server role
- [[concepts/access-token]] — Tokens validated by resource servers
- [[concepts/mcp-resource-server-separation]] — MCP servers as resource servers
- [[concepts/mcp-protected-servers]] — Protected MCP servers using this pattern
