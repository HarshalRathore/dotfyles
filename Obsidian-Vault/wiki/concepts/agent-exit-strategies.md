---
title: "Agent Exit Strategies"
category: concepts
tags:
  - agent-loop
  - agent-termination
  - control-flow
  - agent-design
summary: "Patterns for determining when an agent loop should terminate: plain text output, final result tools, structured output types, and iteration limits."
sources:
  - "AIEF2025 - Human seeded Evals — Samuel Colvin, Pydantic - https://www.youtube.com/watch?v=o_LRtAomJCs"
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.82
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/agent-loop]]"
    type: implements
  - target: "[[concepts/structured-output]]"
    type: relates_to
  - target: "[[concepts/open-loop-planning]]"
    type: contrasts_with
---

# Agent Exit Strategies

**Agent exit strategies** are patterns for determining when an agent loop should terminate. The exit problem is one of the hardest in agent design — even a simple pseudocode agent definition often lacks an exit condition, leading to infinite loops. ^[extracted]

## The Exit Problem

[[entities/samuel-colvin|Samuel Colvin]] noted that the widely-cited definition of an agent (from [[entities/barry-zhang|Barry Zhang]]'s talk at AI Engineer NYC, adopted by Anthropic, OpenAI, and Google's ADK) describes an agent as a while loop with tools, system prompt, and environment — but "there is no exit from that loop." ^[extracted]

## Common Exit Strategies

### 1. Plain Text Output

When the LLM returns plain text instead of calling a tool, the run ends. This is the simplest strategy but requires the model to distinguish between "I need to call a tool" and "I'm done." ^[extracted]

### 2. Final Result Tools

Specific tools are designated as "final result tools" — when called, they trigger the end of the run. This gives the developer explicit control over when the agent stops. ^[extracted]

### 3. Structured Output Types

When models support structured output (OpenAI, Google), the LLM's structured response can serve as the termination signal. The model either produces structured output (done) or calls a tool (continue). ^[extracted]

### 4. Iteration Limits

A maximum iteration count prevents infinite loops. This is a safety net rather than a primary strategy — the agent should normally exit before hitting the limit. ^[inferred]

## Choosing a Strategy

The choice depends on:

- **Model capabilities** — does the model support structured output?
- **Task complexity** — simple tasks may exit on plain text; complex tasks need final result tools
- **Developer control** — final result tools give the most explicit control
- **Error handling** — structured output enables [[concepts/validation-error-feedback|validation error feedback]] ^[inferred]

## Related

- [[concepts/agent-loop]] — Agent loop architecture
- [[concepts/structured-output]] — Structured output for agent termination
- [[concepts/validation-error-feedback]] — Validation error feedback loop
- [[concepts/open-loop-planning]] — Open-loop vs. closed-loop agent design
