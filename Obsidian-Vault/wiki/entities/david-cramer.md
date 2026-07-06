---
title: David Cramer
tags:
- person
- founder
- engineer
- software-engineering
- sentry
aliases:
- David Kramer
- dcramer
sources:
- 'https://www.youtube.com/watch?v=fci4jt86gsw'
summary: Founder of Sentry (application monitoring platform). Engineer-executive who built Sentry's MCP server and advocates for pragmatic agent architectures over protocol hype.
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.55
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
category: entities
---

# David Cramer

David Cramer is the founder of [[entities/sentry|Sentry]], the application monitoring platform. He describes himself as "sort of an engineer, sort of an executive, sort of a founder." At AI Engineer World's Fair 2025, he delivered a grounded, experience-based critique of [[concepts/model-context-protocol|MCP]] based on building and shipping Sentry's production MCP server.

## Key Views on MCP

Cramer's perspective is shaped by hands-on implementation experience ("I built Sentry's MCP server mostly as a fun project — I did it in a couple days") rather than theoretical positioning:

- **MCP is a pluggable architecture for agents** — not a revolutionary protocol. "Full stop. That's it." This is his core framing, cutting through the mystique. ^[extracted]
- **Remote MCP over stdio for B2B SaaS** — stdio MCP "is not super useful for businesses like ours." Remote servers give the same advantages cloud always had: iteration speed, security control, operational agility. ^[extracted]
- **Don't wrap OpenAPI as MCP tools** — "You cannot just be like, I got an API. I'm going to expose all those endpoints as tools. You're going to get the worst results." You must design the tool interface for how agents consume context. ^[extracted]
- **Return Markdown, not JSON** — Sentry's MCP server returns Markdown from tool endpoints because "if a human can reason about it, the language model can reason about it." ^[extracted]
- **Build agents, not just MCP servers** — the real value is in the agent: you control the prompt, the model, the orchestration. Expose finished agents through MCP as a plugin interface. ^[extracted]

## Practical Stance

Cramer is notably non-dogmatic: "this stuff is not that hard. It's quite broken all the time, but it's not that hard." He advocates for just building and learning — the fancy new words are "just new words for the same thing."

## Related

- [[entities/sentry]] — The company he founded
- [[concepts/model-context-protocol]] — His critique and practical contributions
- [[concepts/enterprise-mcp-deployment]] — His view on remote vs stdio deployment
