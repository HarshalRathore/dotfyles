---
type: concept
title: Authorization Modes
created:
- 2026-06-30
updated:
- 2026-06-30
sources:
- '[[sources/kubernetes-api-groups-authorization-and-rbac-a-comprehensive-overview_ab21cb]]'
tags:
- security
aliases:
- Kubernetes Authorization Modes
- K8s Authorization Modes
category: concepts
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
summary: Authorization Modes
---
# Authorization Modes

## Definition
Authorization Modes in Kubernetes are configurable settings that determine which authorization modules are used to evaluate access requests to the API server. These modes are specified via the `--authorization-mode` flag and are evaluated sequentially; the first module to approve or deny a request determines the final outcome.

## Key Characteristics
- Configured using the `--authorization-mode` API server flag.
- Evaluated in the order specified by the flag value.
- Supports multiple built-in modules: Node, RBAC, Webhook, AlwaysAllow, and AlwaysDeny.
- The first module to approve or deny a request determines the final authorization decision.
- Critical for defining cluster security and access control policies.
- Allows for layered and flexible authorization strategies.


## Applications
- Enforcing fine-grained access control using Role-Based Access Control (RBAC).
- Restricting kubelet permissions via Node authorization.
- Integrating with external authorization services through Webhook mode.
- Providing permissive default policies (AlwaysAllow) for development.
- Enforcing strict deny-all policies (AlwaysDeny) for high-security scenarios.
- Implementing defense-in-depth by combining multiple authorization modes.


## Related Concepts
- Node Authorization
- [[concepts/rbac]]
- Webhook Authorization
- [[concepts/alwaysallow-and-alwaysdeny]]


## Related Entities
- [[entities/kubernetes]]


## Mentions in Source
- "Configuring Authorization Modes: Flag: --authorization-mode" — kubernetes-api-groups-authorization-and-rbac-a-comprehensive-overview_ab21cb