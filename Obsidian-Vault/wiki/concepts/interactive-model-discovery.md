---
title: "Interactive Model Discovery"
category: concepts
tags: [model-discovery, interactive-ai, chatgpt-integration, claude-integration, model-pages, agent-interaction]
summary: "The shift from static model pages to interactive AI conversations for model discovery. Users can now converse with ChatGPT or Claude about a model directly from its platform page."
sources:
  - "AIEF2025 - Design like Karpathy is watching — Zeke Sikelianos, Replicate - https://www.youtube.com/watch?v=huQPkrwVWwc"
provenance: { extracted: 0.9, inferred: 0.1, ambiguous: 0.0 }
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04T00:00:00Z
updated: 2026-07-04T00:00:00Z
relationships:
  - target: "[[concepts/llm-as-primary-audience|LLM as Primary Audience]]"
    type: extends
  - target: "[[concepts/llms-txt|LLMs.txt]]"
    type: related_to
  - target: "[[entities/replicate|Replicate]]"
    type: related_to
---

## Interactive Model Discovery

Interactive model discovery is the practice of enabling users to discover and evaluate AI models through direct conversation with an LLM, rather than through static documentation pages. This represents a shift from reading about a model's capabilities to actively exploring them through dialogue.

### Replicate's Implementation

Replicate implemented interactive model discovery through several features:

1. **Copy as Markdown** — A button on every model page copies the page contents as markdown, which can be pasted into any LLM for conversation about that specific model.

2. **Direct Claude Integration** — A button sends the model page content directly to Claude, enabling an interactive conversation about the model's capabilities without leaving the Replicate platform context.

3. **ChatGPT Linking** — Similar to the Claude integration, users can jump into ChatGPT with the model page context pre-loaded, starting a conversation about what the model can do.

### Why It Matters

Static model pages require the user to read, understand, and evaluate — a passive experience. Interactive discovery lets the user ask specific questions ("Can this model do X?"), get concrete examples, and receive tailored recommendations. This is more efficient and more aligned with how people actually evaluate tools: through dialogue rather than documentation.

### Connection to LLM as Primary Audience

Interactive model discovery is a concrete implementation of the "LLM as Primary Audience" thesis. The model page is no longer just a human-readable document — it's a context object that can be fed to an LLM for interactive exploration. The human still drives the conversation, but the LLM is the primary consumer of the page content.
