---
title: "Galileo"
category: entities
tags:
  - company
  - ai-evaluation
  - llm-evaluation
  - observability
  - aief2025
sources:
  - "AIEF2025 - Taming Rogue AI Agents with Observability-Driven Evaluation — Jim Bennett, Galileo - https://www.youtube.com/watch?v=xJXm4Wcw4m8"
summary: "AI evaluation company offering observability-driven evaluation tools, including a custom-trained small language model designed specifically for evaluation tasks."
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/observability-driven-development]]"
    type: provides_tools_for
  - target: "[[concepts/llm-as-judge-evaluation]]"
    type: implements
---

# Galileo

Galileo is an AI evaluation company that provides observability-driven evaluation tools for LLM applications and AI agents. They were represented at the AI Engineer World's Fair 2025 by speaker Jim Bennett.

## Products and Approach

Galileo offers a **custom-trained small language model** designed specifically for evaluation tasks — a model optimized for scoring LLM outputs rather than general-purpose generation. This reflects the principle that you should use a better, more capable LLM for evaluation than the one running in production. ^[extracted]

Their approach centers on **observability-driven evaluation**: breaking down agentic workflows into individual steps and measuring metrics at each stage — tool calls, RAG retrieval quality, hallucination detection, and answer coherence — rather than just evaluating the final output. ^[extracted]

## Related

- [[entities/jim-bennett]] — Speaker representing Galileo at AIEF2025
- [[concepts/observability-driven-development]] — The evaluation methodology they implement
- [[entities/langsmith]] — Comparable observability platform from LangChain
- [[entities/arize-ai]] — Another LLM evaluation and observability company
