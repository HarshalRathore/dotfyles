---
title: "Tool Design for Agents"
category: concepts
tags:
  - agent-tools
  - tool-design
  - mcp
  - tool-schemas
  - enterprise-ai
  - microservices
aliases:
  - designing tools for agents
  - agent tool schemas
  - tool description for agents
sources:
  - "AIEF2025 - How to Build Planning Agents without losing control - Yogendra Miraje, Factset - https://www.youtube.com/watch?v=sl3icG-IjHo"
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/agent-tools|Agent Tools]]"
    type: extends
  - target: "[[concepts/model-context-protocol|Model Context Protocol]]"
    type: uses
  - target: "[[concepts/blueprint-generator-pattern|Blueprint Generator Pattern]]"
    type: used_by
  - target: "[[concepts/natural-language-tool-schemas|Natural Language Tool Schemas]]"
    type: related_to
---

# Tool Design for Agents

Principles for designing tools that agents can effectively discover, understand, and use. The core philosophy: design tools from the agent's perspective, not the developer's.

## The Agent's Perspective Problem

Tools built around enterprise microservices need to be designed so that the agent knows which tool to use and has the knowledge of the underlying microservices. The relationship between tools and microservices is not one-to-one — it's up to the designer how to structure tools so the agent can reason about them. ^[extracted]

## Three-Layer Tool Description

Every tool should provide three layers of description, each serving a different decision the agent needs to make:

1. **Tool Purpose** — Helps the agent decide *which* tool to select from the available set. A high-level statement of what the tool does. ^[extracted]
2. **Tool Detailed Description** — Tells the agent *when* this tool needs to be invoked. More specific than purpose — describes the conditions and context for use. ^[extracted]
3. **Input-Output Contracts** — Tells the agent *how* to use the tool. The specific parameters, expected inputs, and return value structure. ^[extracted]

## Validation as Safety Breaks

Validation checks on tool inputs act as a "break" for the agent — they prevent the agent from proceeding with invalid or dangerous operations. This is a critical safety mechanism in agentic systems where the agent has autonomy over tool selection and invocation. ^[extracted]

## MCP Tool Server Standard

Build MCP tool servers for your tools. MCP provides a standardized way to expose tools to agents, with consistent schema definitions and discovery mechanisms. ^[extracted]

## Tool-Microservice Relationship

The mapping between tools and microservices is a design decision, not a technical constraint:

- **Not one-to-one** — A single microservice may expose multiple tools, or multiple microservices may be abstracted into a single tool
- **Agent-centric** — The mapping should be optimized for what the agent needs to know, not for the microservice architecture
- **Progressive disclosure** — The Blueprint Generator can limit which tools are exposed to the Planner, reducing context load

## Related

- [[concepts/agent-tools|Agent Tools]] — The three core tools of software development agents
- [[concepts/model-context-protocol|Model Context Protocol]] — Standard for tool exposure
- [[concepts/blueprint-generator-pattern|Blueprint Generator Pattern]] — Blueprint limits tool exposure to Planner
- [[concepts/natural-language-tool-schemas|Natural Language Tool Schemas]] — Using natural language in tool descriptions
