---
title: Authorization Server
category: concepts
tags:
- oauth
- authorization
- tokens
- identity
- consent
sources:
- AIEF2025 - How to Secure Agents using OAuth — Jared Hanson (Keycard, Passport.js) - https://www.youtube.com/watch?v=blmAkayzE8M
- 'https://www.youtube.com/watch?v=fzomsupg37e'
provenance:
  extracted: 0.85
  inferred: 0.1
  ambiguous: 0.05
base_confidence: 0.95
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/oauth-2.0|OAuth 2.0]]'
  type: related_to
- target: '[[concepts/resource-server|Resource Server]]'
  type: related_to
- target: '[[concepts/access-token|Access Token]]'
  type: related_to
- target: '[[concepts/mcp-resource-server-separation|MCP Resource Server Separation]]'
  type: related_to
summary: Authorization Server
---

# Authorization Server

The authorization server is one of the three core roles in [[concepts/oauth-2.0|OAuth 2.0]]. It mediates access between clients and resource servers by issuing, managing, and validating tokens. It is the central authority for authentication, consent, and policy decisions.

## Responsibilities

- **User authentication** — Verifying the user's identity (passwords, MFA, SSO, etc.)
- **Consent management** — Prompting users to approve or deny access requests
- **Token issuance** — Creating access tokens (and refresh tokens) with appropriate scopes
- **Token lifecycle** — Managing token expiration, rotation, and revocation
- **Policy enforcement** — Applying authorization policies centrally

## Benefits of Centralization

- APIs don't need to implement authentication, consent, or token management
- Policy can be centralized and deployed across ecosystems of apps and APIs
- Audit trails are consolidated in one location
- Token rotation and key rotation are managed in one place

## In the Agent Context

For AI agents accessing [[concepts/model-context-protocol|MCP]] servers, the authorization server is the critical piece that was missing from the original MCP auth spec. The corrected model places the authorization server as a separate entity (e.g., [[entities/auth0|Auth0]], [[entities/okta|Okta]], [[entities/entra-id|Entra ID]]) that handles tokens, while the MCP server acts only as a resource server.

## Common Implementations

- [[entities/auth0|Auth0]]
- [[entities/okta|Okta]]
- [[entities/entra-id|Entra ID]] (Azure AD)
- [[entities/keycloak|Keycloak]]
- [[entities/cloudflare|Cloudflare]] (via Workers OAuth)

## Related

- [[concepts/oauth-2.0]] — OAuth 2.0 protocol
- [[concepts/resource-server]] — The resource server role
- [[concepts/access-token]] — Access tokens issued by authorization servers
- [[concepts/mcp-resource-server-separation]] — Separating authorization from MCP servers
- [[concepts/static-secrets-problem]] — Why authorization servers solve the static secrets problem
