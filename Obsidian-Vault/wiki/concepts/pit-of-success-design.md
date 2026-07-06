---
title: Pit of Success Design
tags:
- design-philosophy
- engineering-culture
- infrastructure
sources:
- 'https://www.youtube.com/watch?v=0nhcyq8bbcm'
summary: Design philosophy where making the correct approach the easiest path naturally guides teams toward good practices without enforcement overhead.
provenance:
  extracted: 0.6
  inferred: 0.35
  ambiguous: 0.05
base_confidence: 0.42
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
category: concepts
---

# Pit of Success Design

**Pit of Success** is a design philosophy, articulated by [[entities/john-welsh|John Welsh]] in his talk on MCP at Anthropic (attributed to a mentor), that states: **if you make the right thing to do the easiest thing to do, everyone in your organization naturally falls into it.**

## The Principle

The core insight is that organizational behavior follows path of least resistance. Rather than relying on:

- Mandates and policies that require enforcement
- Documentation that requires reading and retention
- Complex processes that need conscious effort

...you design the system so that the correct approach is also the simplest, most obvious path. This makes good practices self-reinforcing rather than requiring ongoing overhead.

## Application at Anthropic

Welsh applied this when designing the [[concepts/mcp-gateway-pattern|MCP Gateway]]:

- Engineers call a single simple function: `connectToMCP(url, orgId, accountId)`.
- The function returns a standard MCP SDK client session.
- All complexity (auth, routing, rate limiting, observability) is handled transparently.
- The alternative (building a custom integration) is strictly more work.

By making the shared gateway the easiest path, adoption happened naturally — the pit of success.

## Broader Implications

The philosophy generalizes beyond MCP infrastructure: ^[inferred]

- Infrastructure teams should invest in making the correct path frictionless, not in building enforcement mechanisms.
- A well-designed default should be simpler to use than any alternative, even a quick ad-hoc solution.
- Measuring adoption of the pit-of-success path is a proxy for infrastructure quality.

## Related

- [[concepts/mcp-gateway-pattern]] — Concrete application of this philosophy
- [[concepts/model-context-protocol]] — The protocol standardized using this approach
