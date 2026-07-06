---
title: Evals Testing Pyramid
category: concepts
tags:
- evals
- testing
- hierarchy
- ai-agents
- evaluation-methodology
aliases:
- eval hierarchy
- testing pyramid for AI
sources:
- 'AIEF2025 - Turning Fails into Features: Zapier''s Hard-Won Eval Lessons — Rafal Willinski, Vitor Balocco, Zapier - https://www.youtube.com/watch?v=blrovBxxN9o'
- AIEF2025 - Evals 101 — Doug Guthrie, Braintrust - https://www.youtube.com/watch?v=bk0TmxoZlUY
- 'AIEF2025 - Engineering Better Evals: Scalable LLM Evaluation Pipelines That Work — Dat Ngo, Aman Khan, Arize - https://www.youtube.com/watch?v=spvXj9tnWAQ'
provenance:
  extracted: 0.8
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/evals-as-structured-tests|Evals as Structured Tests]]'
  type: extends
- target: '[[concepts/eval-offline-online-duality|Eval Offline/Online Duality]]'
  type: relates-to
- target: '[[entities/zapier|Zapier]]'
  type: used-by
summary: Evals Testing Pyramid
---

# Evals Testing Pyramid

The evals testing pyramid is a hierarchy of evaluation methods organized by cost, coverage, and fidelity — analogous to the traditional software testing pyramid but adapted for probabilistic AI systems. ^[extracted]

## The Three Levels

### 1. Unit Test Evals (Base)

Unit test evals predict the next state from the current state. They work best for simple, atomic assertions:

- Checking whether the next state is a specific tool call
- Verifying tool call parameters are correct
- Confirming an answer contains a specific keyword
- Determining whether the agent decided it was done

These evals are fast, cheap, and cover the broadest surface area. They are the foundation of any eval strategy. ^[extracted]

### 2. Trajectory / End-to-End Evals (Middle)

Trajectory evals assess the full agent interaction sequence — the complete chain of LLM calls, tool invocations, database interactions, and REST calls that constitute a single agent run. They capture cascading failures that unit tests miss but are more expensive to run and harder to interpret. ^[extracted]

### 3. A-B Testing with Stage Rollouts (Top)

The ultimate evaluation method is live A-B testing with staged rollouts to production users. This is the most expensive and slowest eval type but provides the highest-fidelity signal about real user outcomes. ^[extracted]

## Why the Pyramid Matters for AI Agents

Building AI agents introduces unique challenges that make the pyramid structure essential. Unlike traditional software, AI is non-deterministic and users interact with products in unpredictable ways. Unit test evals catch the majority of failures cheaply, trajectory evals catch complex multi-step failures, and A-B testing validates actual user outcomes. ^[extracted]


Dat Ngo ([[entities/arize-ai|Arize AI]]) reframes evals as "a clever word for signal" — understanding what's going well and what's not in the massive data produced by LLM applications. This aligns with the pyramid: unit test evals catch the most failures cheaply (high signal-to-noise ratio at the base), while A-B testing provides the highest-fidelity signal at the top. ^[extracted]
Zapier's experience demonstrates that starting with unit test evals and progressively adding higher-fidelity eval types creates a practical evaluation strategy that scales with product maturity. ^[extracted]

## Related

- [[concepts/evals-as-structured-tests|Evals as Structured Tests]] — Evals as test infrastructure
- [[concepts/eval-offline-online-duality|Eval Offline/Online Duality]] — Offline evals sit at the base; online evals at the top
- [[concepts/eval-flywheel-effect|Eval Flywheel Effect]] — The flywheel accelerates across all pyramid levels
- [[concepts/ai-iteration-loop|AI Iteration Loop]] — The iteration loop operates within the pyramid framework
- [[entities/zapier|Zapier]] — Case study provider

## Sources

- AIEF2025 - Turning Fails into Features: Zapier's Hard-Won Eval Lessons — Rafal Willinski, Vitor Balocco, Zapier - https://www.youtube.com/watch?v=blrovBxxN9o
- AIEF2025 - Evals 101 — Doug Guthrie, Braintrust - https://www.youtube.com/watch?v=bk0TmxoZlUY
