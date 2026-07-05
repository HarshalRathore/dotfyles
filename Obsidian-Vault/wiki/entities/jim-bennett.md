---
title: "Jim Bennett"
category: entities
tags:
  - person
  - speaker
  - galileo
  - ai-evaluation
  - aief2025
sources:
  - "AIEF2025 - Taming Rogue AI Agents with Observability-Driven Evaluation — Jim Bennett, Galileo - https://www.youtube.com/watch?v=xJXm4Wcw4m8"
summary: "Speaker at AI Engineer World's Fair 2025, representing Galileo. Focuses on observability-driven evaluation for AI agents and using LLMs to evaluate LLM outputs."
provenance:
  extracted: 0.90
  inferred: 0.07
  ambiguous: 0.03
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[entities/galileo]]"
    type: works_at
  - target: "[[concepts/observability-driven-development]]"
    type: advocates
  - target: "[[concepts/llm-as-judge-evaluation]]"
    type: applies
---

# Jim Bennett

Jim Bennett is a speaker and practitioner at [[entities/galileo|Galileo]], an AI evaluation company. He presented at the AI Engineer World's Fair 2025 on taming rogue AI agents through observability-driven evaluation.

## Key Ideas

Bennett's central thesis is that **AI agents must be evaluated with observability at every step of their execution flow**, not just at the binary success/failure level. He advocates for using LLMs to evaluate other LLMs — a "set a thief to catch a thief" approach — where a better LLM scores the outputs of the production LLM. ^[extracted]

He emphasizes that evaluations should start from day one of development, integrated into prompt engineering and model selection, carried through CI/CD pipelines, and observed in production as users stress-test the system. ^[extracted]

## Talk at AIEF2025

"Taming Rogue AI Agents with Observability-Driven Evaluation" — Bennett demonstrated how multi-step agentic workflows (like a FinTech chatbot retrieving account balances) require per-step evaluation metrics to identify where failures occur, rather than just binary pass/fail on the final output. ^[extracted]

## Related

- [[entities/galileo]] — The evaluation company he represents
- [[concepts/observability-driven-development]] — His core methodology
- [[concepts/llm-as-judge-evaluation]] — The "set a thief to catch a thief" approach
- [[concepts/agent-reliability-challenge]] — The problem of making agents production-ready
