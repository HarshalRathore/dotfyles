---
title: "OpenID Connect"
category: concepts
tags:
  - oidc
  - authentication
  - oauth
  - jwt
  - identity
sources:
  - "AIEF2025 - How to Secure Agents using OAuth — Jared Hanson (Keycard, Passport.js) - https://www.youtube.com/watch?v=blmAkayzE8M"
provenance:
  extracted: 0.90
  inferred: 0.05
  ambiguous: 0.05
base_confidence: 0.95
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/oauth-2.0|OAuth 2.0]]"
    type: extends
  - target: "[[concepts/jwt|JWT]]"
    type: uses
  - target: "[[concepts/authorization-server|Authorization Server]]"
    type: related_to
---

# OpenID Connect

OpenID Connect (OIDC) is an identity layer built on top of [[concepts/oauth-2.0|OAuth 2.0]]. It standardizes the pattern of using OAuth for authentication — a pattern that emerged organically when developers started using OAuth's user-info API to implement "Sign in with Google/Facebook" flows.

## Origin

OAuth is strictly an authorization protocol. However, developers discovered that by calling a user-info endpoint after the OAuth dance, they could determine who the user was — effectively using authorization to "back our way into authentication." This became such a common pattern that it was formalized as OpenID Connect.

## Key Additions to OAuth

- **ID Token** — A [[concepts/jwt|JSON Web Token]] (cryptographically signed statement) that contains claims about who the user is (ID, name, email, etc.). This is an optimization: the application can verify the user's identity without making additional API requests to the user-info endpoint.
- **Terminology changes** — OIDC introduces new terms that can cause confusion:
  - The authorization server is called an **identity provider** (IdP) in OIDC
  - Applications are called **relying parties** in OIDC
- **Standardized user-info response format** — The user-info API response is standardized across providers

## Relationship to OAuth Flows

In practice, OAuth authorization flows and OIDC authentication flows are deployed together: the system authenticates the user (knows who they are) and simultaneously obtains access tokens for API resources. For example, signing into Google Calendar via Calendly both verifies the user's identity and obtains a token to access their calendar.

## In the Agent Context

For AI agents, OIDC provides the authentication layer on top of OAuth-based authorization. An agent can use OIDC to verify which user authorized its access, while OAuth handles the scoped token issuance for API access.

## Related

- [[concepts/oauth-2.0]] — OAuth 2.0 protocol
- [[concepts/jwt]] — JSON Web Tokens used for ID tokens
- [[concepts/authorization-server]] — Authorization server / identity provider
- [[concepts/agent-oauth-identity]] — Agent identity and OAuth
