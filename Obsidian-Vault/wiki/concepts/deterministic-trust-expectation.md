---
title: Deterministic Trust Expectation
category: concepts
tags:
- agent-reliability
- enterprise-ai
- evals
- trust
- determinism
- aief2025
summary: The expectation that AI systems should produce deterministic outcomes for given inputs — a trust requirement that is fundamentally incompatible with stochastic LLM behavior, especially in high-stak...
sources:
- 'AIEF2025 - From Copilot to Colleague: Trustworthy Agents for High-Stakes - Joel Hron, CTO Thomson Reuters - https://www.youtube.com/watch?v=kDEvo2__Ijg'
provenance:
  extracted: 0.75
  inferred: 0.2
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/agent-reliability-challenge]]'
  type: extends
- target: '[[concepts/agent-run-variability]]'
  type: relates_to
- target: '[[concepts/eval-driven-development]]'
  type: motivates
---

# Deterministic Trust Expectation

**Deterministic trust expectation** is the user expectation that an AI system should produce consistent, predictable outcomes for given inputs — a trust requirement that is fundamentally incompatible with the stochastic nature of LLM-based systems. ^[extracted]

## The Core Tension

In high-stakes domains (law, tax, risk, fraud investigations), users expect certainty: given the same input, they expect the same output. ^[extracted] This is the foundation of professional trust — a lawyer needs to know that the legal analysis they receive is reliable and repeatable. ^[inferred]

But LLM-based systems are inherently non-deterministic. This creates a fundamental gap between user trust requirements and system behavior. ^[extracted]

## Expert Variability Amplifies the Problem

The problem is not just that the systems are variable — the evaluators are too. Thomson Reuters found that even highly trained domain experts (lawyers) show 10%+ swings in accuracy when evaluating the same question-response pairs a week apart. ^[extracted]

This means:
- There is no stable ground truth to optimize toward
- Teams cannot reliably tell if they are "climbing the hill" or regressing
- Evals become noisy and expensive simultaneously

## Implications for Agent Design

The deterministic trust expectation shapes how enterprise AI systems must be designed:

1. **Evals must be rigorous but preference-aligned** — rubrics help, but ultimate signal comes from user preference tracking ^[extracted]
2. **Reference quality becomes critical** — as agents gain more agency, traceable source attribution becomes harder but more essential ^[extracted]
3. **Guardrails require deep domain knowledge** — building effective guardrail systems is not a generic engineering problem ^[extracted]

## Related

- [[concepts/agent-reliability-challenge]] — The broader reliability problem this sits within
- [[concepts/agent-run-variability]] — Run-to-run variability as a manifestation
- [[concepts/eval-driven-development]] — Evals as the primary optimization mechanism
- [[concepts/agent-guardrails]] — Guardrails as a trust-building mechanism
