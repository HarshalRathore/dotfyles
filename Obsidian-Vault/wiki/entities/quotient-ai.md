---
title: Quotient AI
category: entities
tags:
- ai-evaluation
- agent-monitoring
- evals
- aief2025
aliases:
- quotient
sources:
- 'AIEF2025 - Evaluating AI Search: A Practical Framework for Augmented AI Systems — Quotient AI + Tavily - https://www.youtube.com/watch?v=wRJD0inpmjU'
provenance:
  extracted: 0.92
  inferred: 0.06
  ambiguous: 0.02
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
- target: '[[entities/tavily]]'
  type: collaborates_with
- target: '[[concepts/llm-as-judge-evaluation]]'
  type: uses
- target: '[[concepts/holistic-eval-framework]]'
  type: developed
summary: Quotient AI
---

# Quotient AI

**Quotient AI** is a company that monitors live AI agents and provides expert evaluation capabilities. They detect objective system failures without requiring ground truth data, human feedback, or benchmarks. ^[extracted]

## Leadership

- **Julia** — CEO and co-founder (speaker at AIEF2025)
- **Deanna Emery** — Founding AI researcher (speaker at AIEF2025)

## Capability

Quotient AI's approach is distinctive because it evaluates AI systems — particularly agents operating in dynamic environments — without relying on fixed ground truth. This addresses a fundamental challenge: traditional monitoring assumes stable inputs and expected outputs, but AI agents make real-time decisions based on evolving web content, user interactions, and complex tool chains. ^[extracted]

## Collaboration with Tavily

Quotient AI met Rotem (Tavily's founder and CEO) a year before the AIEF2025 talk. Rotem posed a problem that crystallized the core issues they needed to solve together: how to build production-ready AI search agents when dealing with two fundamental sources of unpredictability that cannot be proactively controlled — the constantly changing web and unpredictable user behavior. ^[extracted]

## Related

- [[entities/tavily]] — Collaboration partner
- [[concepts/dynamic-eval-sets]] — Joint eval framework
- [[concepts/holistic-eval-framework]] — Evaluation approach beyond accuracy
- [[concepts/reference-free-evaluation]] — Reference-free metrics for subjective truth
