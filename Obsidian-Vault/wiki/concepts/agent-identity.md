---
title: "Agent Identity"
tags:
  - agent
  - identity
  - auth
  - security
  - architecture
  - iam
sources:
  - "AIEF2025 - CIAM for AI: Authn/Authz for Agents — Michael Grinich, CEO of WorkOS - https://www.youtube.com/watch?v=D4Dswf-__RM"
summary: "The paradigm of giving AI agents first-class identity and authentication support, distinct from both human user identity and machine-to-machine auth, to enable secure agentic systems at scale."
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---
# Agent Identity

Agent identity is the paradigm of providing AI agents with first-class authentication and authorization support. Unlike human users (who authenticate via web browsers) or machine-to-machine services (which use certificate-based auth), agents operate in a hybrid space — they act on behalf of humans but need programmatic, headless authentication across many systems simultaneously. ^[extracted]

## Why Agent Identity Is Hard

Michael Grinich ([[entities/workos|WorkOS]]) identifies four core challenges at AI Engineer World's Fair 2025: ^[extracted]

1. **Headless authentication** — Agents need to log in without a web browser UI. Sessions must be long-lived (unlike human sessions) while tokens must not be permanent. Credential storage, refresh, and security are open questions. ^[extracted]
2. **Least-privilege vs agent autonomy tension** — You want to scope an agent's access tightly, but agents are non-deterministic — you can't predict in advance what they'll need. The classic least-privilege model breaks when you need to give an agent broad access to "do anything useful." Permissions must be dynamic, not static. ^[extracted]
3. **Compliance and audit** — Every agent action must be traceable to a human for legal/SOC 2 compliance. Agents can act at machine speed, making logging and observability critical. ^[extracted]
4. **Speed of action** — "To err is human, but to screw up 10,000 times per second, you need a computer." Agents can spawn sub-agents and execute destructive actions faster than humans can intervene. ^[extracted]

## Emerging Standards and Protocols

Several protocols are being adapted or created for agent identity: ^[extracted]

- **OAuth 2.1 + MCP** — OAuth has been adapted for Model Context Protocol (MCP) servers, splitting authorization from resource servers. Widely known and integrated, but designed for human consent, not machine flows, and uses static scopes. ^[extracted]
- **UMA (User Managed Access)** — An OAuth extension allowing resource owners to proactively grant agents access via a central authorization server. Externalizes content and access policy from the OAuth consent dialogue. ^[extracted]
- **GNAP (Grant Negotiation and Authorization Protocol, RFC 9635)** — Designed for dynamic negotiation of token scopes. Agents can request access to resources not in the original scope during runtime execution. Well-baked on paper but not widely implemented. ^[extracted]
- **OIDC-A (OpenID Connect for Agents)** — Emerging protocol baking agent identity claims and delegation chains into OpenID Connect, with cryptographic attestations for tokens. Still in protocol phase, not yet standard. ^[extracted]
- **W3C Verifiable Credentials** — Signed JSON objects traditionally used for human credentials (degrees, licenses) being applied to agent identity: an agent can carry a verifiable credential asserting "Alice's agent at WorkOS." ^[extracted]

## Identity Architecture Patterns

Grinich proposes four complementary patterns for implementing agent identity in production:

- [[concepts/persona-shadowing|Persona Shadowing]] — Scoped-down shadow identities reflecting off a primary user
- [[concepts/delegation-chains|Delegation Chains]] — Token chains passed step-by-step through agent operations
- [[concepts/capability-based-tokens|Capability Tokens]] — Time-bound, action-specific authorization vouchers
- [[concepts/agent-middleware-trust-boundary|Middleware Trust Boundary]] — Treat agents as untrusted; auth middleware between agent code and resources

## The Fundamental Shift

Grinich argues agent identity is not optional — it is prerequisite to the [[concepts/agent-traffic-inversion|traffic inversion]] where 95% of application traffic becomes agent-to-agent. Without it, agents cannot safely access the enterprise systems they need to be useful. ^[inferred]

## Related

- [[concepts/persona-shadowing]] — Scoped impersonation identity pattern for agents
- [[concepts/delegation-chains]] — Token-based authorization chaining
- [[concepts/capability-based-tokens]] — Action-specific authorization tokens
- [[concepts/agent-middleware-trust-boundary]] — Auth middleware layer pattern
- [[concepts/rbac]] — Role-based access control, foundational layer
- [[concepts/oidc]] — OpenID Connect protocol
- [[concepts/human-in-the-loop-regulated-ai]] — HITL pattern for compliance
- [[entities/workos]] — Company building production agent identity infrastructure
- [[entities/michael-grinich]] — Originator of this talk

## Sources

- [[references/aief2025-ciam-for-ai-michael-grinich|CIAM for AI: Authn/Authz for Agents — Michael Grinich, CEO of WorkOS (AI Engineer World's Fair 2025)]]
