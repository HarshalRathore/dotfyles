---
title: Protected MCP Servers
category: concepts
tags:
- mcp
- auth
- security
- oauth
- enterprise
- remote-servers
sources:
- 'https://www.youtube.com/watch?v=phbghukam-w'
- 'https://www.youtube.com/watch?v=fci4jt86gsw'
provenance:
  extracted: 0.7
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: core
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/mcp-prm]]'
  type: uses
- target: '[[concepts/mcp-auth-spec-evolution]]'
  type: derived_from
- target: '[[concepts/mcp-local-vs-remote-auth]]'
  type: related_to
- target: '[[concepts/enterprise-mcp-deployment]]'
  type: extends
- target: '[[concepts/mcp-gateway-pattern]]'
  type: related_to
summary: Protected MCP Servers
---

# Protected MCP Servers

Protected MCP servers are Model Context Protocol servers that require user authorization before exposing tools, resources, or prompts. They exist to gate access to third-party APIs that need user context — different users have different permissions, and the MCP layer must expose this identity to the underlying API.

## Why Protection Matters

Not every MCP server should be open. When an MCP server connects to a third-party API (whether owned by the server builder or someone else), that API needs to know who is invoking it. The API enforces access control based on the caller's credentials — an admin sees different tools than a contributor. ^[extracted]

This is especially critical for **remote MCP servers** that are accessible over the internet. Unlike local servers (which run as binaries on the user's machine with full access to local credentials, certificates, and passkeys), remote servers face the entire internet and must enforce proper authorization at the protocol level. ^[extracted]

## The Protection Model (New MCP Auth Spec)

The new draft MCP authorization spec (developed with [[entities/anthropic|Anthropic]] and security experts) defines a clean separation:

1. The MCP server acts as a **resource server** — it exposes tools/resources but does not mint tokens.
2. A dedicated **authorization server** (Okta, Auth0, Entra ID, Keycloak) handles token minting and lifecycle.
3. The MCP server hosts a **Protected Resource Metadata (PRM)** document that tells clients where to find the authorization server.
4. The **MCP client** (Claude Desktop, VS Code) performs the full auth discovery and token dance.
5. The server validates the presented token and serves the requested data.

This means MCP server builders no longer need to be OAuth experts — they plug in an identity provider and let standard OAuth 2.0 handle the rest. ^[extracted]

## When Protection Is Required

- **Remote MCP servers** connecting to APIs with user-scoped permissions
- **Enterprise deployments** requiring SSO, audit logs, and compliance
- **Multi-tenant SaaS** where different customers have different tool access
- **Admin vs contributor scoping** where tool visibility depends on user role

## Local Servers and Auth

Local MCP servers (stdio-based, running on the user's machine) have different security characteristics. Since they run as binaries on the user's own machine, they can use any local authentication mechanism: secrets, certificates, passkeys, OS credential stores. There are no protocol-level constraints — the local environment is already trusted. ^[inferred] However, special cases like remote desktop and multi-user VM scenarios may still require explicit auth, though these are left to implementers. ^[extracted]

## Related

- [[concepts/mcp-prm]] — The PRM document that bootstraps the auth flow
- [[concepts/mcp-auth-spec-evolution]] — How the MCP auth spec evolved to support this
- [[concepts/mcp-local-vs-remote-auth]] — Why remote needs auth but local doesn't
- [[concepts/enterprise-mcp-deployment]] — Enterprise stages requiring protected servers
- [[concepts/mcp-gateway-pattern]] — Centralized auth via gateway pattern
- [[concepts/mcp-dynamic-client-registration]] — Operational challenges with dynamic registration
- [[entities/auth0]] — Auth0 as an identity provider for MCP
- [[entities/okta]] — Okta as an identity provider for MCP
