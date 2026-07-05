---
title: "Microsoft Entra ID"
category: entities
tags:
  - identity
  - auth
  - microsoft
  - iam
  - oauth
  - entra
sources:
  - "[[sources/watchv=phbghukam-w]]"
provenance:
  extracted: 0.90
  inferred: 0.07
  ambiguous: 0.03
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/microsoft]]"
    type: related_to
  - target: "[[entities/okta]]"
    type: related_to
  - target: "[[entities/auth0]]"
    type: related_to
  - target: "[[entities/keycloak]]"
    type: related_to
---

# Microsoft Entra ID

Microsoft Entra ID (formerly Azure Active Directory) is Microsoft's cloud-based identity and access management service. It provides authentication, authorization, and identity governance for Microsoft 365, Azure, and thousands of SaaS applications.

## MCP Authorization

Entra ID is explicitly mentioned by [[entities/den-delimarsky|Den Delimarsky]] and [[entities/julia-kasper|Julia Kasper]] as an identity provider that can serve as the authorization server for [[concepts/mcp-protected-servers|MCP protected servers]]. In the new MCP auth spec, an MCP server's PRM document can point to Entra ID as the authorization server, and MCP clients use Entra ID's OAuth 2.0 endpoints to acquire tokens. ^[extracted]

As a Microsoft product, Entra ID has natural integration with the MCP ecosystem — [[entities/den-delimarsky|Den Delimarsky]] (a Microsoft Product Engineer on the MCP squad) demonstrated Entra ID as a first-class authorization server option. ^[extracted]

## Related

- [[entities/microsoft]] — Microsoft
- [[entities/okta]] — Identity platform
- [[entities/auth0]] — Identity platform (Okta company)
- [[entities/keycloak]] — Open-source identity provider
- [[concepts/mcp-protected-servers]] — Protected MCP servers
- [[concepts/mcp-resource-server-separation]] — OAuth 2.0 resource server pattern
