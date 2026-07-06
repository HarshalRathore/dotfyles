---
title: Signal Loop (AI)
tags:
- concept
- agent
- fine-tuning
- feedback-loop
- personalization
- microsoft
aliases:
- signal slew
- AI signal loop
- personalization loop
- interaction feedback loop
sources:
- 'https://www.youtube.com/watch?v=7hrw6rtxahc'
summary: Continuous feedback loop where real-world agent interactions are collected, A/B tested, and used to fine-tune models for personalized outcomes — demonstrated by Dragon healthcare copilot reaching 8...
provenance:
  extracted: 0.72
  inferred: 0.23
  ambiguous: 0.05
base_confidence: 0.48
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
category: concepts
---

# Signal Loop (AI)

A signal loop (also called signal slew) is the practice of continuously collecting real-world agent interaction data, running A/B tests, and using the results to fine-tune models for personalized outcomes. ^[extracted] Articulated by [[entities/asha-sharma|Asha Sharma]] of [[entities/microsoft|Microsoft]] at AI Engineer World's Fair 2025. ^[extracted]

## Dragon Healthcare Copilot Case Study

The Dragon healthcare copilot demonstrates the power of the signal loop:

1. **Off-the-shelf model** — Started with a general-purpose model. Result: "pretty good." ^[extracted]
2. **Synthetic fine-tuning** — Applied synthetic data to improve. Result: "a little bit better." ^[extracted]
3. **Signal loop** — Collected 650,000 real interactions, ran extensive A/B testing, and iteratively fine-tuned. Result: **83% character acceptance rate** — dramatically better quality. ^[extracted]

## The Shift in Development Model

The signal loop transforms development from a linear software factory to a continuous loop:
- Agents shipped, then continuously improved via real usage data ^[extracted]
- Each interaction is a potential training signal, not just a transaction ^[inferred]
- The platform must support A/B testing at scale as a core infrastructure capability ^[inferred]

## Relationship to [[concepts/agent-loop]]

While the [[concepts/agent-loop|agent loop]] describes how an individual agent iterates on a task, the signal loop describes how the model *behind* the agent improves over time across many users and interactions. The agent loop runs per-task; the signal loop runs across the fleet. ^[inferred]

## Related

- [[concepts/agent-factory]]
- [[concepts/peer-programming]]
- [[entities/azure-ai-foundry]]
- [[concepts/evaluation-first-development]]
- [[references/ai-eng-worlds-fair-2025-spark-to-system-open-agentic-web-asha-sharma]]

## Sources

- AI Engineer World's Fair 2025 — Spark to System: Building the Open Agentic Web, Asha Sharma. https://www.youtube.com/watch?v=7Hrw6rtXaHc
