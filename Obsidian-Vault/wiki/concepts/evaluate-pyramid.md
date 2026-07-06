---
title: Evaluation Pyramid
category: concepts
tags: [evaluations, benchmarking, agent-evaluation, production-telemetry, quality-assurance]
aliases: [evaluation pyramid, eval pyramid, agent evaluation pyramid]
relationships:
  - target: '[[concepts/agent-arena]]'
    type: implements
  - target: '[[concepts/agent-evaluations]]'
    type: extends
  - target: '[[concepts/evals-testing-pyramid]]'
    type: related_to
sources:
  - https://www.youtube.com/watch?v=4sX_He5c4sI
summary: A three-level evaluation framework for agents: benchmarks → scenarios → production telemetry — each level providing different signals about agent quality.
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

# Evaluation Pyramid

The **evaluation pyramid** is a three-level framework for evaluating agents, with each level providing different signals about agent quality: ^[extracted]

| Level | Type | Description |
|-------|------|-------------|
| 1. **Benchmarks** | Controlled | Standardized tests with known inputs and expected outputs |
| 2. **Scenarios** | Semi-controlled | Realistic task simulations with some flexibility |
| 3. **Production telemetry** | Uncontrolled | Real-world usage data from deployed agents |

This framework was presented at the AI Engineer World's Fair 2026. ^[extracted]

## Why All Three Levels Are Needed

- **Benchmarks** tell you if an agent can do a task in isolation
- **Scenarios** tell you if an agent can handle realistic complexity
- **Production telemetry** tell you if an agent is actually useful in practice

The gap between benchmark performance and production performance is where most agent failures occur. ^[inferred]

## Connection to Agent Arena

**Agent Arena** implements this pyramid at scale: ^[extracted]

- 1M+ traces
- 50M+ lines of code read
- 5.7M tool calls/week
- Three signal types: explicit, implicit, and environment
- Five evaluation metrics

Agent Arena's production telemetry layer is the largest agent evaluation dataset ever compiled. ^[inferred]

## Related

- [[concepts/agent-arena|Agent Arena]] — the largest implementation of the evaluation pyramid
- [[concepts/agent-evaluations|Agent Evaluations]] — the broader concept of evaluating agents
- [[concepts/evals-testing-pyramid|Evals Testing Pyramid]] — related testing framework
- [[concepts/life-leaderboard|LIFE Leaderboard]] — another evaluation framework

## Sources

- AI Engineer World's Fair 2026: https://www.youtube.com/watch?v=4sX_He5c4sI
