---
title: "Agent-Readable Docs"
category: concepts
tags:
  - agent-experience
  - documentation
  - agent-readable
  - llms-txt
  - aief2025
aliases: [agent-readable docs, agent-friendly documentation, machine-readable docs]
sources:
  - "AIEF2025 - AX is the only Experience that Matters - Ivan Burazin, Daytona - https://www.youtube.com/watch?v=e9sLVMN76qU"
provenance:
  extracted: 0.90
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/agent-experience]]"
    type: component_of
  - target: "[[references/llms-txt]]"
    type: uses
---

# Agent-Readable Docs

**Agent-readable documentation** is the practice of structuring documentation so that AI agents can consume it directly and efficiently — without parsing HTML, dealing with interactive elements, or filtering through fluff.

## The Stripe Pattern

[[entities/stripe|Stripe]] is cited as the gold standard: any documentation URL, append `.md`, and you get a clean markdown file with no fluff. This is the easiest AX pattern to implement and "pretty much all of you" should be doing it. ^[extracted]

## The llms.txt Standard

The `llms.txt` standard provides a machine-readable index on the website itself. Agents can fetch this file to discover what documentation is available, then consume the relevant pages in clean markdown format. If your docs don't have an `llms.txt`, you "definitely should" — it makes it "super easy for the agent to go and read what you all are doing." ^[extracted]

## Why It Matters

Agents that cannot efficiently read documentation cannot use tools effectively. Agent-readable docs are the simplest AX pattern because they require no behavioral change from the agent — just a change in how documentation is served. ^[extracted]

## Related Pages

- [[concepts/agent-experience]] — Agent Experience (AX) framework
- [[references/llms-txt]] — The llms.txt standard
- [[concepts/api-first-design-for-agents]] — API-first as the critical AX principle
