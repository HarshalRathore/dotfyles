---
title: "Semantic Kernel Agent"
category: concepts
tags:
  - semantic-kernel
  - microsoft
  - agents
  - plugin-architecture
  - azure-ai-foundry
aliases: [Semantic Kernel, SK agent]
relationships:
  - target: "[[entities/microsoft]]"
    type: implements
  - target: "[[entities/azure-ai-foundry]]"
    type: uses
  - target: "[[concepts/agent-loop]]"
    type: related_to
sources:
  - "[[sources/watchv=jhjkgramfiu]]"
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# Semantic Kernel Agent

A [[concepts/agent-loop|Semantic Kernel agent]] is an agent pattern built on Microsoft's Semantic Kernel framework that composes multiple AI capabilities — Azure chat completions, tool calling, and custom plugins — into a single orchestrating agent. ^[extracted]

## Architecture

The Semantic Kernel agent takes in [[entities/azure-openai|Azure chat completions]] as its reasoning engine and exposes plugins as callable tools. ^[extracted] In the AI Red Teaming context, the Red Team plugin exposes all functions needed for an agent to conduct adversarial testing against a target application. ^[extracted]

The agent pattern enables: ^[extracted]

- **Interactive red teaming**: The agent generates harmful prompts by category, sends them to a target, evaluates the response, and applies additional attack strategies (e.g., base64 encoding) iteratively.
- **Plugin composition**: Multiple plugins can be composed — the Red Team plugin works alongside standard chat completion agents.

## Usage in Red Teaming

The Semantic Kernel agent was used in the AIEF2025 demo to red team a [[concepts/agentic-rag|RAG application]] on PostgreSQL. ^[extracted] The agent: ^[extracted]

1. Generates adversarial prompts by risk category (e.g., violence)
2. Sends them to the target application
3. Evaluates the response for safety
4. Applies attack strategies like base64 encoding and resends

The target application can be any system that accepts a query string and returns a string response — the demo pattern generalizes beyond the specific RAG app shown. ^[extracted]

## Sources

- AI Red Teaming Agent: Azure AI Foundry — Nagkumar Arkalgud & Keiji Kanazawa, Microsoft. https://www.youtube.com/watch?v=JhJKgRAmfIU
