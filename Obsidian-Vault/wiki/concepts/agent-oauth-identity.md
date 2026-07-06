---
title: Agent OAuth Identity
category: concepts
tags:
- agents
- oauth
- identity
- security
- mcp
sources:
- AIEF2025 - How to Secure Agents using OAuth — Jared Hanson (Keycard, Passport.js) - https://www.youtube.com/watch?v=blmAkayzE8M
- 'https://www.youtube.com/watch?v=fzomsupg37e'
provenance:
  extracted: 0.7
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.85
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/oauth-2.0|OAuth 2.0]]'
  type: uses
- target: '[[concepts/mcp-resource-server-separation|MCP Resource Server Separation]]'
  type: related_to
- target: '[[concepts/static-secrets-problem|Static Secrets Problem]]'
  type: related_to
- target: '[[concepts/authorization-server|Authorization Server]]'
  type: related_to
summary: Agent OAuth Identity
---

# Agent OAuth Identity

Agent OAuth Identity is the paradigm of using [[concepts/oauth-2.0|OAuth 2.0]] to provide authenticated, authorized, and traceable identity for AI agents accessing external APIs and services. It replaces the current pattern of static API keys with dynamic, scoped, short-lived tokens.

## Core Principle

Agents that are more connected are more useful. But connecting agents to systems using static API keys creates security problems that don't scale. OAuth provides the protocol to connect agents safely by giving each agent an identity tied to a user's consent and scoped to specific resources.

## Architecture

The agent OAuth identity model applies the classic OAuth three-role architecture to AI agents:

1. **Agent = OAuth Client** — The chatbot or AI agent requests access to APIs
2. **MCP Server / API = Resource Server** — The system holding the data, validates tokens
3. **Identity Provider = Authorization Server** — Handles authentication, consent, and token issuance

## Key Benefits

- **Traceability** — Every API call can be traced to the user who authorized it
- **Scoping** — Agents only get the minimum permissions they need for their task
- **Short-lived access** — Tokens expire and rotate, limiting the impact of compromise
- **Centralized policy** — Authorization decisions are made in one place, not scattered across API keys
- **User consent** — Users explicitly approve what agents can access

## The Problem It Solves

Without agent OAuth identity, the default is to paste API keys into agent configurations — long-lived, broadly scoped, untraceable. This works for a single agent but becomes a critical security problem at scale. Agent OAuth identity makes it possible to deploy hundreds of agents safely.

## Relation to MCP

The [[concepts/model-context-protocol|MCP]] protocol's authorization specification evolution directly reflects the agent OAuth identity paradigm. The corrected MCP auth spec (resource server separation) enables MCP servers to work with standard authorization servers, making agent OAuth identity the natural model for MCP-based agent communication.

## Related

- [[concepts/oauth-2.0]] — OAuth 2.0 protocol
- [[concepts/mcp-resource-server-separation]] — MCP's resource server model
- [[concepts/static-secrets-problem]] — The problem agent OAuth identity solves
- [[concepts/authorization-server]] — Authorization servers provide agent identity
- [[concepts/agent-identity-and-payments]] — Related agent identity concepts
