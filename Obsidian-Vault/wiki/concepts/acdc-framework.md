---
title: ACDC Framework
category: concepts
tags: [agent-reliability, guide-verify-solve, agent-architecture, verification, software-development]
aliases: [guide-verify-solve, ACDC, Guide-Verify-Solve]
relationships:
  - target: '[[concepts/agent-reliability-challenge]]'
    type: extends
  - target: '[[concepts/evolution-of-verification]]'
    type: related_to
  - target: '[[concepts/agent-memory-knowledge]]'
    type: related_to
  - target: '[[concepts/structured-output]]'
    type: related_to
sources:
  - https://www.youtube.com/watch?v=4sX_He5c4sI
summary: "A three-loop framework for AI agent reliability: guide the agents, verify the outcomes, and solve the problems — forming a new software development lifecycle discipline."
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
lifecycle_changed: 2026-07-06
tier: supporting
created: 2026-07-06T00:00:00Z
updated: 2026-07-06T00:00:00Z
---

# ACDC Framework

**ACDC** stands for **Guide → Verify → Solve** — a three-loop framework for making AI agents reliable in production software development. It argues that code generation alone is insufficient; agents must be surrounded by the right disciplines, tools, and processes across three compounding loops. ^[extracted]

The framework was presented by Tariq Shawkat, CEO of Sonar, at the AI Engineer World's Fair 2026. ^[extracted]

## The Three Loops

### 1. Guide

Guide the agents with structured prompts, context, and constraints. The key insight is that agents need a **shared context** — not just a prompt, but a workspace where both the agent and the human are looking at the same screen. This reduces the explanation burden and makes the agent's actions more aligned with intent. ^[extracted]

Sonar launched a product around guided agent workflows at the time of this talk. ^[extracted]

### 2. Verify

Verify the outcomes. Multi-layered verification reduces production outages by **44%**. The framework distinguishes three types of verification: ^[extracted]

- **Agentic verification** — agents verifying each other's work
- **CI verification** — automated test pipelines
- **Code maintenance verification** — ongoing code quality checks

Together, guide-verify-solve reduces issues by **92%**. ^[extracted]

### 3. Solve

Solve the problems that guide and verify surface. This is the remediation loop — when verification catches an issue, the solve step fixes it.

## Why It Matters

The framework addresses a fundamental asymmetry: **code is verifiable but end-to-end workflows are not**. This is described as "the reliability wall for knowledge work." ^[inferred] Writing code with AI agents is relatively straightforward; ensuring the entire workflow — from requirement to deployment — is reliable requires the full guide-verify-solve discipline.

## Related

- [[concepts/agent-reliability-challenge|Agent Reliability Challenge]] — the broader problem of making agents dependable
- [[concepts/evolution-of-verification|Evolution of Verification]] — how verification practices have changed with AI
- [[concepts/structured-output|Structured Output]] — contracts that make agent output machine-actionable
- [[concepts/agent-memory-knowledge|Agent Memory & Knowledge]] — shared context as the foundation of guided agents
- [[entities/tariq-shawkat|Tariq Shawkat]] — CEO of Sonar, presenter of ACDC framework
- [[entities/sonar|Sonar]] — the company behind the guided agent workflow product

## Sources

- AI Engineer World's Fair 2026: https://www.youtube.com/watch?v=4sX_He5c4sI
