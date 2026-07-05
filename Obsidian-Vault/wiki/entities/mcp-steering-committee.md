---
title: "MCP Steering Committee"
category: entities
tags:
  - mcp
  - steering-committee
  - governance
  - model-context-protocol
  - open-source
summary: "The governance body for the Model Context Protocol specification, responsible for evolving the spec, reviewing RFCs, and coordinating ecosystem development."
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.65
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
sources:
  - "[[sources/watchv=exed-8gfumm]]"

---

# MCP Steering Committee

The MCP Steering Committee is the governance body for the [[concepts/model-context-protocol|MCP]] specification. ^[extracted]

## Formation

As of the AIEF2025 talk (July 2025), the Steering Committee had met in person for the first time just 10 days prior, at the MCP Dev Summit. ^[extracted] Prior to this, members had only communicated asynchronously. This underscores how early the MCP ecosystem is — even the governance body had never gathered face-to-face.

## Responsibilities

The Steering Committee is responsible for:
- Evolving the [[concepts/model-context-protocol|MCP]] specification
- Reviewing and approving RFCs (e.g., namespaces, search)
- Coordinating ecosystem development across client and server implementations
- Managing the [[entities/mcp-community-registry|MCP Community Registry]]
- Developing the new MCP authorization spec with [[entities/anthropic|Anthropic]] and security experts, separating MCP servers as resource servers from dedicated authorization servers (Okta, Auth0, Entra ID, Keycloak)

## Open RFCs

[[entities/harald-kirschner]] specifically called out open RFCs for community review:
- **Namespaces** — organizing tools and resources into namespaces
- **Search** — search capabilities within the MCP protocol

He emphasized that community feedback on draft specs is essential: "those things that are in draft only become stable because people provide feedback that is useful." ^[extracted] Without feedback, draft specs go to stable and may need revisions (as happened with the off spec).

## Community Working Groups

Beyond the Steering Committee, there are community working groups driving MCP development "out in the open." [[entities/harald-kirschner]] gave a "big shout out" to all contributors across the Steering Committee and working groups. ^[extracted]

## Auth Spec Work

The Steering Committee developed the new draft MCP authorization spec in collaboration with [[entities/anthropic|Anthropic]] and security experts. The spec introduces clean separation between the MCP server (resource server) and authorization servers, with PRM-based discovery and client-driven auth dances. [[entities/den-delimarsky|Den Delimarsky]] (Microsoft, MCP squad) and [[entities/julia-kasper|Julia Kasper]] (Microsoft, Azure API Management) presented the spec at AIEF2025. ^[inferred]


## Related

- [[concepts/model-context-protocol]] — MCP protocol overview
- [[entities/mcp-community-registry]] — MCP Community Registry
- [[entities/harald-kirschner]] — VS Code MCP advocate
- [[entities/microsoft]] — Microsoft/VS Code
- [[entities/den-delimarsky]] — Microsoft Product Engineer, MCP squad
- [[entities/julia-kasper]] — Microsoft Azure API Management
- [[references/aief2025-building-protected-mcp-servers-den-delimarsky-julia-kasper]] — AIEF2025 talk on protected MCP servers
