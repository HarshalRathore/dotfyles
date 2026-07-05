---
title: "Delegation Chains"
tags:
  - agent
  - identity
  - auth
  - architecture
  - pattern
  - jwt
sources:
  - "[[sources/watchv=d4dswf-__rm]]"
summary: "Identity architecture pattern where agent authorization is passed step-by-step through cryptographically signed token chains, with each link carrying forward the original user's permissions."
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---
# Delegation Chains

Delegation chains are an identity architecture pattern for agents where authorization is propagated step-by-step through a chain of cryptographically signed tokens. Each link in the chain carries forward the original user's authorization context, similar to how JWTs (JSON Web Tokens) are signed and verified as they pass between systems. ^[extracted]

## How It Works

1. A token is minted for an agent with verifiable permissions from the original user. ^[extracted]
2. The agent passes the token to the first system it interacts with. ^[extracted]
3. Each subsequent system verifies the chain and can append its own link. ^[inferred]
4. The full chain is stateless — any system can verify the entire authorization context from the tokens alone. ^[inferred]

## Requirements

- Cryptographic signing at each hop (the chain must be tamper-evident) ^[inferred]
- Context passing in remote procedure calls — each call must carry the full chain forward ^[extracted]
- Support from protocols like UMA and OIDC extensions ^[extracted]

## Comparison to JWT

Delegation chains extend the JWT concept: standard JWTs delegate from an issuer to a subject for a specific audience, while delegation chains propagate authorization across multiple hops, each adding its own scope constraints. ^[inferred]

## Relationship to Other Patterns

Delegation chains can be layered on top of [[concepts/persona-shadowing|persona shadowing]] — a shadow persona mints a delegation token for the agent to carry through its workflow. The chain ensures that even if an intermediate system is compromised, the authorization context is verifiable end-to-end. ^[inferred]

## Related

- [[concepts/agent-identity]] — The broader identity paradigm for agents
- [[concepts/persona-shadowing]] — Complementary identity pattern
- [[concepts/capability-based-tokens]] — Related token-based pattern, but action-specific rather than chain-based
- [[concepts/oidc]] — OpenID Connect, the protocol being extended for delegation chains via OIDC-A
- [[entities/workos]] — WorkOS builds authorization infrastructure for these patterns

## Sources

- [[references/aief2025-ciam-for-ai-michael-grinich|CIAM for AI: Authn/Authz for Agents — Michael Grinich, CEO of WorkOS (AI Engineer World's Fair 2025)]]
