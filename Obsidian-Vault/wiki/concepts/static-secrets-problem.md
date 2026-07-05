---
title: "Static Secrets Problem"
category: concepts
tags:
  - security
  - api-keys
  - secrets
  - oauth
  - agent-security
sources:
  - "AIEF2025 - How to Secure Agents using OAuth — Jared Hanson (Keycard, Passport.js) - https://www.youtube.com/watch?v=blmAkayzE8M"
provenance:
  extracted: 0.90
  inferred: 0.05
  ambiguous: 0.05
base_confidence: 0.90
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/oauth-2.0|OAuth 2.0]]"
    type: contradicts
  - target: "[[concepts/access-token|Access Token]]"
    type: related_to
  - target: "[[concepts/mcp-resource-server-separation|MCP Resource Server Separation]]"
    type: related_to
---

# Static Secrets Problem

The static secrets problem is the security risk created when systems (including AI agents) use long-lived, broadly scoped API keys or tokens for authentication and authorization. This is the default pattern for [[concepts/model-context-protocol|MCP]] servers today and becomes a critical vulnerability at scale.

## The Pattern

Developers obtain API keys from third-party services, paste them into configuration files or environment variables, and let agents run with them. This pattern works for a single agent but creates a massive security problem when scaled to hundreds or thousands of agents.

## Problems with Static Secrets

- **Long-lived** — Keys don't expire, so a compromised key provides indefinite access
- **Broadly scoped** — Keys often grant more permissions than needed (over-privileged)
- **No user context** — The API cannot tell which user authorized the action
- **No audit trail** — Cannot trace actions back to specific users or consent decisions
- **Rotation is manual and risky** — Key rotation requires updating every agent's configuration
- **No granular scoping** — Cannot limit access to specific resources or actions

## The OAuth Solution

[[concepts/oauth-2.0|OAuth 2.0]] transitions systems from static secrets to dynamic access:

- **Short-lived tokens** — Access tokens expire and are automatically rotated
- **Scoped access** — Tokens grant only the specific permissions needed
- **User context** — Every token is tied to a user who provided consent
- **Audit trail** — Every token exchange is traceable
- **Centralized management** — Token lifecycle is managed by the authorization server

## In the Agent Context

AI agents amplify the static secrets problem because:
1. Agents are inherently more connected (more useful when connected to more systems)
2. Agents can make many API calls autonomously
3. Agents may carry credentials across sessions
4. At scale (hundreds of agents), the blast radius of a compromised key is enormous

The transition to [[concepts/oauth-2.0|OAuth]]-based agent security is not optional — it is a prerequisite for safe agent deployment at scale.

## Related

- [[concepts/oauth-2.0]] — OAuth 2.0 as the solution
- [[concepts/access-token]] — Short-lived access tokens vs static keys
- [[concepts/authorization-server]] — Centralized token management
- [[concepts/mcp-resource-server-separation]] — MCP's corrected auth model
- [[concepts/agent-oauth-identity]] — Agent identity and OAuth
