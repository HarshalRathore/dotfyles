---
title: AIEF2025 — How agents will unlock the $500B promise of AI
category: references
tags:
- aief2025
- agent-strategy
- build-vs-buy
- enterprise-ai
- vibe-coding
- production-agents
sources:
- 'https://www.youtube.com/watch?v=lqq_lcbajcc'
relationships:
- target: '[[entities/donald-hruska|Donald Hruska]]'
  type: related_to
- target: '[[entities/retool|Retool]]'
  type: related_to
- target: '[[concepts/build-vs-buy-agents|Build vs Buy Agents]]'
  type: defines
provenance:
  extracted: 0.95
  inferred: 0.03
  ambiguous: 0.02
base_confidence: 0.9
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
summary: AIEF2025 — How agents will unlock the $500B promise of AI
---

# AIEF2025 — How agents will unlock the $500B promise of AI

**Speaker:** Donald Hruska, Retool
**Video:** https://www.youtube.com/watch?v=Lqq_LcBaJCc

## Summary

Donald Hruska presents a framework for why 2025 is the inflection point for enterprise agentic AI, how to categorize the four approaches to building agents, and provides decision criteria for the build-vs-buy question. He grounds the argument in market data (Anthropic's $3B annualized revenue, OpenAI's $12B projected revenue) and developer trends (SWE Bench improvements, vibe coding adoption).

## Key Claims

### Market Context
- Half a trillion dollars spent on AI infrastructure, yet most enterprises remain stuck with toy chatbots
- Anthropic hit $3B annualized revenue by end of May 2025, up from $2B in March and $1B in December — 3x growth in five months
- OpenAI slated to end 2025 at $12B revenue, 3x where it was at end of last year
- Enterprise AI spend is the primary driver of this growth

### Developer Trends
- Cursor and Windsurf adoption is near-universal among engineers
- OpenRouter's top apps are dominated by code generation use cases
- SWE Bench Verified: GPT-4.1 up 21pp from GPT-4.0; Gemini 2.5 Pro up 9pp from GPT-4.1
- "Vibe coding" has entered the zeitgeist, characterized by Rick Rubin as "the punk rock of software"

### Agent Architecture
- Building a basic agent is easy (~100 lines of JavaScript/Python using ReAct framework)
- An agent is an LLM wrapped in an execution loop: reason, act, reason, act, until final answer
- Agents have access to tools (external services, code base functions)
- The hard part is production, not building

### Production Challenges
- SSO, RBAC, secure external service integration, audit logs, SOC 2 compliance, internationalization
- Models hallucinate, give unpredictable/inaccurate/made-up results
- Security: what you give the agent access to matters
- Cost overruns: easy to accidentally burn tokens
- Evals are essential safeguards

### Four Approaches to Building Agents
1. **Build from scratch** — Full control, high lift, purpose-built
2. **Framework** (e.g., LangGraph) — High control, medium lift, flexible but tied to framework
3. **Managed platform** (e.g., Retool Agents) — Opinionated defaults, low lift, platform lock-in
4. **Verticalized** — One use case, minimal flexibility

### Decision Framework
- Build: core product, competitive edge, regulated data, hard SLAs
- Buy: commodity workflow, days not quarters timeline
- Risk assessment: debugging business logic vs. troubleshooting OAuth at 2 AM
- Platform evaluation: connector breadth, permissioning, compliance, audit trails, observability, evals
- Total cost: token + infrastructure + engineering

### Observability
- Track token usage, estimated costs, runtime information
- Drill into any specific agent and agent run
- Verify fleet behavior matches expectations

## Speakers & Entities Mentioned
- Donald Hruska (Retool)
- Rick Rubin (Andreessen Horowitz podcast)
- Anthropic ($3B annualized revenue)
- OpenAI ($12B projected revenue)
- Cursor, Windsurf (agentic coding tools)
- OpenRouter (unified API for hundreds of AI models)
- GPT-4.0, GPT-4.1, Gemini 2.5 Pro (model benchmarks)
- LangGraph (framework approach)
- Retool Agents (managed platform)

## Sources

- https://www.youtube.com/watch?v=Lqq_LcBaJCc
