---
title: "MCP Authorization Spec Evolution"
category: concepts
tags:
  - mcp
  - auth
  - oauth
  - spec
  - protocol
sources:
  - "[[sources/watchv=phbghukam-w]]"
  - "AIEF2025 - MCP: Origins and Requests For Startups — Theodora Chu, Model Context Protocol PM, Anthropic - https://www.youtube.com/watch?v=x-8pBqWiTzk"
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-04
updated: 2026-07-05
relationships:
  - target: "[[concepts/mcp-protected-servers]]"
    type: related_to
  - target: "[[concepts/mcp-prm]]"
    type: related_to
  - target: "[[concepts/model-context-protocol]]"
    type: related_to
---

# MCP Authorization Spec Evolution

The Model Context Protocol's authorization specification has evolved significantly from its initial stable release to the current draft, driven by the need to make MCP server authorization accessible to non-security-expert developers.

## Old Stable Spec (March 2024)

The original stable MCP auth spec placed the entire authorization burden on the MCP server builder:

- **Server as token factory** — MCP server builders had to spin up their own authorization server and implement token minting end-to-end. ^[extracted]
- **Full OAuth ownership** — Builders needed to understand OAuth internals including token crafting, management, refreshing, and assignment. ^[extracted]
- **High barrier to entry** — Building a protected MCP server required deep OAuth expertise, effectively making you an OAuth expert just to build an MCP server. ^[extracted]

This approach worked but created a significant friction point: developers wanted to build MCP servers, not become security experts. ^[inferred]

## The Initial Mistake

Theo Chu (MCP PM at Anthropic) acknowledged that auth was "got wrong initially" in the original MCP spec. The early auth design was a significant pain point for builders and needed correction. ^[extracted]

## New Draft Spec

The new draft spec was developed collaboratively by [[entities/microsoft|Microsoft]], [[entities/anthropic|Anthropic]], and security experts through the [[entities/mcp-steering-committee|MCP Steering Committee]]. It introduces a clean architectural separation:

| Aspect | Old Spec | New Draft Spec |
|--------|----------|----------------|
| Token minting | MCP server | Authorization server (Okta, Auth0, Entra ID) |
| Token lifecycle | MCP server manages | Authorization server manages |
| Server responsibility | Full OAuth implementation | Reference PRM metadata, validate tokens |
| Client responsibility | Minimal | End-to-end auth dance (discovery → token → present) |
| Developer expertise | OAuth expert required | Standard OAuth library user |
| Identity providers | Custom per server | Off-the-shelf (Okta, Auth0, Entra ID, Keycloak) |

The new spec keeps everything as standard OAuth 2.0 — no new protocols, just better separation of concerns. ^[extracted]

## Community-Driven Fix

Theo Chu emphasized that the auth fix was "actually fixed via a series of people from the community jumping in to work on" the spec. Community contributors demonstrated "how auth works with identity providers" and proposed the protocol updates. This is an example of the community-driven model Theo encourages: "contribute when you see issues with the way that the protocol is built today" and "submit a PR directly to the GitHub repo." ^[extracted]

## Key Design Decisions

1. **Separation of concerns** — The MCP server is a resource server; a separate authorization server handles tokens. This is the classic OAuth 2.0 resource server / authorization server split. ^[extracted]
2. **Client-driven auth** — The client (Claude Desktop, VS Code) performs the full auth discovery and token dance. The server only validates. ^[extracted]
3. **Metadata-driven discovery** — PRM documents tell clients where to authenticate, eliminating manual configuration. ^[extracted]
4. **Standards-based** — Everything remains standard OAuth 2.0, enabling use of existing libraries and services. ^[extracted]

## Status

The new draft spec is "going to be stable very soon" as of the AIEF2025 talk (July 2025). ^[extracted]

## Related

- [[concepts/mcp-protected-servers]] — Protected MCP servers that use the new spec
- [[concepts/mcp-prm]] — PRM documents for auth discovery
- [[concepts/mcp-local-vs-remote-auth]] — Auth requirements differ by deployment
- [[entities/mcp-steering-committee]] — The governance body driving this evolution
- [[concepts/enterprise-mcp-deployment]] — Enterprise deployment stages
