---
title: Building Agents (the hard parts!) - Rita Kozlov, Cloudflare
category: references
tags:
- reference
- talk
- agents
- mcp
- cloudflare
- agent-architecture
- ai-eng-fair-2025
sources:
- AIEF2025 - Building Agents (the hard parts!) - Rita Kozlov, Cloudflare - https://www.youtube.com/watch?v=j_TKDweOsYE
summary: Rita Kozlov, VP of Product for Cloudflare's developer platform, presents a four-component framework for building agents (client, AI reasoning, workflows, tools), introduces MCP as the standard for...
provenance:
  extracted: 0.85
  inferred: 0.1
  ambiguous: 0.05
base_confidence: 0.8
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# Building Agents (the hard parts!) - Rita Kozlov, Cloudflare

> [!tldr] Rita Kozlov, VP of Product for Cloudflare's developer platform (Workers and Durable Objects), presents a four-component framework for building agents, discusses MCP as the emerging standard for exposing APIs to LLMs, and introduces Cloudflare's Agents SDK as a production-ready toolkit that abstracts away OAuth, transport, and state management.

## Context and Market Trends

Rita opens with striking adoption statistics that have accelerated far past prior predictions:

- A year ago, 44% of developers used AI daily; Gartner predicted 50% of knowledge workers would use AI by 2030. **Today, over 75% of knowledge workers use AI to augment their work**, surpassing the 2030 estimate.
- More than 76% of developers use AI in their development process, and that number has grown since the report.
- The workload shift from training to inference is accelerating — OpenAI's O1 and DeepSeek's optimized training both demonstrate more energy being spent on inference than training.
- The next phase after training and inference is **automation** — agentic workflows that don't just augment but execute end-to-end tasks.

## Agentic Impact on Business

Early agent adoption is already showing measurable business impact:

- Businesses see **28% revenue increases** from adopting agents in sales automation.
- **90% faster response times** to support when using AI agents.
- **50–75% time savings** across the board when using agents.

## Four-Component Agent Architecture

Rita frames every agent as having four essential components:

1. **Client** — The interface through which humans interact with the agent (chat UI, voice/WebRTC, etc.)
2. **AI (Reasoning)** — The "executive branch" that thinks through what to do next
3. **Workflows** — The execution layer that carries out the reasoning agent's decisions, tracking what actions have been executed and what remains
4. **Tools** — The actual mechanisms (APIs, web browsers, vector databases, internal services) that the agent uses to take actions

She illustrates with a CRM agent example: a voice agent that contacts people you spoke to at a conference. The full stack includes WebRTC transport, speech-to-text, a chat UI host, a gateway for caching and evals, an LLM for reasoning, a workflow agent for orchestration, tool connections (browser, API, vector DB), and human-in-the-loop approval.

## MCP as the Standard for Tool Exposure

Rita discusses MCP (Model Context Protocol), introduced by Anthropic in November, with two key insights:

- **Primary headline**: MCP gives people a standard way to expose APIs to LLMs so humans can talk to LLMs over natural language.
- **Missed headline**: LLMs have become genuinely good at tool calling — something that wasn't the case a few years ago.

MCP respects traditional client-server architecture and allows multiple clients to connect to one MCP server. Core MCP concepts:

- **Resources** — File contents, database records, any data the agent needs
- **Prompts** — Pre-built prompt templates that help agents interact with your system correctly
- **Tools** — The actual actionable capabilities the agent can invoke
- **Sampling** — Allowing the server to request LLM completions from the client (Rita notes she hasn't seen anyone using sampling in production yet)

## MCP Implementation Challenges

The trickiest parts of building MCP servers:

- Transport protocol (SSE and WebSockets)
- OAuth integration
- Memory management

## Cloudflare Agents SDK

Rita's "cheat code": Cloudflare released an **Agents SDK** that provides much of this functionality out of the box:

- Run MCP servers with a built-in `MCPAgents` class
- Host remote MCP servers with OAuth, transport, and HTTP streaming built-in — "for people who never want to touch OAuth again"
- State management via **Durable Objects** — Cloudflare's serverless primitive with state, analogous to serverless functions but with persistent state
- The SDK shares the same name as OpenAI's recently released Agents SDK and "works and plays with each other really well"

## Related

- [[concepts/agent-architecture]] — The four-component framework
- [[concepts/model-context-protocol]] — MCP protocol overview
- [[concepts/agent-tool-calling]] — LLMs becoming good at tool calling
- [[concepts/durable-objects]] — Cloudflare's stateful serverless primitive
- [[entities/cloudflare]] — Cloudflare platform
- [[entities/anthropic]] — Anthropic (MCP creator)
- [[concepts/voice-agents]] — Voice agent architecture with WebRTC + STT
- [[concepts/eval-driven-development]] — Gateway caching and evals in agent loops
- [[concepts/agent-gateway]] — Gateway for caching and evals
- [[concepts/human-in-the-loop]] — Human approval in CRM workflow
- [[concepts/speech-to-text]] — Voice agent STT component
- [[concepts/webrtc-transport]] — Voice agent transport layer
- [[concepts/ai-adoption-acceleration]] — AI adoption surpassing predictions
- [[entities/openai-agents-sdk]] — Cross-compatible with OpenAI's SDK
