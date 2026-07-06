---
title: Securing Agents with Open Standards — Bobby Tiernay and Kam Sween, Auth0 (AIEF2025)
tags:
- reference
- talk
- aief2025
- identity
- auth
- agents
- security
- oauth
sources:
- 'https://www.youtube.com/watch?v=fzomsupg37e'
summary: 'Auth0 engineers on practical patterns for agent identity and access control: token exchange over shared secrets, CIBA for headless auth, OAuth 2.1 for MCP, and retrieval-layer authorization for RAG.'
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
category: references
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
---
# Securing Agents with Open Standards — Bobby Tiernay and Kam Sween, Auth0

> **Source:** AI Engineer World's Fair 2025 | Bobby Tiernay and Kam Sween, [[entities/auth0|Auth0]]
> **Video:** <https://www.youtube.com/watch?v=FZoMSupg37E>

## Summary

Bobby Tiernay and Kam Sween from Auth0 share practical patterns for securing AI agents using existing open standards (OAuth 2.1, RAR, Token Exchange, CIBA). They argue identity is foundational to agent security — without it you cannot trace actions to users, creating the [[concepts/agent-middleware-trust-boundary|confused deputy problem]]. The talk covers three concrete patterns: replacing shared keys with token exchange, using CIBA for headless agent consent, and applying OAuth 2.1 to MCP servers.

## Key Claims

- Shared static keys for agent API access are fragile and untraceable — you cannot tell who did what, rotation is manual and risky, and scope is too broad. ^[extracted]
- Identity connects actions to users — without it you cannot understand what happened, trace activity, or decide what should happen next. ^[extracted]
- [[concepts/agent-middleware-trust-boundary|Excessive agency]] (OWASP top GenAI risk) is giving agents too much access without guardrails — calling APIs, pulling data, using tokens, touching credentials and keys without proper scoping. ^[extracted]
- [[concepts/agentic-rag|RAG]] systems must enforce authorization at the retrieval layer, not within the LLM — the LLM should never decide access policy. ^[extracted]
- When [[concepts/model-context-protocol|MCP]] servers go remote and distributed, security cannot be an afterthought — every tool action needs guarantees about who is making each request. ^[extracted]

## Architecture: Token Exchange over Shared Secrets

The core pattern Auth0 advocates replaces static shared keys with a token exchange flow: ^[extracted]

1. Agent needs to call an API on behalf of a user
2. Agent asks the backend (not a static config) for authorization
3. Backend reaches into a vault to fetch credentials
4. Backend uses [[entities/auth0|Auth0]] token exchange to mint a short-lived token scoped to this user + this API
5. Token is handed to the agent, used, and expires
6. Agent never carries long-lived secrets

Benefits: real audit trail of who did what, easy token rotation, support for multiple upstream systems, centralized credential management. ^[extracted]

## Client-Initiated Backchannel Authentication (CIBA) for Headless Agents

CIBA addresses the problem of authenticating agents that run without a UI: ^[extracted]

- Instead of showing a login page, the agent sends a request to the authorization server
- The authorization server reaches out to the user on a trusted device via push notification
- The user decides whether to approve, deny, or request more information
- This pattern works for background agents, scheduled jobs, and any scenario where there is no screen

## MCP + OAuth 2.1

When [[concepts/model-context-protocol|MCP]] servers transition from local stdio to remote network services, Auth0 applies standard OAuth 2.1: ^[extracted]

1. User signs in through the browser to authorize the MCP server
2. MCP server handles token minting behind the scenes
3. Agent receives scoped and bound tokens
4. Client never exposes third-party credentials

This keeps the MCP security model aligned with existing web standards rather than inventing new protocols. ^[inferred]

## Related

- [[concepts/agent-identity]] — Core identity paradigm for agents
- [[concepts/agent-middleware-trust-boundary]] — The middleware pattern for agent security
- [[concepts/client-initiated-backchannel-authentication]] — CIBA applied to agents
- [[concepts/mcp-gateway-pattern]] — Centralizing MCP through a gateway
- [[concepts/agentic-rag]] — Retrieval-augmented generation for agents
- [[concepts/persona-shadowing]] — Scoped identity pattern
- [[concepts/delegation-chains]] — Token-based authorization chaining
- [[concepts/capability-based-tokens]] — Action-specific tokens
- [[references/aief2025-ciam-for-ai-michael-grinich]] — Related talk on CIAM for AI
- [[entities/auth0]] — Identity platform implementing these patterns
- [[entities/michael-grinich]] — WorkOS CEO on related agent identity patterns
- [[references/aief2025-how-to-secure-agents-oauth-jared-hanson]] — Jared Hanson (Keycard, Passport.js) on OAuth for agent security and MCP auth spec evolution

## Sources

- Original video: <https://www.youtube.com/watch?v=FZoMSupg37E>
