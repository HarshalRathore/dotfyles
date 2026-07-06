---
title: Keycloak
category: entities
tags:
- identity
- auth
- open-source
- iam
- oauth
sources:
- 'https://www.youtube.com/watch?v=phbghukam-w'
provenance:
  extracted: 0.6
  inferred: 0.35
  ambiguous: 0.05
base_confidence: 0.65
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[entities/okta]]'
  type: related_to
- target: '[[entities/auth0]]'
  type: related_to
- target: '[[entities/entra-id]]'
  type: related_to
summary: Keycloak
---

# Keycloak

[[entities/keycloak|Keycloak]] is an open-source identity and access management solution that provides authentication, authorization, and identity governance. It is a self-hosted alternative to commercial identity providers like [[entities/okta|Okta]] and [[entities/entra-id|Entra ID]].

## MCP Authorization

Keycloak is mentioned by [[entities/den-delimarsky|Den Delimarsky]] and [[entities/julia-kasper|Julia Kasper]] as one of the identity providers that can serve as an authorization server for [[concepts/mcp-protected-servers|MCP protected servers]]. The new MCP auth spec is provider-agnostic — any OAuth 2.0-compliant authorization server works, including open-source options like Keycloak. ^[extracted]

This is significant because it means organizations can deploy protected MCP servers without vendor lock-in — they can use their existing Keycloak infrastructure or any other OAuth 2.0 identity provider. ^[inferred]

## Related

- [[entities/okta]] — Commercial identity platform
- [[entities/auth0]] — Identity platform (Okta company)
- [[entities/entra-id]] — Microsoft Entra ID
- [[concepts/mcp-protected-servers]] — Protected MCP servers
- [[concepts/mcp-resource-server-separation]] — OAuth 2.0 resource server pattern
