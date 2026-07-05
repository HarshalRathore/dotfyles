---
title: "MCP Community Registry"
category: entities
tags:
  - mcp
  - registry
  - discovery
  - model-context-protocol
  - open-source
summary: "The community-driven registry for discovering MCP servers, solving the server discovery problem in the MCP ecosystem."
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.70
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
sources:
  - "[[sources/watchv=exed-8gfumm]]"

---

# MCP Community Registry

The MCP Community Registry is a community-driven discovery platform for [[concepts/model-context-protocol|MCP]] servers. ^[extracted]

## The Problem It Solves

Server discovery is a major pain point in the MCP ecosystem:
- If you build a server, how do users find it?
- What is the discovery experience for users?
- Do you send JSON blobs around for people to discover your server?

The registry provides a centralized, searchable location for MCP servers. ^[extracted]

## Location

The registry is hosted at `github.com/modelcontextprotocol/registry` on GitHub. ^[extracted] It is described as "all happening out in the open" — community-driven development.

## Governance

The registry is managed by the [[entities/mcp-steering-committee|MCP Steering Committee]] and community working groups. [[entities/harald-kirschner]] gave a "big shout out" to all contributors during his AIEF2025 talk. ^[extracted]

## Relationship to Other Discovery Mechanisms

The registry complements other discovery approaches:
- **Manual configuration** — users add servers via JSON config
- **IDE integration** — servers added directly in [[entities/microsoft|VS Code]]
- **Dynamic discovery** — servers discovered at runtime via [[concepts/mcp-dynamic-tool-discovery|MCP dynamic discovery]]

The registry addresses the "cold start" problem of finding servers, while dynamic discovery handles runtime adaptation. ^[inferred]

## Related

- [[concepts/model-context-protocol]] — MCP protocol overview
- [[entities/mcp-steering-committee]] — MCP Steering Committee
- [[concepts/mcp-dynamic-tool-discovery]] — Dynamic tool discovery
- [[entities/harald-kirschner]] — VS Code MCP advocate
- [[entities/microsoft]] — Microsoft/VS Code
