---
title: "llms.txt"
category: references
tags:
  - llms-txt
  - agent-readable
  - documentation
  - machine-readable
  - agent-experience
  - aief2025
aliases: [llms.txt, llms txt, LLMs.txt]
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
  - target: "[[concepts/agent-readable-docs]]"
    type: implements
  - target: "[[concepts/agent-experience]]"
    type: component_of
---

# llms.txt

**llms.txt** is a standard for providing machine-readable documentation indexes on websites — enabling AI agents to discover and consume documentation efficiently.

## The Pattern

llms.txt lives on the website itself (typically at `/llms.txt`) and provides a structured index of what documentation is available. Agents can fetch this file to understand the documentation landscape, then consume the relevant pages in clean format. ^[extracted]

## Usage

[[entities/ivan-burazin|Ivan Burazin]] at AIEF2025 noted that "if you don't have an llms.txt in your docs, you definitely should" — it makes it "super easy for the agent to go and read what you all are doing." ^[extracted]

## Relation to Stripe Pattern

llms.txt complements the Stripe pattern (append `.md` to any doc URL for clean markdown). Together they form a complete agent-readable documentation strategy: llms.txt for discovery, `.md` URLs for consumption. ^[inferred]

## Related Pages

- [[concepts/agent-readable-docs]] — Agent-readable documentation patterns
- [[concepts/agent-experience]] — Agent Experience (AX) framework
