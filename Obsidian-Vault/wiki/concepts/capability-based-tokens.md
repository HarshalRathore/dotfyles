---
title: "Capability Tokens"
tags:
  - agent
  - identity
  - auth
  - architecture
  - pattern
  - tokens
sources:
  - "[[sources/watchv=d4dswf-__rm]]"
summary: "Identity architecture pattern where agents receive time-bound tokens scoped to exactly one action, like 'Agent X can read Bob's calendar for the next 60 minutes.'"
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---
# Capability Tokens

Capability tokens are an identity architecture pattern for agents where authorization is granted as a self-contained, time-bound token scoped to exactly one action. Rather than role-based permissions ("agent has read access to calendar"), a capability token says: "Agent X can read Bob's calendar for the next 60 minutes." ^[extracted]

## How It Works

- A token is minted for a specific action on a specific resource for a bounded time window. ^[extracted]
- The token is self-contained — any system can verify it without calling back to an authorization server. ^[inferred]
- Possession of the token proves authorization to perform the action. ^[extracted]
- The token expires automatically after the time window. ^[extracted]

## Key Properties

- **Action-scoped** — scoped to one specific API call or action, not a role ^[extracted]
- **Time-bound** — expires after a duration, preventing indefinite access ^[extracted]
- **Self-contained** — no need for centralized verification on every call ^[inferred]
- **Transferable** — the agent can pass the token to sub-agents or downstream systems ^[extracted]

## Relationship to Macaroons

Grinich directly references Google's macaroons work as a precursor — macaroons are authorization tokens that can be attenuated (restricted further) as they're delegated. Capability tokens for agents follow a similar philosophy of decentralized, attenuation-based authorization. ^[extracted]

## Comparison to RBAC

Traditional role-based access control (RBAC) grants broad, persistent permissions based on a user's role. Capability tokens are the opposite: narrow, ephemeral, and action-specific. They address the agent autonomy tension by letting the system mint tokens dynamically as the agent's runtime needs become known. ^[inferred]

## Relationship to Other Patterns

Capability tokens can be combined with [[concepts/persona-shadowing|persona shadowing]] (shadow persona mints a capability token) or [[concepts/delegation-chains|delegation chains]] (a capability token is one link in the chain). They are also the mechanism that enables dynamic scope negotiation via protocols like GNAP. ^[inferred]

## Related

- [[concepts/agent-identity]] — The broader identity paradigm for agents
- [[concepts/persona-shadowing]] — Complementary identity pattern
- [[concepts/delegation-chains]] — Complementary token-based pattern
- [[concepts/rbac]] — The traditional authorization model capability tokens contrast with
- [[entities/workos]] — WorkOS builds authorization infrastructure for these patterns

## Sources

- [[references/aief2025-ciam-for-ai-michael-grinich|CIAM for AI: Authn/Authz for Agents — Michael Grinich, CEO of WorkOS (AI Engineer World's Fair 2025)]]
