---
title: "Moore's Law for AI Agents"
category: concepts
tags:
  - ai-agents
  - exponential-growth
  - capability-scaling
  - software-engineering
  - aief2025
sources:
  - "[[sources/watchv=mi83but_23o]]"
summary: "AI agent capability in code doubles every 70 days — faster than general LLM doubling (~7 months). This translates to 16-64x improvement per year, measured as uninterrupted work before human intervention."
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# Moore's Law for AI Agents

**Moore's Law for AI agents** is the observation that the capability of AI agents — measured as the amount of uninterrupted work they can do before human intervention — follows exponential growth, with a doubling time of approximately **70 days for code-specific tasks**.

## The Metric

Capability is measured as the length of uninterrupted task execution before the agent requires human steering or intervention. This is analogous to how Moore's Law measured transistor density over time.

## Doubling Rates

| Domain | Doubling Time | Source |
|--------|--------------|--------|
| General LLMs (GPT-3 → GPT-3.5 → GPT-4) | ~7 months | Observed progression |
| Code-specific agents | ~70 days | Cognition/Devin data |

The code-specific doubling is 2-3x faster than general LLM capability growth, suggesting that software engineering is a particularly fast-moving domain for AI. ^[extracted]

## Annual Impact

With 4-6 doublings per year, the amount of work an AI agent can do in code increases by **16-64x annually**. This has been the observed trend for the last several years. ^[extractacted]

## Implications

- **Rapid capability progression** — The field moves faster than most teams can build on it
- **Interface instability** — The optimal way to interact with agents changes every 2-3 months
- **Compounding advantage** — Teams that build with agents early benefit from accelerating returns
- **No stable UX** — Product designs optimized for today's capabilities may be obsolete in months

## Related Pages

- [[entities/scott-wu]] — Source of the framework
- [[entities/devin]] — Product demonstrating this pattern
- [[concepts/agent-capability-tiers]] — How capability growth manifests as discrete tiers
- [[concepts/agent-interfaces-evolution]] — Why interfaces change with capability growth
