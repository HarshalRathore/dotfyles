---
title: Okta
category: entities
tags:
- company
- identity
- auth
- security
- iam
- oauth
sources:
- 'https://www.youtube.com/watch?v=phbghukam-w'
- 'https://www.youtube.com/watch?v=fzomsupg37e'
provenance:
  extracted: 0.7
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.7
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[entities/auth0]]'
  type: related_to
- target: '[[entities/entra-id]]'
  type: related_to
- target: '[[entities/keycloak]]'
  type: related_to
summary: Okta
---

# Okta

[[entities/okta|Okta]] is a leading identity and access management (IAM) platform that provides authentication, authorization, and user lifecycle management for enterprise applications. It is one of the off-the-shelf identity providers that can be used as an authorization server for [[concepts/mcp-protected-servers|MCP protected servers]].

## MCP Authorization

Okta is explicitly mentioned by [[entities/den-delimarsky|Den Delimarsky]] and [[entities/julia-kasper|Julia Kasper]] as an identity provider that can be plugged into the new MCP authorization spec. MCP servers host a PRM document that points to Okta as the authorization server, and MCP clients (Claude Desktop, VS Code) use Okta's OAuth 2.0 endpoints to acquire tokens. ^[extracted]

Okta works alongside other identity providers in the MCP auth ecosystem: [[entities/auth0|Auth0]], [[entities/entra-id|Entra ID]], and [[entities/keycloak|Keycloak]]. ^[extracted]

## Related

- [[entities/auth0]] — Identity platform (Okta company)
- [[entities/entra-id]] — Microsoft Entra ID
- [[entities/keycloak]] — Open-source identity provider
- [[concepts/mcp-protected-servers]] — Protected MCP servers
- [[concepts/mcp-resource-server-separation]] — OAuth 2.0 resource server pattern
