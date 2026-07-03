---
title: "Agent Development Lifecycle (ADLC)"
tags:
  - concept
  - agent
  - lifecycle
  - testing
  - production
  - ai-engineering
aliases: [ADLC, agent software development lifecycle, agent SDLC]
sources:
  - "AIEF2025 - Rise of the AI Architect — Clay Bavor, Cofounder, Sierra w/ Alessio Fanelli - https://www.youtube.com/watch?v=C3geUfBR2js"
summary: "A new software development lifecycle for probabilistic AI agents, replacing deterministic testing with simulation-based testing, production monitoring, and closed-loop improvement."
provenance:
  extracted: 0.75
  inferred: 0.20
  ambiguous: 0.05
base_confidence: 0.50
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Agent Development Lifecycle (ADLC)

The Agent Development Lifecycle (ADLC) is a new software development lifecycle [[entities/clay-bavor|Clay Bavor]]'s team at [[entities/sierra-ai|Sierra]] invented for building and operating probabilistic AI agents. Unlike traditional SDLC where software behavior is deterministic and testable with unit tests, ADLC addresses the fundamental challenge that "these are probabilistic pieces of software that could say or do anything." ^[extracted]

## The Agent Iceberg

A key framing for why ADLC is necessary: most teams underestimate the hidden complexity of production agents. ^[extracted]

**Above the surface (visible to technical teams):**
- Choosing a language model
- Selecting a framework (LangGraph, LangChain)
- Picking embedding models and vector databases
- Integrating a few tools

**Below the surface (the hidden complexity):** ^[extracted]
- Regression testing and evaluation
- Model migration and upgrade strategies
- Voice-specific complexity (primary vs secondary speaker separation, interruption handling)
- The full agent development lifecycle
- User simulation testing
- Production monitoring and observability
- Closed-loop improvement systems

> "Oh my God, there are hundreds of things." — Clay Bavor on the agent iceberg ^[extracted]

## Phases of ADLC

### 1. Understanding & Modeling

Deeply understand the customer journeys the agent will handle. Model these in code in a way that is "very expressive and lets the agent simultaneously hit curve balls and flex" while remaining "down to fully deterministic where needed" (e.g., compliance language that cannot hallucinate). ^[extracted]

### 2. Simulation Testing

Before going live, run tens or hundreds of thousands of simulated conversations using a [[concepts/user-simulation-testing|user simulation testing harness]]. The harness creates dozens of personas with simulated accounts and even simulated devices (e.g., an amber light on or off for device troubleshooting). ^[extracted]

### 3. Production Monitoring

Once live, provide CX and engineering teams with deep insight into where the agent detects it is "beyond its abilities" and hands off to a human. This replaces traditional error monitoring with capability-boundary detection. ^[extracted]

### 4. Closed-Loop Improvement

A set of tools enabling the agent to learn from its past mistakes, be coached by human reviewers, and continuously improve — creating an "upward spiral of performance and capability." ^[extracted]

This loop pairs with a new human role: teams who review hundreds of conversations daily to "coach and refine the agent on how to do it better, how to say it better, how to make better decisions, how to have greater empathy, how to have better judgment." ^[extracted]

## Key Difference from Traditional SDLC

| Aspect | Traditional SDLC | ADLC |
|---|---|---|
| Testing approach | Unit tests, integration tests, deterministic assertions | [[concepts/user-simulation-testing|User simulation testing]], persona-based scenarios |
| Error handling | Exceptions, error codes | Capability-boundary detection, graceful handoff to humans |
| Quality assurance | QA team runs test cases | [[concepts/ai-architect|AI architect]] coaches agent, reviews conversations |
| Updates | Code changes, patches | Model upgrades, prompt refinements, behavioral coaching |
| Determinism | Expected behavior = actual behavior | Probabilistic — agent may handle novel situations |

## Relationship to the Agent Loop

While the [[concepts/agent-loop|agent loop]] describes how an individual agent iterates on a single task, ADLC describes the full lifecycle of building, testing, deploying, and improving a production agent. The agent loop operates within ADLC's simulation testing and closed-loop improvement phases. ^[inferred]

## Related

- [[concepts/ai-architect]] — The role managing ADLC
- [[concepts/user-simulation-testing]] — The approach for pre-production testing
- [[concepts/closed-loop-agent-improvement]] — Production improvement via coaching
- [[concepts/agent-loop]] — The per-task iteration pattern
- [[concepts/agent-evaluation-pipeline]] — CI/CD evaluation for agents
- [[entities/sierra-ai]] — Sierra's AgentOS implements ADLC

## Sources

- AIEF2025 — Rise of the AI Architect, Clay Bavor, Sierra w/ Alessio Fanelli. https://www.youtube.com/watch?v=C3geUfBR2js
