---
title: "YAML vs JSON for LLMs"
category: concepts
tags:
  - format
  - llm
  - token-efficiency
  - prompt-engineering
  - context
  - braintrust
  - aief2025
sources:
  - "AIEF2025 - Five hard earned lessons about Evals — Ankur Goyal, Braintrust - https://www.youtube.com/watch?v=a4BV0gGmXgA"
summary: "YAML tool outputs are more token-efficient and easier for LLMs to parse than verbose JSON, even though both represent the same structured data to programs.
provenance:
  extracted: 0.95
  inferred: 0.05
  ambiguous: 0.00
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/tool-design-for-llms|Tool Design for LLMs]]"
    type: illustrates
  - target: "[[concepts/modern-prompt-engineering|Modern Prompt Engineering]]"
    type: relates_to
  - target: "[[concepts/system-level-optimization|System-Level Optimization]]"
    type: relates_to
---

# YAML vs JSON for LLMs

In a real project, shifting the output of a tool from JSON to YAML made a significant difference in LLM performance. ^[extracted]

## The Observation

YAML is much more token-efficient and easier for an LLM to look at while doing analysis than extremely verbose JSON. ^[extracted] This is a practical observation from working with agents in production, not a theoretical claim. ^[extracted]

## Why the Difference?

To JavaScript (or any programming language), YAML and JSON are both structured data — they parse to the same objects. But to an LLM, they are very different: ^[extracted]

- **JSON** is verbose with nested braces, brackets, and quotes that consume tokens without adding semantic clarity
- **YAML** uses indentation-based structure and key-value pairs that are more visually scannable for an LLM's attention mechanism

## Implications for Tool Design

When designing tool outputs for LLM consumption:

1. **Optimize for LLM readability**, not just programmatic correctness
2. **Token efficiency matters** — fewer tokens per unit of information means more context for the same budget
3. **Format is part of the interface** — the same data in different formats creates different LLM behavior

This is a concrete example of [[concepts/tool-design-for-llms|designing tools for LLMs]] rather than reflecting existing APIs. ^[inferred]

## Related

- [[concepts/tool-design-for-llms|Tool Design for LLMs]] — The broader principle this illustrates
- [[concepts/modern-prompt-engineering|Modern Prompt Engineering]] — Context engineering beyond system prompts
- [[concepts/system-level-optimization|System-Level Optimization]] — Output format as a system parameter
