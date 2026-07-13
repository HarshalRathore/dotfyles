---
title: Agent as Judge
category: concepts
tags:
  - agent-evaluation
  - agent-as-a-judge
  - benchmark
  - adaptive-analysis
  - rubric-based-evaluation
aliases:
  - agent as judge
  - agent-evaluator
  - self-evaluation
  - adaptive eval
  - agent-as-a-judge
relationships:
  - target: "[[references/mind2web-2]]"
    type: implements
  - target: "[[concepts/rubric-based-evaluation]]"
    type: related_to
  - target: "[[concepts/llm-as-judge-evaluation]]"
    type: related_to
  - target: "[[concepts/evaluate-pyramid]]"
    type: related_to
  - target: "[[concepts/agent-arena]]"
    type: implements
  - target: "[[concepts/adaptive-evals]]"
    type: extends
sources:
  - "https://arxiv.org/abs/2506.21506"
  - "https://www.youtube.com/watch?v=4sX_He5c4sI"
summary: Using agents to evaluate other agents through adaptive dynamic analysis and tree-structured rubrics — enabling evaluation of non-deterministic and long-horizon agentic systems where traditional static evaluation fails.
provenance:
  extracted: 0.80
  inferred: 0.18
  ambiguous: 0.02
base_confidence: 0.72
lifecycle: draft
lifecycle_changed: 2026-07-13
tier: supporting
created: 2026-07-06T00:00:00Z
updated: 2026-07-13T00:00:00Z
---

# Agent as Judge

**Agent as judge** is the paradigm of using AI agents to evaluate other AI agents — adaptive dynamic analysis for non-deterministic systems where traditional static evaluation fails. ^[extracted] When formalized for long-horizon tasks, task-specific judge agents assess both answer correctness and source attribution using tree-structured rubrics. ^[extracted]

Presented at the AI Engineer World's Fair 2026 ^[extracted] and formalized by the Mind2Web 2 paper (Gou et al., Jun 2025). ^[extracted]

## The Problem

Traditional evaluation methods assume deterministic outputs. Agents are non-deterministic — they produce different outputs for the same input. This makes static evaluation inadequate. ^[inferred]

Agentic search systems (e.g., Deep Research, NotebookLM) compound this problem: they operate over long time horizons, browsing dozens of websites and synthesizing information across sources, producing answers that may change as new data appears. ^[extracted] Traditional evaluation benchmarks designed for short QA tasks cannot assess:

- Answers that depend on real-time information
- Systems that visit 30+ websites during a single task
- Answers with time-varying correctness (a fact true today may be false tomorrow) ^[inferred]

## How It Works

Agents evaluate other agents through: ^[extracted]

1. **Adaptive analysis** — the evaluator adapts to the behavior of the evaluated agent
2. **Dynamic testing** — the evaluator can change its questions based on the agent's responses
3. **Multi-signal evaluation** — combining explicit, implicit, and environment signals

The formalized Agent-as-a-Judge framework (Mind2Web 2) deconstructs the expected answer into a **tree of sub-claims** (the rubric tree), then constructs a **judge agent** per task based on this rubric tree. ^[extracted] The judge agent evaluates whether the system's answer satisfies each sub-claim, assessing both **correctness** (is the claim true?) and **source attribution** (did the system cite the right source?). ^[extracted] Rubric trees average 50 nodes with up to 6 layers, providing fine-grained evaluation criteria generated on-the-fly for each task. ^[extracted]

## Performance

The formalized framework achieves a **99% correctness rate** in matching human evaluation judgments. ^[extracted] This high agreement suggests the approach captures what human evaluators care about while being fully automated, enabling large-scale evaluation of agentic systems without human annotators. ^[inferred]

## Key Implementations

### Agent Arena

**Agent Arena** uses agent-as-judge at scale: ^[extracted]

- 1M+ traces evaluated
- 50M+ lines of code analyzed
- 5.7M tool calls/week processed
- Three signal types: explicit (direct feedback), implicit (behavioral patterns), environment (system-level metrics)
- Five evaluation metrics derived from these signals

### Mind2Web 2 / Tree-Structured Rubrics

The Mind2Web 2 paper (Gou et al., Jun 2025) formalized the framework for long-horizon agentic search, introducing tree-structured rubrics for task-specific evaluation of agentic search systems. ^[extracted]

## Significance

Agent-as-a-Judge represents a shift from static rubrics to dynamic, task-specific evaluators — each task gets its own judge agent tailored to its unique evaluation needs. This is a more principled approach to evaluating complex agentic behavior than prompt-based LLM-as-judge methods, as the judge agent's "knowledge" is constrained to the rubric tree rather than relying on the model's general world knowledge. ^[inferred]

## Lineage

The concept originated with Zhuge et al.'s "Agent-as-a-Judge: Evaluate Agents with Agents" (Meta, Oct 2024), which first demonstrated that agentic judges with intermediate feedback outperform flat LLM-as-judge and match human evaluation reliability. ^[extracted]

SkillWeaver (Gou et al., Apr 2025) from the same research group explores the parallel direction of agents that self-improve by discovering and distilling reusable skills as APIs. ^[extracted]

## Open Questions

- How does Agent-as-a-Judge scale beyond the 130 tasks in Mind2Web 2 to broader domains?
- Can rubric trees be generated automatically for new tasks, or do they require significant manual effort?
- How does it handle adversarial cases where the rubric tree itself is incomplete or misleading?

## Related

- [[concepts/agent-arena|Agent Arena]] — the largest implementation of agent-as-judge
- [[concepts/evaluate-pyramid|Evaluation Pyramid]] — the framework agent-as-judge fits into
- [[concepts/adaptive-evals|Adaptive Evaluations]] — related evaluation methodology
- [[concepts/llm-as-judge|LLM as Judge]] — the broader concept of using LLMs for evaluation
- [[concepts/rubric-based-evaluation|Rubric-Based Evaluation]] — the technique agent-as-judge uses via rubric trees
- [[concepts/llm-as-judge-evaluation|LLM as Judge Evaluation]] — comparison paradigm

## Sources

- [[references/mind2web-2]] — Mind2Web 2 paper (Gou et al., 2025)
- [[references/agent-as-a-judge-evaluate-agents]] — Original 2024 paper by Zhuge et al. (Meta) that first proposed agentic evaluation with intermediate feedback
- [[references/skillweaver]] — Companion paper from the same research group on self-improving agents
- [[references/mind2web-2-twitter-thread]] — Twitter thread where Yu Su shared the paper in response to Zhu Liang's question
- AI Engineer World's Fair 2026: https://www.youtube.com/watch?v=4sX_He5c4sI
