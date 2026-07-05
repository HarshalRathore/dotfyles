---
title: "Workflow Automation"
category: concepts
tags:
  - automation
  - workflows
  - ai-agents
  - nodes
  - aief2025
summary: Approach to AI automation where tasks are defined as configurable nodes in a workflow graph, rather than relying on general-purpose agents to figure things out from natural language.
provenance:
  extracted: 0.75
  inferred: 0.25
  ambiguous: 0.0
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/agent-vs-workflow]]"
    type: related_to
  - target: "[[entities/gumloop]]"
    type: implements
---

## Workflow Automation

Workflow automation is the approach of defining AI-powered tasks as a series of configurable nodes in a workflow graph, rather than asking a general-purpose agent to figure out what to do from a natural language description.

### Key Insight

The core insight, discovered by [[entities/max-brodeur-urbas|Max Brodeur-Urbas]] while building [[entities/gumloop|Gumloop]], is that people who want to use AI agents are actually describing complex workflows. If someone knows Python, can make API calls, and understands LLM queries, they can describe their entire automation as a sequence of steps — they don't need to "cross their fingers and hope" that an agent will figure it out.

### Node-Based Workflows

Each node in the workflow represents a discrete step:
- An API call
- An LLM query
- A data transformation
- A conditional branch

The workflow orchestrates the flow between nodes, passing data from one step to the next. This is more reliable than general-purpose agent approaches because the automation logic is explicit and configurable rather than implicit in a language model's reasoning.

### Relationship to Agent-vs-Workflow

This approach is distinct from the [[concepts/agent-vs-workflow|Agent vs Workflow]] paradigm in that it treats workflows as the primary interface for AI automation, with agents (LLMs) as one type of node within the workflow rather than the central orchestrator.
