---
title: Agent-as-a-Judge: Evaluate Agents with Agents
category: references
tags:
  - agent-evaluation
  - agent-as-a-judge
  - llm-evaluation
  - meta-evaluation
  - automated-eval
relationships:
  - target: "[[concepts/agent-as-a-judge]]"
    type: implements
  - target: "[[concepts/llm-as-judge-evaluation]]"
    type: extends
  - target: "[[references/skillweaver]]"
    type: related_to
sources:
  - "https://arxiv.org/abs/2410.10934"
summary: Meta-evaluation framework where judge agents assess agentic outputs using intermediate feedback, outperforming LLM-as-judge and matching human evaluation reliability.
provenance:
  extracted: 0.85
  inferred: 0.15
  ambiguous: 0.00
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-13
tier: supporting
created: 2026-07-13T00:00:00Z
updated: 2026-07-13T00:00:00Z
---

# Agent-as-a-Judge: Evaluate Agents with Agents

> [!tldr] Agent-as-a-Judge extends LLM-as-judge by using agentic judge models that produce intermediate feedback during evaluation — dramatically outperforming flat LLM-as-judge and matching human evaluation reliability.

## Problem & Motivation

LLM-as-judge approaches produce only flat scores, missing the rich intermediate signals that make evaluation useful for improving agents. This paper demonstrates that when judge systems are given agentic capabilities — the ability to search, verify claims, and provide step-by-step feedback — evaluation quality improves significantly and becomes comparable to human evaluation.

## Method / Architecture

The paper introduces:

- **DevAI** — A benchmark of 55 realistic AI development tasks with 365 hierarchical user requirements, designed to evaluate how well AI agents handle real-world development work
- **Agentic judge design** — Instead of a flat prompt-to-score pipeline, the judge agent can reason, search, and verify claims before producing an evaluation ^[inferred]
- **Intermediate feedback** — The judge produces structured feedback at each evaluation step, not just a final score

## Key Findings

- **Agent-as-a-Judge dramatically outperforms LLM-as-judge** in evaluation quality ^[extracted]
- **Matches human evaluation baseline** in reliability — suggesting the framework captures what human evaluators actually care about ^[extracted]
- Provides **rich reward signals** for dynamic and scalable self-improvement of agents ^[extracted]
- The paper predates the Mind2Web 2 Agent-as-a-Judge work by roughly a year, showing the concept had been explored before becoming mainstream ^[inferred]

## Limitations

- DevAI is a 55-task benchmark — relatively narrow compared to broader agent benchmarks
- The hierarchical requirements (365 total) are curated for AI dev tasks specifically
- No ablation showing which agentic capability (search, verification, feedback) contributes most to the improvement ^[inferred]

## Related

- [[concepts/agent-as-a-judge]] — The concept formalized in Mind2Web 2, building on this paper
- [[concepts/llm-as-judge-evaluation]] — The flat-scorer predecessor that Agent-as-a-Judge extends
- [[references/skillweaver]] — Related work on self-improving agents by the same research community
- [[concepts/rubric-based-evaluation]] — Complementary rubric-based evaluation approaches

## Sources

- https://arxiv.org/abs/2410.10934 — Agent-as-a-Judge: Evaluate Agents with Agents (Zhuge et al., Oct 2024)
