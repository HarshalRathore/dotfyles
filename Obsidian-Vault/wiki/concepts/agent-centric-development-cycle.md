---
title: Agent-Centric Development Cycle (ACDC)
category: concepts
tags:
- concept
- ai-agents
- code-verification
- enterprise-ai
- sonar
sources:
- 'https://www.youtube.com/watch?v=4sX_He5c4sI'
summary: The ACDC framework — Guide (context + constraints), Verify (zero-trust multi-layered), Solve — for verification-powered agentic loops. Presented by Sonar CEO Tariq Shawkat at WF2026.
provenance:
  extracted: 0.85
  inferred: 0.15
  ambiguous: 0.0
base_confidence: 0.59
lifecycle: draft
lifecycle_changed: 2026-07-06
tier: supporting
created: 2026-07-06T12:00:00Z
updated: 2026-07-06T12:00:00Z
relationships:
  - target: '[[entities/sonar-labs]]'
    type: related_to
  - target: '[[concepts/eval-driven-development]]'
    type: related_to
  - target: '[[concepts/perception-agents]]'
    type: related_to
---

# Agent-Centric Development Cycle (ACDC)

The **Agent-Centric Development Cycle (ACDC)** is a framework for verification-powered agentic loops in software development. It structures AI coding around three principles: **Guide** (context + constraints), **Verify** (zero-trust multi-layered), and **Solve** (code generation) — implemented across three compounding loops.

Presented by [[entities/tariq-shawkat|Tariq Shawkat]] (CEO, [[entities/sonar-labs|Sonar]]) at WF2026.

## The Framework

### Guide — Context + Constraints

**Context** — Make the codebase understandable to agents:
- Architectural awareness
- Semantic navigation maps
- Help agents "understand the territory"

**Constraints** — Define boundaries:
- Coding standards
- Allowed/disallowed dependencies
- Guardrails
- Intended architecture (where you want to go)

**Results:** Massive improvement in agent effectiveness and **30%+ reduction in tokens** needed to solve a problem. ^[extracted]

### Verify — Zero-Trust, Multi-Layered

**Zero trust** — Every model has biases. Use different models and techniques.

**Multi-layered** — Combine:
- **Algorithmic verification** — Data flows, control flows, known patterns, secrets
- **Agentic verification** — Intent analysis, business logic, unknown unknowns

**Results:** Partners using multi-layered verification report **44% fewer AI-derived production outages**. ^[extracted]

### Solve

The actual code generation, surrounded by guide and verify disciplines.

## The Three Compounding Loops

1. **Agentic loop** — In-loop verification as the agent generates code, with context/constraints and problem-fixing
2. **CI verification loop** — Agent-based PR review, multi-layered verification, high velocity
3. **Code maintenance loop** — Active discipline around code quality; agents care about clean code because they need to understand the codebase

> "If you make the life of the agent easier, if you maintain your codebase, then you'll actually see compounding effects." ^[extracted]

## The Two Spirals

- **Downward spiral** — Neglect verification → technical debt accumulates → benefits dissipate (Carnegie Mellon study: 3-5x boost disappears after 3 months)
- **Self-reinforcing loop** — Bake verification in → compounding reliability, security, maintainability

## Evidence

- **44% fewer outages** — Partners using multi-layered verification
- **92% reduction in issues** — Large bank using ACDC inside agentic loops
- **30%+ token reduction** — Guide phase with context and constraints

## Relationship to Other Frameworks

- **Perception agents** — Complementary approach: perception agents verify at the screen level; ACDC verifies at the code level
- **Evals-driven development** — ACDC's verification loops align with eval-driven principles
- **Agent loop** — ACDC is a structured variant of the general agent loop pattern, with verification baked in

## Open Questions

- How does ACDC scale to organizations with existing code debt?
- What's the token cost of the full ACDC loop vs. raw agent generation?
- Can the "guide" phase be automated or does it require human expertise?
- How does ACDC interact with non-code agentic workflows?

## Sources

- [[references/aief2025-code-verification-acdc-tariq-shawkat]] — Tariq Shawkat's WF2026 talk
- [[misc/wf2026]] — Conference overview
