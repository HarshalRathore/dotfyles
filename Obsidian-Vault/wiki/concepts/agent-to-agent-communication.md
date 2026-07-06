---
title: Agent-to-Agent Communication (MCP, A2A)
category: concepts
tags:
- agent-to-agent
- mcp
- a2a
- agentic-workflows
- aief2025
- itamar-friedman
- qodo
- model-context-protocol
summary: MCP and A2A (Agent-to-Agent) protocols enabling different AI agents to communicate and coordinate across SDLC phases — one agent using tools that connect all SDLC parts. Essential for holistic AI w...
sources:
- AIEF2025 - Vibe Coding with Confidence — Itamar Friedman, Qodo - https://www.youtube.com/watch?v=n991Yxo1aOI
provenance:
  extracted: 0.8
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.7
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
- target: '[[concepts/model-context-protocol|MCP]]'
  type: implements
- target: '[[concepts/agent-workflows|Agent Workflows]]'
  type: enables
- target: '[[concepts/holistic-ai-sdlc|Holistic AI Across the SDLC]]'
  type: enables
- target: '[[concepts/sdlc-shift-left-ai|SDLC Shift-Left AI]]'
  type: enables
---

# Agent-to-Agent Communication (MCP, A2A)

**Agent-to-Agent (A2A) communication** refers to protocols and patterns that enable different AI agents to coordinate, share context, and pass work between each other. This capability is essential for [[concepts/holistic-ai-sdlc|holistic AI across the SDLC]] and for "squeezing the V" in the SDLC workflow. ^[extracted]

## The Problem: Siloed Agents

Without A2A communication, AI agents operate in isolation:

- A coding agent writes code without knowledge of testing constraints
- A testing agent validates code without understanding the original intent
- A review agent evaluates code without context from the planning phase

This siloed approach cannot produce the integrated workflows needed for enterprise-grade AI-assisted development. ^[extracted]

## MCP (Model Context Protocol)

[[concepts/model-context-protocol|MCP]] provides a standardized protocol for agents to discover, access, and use tools across different systems. In the SDLC context, MCP enables:

- **Dynamic tool discovery:** Agents can discover what tools are available in their environment
- **Shared context:** Agents share information about code, tests, and reviews
- **Cross-tool coordination:** One agent can invoke tools from another agent's domain

MCP is the infrastructure layer that makes A2A communication possible. ^[extracted]

## A2A Protocol

The A2A (Agent-to-Agent) protocol provides the communication layer for agents to talk to each other directly. In the SDLC context:

- A coding agent can signal a testing agent when code is ready for validation
- A testing agent can notify a coding agent about failures with specific details
- A review agent can provide feedback that the coding agent incorporates in real time

This enables the [[concepts/sdlc-shift-left-ai|shift-left AI]] pattern where review and testing happen as code is written. ^[inferred]

## Squeezing the V

Friedman described "squeezing the V" — the V-shape model of SDLC executability — as the game-changing opportunity. This requires [[concepts/agent-to-agent-communication|different agents talking to each other]] so that review and testing can happen closer to the code-writing phase rather than after it. ^[extracted]

## Connection to CLI

The [[concepts/cli-ai-interface-leader|CLI as interface leader]] thesis and A2A communication are complementary: the CLI provides the unified interface through which developers command AI agents, while A2A protocols enable those agents to coordinate internally. Together, they form the foundation for Gen 3.0 AI developer tools. ^[inferred]
