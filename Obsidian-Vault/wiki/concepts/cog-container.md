---
title: "Cog"
category: concepts
tags: [cog, containerization, machine-learning, docker, openapi, model-packaging]
summary: "Open source tool by Replicate for packaging machine learning models into production-ready Docker containers. Creates a standardized API around models using OpenAPI with standard inputs and outputs."
sources:
  - "AIEF2025 - Design like Karpathy is watching — Zeke Sikelianos, Replicate - https://www.youtube.com/watch?v=huQPkrwVWwc"
provenance: { extracted: 0.9, inferred: 0.1, ambiguous: 0.0 }
base_confidence: 0.9
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04T00:00:00Z
updated: 2026-07-04T00:00:00Z
relationships:
  - target: "[[entities/replicate|Replicate]]"
    type: implements
  - target: "[[concepts/openapi-for-agents|OpenAPI for Agents]]"
    type: uses
  - target: "[[concepts/llms-txt|LLMs.txt]]"
    type: related_to
  - target: "[[concepts/curl-over-click|Curl Over Click]]"
    type: related_to
---

## Cog

Cog (`cog.run`) is an open source tool created by Replicate for packaging machine learning models into production-ready Docker containers. It creates a standardized API around any model with standard inputs and outputs, using OpenAPI for the schema.

### How It Works

Cog wraps a model in a Docker container and exposes a consistent API interface regardless of the underlying model architecture. This means developers can swap models without changing their integration code.

### LLMs.txt Integration

Replicate compiled all of cog's documentation into a single `llms.txt` file at `cog.run`. This enables a powerful workflow: when a developer clones an open source cog model and doesn't understand the code, they can drop a reference to the llms.txt file into their editor. The AI editor then consumes that documentation and uses it to write code — effectively making the model's documentation directly actionable by an AI agent.

### Significance

Cog represents a concrete example of the broader shift toward making tools and platforms consumable by language models. By standardizing the model API through OpenAPI and providing machine-readable documentation, cog bridges the gap between human developers and AI coding tools.
