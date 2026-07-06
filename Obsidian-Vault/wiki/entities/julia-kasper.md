---
title: Julia Kasper
category: entities
tags:
- person
- microsoft
- mcp
- azure
- api-management
sources:
- 'https://www.youtube.com/watch?v=phbghukam-w'
provenance:
  extracted: 0.95
  inferred: 0.03
  ambiguous: 0.02
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[entities/microsoft]]'
  type: related_to
- target: '[[entities/den-delimarsky]]'
  type: related_to
summary: Julia Kasper
---

# Julia Kasper

Julia Kasper works in Azure API Management at [[entities/microsoft|Microsoft]] and is part of the MCP squad. She co-presented "Building Protected MCP Servers" at AI Engineer World's Fair 2025 with [[entities/den-delimarsky|Den Delimarsky]].

## MCP Auth Work

Julia presented the client-side perspective of the new MCP auth spec, explaining how MCP clients like Claude Desktop and VS Code perform the end-to-end auth dance: discovering the PRM document, identifying the authorization server, acquiring a token, and presenting it to the MCP server. ^[extracted]

She emphasized the developer experience angle — not every developer wants to be a security expert, and the new spec lets developers focus on building MCP servers rather than implementing auth infrastructure. ^[extracted]

## Related

- [[entities/microsoft]] — Microsoft
- [[entities/den-delimarsky]] — Co-presenter on MCP auth
- [[references/aief2025-building-protected-mcp-servers-den-delimarsky-julia-kasper]] — AIEF2025 talk
