---
title: Building Protected MCP Servers — Den Delimarsky and Julia Kasper, MCP Steering Committee & Microsoft
category: references
tags:
- aief2025
- mcp
- auth
- security
- oauth
- protected-servers
- prm
- talk
aliases:
- building protected mcp servers
- mcp auth
- protected resource metadata
- mcp authorization spec
sources:
- 'https://www.youtube.com/watch?v=phbghukam-w'
provenance:
  extracted: 0.85
  inferred: 0.1
  ambiguous: 0.05
base_confidence: 0.8
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: core
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[entities/den-delimarsky]]'
  type: related_to
- target: '[[entities/julia-kasper]]'
  type: related_to
- target: '[[concepts/mcp-protected-servers]]'
  type: related_to
- target: '[[concepts/mcp-prm]]'
  type: related_to
- target: '[[concepts/mcp-auth-spec-evolution]]'
  type: related_to
- target: '[[concepts/mcp-local-vs-remote-auth]]'
  type: related_to
- target: '[[entities/mcp-steering-committee]]'
  type: related_to
summary: Building Protected MCP Servers — Den Delimarsky and Julia Kasper, MCP Steering Committee & Microsoft
---

# Building Protected MCP Servers — Den Delimarsky and Julia Kasper, MCP Steering Committee & Microsoft

**Speakers:** [[entities/den-delimarsky|Den Delimarsky]] ([[entities/microsoft|Microsoft]] Product Engineer, [[entities/mcp-steering-committee|MCP Steering Committee]]) and [[entities/julia-kasper|Julia Kasper]] ([[entities/microsoft|Microsoft]] Azure API Management)

**Video:** <https://www.youtube.com/watch?v=PHBGhUKAM-w>

## TL;DR

Den Delimarsky and Julia Kasper from Microsoft explain why MCP servers connecting to third-party APIs with user context need proper authorization — especially remote servers open to the internet. They trace the evolution from the old stable MCP auth spec (which required server builders to implement their own token minting) to the new draft spec (developed with [[entities/anthropic|Anthropic]] and security experts) that cleanly separates the MCP server as a resource server from a dedicated authorization server, enabling plug-and-play identity providers like [[entities/okta|Okta]], [[entities/auth0|Auth0]], [[entities/entra-id|Entra ID]], and [[entities/keycloak|Keycloak]]. The new spec puts the auth discovery dance on the client side and gives the server a Protected Resource Metadata (PRM) document to bootstrap the flow.

## Problem & Motivation

- Not every MCP server should be open — many connect to APIs that require user context and authorization. ^[extracted]
- Third-party APIs need to know who is invoking them because different customers have different permissions and admin policies. ^[extracted]
- Remote MCP servers are especially critical because anyone on the internet can access them — unlike local servers that run as binaries on the user's machine with full access to local credentials, certificates, and passkeys. ^[extracted]
- When an MCP client like Claude Desktop or VS Code requests data from a protected server, the server responds with HTTP 401 and a pointer to its PRM document. ^[extracted]

## Old vs New MCP Auth Spec

### Old Stable Spec (March 2024)

- Required server builders to spin up their own authorization server — essentially building their own token factory. ^[extracted]
- Server builders had to craft, manage, refresh, and assign tokens end-to-end. ^[extracted]
- Required deep OAuth expertise — you needed to understand OAuth internals including token minting. ^[extracted]

### New Draft Spec (upcoming stable)

- Clean separation between the MCP server (resource server) and a dedicated authorization server. ^[extracted]
- Token minting and lifetime management are handled by the authorization server (Okta, Auth0, Entra ID, etc.), not the MCP server. ^[extracted]
- MCP servers only reference metadata pointing to their authorization servers. ^[extracted]
- Still uses standard OAuth 2.0 — developers can rely on existing off-the-shelf libraries and services. ^[extracted]
- Developed collaboratively with [[entities/anthropic|Anthropic]] and security experts through the MCP Steering Committee. ^[extracted]

## The Auth Flow (New Spec)

1. MCP client (e.g., Claude Desktop) requests data from the MCP server.
2. Server responds with HTTP 401 ("I don't know who you are") and includes a `WWW-Authenticate` header pointing to the server's Protected Resource Metadata (PRM) document.
3. Client extracts PRM information: which authorization server to use (Okta, Auth0, Entra ID, Keycloak), supported grant methods, and scopes.
4. Client completes the full auth discovery and token dance end-to-end.
5. Client requests data again with the acquired token.
6. Server validates the token and returns the data.

The client is now responsible for the end-to-end auth dance; the server only validates tokens and hosts the PRM metadata. ^[extracted]

## Protected Resource Metadata (PRM)

PRM is a JSON document hosted by the MCP server that declares:
- What resource/server it is
- Which authorization server(s) to use (supports a list)
- Supported grant methods
- Supported scopes

This enables the client to bootstrap the authorization flow using standard OAuth mechanisms. ^[extracted]

## Practical Implementation

Den demonstrated a C# ASP.NET Core setup in a pull request for the official MCP C# SDK showing how minimal the server-side code is: just configure `AddAuthentication()` and point to the identity provider. No custom token minting. ^[extracted]

## Key Takeaways

- **No need to be a security expert** — the new spec lets developers focus on building the MCP server, not the auth infrastructure. ^[extracted]
- **Off-the-shelf identity providers** — plug in Okta, Auth0, Entra ID, Keycloak, etc. ^[extracted]
- **Standard OAuth 2.0** — everything still uses established standards and existing libraries. ^[extracted]
- **Client takes the auth dance** — the client discovers, acquires, and presents the token; the server validates. ^[extracted]
- **Less security code = fewer vulnerabilities** — non-experts implementing security code is a known risk. ^[extracted]

## Limitations

- The new spec is still in draft — not yet stable. ^[extracted]
- The demonstration used C# / ASP.NET Core (Microsoft bias). ^[extracted]
- PRM format details and the exact `WWW-Authenticate` header structure are not fully specified in the transcript. ^[ambiguous]

## Related

- [[concepts/mcp-protected-servers]] — The broader concept of protected MCP servers
- [[concepts/mcp-prm]] — Protected Resource Metadata in detail
- [[concepts/mcp-auth-spec-evolution]] — Full evolution from old to new MCP auth spec
- [[concepts/mcp-local-vs-remote-auth]] — Why remote needs auth but local doesn't
- [[concepts/mcp-gateway-pattern]] — Gateway pattern for centralized MCP auth
- [[concepts/enterprise-mcp-deployment]] — Enterprise deployment stages including auth
- [[entities/auth0]] — Auth0 as an identity provider for MCP auth
- [[entities/okta]] — Okta as an identity provider for MCP auth
- [[entities/entra-id]] — Microsoft Entra ID for MCP auth
