---
title: "OpenAPI for Agents"
category: concepts
tags: [openapi, json-schema, api-schema, agent-tools, machine-readable, api-design]
summary: "Using OpenAPI JSON schemas as the foundation for agent tool discovery and execution. A single JSON file describing paths, endpoints, parameters, and payloads becomes the contract between agents and APIs."
sources:
  - "AIEF2025 - Design like Karpathy is watching — Zeke Sikelianos, Replicate - https://www.youtube.com/watch?v=huQPkrwVWwc"
provenance: { extracted: 0.8, inferred: 0.2, ambiguous: 0.0 }
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04T00:00:00Z
updated: 2026-07-04T00:00:00Z
relationships:
  - target: "[[concepts/mcp|Model Context Protocol]]"
    type: extends
  - target: "[[concepts/api-first-design-for-agents|API-First Design for Agents]]"
    type: related_to
  - target: "[[concepts/cog-container|Cog]]"
    type: uses
  - target: "[[concepts/curl-over-click|Curl Over Click]]"
    type: related_to
---

## OpenAPI for Agents

OpenAPI is a JSON schema that defines the behavior of an HTTP API — a single large JSON file describing paths, endpoints, query parameters, request body payloads, and operations like creating predictions or searching models. Replicate's HTTP API page is entirely generated from this schema, rendered through a template into a human-friendly format.

### From Schema to Agent Tool

The key insight is that OpenAPI schemas serve as the foundation for agent tool discovery. When an LLM can consume an OpenAPI schema, it understands the full capability surface of an API — what it can do, what inputs it needs, and what outputs it produces.

### MCP as OpenAPI for Language Models

Model Context Protocol (MCP) takes an OpenAPI schema and transforms it into a format that language models know how to use directly. Replicate's MCP server can be installed in Claude Desktop via a small JSON configuration, giving Claude immediate access to all Replicate API capabilities with the user's API token.

### Cog and OpenAPI

Cog uses OpenAPI to create standardized APIs around machine learning models. This means any model wrapped in cog automatically gets a machine-readable contract that agents can consume.

### The Bigger Picture

OpenAPI schemas represent the transition from human-readable API documentation to machine-native API contracts. When your API is defined as a structured JSON schema, it becomes directly consumable by agents without any intermediate documentation layer.
