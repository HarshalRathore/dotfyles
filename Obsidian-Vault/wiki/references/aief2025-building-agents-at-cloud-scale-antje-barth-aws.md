---
title: "AIEF2025 - Building Agents at Cloud Scale — Antje Barth, AWS"
tags:
  - ai-engineer-worlds-fair-2025
  - aws
  - ai-agents
  - cloud-scale
  - strands-agents
  - alexa
  - amazon-q
sources:
  - "AIEF2025 - Building Agents at Cloud Scale — Antje Barth, AWS - https://www.youtube.com/watch?v=WJjInLeaJjo"
summary: "Antje Barth (AWS) at AI Engineer World's Fair 2025: building AI agents at cloud scale, covering Alexa Plus reimagining, Strands Agents SDK, Amazon Q Developer CLI, and model-driven agent design."
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/antje-barth|Antje Barth]]"
    type: related_to
  - target: "[[entities/aws|AWS]]"
    type: related_to
  - target: "[[entities/strands-agents|Strands Agents]]"
    type: related_to
  - target: "[[entities/alexa|Alexa]]"
    type: related_to
---
# AIEF2025 - Building Agents at Cloud Scale — Antje Barth, AWS

## Overview

Antje Barth presented at AI Engineer World's Fair 2025 on how to build AI agents at cloud scale. The talk covered Amazon's internal AI agent ecosystem, the Alexa Plus reimagining, Strands Agents open-source SDK, and Amazon Q Developer CLI as examples of rapid agentic service delivery. ^[extracted]

## Key Topics

### Alexa Plus: Largest Agent Integration

- Complete reimagining of Alexa with agentic capabilities
- 600+ million devices worldwide
- Hundreds of specialized expert systems
- Tens of thousands of partner services and devices
- Demonstrated multi-step task execution across calendar, travel, smart home, shopping, and content creation

### Model-Driven Agent Design

- Fundamental rethink of how to build agents
- LLMs decide, plan, reason, and take actions
- Developers focus on **what** the agent should do, not **how**
- State-of-the-art models handle the orchestration

### Strands Agents SDK

- Open-source Python SDK released at the talk
- Minimal scaffolding: define prompt + tools, test locally, deploy to cloud
- Default integration with Amazon Bedrock (Claude 3.7 Sonnet)
- Multi-provider support: Ollama, LiteLLM, OpenAI, custom providers
- 20+ pre-built tools including file I/O, API calls, AWS services, memory/RAG, multi-modal, reasoning, and multi-agent workflows
- Native MCP integration
- A2A support coming soon

### Amazon Q Developer CLI

- Agentic chat experience in the terminal
- Debug issues, answer natural questions, read/write files
- MCP integration for tool discovery
- Built in **three weeks** — demonstrating rapid agentic service delivery

### AWS Internal AI Ecosystem

- 1,000+ generative AI applications built or in development
- Use cases: inventory forecasting, delivery route optimization, customer shopping, home interactions
- Internal agent managing 6,000+ tools using Retrieve tool for semantic search over tool knowledge base

## Key Quotes

> "We truly believe that virtually every customer experience we know of will be reinvented with AI." ^[extracted]

> "What you're about to see here represents the largest integration of services, agentic capabilities, and LLMs that we know of anywhere." ^[extracted]

> "We built and shipped this [Amazon Q Developer CLI] within three weeks." ^[extracted]

## Related Pages

- [[entities/antje-barth]] — Speaker
- [[entities/aws]] — Organization
- [[entities/alexa]] — Alexa Plus demonstration
- [[entities/strands-agents]] — Open-source SDK introduced
- [[entities/amazon-q-developer]] — Amazon Q Developer CLI
- [[entities/amazon-bedrock]] — Default model provider for Strands
- [[concepts/model-driven-agent-design|Model-Driven Agent Design]] — Architecture approach
- [[concepts/agentic-services|Agentic Services]] — Paradigm shift from web services
