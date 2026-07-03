---
title: "CIAM for AI: Authn/Authz for Agents — Michael Grinich, CEO of WorkOS"
tags:
  - reference
  - talk
  - aief2025
  - identity
  - auth
  - agents
sources:
  - "AIEF2025 - CIAM for AI: Authn/Authz for Agents — Michael Grinich, CEO of WorkOS - https://www.youtube.com/watch?v=D4Dswf-__RM"
summary: "WorkOS CEO Michael Grinich at AI Engineer World's Fair 2025 on why AI agents need first-class identity, four architecture patterns (persona shadowing, delegation chains, capability tokens, human escalation), and emerging standards (OAuth 2.1+MCP, UMA, GNAP, OIDC-A, Verifiable Credentials)."
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---
# CIAM for AI: Authn/Authz for Agents — Michael Grinich

> **Source:** AI Engineer World's Fair 2025 | [[entities/michael-grinich|Michael Grinich]], CEO of [[entities/workos|WorkOS]]
> **Video:** <https://www.youtube.com/watch?v=D4Dswf-__RM>

## Summary

Grinich argues that as AI agents are deployed in enterprise contexts, they need first-class identity support — neither human user identity nor machine-to-machine auth works. He proposes four identity architecture patterns and reviews emerging standards for agent authentication and authorization.

## Key Claims

- Agents need a fundamentally new identity paradigm: hybrid between machine identity and person identity. ^[extracted]
- Least-privilege access breaks for agents because you cannot know in advance what they need. Permissions must be dynamic. ^[extracted]
- The middleware pattern (treating agents as untrusted with an auth layer between) is the dominant emerging architecture. ^[extracted]
- Traffic will invert from 95% human/5% machine to 95% agent/5% human. ^[extracted]

## Architecture Patterns

1. **[[concepts/persona-shadowing|Persona Shadowing]]** — Scoped-down shadow identities reflecting off primary user; closest to production use. ^[extracted]
2. **[[concepts/delegation-chains|Delegation Chains]]** — JWT-like signed token chains passed through agent operations. ^[extracted]
3. **[[concepts/capability-based-tokens|Capability Tokens]]** — Action-specific, time-bound authorization vouchers (related to Google's macaroons). ^[extracted]
4. **Escalation to Humans** — Human-in-the-loop approval for agent actions. Grinich notes this suffers from consent fatigue — users approve everything, undermining security. ^[extracted]

## Emerging Standards

- **OAuth 2.1 + MCP** — Adapted for agent context, but built for human consent and static scopes
- **UMA (User Managed Access)** — OAuth extension for policy-based resource access
- **GNAP (RFC 9635)** — Dynamic scope negotiation; well-designed but poorly implemented
- **OIDC-A** — OpenID Connect for Agents (protocol phase, not yet standard)
- **W3C Verifiable Credentials** — Signed agent identity assertions

## Challenges for Agent Identity

1. Headless authentication — agents need to log in without browsers
2. Dynamic permissions — static least-privilege models don't fit non-deterministic agents
3. Compliance — every agent action must tie back to a human for SOC 2
4. Observability at speed — agents act thousands of times faster than humans

## Concepts Introduced

- [[concepts/agent-identity]]
- [[concepts/persona-shadowing]]
- [[concepts/delegation-chains]]
- [[concepts/capability-based-tokens]]
- [[concepts/agent-middleware-trust-boundary]]
- [[concepts/agent-traffic-inversion]]

## Related

- [[entities/michael-grinich]] — Speaker profile
- [[entities/workos]] — WorkOS identity infrastructure
- [[entities/cloudflare]] — MCP auth at the network layer
- [[entities/microsoft]] — Workload identities for agents
- [[entities/nick-nisi]] — DX Engineer at WorkOS
- [[concepts/human-in-the-loop-payments]] — Human escalation pattern in the payments domain
- [[concepts/mcp-gateway-pattern]] — Related middleware architecture
- [[concepts/oidc]] — OpenID Connect protocol foundation
- [[concepts/rbac]] — Role-based access control, the traditional authorization model

## Sources

- Original video: <https://www.youtube.com/watch?v=D4Dswf-__RM>
