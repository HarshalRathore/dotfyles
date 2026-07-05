---
title: "On-Call Fatigue"
tags:
  - on-call
  - fatigue
  - engineer-burnout
  - production-troubleshooting
  - ai-coding
aliases: [on-call-fatigue, on-call-burden, on-call-problem]
sources:
  - "[[sources/watchv=l6_nigiexzq]]"
summary: The phenomenon where engineers spend most of their time on on-call and QA rather than creative system design work, as AI coding tools increase system complexity while reducing human understanding of internals.
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/production-troubleshooting]]"
    type: related_to
  - target: "[[concepts/context-loss]]"
    type: derived_from
  - target: "[[concepts/agent-swarm]]"
    type: related_to
---

# On-Call Fatigue

**On-call fatigue** is the phenomenon where software engineers spend most of their time on on-call duties and QA rather than creative system design work. It is the predicted consequence of AI coding tools increasing system complexity while simultaneously reducing human understanding of system internals.

## The Inversion

[[entities/anish-agarwal|Anish Agarwal]] frames this as an inversion of the promise of AI coding tools:

- **The promise**: AI writes our code and troubleshoots all production incidents, so we focus on the fun stuff — creative system design work
- **The grim reality**: Without solving troubleshooting, most of our time will be spent doing on-call and QA

## Why It Happens

Two compounding factors drive on-call fatigue:

1. **Context loss**: As AI systems write more code, humans lack understanding of inner workings and the reasoning behind design decisions
2. **System complexity**: Systems grow more complex while human understanding grows thinner

The result: troubleshooting becomes exponentially more painful, and engineers become trapped in an endless loop of incident response.

## The Sad Existence

Anish describes this outcome as "kind of a sad existence for ourselves" — engineers who wanted to do creative, high-impact work end up spending their careers staring at dashboards and debugging systems they don't understand.

## The Solution

[[entities/traversal-ai|Traversal.ai]] aims to prevent this outcome through autonomous troubleshooting that returns engineers to creative work by handling the troubleshooting burden automatically.

## Sources

- Video: <https://www.youtube.com/watch?v=L6_NiGIEXZQ>
