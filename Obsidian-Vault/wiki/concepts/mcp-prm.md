---
title: Protected Resource Metadata (PRM)
category: concepts
tags:
- mcp
- auth
- oauth
- metadata
- discovery
sources:
- 'https://www.youtube.com/watch?v=phbghukam-w'
provenance:
  extracted: 0.9
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.8
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/mcp-protected-servers]]'
  type: uses
- target: '[[concepts/mcp-auth-spec-evolution]]'
  type: derived_from
summary: Protected Resource Metadata (PRM)
---

# Protected Resource Metadata (PRM)

Protected Resource Metadata (PRM) is a JSON document hosted by an MCP server that declares its authorization configuration. It tells MCP clients how to bootstrap the end-to-end authorization flow to access the server's tools and resources.

## What PRM Contains

PRM is a JSON document that specifies:

- **Resource identity** — what server/resource this metadata describes
- **Authorization server(s)** — one or more authorization servers the client should use (supports a list for multi-provider setups)
- **Supported grant methods** — which OAuth grant flows are available (e.g., authorization code, client credentials)
- **Supported scopes** — the authorization scopes the server understands

The PRM is discovered by the MCP client when the server responds with HTTP 401, via a `WWW-Authenticate` header that points to the PRM document's URL. ^[extracted]

## Role in the Auth Flow

PRM is the critical bootstrap step in the new MCP auth spec:

1. Client requests data → Server returns HTTP 401 with PRM URL in `WWW-Authenticate` header.
2. Client fetches and parses the PRM document.
3. Client extracts authorization server URL, grant methods, and scopes from PRM.
4. Client performs the full OAuth dance against the identified authorization server.
5. Client presents the acquired token back to the MCP server.

Without PRM, the client has no way to discover where or how to authenticate. ^[extracted]

## Relationship to OAuth 2.0

PRM is designed to work with standard OAuth 2.0 authorization servers. It does not introduce a new auth protocol — instead, it provides a standardized discovery mechanism that lets clients find and configure OAuth flows against existing identity providers (Okta, Auth0, Entra ID, Keycloak). ^[extracted]

## Related

- [[concepts/mcp-protected-servers]] — Protected MCP servers that use PRM
- [[concepts/mcp-auth-spec-evolution]] — PRM is part of the new MCP auth spec
- [[concepts/mcp-local-vs-remote-auth]] — PRM is relevant for remote servers
- [[entities/auth0]] — Auth0 as an authorization server that works with PRM
- [[entities/okta]] — Okta as an authorization server that works with PRM
