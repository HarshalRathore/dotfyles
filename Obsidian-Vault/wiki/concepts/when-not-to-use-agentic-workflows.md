---
title: "When NOT to Use Agentic Workflows"
category: concepts
tags:
  - agentic-workflows
  - decision-framework
  - enterprise-ai
  - anti-patterns
  - design-decisions
aliases:
  - agentic workflow anti-patterns
  - when not to use agents
sources:
  - "AIEF2025 - How to Build Planning Agents without losing control - Yogendra Miraje, Factset - https://www.youtube.com/watch?v=sl3icG-IjHo"
provenance:
  extracted: 0.90
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/agentic-workflow-vs-workflow-agent|Agentic Workflow vs Workflow Agent]]"
    type: related_to
  - target: "[[concepts/deterministic-vs-autonomous-agents|Deterministic vs Autonomous Agents]]"
    type: related_to
  - target: "[[concepts/etl-pipeline|ETL Pipeline]]"
    type: replaces
  - target: "[[concepts/workflow-agent-spectrum|Workflow-Agent Spectrum]]"
    type: related_to
---

# When NOT to Use Agentic Workflows

Agentic workflows are powerful but not universally appropriate. There are four specific cases where agentic workflows are the wrong choice, and simpler alternatives should be used instead.

## Four Cases Against Agentic Workflows

### 1. Fixed and Repeated Tasks → Use ETL Pipelines

When a task is fixed, repetitive, and deterministic, an ETL pipeline is the correct tool. Agentic workflows add unnecessary complexity, cost, and non-determinism to problems that are better solved with scripted automation. ^[extracted]

### 2. Uncapturable Workflows → Don't Use Agentic Workflows

If a workflow cannot be meaningfully captured as a sequence of steps or sub-goals, agentic workflows are not worth the investment. The sub-goal division pattern requires that the problem can be decomposed — if it can't, an agent cannot plan it either. ^[extracted]

### 3. Deterministic Outcomes Required → Avoid Agentic Workflows

In strict compliance and safety-critical contexts where deterministic outcomes are paramount, agentic workflows introduce unacceptable risk. The stochastic nature of LLM-based planning means different runs may produce different execution paths, which is incompatible with compliance requirements. ^[extracted]

### 4. Low Latency / Cost-Centered Environments → Avoid Agentic Workflows

Agentic workflows involve multiple LLM calls (Blueprint Generator, Planner, Executor, Joiner, potentially replanning), making them expensive and slow. In environments where latency and cost are the primary constraints, simpler approaches are more appropriate. ^[extracted]

## Decision Framework

| Characteristic | Use Agentic Workflow | Use Alternative |
|---------------|---------------------|-----------------|
| Task variability | High (varies per instance) | Low (fixed/repeated) |
| Decomposability | Can be broken into steps | Cannot be captured as steps |
| Outcome requirement | Best-effort acceptable | Deterministic required |
| Latency/cost sensitivity | Moderate tolerance | Low latency / low cost required |

## The Agentic Spectrum Positioning

These anti-patterns map to positions on the [[concepts/workflow-agent-spectrum|Workflow-Agent Spectrum]]. When agentic workflows are inappropriate, the answer is usually to move left on the spectrum toward more deterministic, workflow-based approaches — or to use a completely different paradigm like ETL pipelines. ^[inferred]

## Related

- [[concepts/agentic-workflow-vs-workflow-agent|Agentic Workflow vs Workflow Agent]] — When to choose which
- [[concepts/deterministic-vs-autonomous-agents|Deterministic vs Autonomous Agents]] — Related taxonomy
- [[concepts/etl-pipeline|ETL Pipeline]] — Alternative for fixed/repeated tasks
- [[concepts/workflow-agent-spectrum|Workflow-Agent Spectrum]] — Positioning decision
