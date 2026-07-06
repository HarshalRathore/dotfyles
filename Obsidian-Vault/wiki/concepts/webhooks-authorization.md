---
type: concept
title: Webhooks (Authorization)
created:
- 2026-06-30
updated:
- 2026-06-30
sources:
- '[[sources/🔐-security-in-kubernetes_0a37d1]]'
tags:
- security
aliases:
- Webhook Authorizer
- Webhook Authorization
category: concepts
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
summary: Webhooks (Authorization)
---
# Webhooks (Authorization)

## Definition
Webhooks in Kubernetes are an authorization mechanism that delegates access decision-making to an external service. When a request is made to the Kubernetes API, the webhook authorizer sends the request context to a configured external endpoint, which evaluates the request against custom policies and returns an allow or deny decision.

## Key Characteristics
- Provides a pluggable, external authorization evaluation point for Kubernetes API requests
- Enables custom policy enforcement beyond built-in authorization modules
- Requires deployment and maintenance of an external authorization service
- Allows integration with existing enterprise policy engines and authorization systems
- Operates as one of the pluggable authorization modules in the Kubernetes authorization chain
- Offers flexibility at the cost of additional infrastructure complexity and latency

## Applications
- Enforcing organization-specific access policies not covered by RBAC or ABAC
- Integrating Kubernetes authorization with external identity and access management (IAM) systems
- Implementing dynamic, context-aware authorization decisions based on external data sources
- Extending cluster security with custom compliance and governance rules
- Bridging Kubernetes access control with legacy authorization infrastructure

## Related Concepts
- [[concepts/authorization-kubernetes]]
- [[concepts/rbac]]
- [[concepts/abac]]

## Related Entities
- [[entities/kubernetes]]

## Mentions in Source
- "✅ Webhooks" — 🔐-security-in-kubernetes_0a37d1
- "Handled by various modules: ... Webhooks" — 🔐-security-in-kubernetes_0a37d1