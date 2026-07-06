---
title: Agent Gateway
category: concepts
tags:
- agent-gateway
- caching
- evals
- agent-iteration
- middleware
- agent-infrastructure
sources:
- AIEF2025 - Building Agents (the hard parts!) - Rita Kozlov, Cloudflare - https://www.youtube.com/watch?v=j_TKDweOsYE
summary: A middleware layer between the client interface and the LLM that provides caching, evaluation hooks, and observability for agent systems. Enables iterative improvement by measuring agent behavior a...
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
base_confidence: 0.42
lifecycle: draft
lifecycle_changed: '2026-07-04'
tier: supporting
created: '2026-07-04'
updated: '2026-07-04'
---

# Agent Gateway

An **agent gateway** is a middleware layer positioned between the client interface and the LLM reasoning engine in an agent architecture. It provides caching, evaluation hooks, and observability — enabling iterative improvement of agent behavior over time.

## Purpose

Rita Kozlov (Cloudflare) at AIEF2025 described the gateway as a component that sits between the chat UI host and the LLM:

> "Ideally, you're using some sort of gateway to do caching and to run your evals to make sure that as you're iterating on the overall process, that things are getting better and better."

The gateway serves two primary purposes:

1. **Caching** — Avoid redundant LLM calls by caching responses for identical or similar inputs, reducing cost and latency
2. **Evals** — Run evaluation hooks at each interaction to measure agent quality, detect regressions, and track improvement over time

## Position in the Agent Stack

In Rita's CRM agent example, the full stack flows as:

1. Voice/WebRTC or chat UI (client)
2. **Gateway** (caching + evals)
3. LLM (reasoning)
4. Workflow agent (orchestration)
5. Tools (APIs, browsers, databases)

The gateway sits between the client and the LLM, making it the natural place to intercept and measure every agent interaction.

## Evals as Iteration Fuel

The gateway's eval capability connects directly to [[concepts/eval-driven-development|eval-driven development]]: by running evaluations at every interaction, teams can measure whether changes to prompts, models, or workflows are actually improving agent behavior. This creates the feedback loop necessary for continuous agent improvement.

## Related

- [[concepts/eval-driven-development]] — Evals that gateways enable
- [[concepts/agent-architecture]] — Where the gateway fits in the four-component framework
- [[concepts/ai-iteration-loop]] — The iteration loop that gateways fuel
- [[concepts/voice-agents]] — Gateway sits between voice client and LLM
