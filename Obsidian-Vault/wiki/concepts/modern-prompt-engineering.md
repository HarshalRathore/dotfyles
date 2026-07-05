---
title: "Modern Prompt Engineering"
category: concepts
tags:
  - prompt-engineering
  - context
  - production-ai
  - agents
  - braintrust
  - aief2025
sources:
  - "AIEF2025 - Five hard earned lessons about Evals — Ankur Goyal, Braintrust - https://www.youtube.com/watch?v=a4BV0gGmXgA"
summary: "Modern prompt engineering evolved beyond system prompts: most tokens in agent prompts come from context (tools, outputs, history). You must engineer the entire context.
provenance:
  extracted: 0.90
  inferred: 0.10
  ambiguous: 0.00
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/tool-design-for-llms|Tool Design for LLMs]]"
    type: extends
  - target: "[[concepts/system-level-optimization|System-Level Optimization]]"
    type: relates_to
  - target: "[[concepts/yaml-vs-json-for-llms|YAML vs JSON for LLMs]]"
    type: illustrates
---

# Modern Prompt Engineering

Traditional prompt engineering focused on the system prompt. But modern prompt engineering has evolved: it's very important to think about the entire context, not just the prompt. ^[extracted]

## The Modern Agent Prompt

A modern agent prompt consists of: ^[extracted]

1. **System prompt** — The base instructions and persona
2. **For loop** — Iterative LLM calls that issue tool calls, incorporate tool outputs into the prompt, and iterate

In real agent trajectories, the vast majority of tokens in the average prompt are NOT from the system prompt. ^[extracted] They come from tool definitions, tool outputs, and conversation history accumulated across iterations. ^[inferred]

## Implications

- Writing a good system prompt matters, but it's only part of the picture
- How you define tools and their outputs has a massive impact on the tokens the LLM actually processes
- Poorly designed tool outputs waste tokens and confuse the LLM
- Tool output format matters: [[concepts/yaml-vs-json-for-llms|YAML can be significantly more token-efficient and readable for LLMs]] than JSON, even though both represent the same structured data to programming languages

## Related

- [[concepts/tool-design-for-llms|Tool Design for LLMs]] — Designing tools for LLM consumption, not API reflection
- [[concepts/yaml-vs-json-for-llms|YAML vs JSON for LLMs]] — Concrete example of context engineering
- [[concepts/system-level-optimization|System-Level Optimization]] — The holistic approach that includes context design
