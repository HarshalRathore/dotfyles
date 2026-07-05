---
title: "AI-Native Product Design"
category: concepts
tags: [ai-native, product-design, llm-audience, developer-experience, api-design, documentation]
summary: "Designing products where the primary consumer is an AI coding agent rather than a human developer. Encompasses LLM-friendly docs, curl-first APIs, OpenAPI schemas, and MCP integration."
sources:
  - "AIEF2025 - Design like Karpathy is watching — Zeke Sikelianos, Replicate - https://www.youtube.com/watch?v=huQPkrwVWwc"
provenance: { extracted: 0.8, inferred: 0.2, ambiguous: 0.0 }
base_confidence: 0.8
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: core
created: 2026-07-04T00:00:00Z
updated: 2026-07-04T00:00:00Z
relationships:
  - target: "[[concepts/llm-as-primary-audience|LLM as Primary Audience]]"
    type: extends
  - target: "[[concepts/curl-over-click|Curl Over Click]]"
    type: related_to
  - target: "[[concepts/llms-txt|LLMs.txt]]"
    type: related_to
  - target: "[[concepts/mcp|Model Context Protocol]]"
    type: related_to
  - target: "[[concepts/openapi-for-agents|OpenAPI for Agents]]"
    type: related_to
---

## AI-Native Product Design

AI-native product design is the practice of building products, APIs, and documentation with the assumption that the primary consumer is a language model rather than a human developer. The design principle "design like Karpathy is watching" — the title of Zeke Sikelianos's AIEF2025 talk — captures this ethos: build for the AI developer experience first, with human-friendly rendering as a secondary concern.

### Core Principles

1. **Machine-first documentation** — Single clean markdown files (llms.txt) over elaborate HTML sites
2. **Curl-first APIs** — Provide curl commands as the primary API documentation format
3. **Structured schemas** — OpenAPI JSON as the source of truth for API behavior
4. **Agent integration** — MCP servers that give AI tools direct access to your platform's capabilities
5. **Interactive discovery** — Enable LLMs to consume and reason about your product, not just display it

### The Karpathy Standard

Karpathy's Menugen project serves as both inspiration and benchmark. His ability to build a functional app locally through vibe coding demonstrates what's possible when tools are designed well. His deployment pain points demonstrate where the ecosystem still falls short. AI-native product design aims to close that gap.

### Concrete Examples

Replicate's response to Karpathy's implicit critique illustrates AI-native design in action: adding llms.txt buttons on model pages, providing curl commands as primary documentation, building an MCP server for Claude Desktop, and generating human-friendly API pages from OpenAPI schemas. Each of these features was designed with the AI developer as the primary user.
