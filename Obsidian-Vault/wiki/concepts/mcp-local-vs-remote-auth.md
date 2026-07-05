---
title: "MCP Local vs Remote Authorization"
category: concepts
tags:
  - mcp
  - auth
  - security
  - local
  - remote
sources:
  - "[[sources/watchv=phbghukam-w]]"
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/mcp-protected-servers]]"
    type: related_to
  - target: "[[concepts/enterprise-mcp-deployment]]"
    type: related_to
---

# MCP Local vs Remote Authorization

MCP servers have fundamentally different authorization requirements depending on whether they run locally (stdio) or remotely (network-accessible). Understanding this distinction is critical for building MCP servers with the right security model.

## Local MCP Servers

Local MCP servers run as binaries on the user's own machine via stdio. Their security characteristics:

- **Full local access** — They run in the context of the user's machine, meaning they can access any local authentication mechanism. ^[extracted]
- **No protocol constraints** — They can use any auth method: secrets, certificates, passkeys, OS credential stores, or any off-the-shelf library. ^[extracted]
- **No auth protocol needed** — Since the local environment is already trusted, MCP protocol-level auth is unnecessary. ^[inferred]
- **Direct API access** — Any APIs the local server connects to can be authenticated using whatever credentials are available on the machine. ^[extracted]

Local servers are inherently less risky because they are bounded by the user's machine. The user already controls the binary and its access. ^[inferred]

## Remote MCP Servers

Remote MCP servers are accessible over the network, often to the broad internet. Their security requirements are much stricter:

- **Third-party API access** — Remote servers likely connect to APIs that require user context and authorization. ^[extracted]
- **User-scoped permissions** — Different customers have different permissions; the API must know who is invoking it. ^[extracted]
- **Admin vs contributor scoping** — Tool visibility and capabilities depend on the caller's role. ^[extracted]
- **Internet-facing** — Anybody can access them, making unauthorized access a real risk. ^[extracted]

Remote servers require the new MCP auth spec with PRM, authorization servers, and client-driven auth dances. ^[extracted]

## Special Cases

Remote desktop and multi-user VM scenarios complicate the local/remote distinction — in these cases, a "local" binary may be shared across users and still need explicit auth. However, these scenarios are left to implementers and are out of scope for the MCP spec. ^[extracted]

## Why the Distinction Matters

The local/remote distinction explains why the MCP auth spec focuses on remote servers. Local servers already have full trust boundaries via the operating system; remote servers need protocol-level authorization because they lack that inherent trust. ^[inferred]

## Related

- [[concepts/mcp-protected-servers]] — Protected servers that need auth
- [[concepts/mcp-auth-spec-evolution]] — The spec that solves remote auth
- [[concepts/enterprise-mcp-deployment]] — Enterprise deployment stages
- [[concepts/mcp-gateway-pattern]] — Gateway pattern for remote MCP
