---
title: "Casco"
category: entities
tags:
  - company
  - yc
  - ai-security
  - red-teaming
  - agent-security
aliases:
  - Casco
sources:
  - "AIEF2025 - How we hacked YC Spring 2025 batch's AI agents — Rene Brandel, Casco - https://www.youtube.com/watch?v=kv-QAuKWllQ"
summary: "YC-backed company specializing in red-teaming AI agents and apps. Founded by Rene Brandel after he left AWS to work out of a garage."
provenance:
  extracted: 0.95
  inferred: 0.05
  ambiguous: 0.00
base_confidence: 0.90
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/agent-security|Agent Security]]"
    type: related_to
  - target: "[[concepts/red-teaming|Red Teaming]]"
    type: related_to
---

# Casco

Casco is a [[entities/yc|YC-backed]] company founded by [[entities/rene-brandel|Rene Brandel]] that specializes in [[concepts/red-teaming|red-teaming]] AI agents and applications.

## Background

Rene Brandel quit his position at [[entities/aws|AWS]] where he worked on AI agents, then started Casco from a garage with his co-founder. They got into Y Combinator and subsequently launched a highly upvoted product announcement — the second highest upvoted launch post in Y Combinator history, higher than Rippling.

## The YC Agent Hack

As a proof-of-concept demonstration, Casco hacked 7 out of 16 AI agents in the YC Spring 2025 batch within 30 minutes each, by extracting system prompts, analyzing tool definitions, and exploiting [[concepts/idor-insecure-direct-object-reference|IDOR]] vulnerabilities and other common security flaws. ^[extracted]

## Focus Areas

Casco's work centers on [[concepts/agent-security|agent security]] — examining all attack vectors in agent systems rather than just prompt injection, including downstream data access, code execution sandboxes, and authorization gaps.
