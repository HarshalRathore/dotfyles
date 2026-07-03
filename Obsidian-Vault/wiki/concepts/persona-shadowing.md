---
title: "Persona Shadowing"
tags:
  - agent
  - identity
  - auth
  - architecture
  - pattern
sources:
  - "AIEF2025 - CIAM for AI: Authn/Authz for Agents — Michael Grinich, CEO of WorkOS - https://www.youtube.com/watch?v=D4Dswf-__RM"
summary: "Identity architecture pattern where an agent gets a shadow persona that reflects off a user identity but with scoped-down privileges, enabling isolation and accountability."
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---
# Persona Shadowing

Persona shadowing is an identity architecture pattern for agents where the agent receives a "shadow" identity that reflects off a primary user but has a subset of that user's privileges. Rather than pure impersonation (which gives too much power), the shadow identity is scoped — like creating "Michael agent 1" and "Michael agent 2" personas from "Michael prime." ^[extracted]

## How It Works

- The identity system creates a secondary user (shadow) tied to the primary human user. ^[extracted]
- The shadow has a subset of the primary user's privileges, not a mirror. ^[extracted]
- Every action by the shadow agent is explicitly traceable back to the original human identity. ^[extracted]
- Role templates can be created from shadow personas for reuse. ^[inferred]

## Benefits

- **Isolation** — agent actions are separated from human actions at the identity level ^[inferred]
- **Accountability** — every agent action is tied to a specific human, satisfying compliance requirements like SOC 2 ^[inferred]
- **Scoped risk** — even if an agent is compromised, its shadow identity only has limited privileges ^[inferred]
- **Enterprise IDP integration** — works with existing enterprise identity providers by creating additional personas ^[extracted]

## Relationship to Other Patterns

Persona shadowing is the closest pattern to what Grinich has seen used in production at AI companies — it maps naturally onto existing enterprise IDP infrastructure. It can be combined with [[concepts/delegation-chains|delegation chains]] (shadow persona mints a delegation token) or [[concepts/capability-based-tokens|capability tokens]] (shadow issues a capability voucher for a specific action). ^[inferred]

## Related

- [[concepts/agent-identity]] — The broader identity paradigm for agents
- [[concepts/delegation-chains]] — Complementary token-based pattern
- [[concepts/capability-based-tokens]] — Complementary action-specific pattern
- [[concepts/rbac]] — Role templates support shadow persona creation
- [[entities/workos]] — WorkOS provides identity infrastructure implementing similar patterns

## Sources

- [[references/aief2025-ciam-for-ai-michael-grinich|CIAM for AI: Authn/Authz for Agents — Michael Grinich, CEO of WorkOS (AI Engineer World's Fair 2025)]]
