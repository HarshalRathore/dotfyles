---
title: "Agentic Services"
tags:
  - ai-agents
  - service-architecture
  - cloud-scale
  - aws
sources:
  - "AIEF2025 - Building Agents at Cloud Scale — Antje Barth, AWS - https://www.youtube.com/watch?v=WJjInLeaJjo"
summary: "The paradigm shift from traditional web services to AI-powered agentic services that can reason, plan, and take actions autonomously — demonstrated by AWS with Amazon Q Developer CLI built in three weeks."
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/model-driven-agent-design|Model-Driven Agent Design]]"
    type: implements
  - target: "[[entities/amazon-q-developer|Amazon Q Developer]]"
    type: related_to
  - target: "[[entities/strands-agents|Strands Agents]]"
    type: related_to
---
# Agentic Services

The paradigm shift from traditional web services to AI-powered agentic services — systems that can reason, plan, and take actions autonomously rather than following predetermined request-response patterns. ^[extracted]

## The Shift

Traditional web services respond to explicit API calls with deterministic outputs. Agentic services accept natural language intents and figure out the sequence of actions needed to fulfill them. ^[extracted]

## Key Characteristics

- **Natural language interface**: Users describe what they want; the service figures out how to do it.
- **Autonomous action**: The service reads files, makes API calls, debugs issues, and executes multi-step workflows without explicit step-by-step instructions.
- **Tool integration**: Agentic services connect to MCP servers, knowledge bases, and partner services to accomplish tasks.
- **Permission-aware**: They request user permissions before taking actions that modify state.

## AWS Examples

### Amazon Q Developer CLI

An agentic service that brings chat experience into the terminal:
- Helps debug issues
- Answers natural language questions
- Reads and writes files
- Integrates with MCP servers for tool discovery
- Built and shipped in **three weeks**

### Alexa Plus

The largest agentic service deployment known:
- 600+ million devices
- Hundreds of expert systems
- Tens of thousands of partner services

## Implications for Development

The underlying principles of building at scale remain similar to web services, but the development model changes:

- **Startups**: Scale ideas to the next level with agentic capabilities
- **Enterprises**: Reimagine and integrate AI experiences into existing applications
- **Speed**: Model-driven design enables rapid delivery (weeks, not months)

## Related Pages

- [[concepts/model-driven-agent-design|Model-Driven Agent Design]] — The design approach enabling agentic services
- [[entities/amazon-q-developer|Amazon Q Developer]] — Example agentic service
- [[entities/strands-agents|Strands Agents]] — SDK for building agentic services
- [[concepts/agent-at-scale|Agent at Scale]] — Scale patterns for agentic services
