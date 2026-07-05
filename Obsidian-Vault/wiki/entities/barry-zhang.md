---
title: "Barry Zhang"
category: entities
tags:
  - person
  - ai-agents
  - agent-definition
  - anthropic
summary: "Speaker at AI Engineer NYC in February 2025. Provided the widely-adopted definition of an AI agent used by Anthropic, OpenAI, and Google's ADK."
sources:
  - "AIEF2025 - Human seeded Evals — Samuel Colvin, Pydantic - https://www.youtube.com/watch?v=o_LRtAomJCs"
provenance:
  extracted: 0.90
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/agent-architecture]]"
    type: related_to
---

# Barry Zhang

**Barry Zhang** spoke at AI Engineer NYC in February 2025, presenting a definition of what an AI agent is that has been widely adopted across the industry. ^[extracted]

## Agent Definition

Barry Zhang's definition — later described by [[entities/samuel-colvin|Samuel Colvin]] at AIEF2025 — describes an agent as:

> An agent has an environment, tools that may access the environment, a system prompt describing what it should do, and a while loop that calls the LLM, gets back actions to run in tools, runs the tools (updating state), and calls the LLM again.

This definition was adopted by Anthropic, OpenAI, and Google's ADK, becoming the generally accepted definition of an agent. ^[extracted]

## Critique

[[entities/samuel-colvin|Samuel Colvin]] noted that while the definition is "very neat," it has a bug: "there is no exit from that loop." This highlights the [[concepts/agent-exit-strategies|agent exit problem]] — determining when the agent loop should terminate. ^[extracted]

## Related

- [[concepts/agent-architecture]] — Agent component design
- [[concepts/agent-loop]] — Agent loop architecture
- [[concepts/agent-exit-strategies]] — Agent exit problem
