---
title: Replicate
category: entities
tags:
- replicate
- ai-platform
- cloud-compute
- openai
- anthropic
- google
- black-bforest-labs
- flux-models
- cog
- mcp
summary: Cloud platform for running AI models via API. Hosts open source models (Flux from Black Forest Labs) and proprietary models (Anthropic, OpenAI, Google). Created cog for containerizing ML models and...
sources:
- AIEF2025 - Design like Karpathy is watching — Zeke Sikelianos, Replicate - https://www.youtube.com/watch?v=huQPkrwVWwc
provenance:
  extracted: 0.85
  inferred: 0.15
  ambiguous: 0.0
base_confidence: 0.9
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04 00:00:00+00:00
updated: 2026-07-04 00:00:00+00:00
relationships:
- target: '[[concepts/cog-container|Cog]]'
  type: implements
- target: '[[concepts/mcp|Model Context Protocol]]'
  type: uses
- target: '[[concepts/llms-txt|LLMs.txt]]'
  type: uses
- target: '[[entities/andre-karpathy|Andre Karpathy]]'
  type: related_to
---

## Replicate

Replicate is a cloud platform that lets users run AI models through an API. It hosts both open source models (such as the Flux models from Black Forest Labs) and proprietary models from Anthropic, OpenAI, Google, and others. Users can also deploy their own custom public and private models.

### Products and Tools

**Cog** (`cog.run`) is Replicate's open source tool for packaging machine learning models into production-ready Docker containers. It creates a standardized API around models using OpenAPI, with standard inputs and outputs.

**MCP Server** — Replicate built an MCP server that can be installed in Claude Desktop via a small JSON configuration, giving Claude direct access to all Replicate API capabilities.

**LLMs.txt support** — Replicate added a button on model pages to copy page contents as markdown for language models, and links to ChatGPT for interactive model conversations.

### Developer Experience Lessons

Andre Karpathy's Menugen blog post implicitly critiqued Replicate's developer experience: his LLM's knowledge of Replicate was outdated, docs were out of date, the API had changed, and he experienced rate limiting with a new paid account. Replicate acknowledged these issues and responded by adding LLM-friendly documentation features.

### GitHub

Zeke Sikelianos goes by "Zeke" on GitHub and X.
