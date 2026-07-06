---
title: Jared Hanson
category: entities
tags:
- person
- keycard
- passport-js
- auth0
- okta
- oauth
- identity
sources:
- AIEF2025 - How to Secure Agents using OAuth — Jared Hanson (Keycard, Passport.js) - https://www.youtube.com/watch?v=blmAkayzE8M
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
base_confidence: 0.95
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[entities/keycard|Keycard]]'
  type: implements
- target: '[[entities/passport-js|Passport.js]]'
  type: implements
- target: '[[entities/auth0|Auth0]]'
  type: related_to
- target: '[[entities/okta|Okta]]'
  type: related_to
summary: Jared Hanson
---

# Jared Hanson

Co-founder of [[entities/keycard|Keycard]] (an identity and access management platform for AI and agents) and creator of [[entities/passport-js|Passport.js]], the popular Node.js authentication framework. Previously worked at [[entities/auth0|Auth0]] building core identity infrastructure, then at [[entities/okta|Okta]].

At AI Engineer World's Fair 2025, he delivered a keynote on securing AI agents using OAuth, arguing that the industry must transition from static API keys to dynamic, scoped, short-lived tokens via the OAuth protocol. He was an early critic of the [[concepts/model-context-protocol|MCP]] protocol's first authorization spec, which he said collapsed the OAuth authorization server role into the MCP server.

## Key Contributions

- **Passport.js** — Node.js authentication middleware used by millions of applications
- **Keycard** — Identity and access management platform built specifically for AI agents
- **Auth0 identity infrastructure** — Core identity systems before Auth0 was acquired by [[entities/okta|Okta]]
- **MCP auth spec critique** — January 2025 comment recommending MCP servers be modeled as OAuth resource servers (later validated by community pushback)

## Sources

- AIEF2025 - How to Secure Agents using OAuth — Jared Hanson (Keycard, Passport.js) - https://www.youtube.com/watch?v=blmAkayzE8M
