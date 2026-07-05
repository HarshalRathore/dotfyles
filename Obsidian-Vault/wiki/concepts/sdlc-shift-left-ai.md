---
title: "SDLC Shift-Left AI"
category: concepts
tags:
  - sdlc
  - shift-left
  - aief2025
  - itamar-friedman
  - qodo
  - code-review
  - testing
  - agentic-workflows
summary: The V-shape model of SDLC executability and the argument for shifting review and testing left — so developers get feedback as they write code rather than after pushing. Requires agentic workflows where agents talk to each other.
sources:
  - "AIEF2025 - Vibe Coding with Confidence — Itamar Friedman, Qodo - https://www.youtube.com/watch?v=n991Yxo1aOI"
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/vibe-coding-with-confidence|Vibe Coding with Confidence]]"
    type: enables
  - target: "[[concepts/agent-to-agent-communication|Agent-to-Agent Communication]]"
    type: requires
  - target: "[[concepts/agent-workflows|Agent Workflows]]"
    type: implements
---

# SDLC Shift-Left AI

The **SDLC shift-left AI** concept describes shifting AI-powered review and testing left in the development timeline — so developers get feedback as they write code rather than after they push. This requires [[concepts/agent-workflows|agentic workflows]] where different agents coordinate across SDLC phases. ^[extracted]

## The V-Shape Model of SDLC Executability

Friedman introduced a V-shape model where the y-axis represents "executability" and the x-axis represents time:

- **Planning** — at the top left, not executable (pure design)
- **Code writing** — moves down the V, executable but not yet application code
- **Testing** — at the bottom of the V, fully executable application code
- **Review** — moves back up the V, validating the executable output

The traditional SDLC follows the full V shape. The game-changing opportunity is "squeezing the V" — shifting review and testing left so they happen closer to the code-writing phase. ^[extracted]

## Why Shift Left?

Shifting review and testing left provides several advantages:

1. **Immediate feedback:** Developers get suggestions and high-quality code guidance while writing, not after pushing.
2. **Best practices baked in:** Code is already aligned with company standards from the start, not retrofitted by post-push review tools.
3. **Faster iteration cycles:** Problems are caught earlier, reducing the cost of fixes.
4. **Higher quality output:** The combination of AI writing + AI reviewing in parallel produces better code than AI writing alone. ^[inferred]

## Agentic Coordination

"Squeezing the V" requires [[concepts/agent-to-agent-communication|agent-to-agent communication]] — different agents (coding agents, testing agents, review agents) talking to each other in real time. Protocols like [[concepts/model-context-protocol|MCP]] and A2A (Agent-to-Agent) enable this coordination, allowing one agent to use tools that connect all SDLC parts. ^[extracted]

## Connection to Holistic AI

Shift-left AI is a component of the broader [[concepts/holistic-ai-sdlc|holistic AI across the SDLC]] thesis — the idea that the next breakthrough will be a unified solution spanning planning, coding, testing, and review, rather than point tools for each phase. ^[inferred]
