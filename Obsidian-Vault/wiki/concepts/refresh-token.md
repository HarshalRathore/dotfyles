---
title: "Refresh Token"
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
  - target: "[[concepts/access-token|Access Token]]"
    type: related_to
  - target: "[[concepts/authorization-server|Authorization Server]]"
    type: related_to
---

# Refresh Token

A refresh token is a long-lived credential issued by an [[concepts/authorization-server|authorization server]] alongside an [[concepts/access-token|access token]] in [[concepts/oauth-2.0|OAuth 2.0]] flows. It allows the client to obtain new access tokens without requiring the user to re-authenticate, enabling persistent authorized connections while keeping individual access tokens short-lived.

## Purpose

Refresh tokens solve the tension between two security requirements:

1. **Access tokens should be short-lived** — To limit the impact of token compromise
2. **Authorized connections should persist** — Users don't want to re-authenticate every time an access token expires

Refresh tokens provide the bridge: they are long-lived (or effectively permanent until revoked) and are used to obtain new access tokens when the current one expires.

## How It Works

1. During the initial OAuth flow (e.g., authorization code flow), the authorization server issues both an access token and a refresh token
2. When the access token expires, the client presents the refresh token to the authorization server
3. The authorization server validates the refresh token and issues a new access token (and optionally a new refresh token)
4. The user is not involved in this rotation — it happens automatically

## Security Properties

- **Not presented to resource servers** — Refresh tokens are only used with the authorization server, never with resource servers
- **Can be revoked** — The authorization server can revoke a refresh token, terminating all associated access
- **Longer-lived than access tokens** — Typically days, weeks, or indefinitely (until revoked)

## In the Agent Context

For AI agents, refresh tokens enable persistent connections to [[concepts/model-context-protocol|MCP]] servers without requiring the user to re-authorize every time an access token expires. The agent holds the refresh token and automatically rotates access tokens as needed.

## Related

- [[concepts/oauth-2.0]] — OAuth 2.0 protocol
- [[concepts/access-token]] — Access tokens rotated via refresh tokens
- [[concepts/authorization-server]] — Authorization servers issue and validate refresh tokens
- [[concepts/static-secrets-problem]] — Refresh tokens enable secure long-lived agent connections
