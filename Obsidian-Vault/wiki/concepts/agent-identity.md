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
  - "AIEF2025 - Securing Agents with Open Standards — Bobby Tiernay and Kam Sween, Auth0 - https://www.youtube.com/watch?v=FZoMSupg37E"
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
5. **Excessive agency (OWASP top GenAI risk)** — Agents given too much access without guardrails. Access means calling APIs, pulling data, using tokens, touching credentials and keys. If that axis is not scoped, monitored, and tied to a real user, the system is wide open to abuse and unintended behavior. ^[extracted] Auth0 engineers identify shared static keys (pulled from env vars, reused across users and services) as the primary vector — you cannot tell who did what, rotation is manual and risky, and scope is far too broad. ^[extracted]

## Emerging Standards and Protocols

Several protocols are being adapted or created for agent identity: ^[extracted]

- **OAuth 2.1 + MCP** — OAuth has been adapted for Model Context Protocol (MCP) servers, splitting authorization from resource servers. Widely known and integrated, but designed for human consent, not machine flows, and uses static scopes. ^[extracted]
- **UMA (User Managed Access)** — An OAuth extension allowing resource owners to proactively grant agents access via a central authorization server. Externalizes content and access policy from the OAuth consent dialogue. ^[extracted]
- **GNAP (Grant Negotiation and Authorization Protocol, RFC 9635)** — Designed for dynamic negotiation of token scopes. Agents can request access to resources not in the original scope during runtime execution. Well-baked on paper but not widely implemented. ^[extracted]
- **OIDC-A (OpenID Connect for Agents)** — Emerging protocol baking agent identity claims and delegation chains into OpenID Connect, with cryptographic attestations for tokens. Still in protocol phase, not yet standard. ^[extracted]
- **W3C Verifiable Credentials** — Signed JSON objects traditionally used for human credentials (degrees, licenses) being applied to agent identity: an agent can carry a verifiable credential asserting "Alice's agent at WorkOS." ^[extracted]
- **CIBA (Client-Initiated Backchannel Authentication)** — An OAuth/OpenID Connect flow adapted for headless agent scenarios. The agent sends an auth request to the authorization server without a browser; the server reaches the user on a trusted device via push notification for approval or denial. ^[extracted] Auth0 engineers advocate this as a production pattern for background agents, scheduled jobs, and any scenario without a screen. See [[concepts/client-initiated-backchannel-authentication]]. ^[extracted]

## Identity Architecture Patterns

Grinich proposes four complementary patterns for implementing agent identity in production:

- [[concepts/persona-shadowing|Persona Shadowing]] — Scoped-down shadow identities reflecting off a primary user
- [[concepts/delegation-chains|Delegation Chains]] — Token chains passed step-by-step through agent operations
- [[concepts/capability-based-tokens|Capability Tokens]] — Time-bound, action-specific authorization vouchers
- [[concepts/agent-middleware-trust-boundary|Middleware Trust Boundary]] — Treat agents as untrusted; auth middleware between agent code and resources

## Practical Implementation: Token Exchange

Auth0 engineers [[entities/bobby-tiernay|Bobby Tiernay]] and [[entities/kam-sween|Kam Sween]] advocate a concrete token exchange pattern that replaces shared static keys with an OAuth-based flow: ^[extracted]

1. Agent needs to call an API on behalf of a user
2. Agent asks the backend (never a static config or env var) for authorization
3. Backend reaches into a secure vault to fetch credentials
4. Backend uses OAuth token exchange to mint a short-lived token scoped to **this user + this API**
5. Token is handed to the agent, used, and expires
6. Agent never carries long-lived secrets

This delivers real audit trails (who did what), easy token rotation, centralized credential management, and support for multiple upstream systems — without forcing agents to carry secrets. ^[extracted] The pattern aligns with [[concepts/client-initiated-backchannel-authentication|CIBA]] for headless consent and OAuth 2.1 [[concepts/mcp-gateway-pattern|MCP flows]] for remote tool access. ^[inferred]

## Retrieval-Layer Authorization for RAG

Auth0's second practical pattern: when using [[concepts/agentic-rag|RAG]], authorization must be enforced at the retrieval layer, not inside the LLM. The LLM should never decide access policy — fine-grained authorization must filter what data the agent sees before it reaches the model. ^[extracted] This prevents sensitive data leakage and keeps enterprise data access governed by centralized policy enforcement rather than model behavior. ^[inferred]

## The Fundamental Shift

Grinich argues agent identity is not optional — it is prerequisite to the [[concepts/agent-traffic-inversion|traffic inversion]] where 95% of application traffic becomes agent-to-agent. Without it, agents cannot safely access the enterprise systems they need to be useful. ^[inferred]
## Related

- [[concepts/persona-shadowing]] — Scoped impersonation identity pattern for agents
- [[concepts/delegation-chains]] — Token-based authorization chaining
- [[concepts/capability-based-tokens]] — Action-specific authorization tokens
- [[concepts/agent-middleware-trust-boundary]] — Auth middleware layer pattern
- [[concepts/client-initiated-backchannel-authentication]] — CIBA for headless agent authentication
- [[concepts/mcp-gateway-pattern]] — MCP traffic through a shared gateway with OAuth
- [[concepts/agentic-rag]] — Retrieval-augmented generation where retrieval-layer auth applies
- [[concepts/rbac]] — Role-based access control, foundational layer
- [[concepts/oidc]] — OpenID Connect protocol
- [[concepts/human-in-the-loop-regulated-ai]] — HITL pattern for compliance
- [[entities/auth0]] — Platform implementing token exchange and CIBA for agents
- [[entities/workos]] — Company building production agent identity infrastructure
- [[entities/michael-grinich]] — WorkOS CEO, CIAM for AI talk
- [[entities/bobby-tiernay]] — Auth0 engineer, agent identity patterns
- [[entities/kam-sween]] — Auth0 engineer, agent identity patterns

## Sources

- [[references/aief2025-ciam-for-ai-michael-grinich|CIAM for AI: Authn/Authz for Agents — Michael Grinich, CEO of WorkOS (AI Engineer World's Fair 2025)]]
- [[references/aief2025-securing-agents-open-standards-bobby-tiernay-auth0|Securing Agents with Open Standards — Bobby Tiernay and Kam Sween, Auth0 (AI Engineer World's Fair 2025)]]

