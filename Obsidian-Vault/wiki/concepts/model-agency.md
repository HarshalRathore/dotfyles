---
title: "Model Agency"
category: concepts
tags: [model-agency, mcp, agent-architecture, llm-tools, context-integration, ai-agents]
summary: "The concept that language models should be able to interact with the outside world — reaching beyond their context window to access real-time data, tools, and actions. The foundational problem MCP was designed to solve."
sources:
  - "AIEF2025 - MCP: Origins and Requests For Startups — Theodora Chu, Model Context Protocol PM, Anthropic - https://www.youtube.com/watch?v=x-8pBqWiTzk"
provenance: { extracted: 0.80, inferred: 0.15, ambiguous: 0.05 }
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05T00:00:00Z
updated: 2026-07-05T00:00:00Z
relationships:
  - target: "[[concepts/mcp|Model Context Protocol]]"
    type: extends
  - target: "[[concepts/agent-loop|Agent Loop]]"
    type: related_to
  - target: "[[concepts/agent-autonomy|Agent Autonomy]]"
    type: related_to
---

# Model Agency

Model agency is the concept that language models should be able to interact with the outside world — reaching beyond their context window to access real-time data, tools, and actions. It is the foundational problem that the [[concepts/mcp|Model Context Protocol]] was designed to solve. ^[extracted]

## The Problem

Before MCP, the dominant pattern was manual context injection: developers and users constantly copying and pasting information from external sources (Slack messages, Sentry error logs, databases) into the model's context window. This was fragile, error-prone, and limited the model's ability to act in real time. ^[extracted]

The question that drove MCP's creation: "How do you actually give the model the ability to climb out of its box, reach out into the real world, and bring that context and those actions to the model?" ^[extracted]

## Model Agency vs. Context

Model agency goes beyond context management. It encompasses:

- **Context access** — The model can access external data sources in real time
- **Tool use** — The model can execute actions in external systems
- **Bidirectional communication** — The model can both read from and write to external systems
- **Agent behavior** — The model can choose actions based on its own intelligence, not just respond to prompts

## MCP as the Solution

The MCP co-creators (David and Justin at Anthropic) concluded that model agency required an open-source standardized protocol. A closed ecosystem approach would require BD partnerships just to access integration teams, align on interfaces, and build integrations — making widespread model agency impossible at scale. ^[extracted]

By making MCP open-source and standardized, any builder can create integrations without negotiating access, enabling the model agency vision at ecosystem scale. ^[inferred]

## Relationship to Agent Architecture

Theo Chu (MCP PM at Anthropic) frames model agency as inseparable from the agent future: agents are models that use their intelligence to choose actions and decide what to do, similar to how you trust a human to give you the right response based on the task you've given them. The goal is to enable a world where you depend on the model's intelligence scaling over time. ^[extracted]

## See Also

- [[concepts/mcp|Model Context Protocol]] — The protocol enabling model agency
- [[concepts/agent-autonomy|Agent Autonomy]] — The spectrum of agent independence
- [[concepts/agent-loop|Agent Loop]] — The operational pattern for agents
- [[concepts/assistive-vs-automation-agents|Assistive vs. Automation Agents]] — Where model agency fits on the autonomy spectrum
