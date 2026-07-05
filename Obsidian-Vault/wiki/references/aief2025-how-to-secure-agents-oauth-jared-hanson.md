---
title: "How to Secure Agents using OAuth — Jared Hanson (Keycard, Passport.js)"
category: references
tags:
  - reference
  - talk
  - aief2025
  - oauth
  - security
  - agents
  - mcp
  - identity
  - passport-js
sources:
  - "AIEF2025 - How to Secure Agents using OAuth — Jared Hanson (Keycard, Passport.js) - https://www.youtube.com/watch?v=blmAkayzE8M"
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.90
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/oauth-2.0|OAuth 2.0]]"
    type: related_to
  - target: "[[concepts/mcp-resource-server-separation|MCP Resource Server Separation]]"
    type: related_to
  - target: "[[references/aief2025-securing-agents-open-standards-bobby-tiernay-auth0]]"
    type: related_to
---

# How to Secure Agents using OAuth — Jared Hanson (Keycard, Passport.js)

## TL;DR

[[entities/jared-hanson|Jared Hanson]], co-founder of [[entities/keycard|Keycard]] and creator of [[entities/passport-js|Passport.js]], argues that agents must transition from static API keys to dynamic OAuth-based access. He traces the [[concepts/model-context-protocol|MCP]] authorization spec's evolution from its flawed first attempt (which collapsed the OAuth authorization server into the MCP server) to the corrected model where MCP servers act as resource servers with separate authorization servers. The talk covers OAuth fundamentals, the three-role model, OpenID Connect, and why static secrets don't scale to hundreds of agents.

## Problem / Motivation

AI agents are most useful when connected to more systems, but the current pattern — pasting long-lived, broadly scoped API keys into environment variables for each agent — creates a massive security problem at scale. The [[concepts/model-context-protocol|MCP]] protocol's first authorization spec made this worse by requiring MCP server builders to implement full OAuth (token minting, management, refreshing) themselves, effectively demanding they become OAuth experts just to build an MCP server.

## Method / Architecture

Jared walks through the OAuth three-role model:

1. **Client** — requests access to APIs (e.g., an agent or chatbot)
2. **Resource Server** — responds with data and validates tokens
3. **Authorization Server** — mediates access, issues tokens, handles user consent

He explains that [[concepts/openid-connect|OpenID Connect]] is simply OAuth used for authentication via a user-info API, standardized as an identity layer on top of OAuth. The ID token is a cryptographically signed JWT about who the user is.

For MCP specifically, he identifies the critical flaw in the original spec: it collapsed the authorization server role into the MCP server, making server builders responsible for token minting and user consent. The community pushback (Christian Posta's viral blog post, Aaron Parecki's "Let's Fix OAuth and MCP," a 400-comment PR) forced a correction: MCP servers should be resource servers only, with a separate authorization server handling tokens.

## Key Equations

Not applicable — this is an architectural and protocol discussion.

## Results

- Static secrets (long-lived API keys) are the default for MCP today and don't scale to hundreds of agents
- OAuth transitions agents from static secrets to short-lived, scoped, rotatable tokens
- The MCP auth spec's first attempt collapsed OAuth roles; community feedback corrected it to resource-server separation
- Agents should be authorized via OAuth through a controlling authorization server, not by carrying credentials

## Limitations

- Transcript is incomplete (cuts off mid-sentence at "so let's take a look at the state of authorization in MCP")
- No concrete implementation code or architecture diagrams provided
- Keycard product details not discussed (talk focused on principles, not the product)

## Related

- [[concepts/oauth-2.0]] — OAuth 2.0 protocol fundamentals
- [[concepts/openid-connect]] — OpenID Connect as authentication layer on OAuth
- [[concepts/mcp-resource-server-separation]] — MCP servers as resource servers only
- [[concepts/mcp-auth-spec-evolution]] — How the MCP auth spec evolved
- [[concepts/mcp-protected-servers]] — Protected MCP servers using OAuth
- [[concepts/static-secrets-problem]] — Why static API keys are insecure at scale
- [[references/aief2025-securing-agents-open-standards-bobby-tiernay-auth0]] — Bobby Tiernay's Auth0 talk on the same topic
- [[entities/auth0]] — Auth0 as an authorization server implementation
- [[entities/okta]] — Okta as an authorization server implementation

## Sources

- AIEF2025 - How to Secure Agents using OAuth — Jared Hanson (Keycard, Passport.js) - https://www.youtube.com/watch?v=blmAkayzE8M
