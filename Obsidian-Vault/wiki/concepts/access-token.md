---
title: "Access Token"
category: concepts
tags:
  - oauth
  - tokens
  - authorization
  - security
sources:
  - "AIEF2025 - How to Secure Agents using OAuth — Jared Hanson (Keycard, Passport.js) - https://www.youtube.com/watch?v=blmAkayzE8M"
provenance:
  extracted: 0.90
  inferred: 0.05
  ambiguous: 0.05
base_confidence: 0.95
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/oauth-2.0|OAuth 2.0]]"
    type: related_to
  - target: "[[concepts/refresh-token|Refresh Token]]"
    type: related_to
  - target: "[[concepts/authorization-server|Authorization Server]]"
    type: related_to
  - target: "[[concepts/resource-server|Resource Server]]"
    type: related_to
---

# Access Token

An access token is a short-lived credential issued by an [[concepts/authorization-server|authorization server]] that proves a client's authorization to access specific resources on a [[concepts/resource-server|resource server]]. In [[concepts/oauth-2.0|OAuth 2.0]], access tokens replace static API keys as the mechanism for granting API access.

## Properties

- **Short-lived** — Access tokens expire after a bounded time window (minutes to hours)
- **Scoped** — Tokens grant only specific permissions (scopes)
- **Self-contained** — Resource servers can verify tokens without calling back to the authorization server (typically via JWT signature verification)
- **Presented to resource servers** — The client includes the token in API requests (usually as a Bearer token)

## Lifecycle

1. **Issued** — After successful authentication and user consent, the authorization server issues an access token
2. **Used** — The client presents the token to resource servers to access protected resources
3. **Expires** — The token expires after its configured lifetime
4. **Rotated** — If a refresh token is available, a new access token can be obtained without re-authentication

## Relationship to Refresh Tokens

Access tokens are designed to be short-lived for security. [[concepts/refresh-token|Refresh tokens]] are long-lived credentials that allow access tokens to be rotated without requiring the user to re-authenticate. This enables persistent authorized connections while keeping individual access tokens short-lived.

## In the Agent Context

For AI agents, access tokens provide the mechanism to move from static API keys to dynamic, scoped, short-lived credentials. The agent (as OAuth client) obtains an access token from the authorization server and presents it to MCP servers (as resource servers) to access tools and data.

## Related

- [[concepts/oauth-2.0]] — OAuth 2.0 protocol
- [[concepts/refresh-token]] — Refresh tokens for token rotation
- [[concepts/authorization-server]] — Authorization servers issue access tokens
- [[concepts/resource-server]] — Resource servers validate access tokens
- [[concepts/static-secrets-problem]] — Access tokens solve the static secrets problem
