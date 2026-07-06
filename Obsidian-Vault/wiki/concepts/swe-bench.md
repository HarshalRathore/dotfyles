---
title: SWE Bench
category: concepts
tags:
- benchmark
- ai-coding
- evaluation
- real-world-tasks
- model-capability
- data-driven-evals
sources:
- 'https://www.youtube.com/watch?v=lqq_lcbajcc'
- 'AIEF2025 - CI in the Era of AI: From Unit Tests to Stochastic Evals — Nathan Sobo, Zed - https://www.youtube.com/watch?v=WXy8Yy9xGss'
relationships:
- target: '[[concepts/agent-evaluations|Agent Evaluations]]'
  type: related_to
- target: '[[concepts/vibe-coding|Vibe Coding]]'
  type: related_to
- target: '[[concepts/stochastic-evals|Stochastic Evals]]'
  type: related_to
provenance:
  extracted: 0.88
  inferred: 0.05
  ambiguous: 0.07
base_confidence: 0.88
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
summary: SWE Bench
---

# SWE Bench

SWE Bench Verified is a benchmark that measures an AI model's ability to perform real-world coding tasks. It serves as a key indicator of how well LLMs are evolving for developer-facing use cases. ^[extracted]

## Recent Results

- **GPT-4.1** is up 21 percentage points from GPT-4.0 on SWE Bench Verified, showing significant investment by OpenAI behind coding capability
- **Gemini 2.5 Pro** is up another 9 percentage points from GPT-4.1, indicating continued rapid improvement

These gains reflect the massive investment LLM providers are making in coding-specific capabilities, which directly fuels the adoption of tools like Cursor and Windsurf. ^[extracted]

## Significance

SWE Bench Verified measures real-world coding tasks (not synthetic benchmarks), making it a strong signal of an model's practical utility for developer workflows. The rapid improvement trajectory correlates with the mainstream adoption of agentic coding tools and the "vibe coding" phenomenon. ^[inferred]

## Data-Driven Eval Pattern

SWE Bench represents the data-driven eval pattern — input (issue/task) → output (patch) → evaluation (does the patch fix the issue?). This pattern is familiar from the ML world but differs from the programmatic software testing perspective, where an eval is more like a test that passes or fails. Zed's approach combines data-driven evals (like SWE Bench) with programmatic evals (where the eval is a function that drives an agent and asserts outcomes). ^[extracted]

## Sources

- [[references/aief2025-agents-500b-promise-donald-hruska-retool|AIEF2025 — How agents will unlock the $500B promise of AI]]
- [[references/aief2025-ci-era-ai-stochastic-evals-nathan-sobo-zed|AIEF2025 - CI in the Era of AI: From Unit Tests to Stochastic Evals]]
