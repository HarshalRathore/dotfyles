---
title: "Auto-Improving Agent Loop"
category: concepts
tags: [agent-loop, auto-improvement, self-improving, evaluation-driven, iterative-optimization, crewai]
summary: "An autonomous agent loop that iteratively improves a system by combining evaluation feedback with external knowledge, analogous to ML training."
sources:
  - "AIEF2025 - Prompt Engineering is Dead — Nir Gazit, Traceloop - https://www.youtube.com/watch?v=jvKf6zXrNO4"
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/prompt-engineering-is-dead]]"
    type: implements
  - target: "[[concepts/llm-as-judge-evaluation]]"
    type: uses
  - target: "[[concepts/eval-driven-development]]"
    type: extends
  - target: "[[entities/crewai]]"
    type: uses
---

# Auto-Improving Agent Loop

An autonomous agent loop that iteratively improves a system by combining evaluation feedback with external knowledge sources. [[entities/nir-gazit|Nir Gazit]] demonstrated this at AIEF2025 to optimize a [[concepts/rag-pipeline-architecture|RAG chatbot]] without manual prompt engineering.

The loop has four phases:

1. **Research**: An agent (built with [[entities/crewai|CrewAI]]) crawls the web for prompt engineering guides and best practices.
2. **Evaluate**: The current system is evaluated using an [[concepts/llm-as-judge-evaluation|LLM-as-judge]] evaluator, producing a score and failure reasons.
3. **Synthesize**: The agent combines the failure reasons from evaluation with the prompt engineering guides from research to generate a new, improved prompt.
4. **Iterate**: The new prompt is fed back into the evaluator, the loop repeats, and the score is expected to improve.

Gazit described this as "classic machine learning training but with a bit of vibes" — the agent is essentially doing gradient descent on the prompt space using evaluation feedback as the loss signal and web-sourced prompting guides as the gradient estimator.

This pattern is the practical realization of the "prompt engineering is dead" thesis: rather than a human manually iterating on prompts, the iteration is automated through evaluation-driven feedback loops.
