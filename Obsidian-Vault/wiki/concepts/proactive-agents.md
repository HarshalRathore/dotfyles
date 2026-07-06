---
title: Proactive Agents
category: concepts
tags:
- proactive-agents
- agentic-workflows
- react-agents
- planning
- enterprise-ai
aliases:
- proactive agent
- beyond react
- reactive to proactive
sources:
- AIEF2025 - How to Build Planning Agents without losing control - Yogendra Miraje, Factset - https://www.youtube.com/watch?v=sl3icG-IjHo
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.8
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
- target: '[[concepts/agentic-workflow-vs-workflow-agent|Agentic Workflow vs Workflow Agent]]'
  type: enables
- target: '[[concepts/sub-goal-division|Sub-goal Division]]'
  type: uses
- target: '[[concepts/agent-evolution|Agent Evolution]]'
  type: extends
summary: Proactive Agents
---

# Proactive Agents

**Proactive agents** are AI agents that plan and execute workflows based on goals, context, and feedback — as opposed to **reactive agents** that respond to individual prompts in a reason-act loop. Building agentic workflows requires moving beyond ReAct-based agents to proactive agents with planning capabilities.

## The Paradigm Shift

The focus in recent years has been on ReAct-based agents (reason-act loops). For building agentic workflows, the paradigm must shift to proactive agents that:

1. **Plan** — Break goals into sub-goals before execution
2. **Execute** — Carry out the planned steps
3. **Reflect** — Evaluate outcomes and replan as needed ^[extracted]

## Required Components

Proactive agents need four key capabilities:

1. **Tools** — Interfaces to the external world (microservices, APIs, MCP servers)
2. **Memory** — State persistence across planning and execution cycles
3. **Reflection** — Ability to evaluate outcomes and adjust strategy
4. **Planning by sub-goal division** — The core pattern for breaking goals into steps ^[extracted]

## Relationship to Agentic Workflows

Proactive agents are the engine behind agentic workflows. While workflow agents react to predefined sequences, proactive agents actively plan their execution path based on the goal and context. ^[inferred]

## Related

- [[concepts/agentic-workflow-vs-workflow-agent|Agentic Workflow vs Workflow Agent]] — Proactive agents power agentic workflows
- [[concepts/sub-goal-division|Sub-goal Division]] — The planning mechanism
- [[concepts/agent-evolution|Agent Evolution]] — The progression from reactive to proactive
