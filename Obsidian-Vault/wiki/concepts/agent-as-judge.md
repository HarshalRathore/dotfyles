---
title: Agent as Judge
category: concepts
tags: [evaluations, agent-evaluation, adaptive-analysis, non-deterministic, self-evaluation]
aliases: [agent as judge, agent-evaluator, self-evaluation, adaptive eval]
relationships:
  - target: '[[concepts/evaluate-pyramid]]'
    type: related_to
  - target: '[[concepts/agent-arena]]'
    type: implements
  - target: '[[concepts/adaptive-evals]]'
    type: extends
sources:
  - https://www.youtube.com/watch?v=4sX_He5c4sI
summary: Using agents to evaluate other agents — adaptive dynamic analysis for non-deterministic systems where traditional static evaluation fails.
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

# Agent as Judge

**Agent as judge** is the paradigm of using AI agents to evaluate other AI agents — adaptive dynamic analysis for non-deterministic systems where traditional static evaluation fails. ^[extracted]

Presented at the AI Engineer World's Fair 2026. ^[extracted]

## The Problem

Traditional evaluation methods assume deterministic outputs. Agents are non-deterministic — they produce different outputs for the same input. This makes static evaluation inadequate. ^[inferred]

## The Solution

Agents evaluate other agents through:

1. **Adaptive analysis** — the evaluator adapts to the behavior of the evaluated agent
2. **Dynamic testing** — the evaluator can change its questions based on the agent's responses
3. **Multi-signal evaluation** — combining explicit, implicit, and environment signals

## Connection to Agent Arena

**Agent Arena** uses agent-as-judge at scale: ^[extracted]

- 1M+ traces evaluated
- 50M+ lines of code analyzed
- 5.7M tool calls/week processed
- Three signal types: explicit (direct feedback), implicit (behavioral patterns), environment (system-level metrics)
- Five evaluation metrics derived from these signals

## Related

- [[concepts/agent-arena|Agent Arena]] — the largest implementation of agent-as-judge
- [[concepts/evaluate-pyramid|Evaluation Pyramid]] — the framework agent-as-judge fits into
- [[concepts/adaptive-evals|Adaptive Evaluations]] — related evaluation methodology
- [[concepts/llm-as-judge|LLM as Judge]] — the broader concept of using LLMs for evaluation

## Sources

- AI Engineer World's Fair 2026: https://www.youtube.com/watch?v=4sX_He5c4sI
