---
title: "Automated Evals Challenge"
category: concepts
tags:
  - evals
  - automation
  - llm-as-judge
  - automated-evals
  - ai-evaluation
aliases:
  - automated-evaluation-challenge
sources:
  - "AIEF2025 - [Full Workshop] Building Metrics that actually work — David Karam, Pi Labs (fmr Google Search) - https://www.youtube.com/watch?v=jxrGodnopHo"
provenance:
  extracted: 0.80
  inferred: 0.20
  ambiguous: 0.00
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/llms-are-hard-at-evals|LLMs Are Hard at Evals]]"
    type: extends
  - target: "[[concepts/llm-as-judge-evaluation|LLM as Judge Evaluation]]"
    type: relates_to
  - target: "[[concepts/eval-driven-development|Eval-Driven Development]]"
    type: motivates
---

# Automated Evals Challenge

Fully automated evaluation — where systems evaluate themselves without human intervention — is universally desired but significantly harder to achieve than expected. The common assumption that "AI can do human tasks" breaks down for evaluation. ^[extracted]

## The Universal Desire

Every AI team wants automated evals. Human evaluation is slow, expensive, and doesn't scale. The dream is a system that can continuously evaluate itself and improve without human involvement. ^[extracted]

## Why It's Hard

The standard approach to automation is to delegate human tasks to AI. This works for many domains, but evaluation is a notable exception. LLMs tend to be hard at evaluating their own outputs, making the path to fully automated evals non-trivial. ^[extracted]

## Current State

Automated evals remain limited in scope and reliability. Most production systems still require at least some human involvement in the evaluation loop, particularly for:

1. **Defining quality criteria** — Humans must specify what "good" means
2. **Validating automated judgments** — Ensuring the automation is measuring the right things
3. **Handling edge cases** — Novel failure modes that automated systems don't recognize

## Related

- [[concepts/llms-are-hard-at-evals|LLMs Are Hard at Evals]] — Why self-evaluation is difficult
- [[concepts/llm-as-judge-evaluation|LLM as Judge Evaluation]] — Current approach to automated evals
- [[concepts/eval-driven-development|Eval-Driven Development]] — Methodology for building eval systems
- [[concepts/human-in-the-loop|Human-in-the-Loop]] — Why humans remain part of the eval loop
