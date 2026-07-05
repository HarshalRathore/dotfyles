---
title: "Sub-goal Division"
category: concepts
tags:
  - planning
  - task-decomposition
  - agentic-workflows
  - sub-goals
  - goal-breakdown
aliases:
  - task decomposition
  - subgoal division
  - goal decomposition
  - planning by sub-goal division
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
    type: enables
  - target: "[[concepts/blueprint-generator-pattern|Blueprint Generator Pattern]]"
    type: implements
  - target: "[[concepts/agent-architecture|Agent Architecture]]"
    type: core_capability
---

# Sub-goal Division

**Sub-goal division** (also called **task decomposition** or **planning by sub-goal division**) is the design pattern where an agent takes a high-level goal and breaks it down into simpler, executable steps. It is the foundational planning mechanism for agentic workflows.

## Core Idea

Instead of asking an LLM to solve an entire complex task in one shot, sub-goal division decomposes the goal into a sequence of manageable sub-tasks. Each sub-task is simpler, more focused, and more likely to succeed than the original goal. ^[extracted]

## Why It Matters

ReAct-based agents (reason-act loops) have been the dominant paradigm for building agents. However, for agentic workflows that need reliability and control, sub-goal division replaces the flat reason-act loop with structured, hierarchical planning. ^[extracted]

## Relationship to Other Patterns

- **Blueprint Generator** — A concrete implementation of sub-goal division that produces natural-language step plans
- **Multi-agent workflows** — Sub-goals can be delegated to different agents
- **Orchestrator-worker pattern** — The orchestrator performs sub-goal division; workers execute individual sub-goals

## Limitations

Sub-goal division requires that the workflow can be meaningfully decomposed. If a use case cannot be captured as a sequence of sub-tasks, agentic workflows (and sub-goal division) are not the right approach. ^[inferred]

## Related

- [[concepts/agentic-workflow-vs-workflow-agent|Agentic Workflow vs Workflow Agent]] — Requires sub-goal division
- [[concepts/blueprint-generator-pattern|Blueprint Generator Pattern]] — Concrete implementation
- [[concepts/agent-architecture|Agent Architecture]] — Planning is the AI reasoning component's job
