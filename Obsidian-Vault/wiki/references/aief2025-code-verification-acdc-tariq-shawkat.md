---
title: AIEF2026 — Code Verification and the ACDC Framework (Tariq Shawkat, Sonar)
category: references
tags:
- reference
- talk
- aief2026
- code-verification
- sonar
- enterprise-ai
sources:
- 'https://www.youtube.com/watch?v=4sX_He5c4sI'
summary: Sonar CEO Tariq Shawkat presents the ACDC (Agent-Centric Development Cycle) framework for verification-powered agentic loops, with data on AI coding productivity gains, AI slop, and multi-layered verification results.
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
  - target: '[[concepts/agent-centric-development-cycle]]'
    type: related_to
  - target: '[[concepts/capability-overhang]]'
    type: related_to
---

# AIEF2026 — Code Verification and the ACDC Framework (Tariq Shawkat, Sonar)

> **Speaker:** Tariq Shawkat, CEO of Sonar
> **Conference:** AI Engineer World's Fair 2026 (WF2026), Day 2
> **Source:** [[misc/wf2026]]

## Overview

Tariq Shawkat presented on the critical question of **getting reliable value from AI coding agents in production**. His thesis: verification must be baked into the software development lifecycle, not treated as an afterthought.

He introduced the **Agent-Centric Development Cycle (ACDC)** framework — a system for verification-powered agentic loops that compounds reliability, security, and maintainability.

## The Problem: AI Slop Everywhere

Shawkat argued that while models are amazing at generating plausible output, the question of correctness is the hard part. Evidence:

- **KPMG and EY** have retracted reports due to hallucinations
- **Law firms** face trouble from fabricated citations and made-up case law
- **Every sector** — marketing, finance, legal — has the same question: "how do you know if it's true?"

### Coding Agents: Fast Improvement, Slower Accuracy

Per **METR benchmarking** data:
- Mythos models can complete tasks taking **16-18 hours of human work** at **50% success rate**
- At **80% accuracy**, that drops to **~3.5 hours**
- A CTO of a large customer noted: "I would still put someone who gave me 80% accurate information on a performance review"

### Sonar's Model Benchmarking

Sonar gives models **4,000+ problems** and analyzes output for:
- **Functional correctness** — All state-of-the-art models do extremely well
- **Complexity** — Still high and variable
- **Bugs** — State-of-the-art models still generate bugs (GPT-5.5 does particularly well here)
- **Security issues** — Still present even in top models

## The Carnegie Mellon Study

A Carnegie Mellon University study measured the actual productivity benefit of AI coding agents:

- **Initial boost:** 3-5x productivity/velocity increase
- **Dissipation:** Benefits disappear after 3 months
- **Why:** Velocity increases are accompanied by increases in:
  - Security issues
  - Maintainability issues
  - Reliability issues
  - Complexity (technical debt)

> "You're building technical debt as quickly as you are generating the code — maybe even more quickly." ^[extracted]

This creates a different bottleneck: the cost of fixing the debt exceeds the velocity gains.

## The ACDC Framework

The **Agent-Centric Development Cycle** (ACDC) structures verification as three compounding loops:

### 1. Guide (Context + Constraints)

**Context** — Make the codebase understandable to agents:
- Architectural awareness
- Semantic navigation maps
- Help agents "understand the territory" (borrowing from Shihapar's talk)

**Constraints** — Define what agents should and shouldn't do:
- Coding standards
- Allowed/disallowed dependencies
- Guardrails
- Intended architecture (where you want to go, not just where you are)

**Results:** Massive improvement in agent effectiveness and **30%+ reduction in tokens** needed to solve a problem. ^[extracted]

### 2. Verify (Zero-Trust, Multi-Layered)

**Zero trust** — Every model has biases and character. Use different models and techniques.

**Multi-layered** — Combine:
- **Algorithmic verification** — Data flows, control flows, known patterns, secrets detection
- **Agentic verification** — Intent analysis, business logic checking, unknown unknowns detection

> "The fusion of algorithmic and agentic verification creates a deliberate multi-layered fabric." ^[extracted]

**Results:** Partners using multi-layered verification report **44% fewer AI-derived production outages**. ^[extracted]

### 3. Solve

The actual code generation, surrounded by the guide and verify disciplines.

### The Three Compounding Loops

1. **Agentic loop** — In-loop verification as the agent generates code, with context/constraints and problem-fixing
2. **CI verification loop** — Continuous improvement: agent-based PR review, multi-layered verification, high velocity
3. **Code maintenance loop** — Active discipline around code quality; agents care about clean code because they need to understand the codebase to operate on it

> "If you make the life of the agent easier, if you maintain your codebase, then you'll actually see compounding effects." ^[extracted]

### Real Results

A test with a large bank using cutting-edge agentic coding tools with the ACDC approach showed **92% reduction in issues**. The compounding effect means each loop iteration gets better over minutes and hours, not just a one-time improvement. ^[extracted]

## The Two Spirals

Shawkat described two possible trajectories:

- **Downward spiral** — Neglect verification during AI rollout → technical debt accumulates → benefits dissipate (as the CMU study shows)
- **Self-reinforcing loop** — Bake verification in → compounding reliability, security, maintainability benefits

## Products

Shawkat announced **Sonar Vortex**, a product addressing the "guide" aspect of the framework (context + constraints for agents). He also referenced Sonar's existing verification products available at their booth.

## Key Ideas

- **ACDC (Agent-Centric Development Cycle)** — Guide (context + constraints), Verify (zero-trust multi-layered), Solve framework for verification-powered agentic loops. ^[extracted]
- **AI slop is everywhere** — Hallucinations affect professional services, legal, and every sector. ^[extracted]
- **Coding productivity gains dissipate** — 3-5x boost disappears after 3 months due to technical debt accumulation (Carnegie Mellon study). ^[extracted]
- **Zero-trust multi-layered verification** — Combine algorithmic (data flows, patterns) and agentic (intent, business logic) verification. ^[extracted]
- **Agents care about clean code** — They need to understand the codebase to operate on it, so clean code compounds benefits. ^[extracted]
- **Technical debt explodes with code generation** — Must be actively managed, not ignored. ^[extracted]
- **92% issue reduction** — Large bank achieved this using ACDC inside agentic loops. ^[extracted]
- **44% fewer outages** — Partners using multi-layered verification report this improvement. ^[extracted]

## Open Questions

- How does ACDC scale to organizations with millions of lines of existing code debt?
- What's the token cost of the full ACDC loop vs. raw agent generation?
- Can the "guide" phase (context + constraints) be automated or does it require human expertise?
- How does multi-layered verification interact with the perception agent paradigm?

## Related

- [[entities/tariq-shawkat]] — Speaker
- [[entities/sonar-labs]] — Company
- [[concepts/agent-centric-development-cycle]] — ACDC framework
- [[concepts/eval-driven-development]] — Evals and quality gates
- [[misc/wf2026]] — Conference overview
- [[concepts/perception-agents]] — Complementary approach to verification
