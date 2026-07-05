---
title: "Curl Over Click"
category: concepts
tags: [curl, api-design, llm-consumption, developer-experience, machine-readable]
summary: "The principle that LLMs prefer curl commands over interactive UI for API interaction. A curl command encodes HTTP method, JSON payload, credentials, request type, and endpoint — everything an LLM needs in one line."
sources:
  - "AIEF2025 - Design like Karpathy is watching — Zeke Sikelianos, Replicate - https://www.youtube.com/watch?v=huQPkrwVWwc"
provenance: { extracted: 0.85, inferred: 0.15, ambiguous: 0.0 }
base_confidence: 0.9
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04T00:00:00Z
updated: 2026-07-04T00:00:00Z
relationships:
  - target: "[[concepts/agent-readable-docs|Agent-Readable Docs]]"
    type: extends
  - target: "[[concepts/llms-txt|LLMs.txt]]"
    type: related_to
  - target: "[[concepts/api-first-design-for-agents|API-First Design for Agents]]"
    type: related_to
---

## Curl Over Click

The principle that "LLMs don't like to click, they like to curl" — language models consume API documentation most effectively through curl commands rather than interactive UI walkthroughs.

### Why Curl Works for LLMs

A curl command is a standardized way to make API calls without specialized tooling. It has been around since the 1990s and is installed on virtually every developer machine. A single curl line encodes everything an LLM needs to know:

- **HTTP method** — GET, POST, PUT, DELETE
- **JSON payload** — the request body structure
- **Credentials** — how to authenticate
- **Response type** — what format to expect
- **Request mode** — blocking vs asynchronous
- **API endpoint** — the URL to hit

This single line of code is exactly the kind of content that language models want to consume. Give an LLM a curl command and it knows how to make API requests to your service.

### Practical Application

Replicate embraces this principle by providing curl commands as the primary API documentation format. Combined with llms.txt for broader documentation and OpenAPI schemas for structured API descriptions, curl commands form a complete machine-readable documentation stack.

### Implications for Product Design

This principle reinforces the thesis that the primary audience of your API documentation is now a language model, not a human. Documentation should be optimized for machine consumption first, with human-friendly rendering as a secondary concern.
