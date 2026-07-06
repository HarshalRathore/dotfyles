---
title: AIEF2025 - How to Build Planning Agents without losing control - Yogendra Miraje, FactSet
category: references
tags:
- aief2025
- planning-agents
- agentic-workflows
- blueprint-pattern
- enterprise-ai
- factset
- langgraph
- tool-design
- evals
sources:
- AIEF2025 - How to Build Planning Agents without losing control - Yogendra Miraje, Factset - https://www.youtube.com/watch?v=sl3icG-IjHo
provenance:
  extracted: 0.9
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
- target: '[[concepts/agentic-workflow-vs-workflow-agent|Agentic Workflow vs Workflow Agent]]'
  type: describes
- target: '[[concepts/blueprint-generator-pattern|Blueprint Generator Pattern]]'
  type: describes
- target: '[[concepts/sub-goal-division|Sub-goal Division]]'
  type: describes
- target: '[[concepts/tool-design-for-agents|Tool Design for Agents]]'
  type: describes
- target: '[[concepts/aspect-based-evals|Aspect-Based Evals]]'
  type: describes
summary: AIEF2025 - How to Build Planning Agents without losing control
---

# AIEF2025 - How to Build Planning Agents without losing control

**Speaker:** Yogendra Miraje, FactSet
**Event:** AI Engineer World's Fair 2025
**Video:** https://www.youtube.com/watch?v=sl3icG-IjHo

## Summary

Yogendra Miraje from FactSet shares a practical architecture for building planning-based agentic workflows in enterprise settings, centered on a Blueprint Generator pattern that separates high-level planning from low-level task execution. He emphasizes tool design from the agent's perspective, aspect-based evaluation, and knowing when NOT to use agentic workflows.

## Key Contributions

### Blueprint Architecture
Miraje introduces a four-node LangGraph architecture: Blueprint Generator → Planner → Executor → Joiner, with re-planning and termination logic. The Blueprint is a natural-language breakdown of task steps mapped to tool capabilities, which reduces cognitive load on the Planner by limiting in-context tools and providing a higher-level abstraction. ^[extracted]

### Workflow Agent vs Agentic Workflow
A critical distinction: a **workflow agent** runs a predefined, static workflow (workflow is in control), while an **agentic workflow** is dynamically planned and executed by the agent (agent is in control). On the agentic spectrum, agentic workflows have more "agenticness." ^[extracted]

### Tool Design Philosophy
Tools around enterprise microservices should be designed from the agent's perspective with three layers: tool purpose (what to select), tool detailed description (when to invoke), and input-output contracts (how to use). Validation checks act as safety breaks. MCP tool servers are recommended for tool exposure. ^[extracted]

### Planning by Sub-goal Division
The core design pattern for agentic workflows: break goals into simpler steps (task decomposition). This replaces the older ReAct-based agent paradigm with proactive, structured planning. ^[extracted]

### Aspect-Based Evals
Miraje advocates for aspect-based evaluation techniques matched to each component: LLM-as-judge for Blueprint similarity, code-based evals for tool selection, LLM-as-judge for plan-Blueprint alignment, and human-in-the-loop for report formatting. ^[extracted]

### When NOT to Use Agentic Workflows
Four cases where agentic workflows are inappropriate: fixed/repeated tasks (use ETL pipelines), workflows that cannot be captured, deterministic outcomes required (strict compliance/safety-critical), and low-latency/cost-centered environments. ^[extracted]

## Concrete Example: NVDA Earning Call Preparation

The talk includes a detailed example of preparing for NVIDIA's earnings call using the Blueprint architecture:
- **Blueprint steps:** Summarize previous earnings call → Retrieve financial data → Reason and suggest earning call questions → Generate competency report
- **Plan output:** Specific tool calls and function invocations per step
- **Result:** Structured, workflow-aware response vs. vanilla LLM output

## Sources

- AIEF2025 - How to Build Planning Agents without losing control - Yogendra Miraje, FactSet - https://www.youtube.com/watch?v=sl3icG-IjHo
