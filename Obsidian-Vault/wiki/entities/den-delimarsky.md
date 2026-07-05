---
title: "Den Delimarsky"
category: entities
tags:
  - person
  - microsoft
  - mcp
  - steering-committee
  - product-engineer
sources:
  - "[[sources/watchv=phbghukam-w]]"
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
  - target: "[[entities/microsoft]]"
    type: related_to
  - target: "[[entities/mcp-steering-committee]]"
    type: related_to
  - target: "[[entities/julia-kasper]]"
    type: related_to
---

# Den Delimarsky

Den Delimarsky is a Product Engineer at [[entities/microsoft|Microsoft]] and a member of the [[entities/mcp-steering-committee|MCP Steering Committee]]. He works on the MCP squad at Microsoft, focusing on the Model Context Protocol specification and its ecosystem.

## MCP Auth Work

Den co-presented "Building Protected MCP Servers" at AI Engineer World's Fair 2025 with [[entities/julia-kasper|Julia Kasper]], explaining the evolution of MCP authorization from the old stable spec (which required server builders to implement their own token minting) to the new draft spec (which separates resource servers from authorization servers). ^[extracted]

He demonstrated a practical C# ASP.NET Core implementation of a protected MCP server in a pull request for the official MCP C# SDK, showing how minimal the server-side code is when you plug in an identity provider. ^[extracted]

## Related

- [[entities/microsoft]] — Microsoft
- [[entities/mcp-steering-committee]] — MCP Steering Committee
- [[entities/julia-kasper]] — Co-presenter on MCP auth
- [[references/aief2025-building-protected-mcp-servers-den-delimarsky-julia-kasper]] — AIEF2025 talk
