---
title: "Passport.js"
category: entities
tags:
  - library
  - node-js
  - authentication
  - oauth
  - middleware
sources:
  - "AIEF2025 - How to Secure Agents using OAuth — Jared Hanson (Keycard, Passport.js) - https://www.youtube.com/watch?v=blmAkayzE8M"
provenance:
  extracted: 1.00
  inferred: 0.00
  ambiguous: 0.00
base_confidence: 0.95
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/jared-hanson|Jared Hanson]]"
    type: implements
  - target: "[[entities/keycard|Keycard]]"
    type: related_to
  - target: "[[concepts/oauth-2.0|OAuth 2.0]]"
    type: uses
---

# Passport.js

A popular Node.js authentication middleware created by [[entities/jared-hanson|Jared Hanson]]. It provides a simple, unobtrusive way to authenticate requests using strategies ranging from username/password to OAuth providers (Google, Facebook, GitHub, etc.).

## Significance

Passport.js is described by Hanson as "a very popular auth framework" in the Node.js ecosystem. Its design philosophy — making authentication unobtrusive and strategy-agnostic — has influenced how authentication is built across thousands of Node applications.

## Connection to Agent Security

Hanson's work on Passport.js gave him deep expertise in making authentication accessible to developers who are not security experts. This experience directly informs his advocacy for [[concepts/oauth-2.0|OAuth]]-based agent security: the same principle that Passport.js applied to web authentication — making it easy for non-experts — should apply to agent authentication.

## Sources

- AIEF2025 - How to Secure Agents using OAuth — Jared Hanson (Keycard, Passport.js) - https://www.youtube.com/watch?v=blmAkayzE8M
