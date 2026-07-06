---
title: Offline vs Online Evals Duality
category: concepts
tags:
- evals
- offline-evals
- online-evals
- development-methodology
- production-ai
- braintrust
sources:
- AIEF2025 - Evals 101 — Doug Guthrie, Braintrust - https://www.youtube.com/watch?v=bk0TmxoZlUY
provenance:
  extracted: 0.85
  inferred: 0.1
  ambiguous: 0.05
base_confidence: 0.8
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/online-evals|Online Evals]]'
  type: contrasts
- target: '[[concepts/eval-flywheel-effect|Eval Flywheel Effect]]'
  type: feeds
- target: '[[concepts/eval-driven-development|Eval-Driven Development]]'
  type: supports
summary: Offline vs Online Evals Duality
---

# Offline vs Online Evals Duality

Evals operate in two modes that serve different purposes in the development lifecycle: **offline evals** (pre-production) and **online evals** (production). Together they form a complete evaluation feedback loop. ^[extracted]

## Offline Evals

Offline evals happen before deployment. They are the primary development tool for:

- **Defining tasks** — Creating prompts, workflows, and agent chains to test
- **Defining scores** — Writing LLM-as-judge prompts and code-based scoring functions
- **Iterating** — Running tasks against datasets to measure whether changes improve or degrade quality
- **Identifying and resolving issues** — Finding problems before they reach users

Offline evals answer: "Will this work?" ^[extracted]

## Online Evals

Online evals happen in production. They provide real-time visibility into:

- **Model inputs and outputs** — Every LLM call in the live application
- **Intermediate steps** — Tool calls, branching logic, and internal state
- **Performance metrics** — Latency, cost, token usage, and duration based on instrumentation
- **Diagnostic capability** — Understanding why the application is performing poorly in real conditions

Online evals answer: "Is it working?" ^[extracted]

## The Duality

| Dimension | Offline Evals | Online Evals |
|---|---|---|
| **When** | Pre-production | Production |
| **Purpose** | Iterate and improve | Monitor and diagnose |
| **Data** | Curated test datasets | Real user traffic |
| **Action** | Fix the app or fix the eval | Alert and investigate |

The two modes feed each other through the [[concepts/eval-flywheel-effect|eval flywheel]]: production traces with poor online scores can be added to offline datasets, and offline improvements are validated in production. ^[inferred]

## Related

- [[concepts/online-evals|Online Evals]] — Detailed treatment of the production side
- [[concepts/eval-flywheel-effect|Eval Flywheel Effect]] — How the two modes connect
- [[concepts/ai-observability-production-logging|AI Observability & Production Logging]] — The infrastructure enabling online evals
- [[concepts/eval-driven-development|Eval-Driven Development]] — The methodology that uses offline evals as primary driver
