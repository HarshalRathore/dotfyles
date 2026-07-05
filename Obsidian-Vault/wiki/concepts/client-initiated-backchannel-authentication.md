---
title: "Client-Initiated Backchannel Authentication (CIBA)"
tags:
  - agent
  - identity
  - auth
  - oauth
  - security
  - headless
  - protocol
sources:
  - "[[sources/watchv=fzomsupg37e]]"
summary: "An OAuth flow enabling authentication and consent for headless agents without a browser UI, using push notifications to a user's trusted device for approval."
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---
# Client-Initiated Backchannel Authentication (CIBA)

CIBA is an OAuth flow (OpenID Connect spec) adapted for scenarios where the client cannot display a web browser for user authentication. In the agent context, it enables agents to request authorization without a UI by sending a request to the authorization server, which reaches out to the user on a trusted device. ^[extracted]

## Agent-Specific Application

Auth0 engineers [[entities/bobby-tiernay|Bobby Tiernay]] and [[entities/kam-sween|Kam Sween]] propose CIBA as a key pattern for agent authentication at [[references/aief2025-securing-agents-open-standards-bobby-tiernay-auth0|AI Engineer World's Fair 2025]]: ^[extracted]

1. The agent sends an authentication request to the authorization server (no browser involved)
2. The server reaches the user on a trusted device via push notification
3. The user can approve, deny, or ask for more information
4. The agent receives the result and proceeds — or does not — based on user decision

## Why Agents Need CIBA

- **Headless operation** — Background agents, scheduled jobs, and automation workflows lack a UI for traditional OAuth consent screens. ^[extracted]
- **Non-blocking flow** — The agent doesn't need to wait synchronously for user interaction; it can proceed when authorized. ^[inferred]
- **Multi-device** — Users can authorize agent actions from their phone or another device even when the agent runs on a server. ^[inferred]
- **Fine-grained consent** — CIBA's callback mechanism lets users see the specific action being requested rather than pre-granting blanket permissions. ^[inferred]

## Relationship to Other Agent Auth Patterns

CIBA complements other [[concepts/agent-identity|agent identity]] patterns:

- [[concepts/persona-shadowing]] — CIBA can provide the consent mechanism for persona shadowing
- [[concepts/delegation-chains]] — CIBA tokens can be chained through agent operations
- [[concepts/agent-middleware-trust-boundary]] — CIBA authentication flows through the middleware boundary
- [[concepts/capability-based-tokens]] — CIBA consent can mint capability-specific tokens

## Related

- [[concepts/agent-identity]] — Core identity paradigm for agents
- [[concepts/agent-middleware-trust-boundary]] — The middleware pattern for agent security
- [[concepts/persona-shadowing]] — Scoped impersonation identity pattern
- [[entities/auth0]] — Auth0 implements CIBA for agent auth
- [[references/aief2025-ciam-for-ai-michael-grinich]] — Related agent identity talk

## Sources

- [[references/aief2025-securing-agents-open-standards-bobby-tiernay-auth0|Securing Agents with Open Standards — Bobby Tiernay and Kam Sween, Auth0 (AI Engineer World's Fair 2025)]]
