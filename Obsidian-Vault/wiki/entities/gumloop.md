---
title: "Gumloop"
category: entities
tags:
  - company
  - tool
  - workflow-automation
  - ai-agents
  - y-combinator
  - aief2025
  - node-based
  - automation
summary: "Workflow automation tool by Max Brodeur-Urbas. YC Winter 2024. Raised Series A as two people. Core product: AI agents as configurable workflow nodes. Used by large enterprises."
provenance:
  extracted: 0.9
  inferred: 0.1
  ambiguous: 0.0
base_confidence: 0.9
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/workflow-automation]]"
    type: implements
  - target: "[[entities/max-brodeur-urbas]]"
    type: related_to
  - target: "[[entities/instacart]]"
    type: uses
---

## Gumloop

Gumloop is a workflow automation tool founded by [[entities/max-brodeur-urbas|Max Brodeur-Urbas]] as part of the Y Combinator Winter 2024 batch. The company raised a Series A round with a team of only two people and has grown to nine employees.

### Product

Gumloop's core insight was that people who wanted to use AI agents were actually describing complex workflows. Rather than hoping a general-purpose agent would figure out what to do, users could define the steps as a series of configurable nodes in a workflow graph. Each node represents a step — an API call, an LLM query, a data transformation — and the workflow orchestrates the flow between them.

The product evolved from an earlier project called Agent Hub, which was a UI for AutoGPT that Max built as a side project. He originally thought Agent Hub would be "GitHub for agents," but pivoted when he realized the real value was in workflow configuration rather than agent hosting.

Gumloop is now used by large companies, with [[entities/instacart|Instacart]] being an early customer whose representative later joined the Gumloop team full-time.

### Internal Operations

Gumloop uses its own product internally to automate nearly every aspect of the business. Before every meeting, a deep research report is automatically generated covering customer usage patterns, feature adoption, and power-user status. When interesting users sign up, the team gets notified with context and a pre-drafted outreach email.
