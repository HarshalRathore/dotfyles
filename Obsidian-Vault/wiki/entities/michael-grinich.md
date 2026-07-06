---
title: Michael Grinich
tags:
- person
- ai
- identity
- auth
- ceo
- workos
sources:
- 'https://www.youtube.com/watch?v=d4dswf-__rm'
summary: CEO of WorkOS. Speaker at AI Engineer World's Fair 2025 on customer identity and access management (CIAM) for AI agents, proposing four identity architecture patterns and calling for new standards.
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
category: entities
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
---
# Michael Grinich

Michael Grinich is the CEO of [[entities/workos|WorkOS]], a company providing identity and authentication infrastructure for SaaS businesses. Under his leadership, WorkOS's fastest-growing segment is AI companies — reflecting the thesis that AI products fundamentally need identity and authentication. ^[extracted]

## CIAM for AI Vision

At AI Engineer World's Fair 2025, Grinich delivered a talk on Customer Identity and Access Management (CIAM) for AI agents, arguing that agents need first-class identity support distinct from both human users and machine-to-machine auth. ^[extracted]

He proposed four architecture patterns for agent identity:
- [[concepts/persona-shadowing|Persona shadowing]] — scoped-down shadow identities off a primary user
- [[concepts/delegation-chains|Delegation chains]] — token-based authorization passed step-by-step
- [[concepts/capability-based-tokens|Capability tokens]] — action-specific, time-bound authorization vouchers
- [[concepts/agent-middleware-trust-boundary|Middleware trust boundary]] — treating agents as untrusted and layering auth middleware between agent code and enterprise resources

Grinich also called on the industry to collaborate on new standards for agent identity, highlighting emerging protocols: OAuth 2.1 for MCP, UMA (User Managed Access), GNAP (Grant Negotiation and Authorization Protocol), OIDC-A (OpenID Connect for Agents), and W3C Verifiable Credentials. ^[extracted]

## Traffic Inversion Prediction

Grinich predicts a fundamental shift in software traffic patterns: from 95% human / 5% automated today to eventually 95% agent / 5% human — a future where most application interactions are agent-to-agent rather than human-to-interface. See [[concepts/agent-traffic-inversion|Agent Traffic Inversion]] for details. ^[extracted]

## Related

- [[entities/nick-nisi]] — DX Engineer at WorkOS
- [[entities/tobin-south]] — Research fellow at WorkOS focused on AI agent safety
- [[concepts/agent-identity]] — The broader concept of authn/authz for agents
- [[concepts/rbac]] — Role-based access control, foundational to agent authorization
- [[concepts/oidc]] — OpenID Connect, protocol underlying SSO

## Sources

- [[references/aief2025-ciam-for-ai-michael-grinich|CIAM for AI: Authn/Authz for Agents — Michael Grinich, CEO of WorkOS (AI Engineer World's Fair 2025)]]
