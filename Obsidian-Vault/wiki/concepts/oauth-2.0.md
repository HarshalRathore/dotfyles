---
title: OAuth 2.0
category: concepts
tags:
- oauth
- protocol
- authorization
- tokens
- security
sources:
- AIEF2025 - How to Secure Agents using OAuth — Jared Hanson (Keycard, Passport.js) - https://www.youtube.com/watch?v=blmAkayzE8M
- 'https://www.youtube.com/watch?v=fzomsupg37e'
provenance:
  extracted: 0.8
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.95
lifecycle: draft
tier: core
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/openid-connect|OpenID Connect]]'
  type: extends
- target: '[[concepts/authorization-server|Authorization Server]]'
  type: related_to
- target: '[[concepts/resource-server|Resource Server]]'
  type: related_to
- target: '[[concepts/access-token|Access Token]]'
  type: related_to
- target: '[[concepts/refresh-token|Refresh Token]]'
  type: related_to
summary: OAuth 2.0
---

# OAuth 2.0

OAuth 2.0 is a delegated authorization protocol for applications (clients) to request access to APIs (resource servers), with access mediated by an authorization server. It is the foundation for agent identity and access control in AI systems.

## Three Roles

OAuth defines exactly three roles in the authorization flow:

1. **Client** — The application requesting access to resources on behalf of a user. In the agent context, this is the chatbot or AI agent.
2. **Resource Server** — The API that holds the data and validates tokens. It does not handle authentication or consent.
3. **Authorization Server** — The entity that mediates access by issuing tokens after user consent. It handles authentication, consent flows, and token lifecycle.

This three-role split is the core architectural benefit: APIs (resource servers) don't need to care about authentication, consent, or token management. They simply validate tokens presented to them.

## Key Mechanisms

- **Access tokens** — Short-lived credentials that prove authorization for specific scopes. Presented to resource servers.
- **Refresh tokens** — Long-lived credentials that allow access tokens to be rotated without re-authentication. This enables short-lived access tokens while maintaining persistent authorized connections.
- **Authorization code flows** — Flows involving user delegation, typically via browser-based consent screens. The user is prompted to approve the access request.
- **Scopes** — Granular permissions that limit what a token can access.

## OAuth vs Authentication

OAuth is strictly an authorization protocol, not authentication. However, it is commonly used for sign-in (e.g., "Sign in with Google") — this is a special case where the API is replaced with a user-info API that returns claims about the user. This pattern became so common it was formalized as [[concepts/openid-connect|OpenID Connect]], an identity layer on top of OAuth.

## Benefits for Agent Security

- **Short-lived tokens** — Access tokens expire and are rotated, reducing the impact of compromise
- **Scoped access** — Agents only get the minimum permissions they need
- **Centralized policy** — Authorization servers centralize consent and policy decisions
- **Ecosystem deployment** — Multiple apps and APIs protected by a single identity infrastructure
- **Audit trail** — Every token exchange is traceable to a user and a consent decision

## In the Agent Context

For [[concepts/model-context-protocol|MCP]] and AI agents, OAuth provides the mechanism to move from static API keys (long-lived, broadly scoped) to dynamic access (short-lived, scoped, rotatable tokens). The agent becomes the OAuth client, the MCP server becomes the resource server, and a dedicated authorization server handles tokens and consent.

## Related

- [[concepts/openid-connect]] — OpenID Connect as authentication layer on OAuth
- [[concepts/authorization-server]] — The authorization server role
- [[concepts/resource-server]] — The resource server role
- [[concepts/access-token]] — Access tokens and their lifecycle
- [[concepts/refresh-token]] — Refresh tokens for token rotation
- [[concepts/static-secrets-problem]] — Why static API keys are insecure at scale
- [[concepts/mcp-resource-server-separation]] — Applying OAuth separation to MCP
