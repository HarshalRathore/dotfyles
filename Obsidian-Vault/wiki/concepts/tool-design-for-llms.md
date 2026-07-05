---
title: "Tool Design for LLMs"
category: concepts
tags:
  - tool-design
  - prompt-engineering
  - context
  - production-ai
  - agents
  - braintrust
  - aief2025
sources:
  - "AIEF2025 - Five hard earned lessons about Evals — Ankur Goyal, Braintrust - https://www.youtube.com/watch?v=a4BV0gGmXgA"
summary: "Tools should be designed for what LLMs want to see, not as API mirrors. Good tool design is disruptive and requires rethinking interfaces for LLM consumption.
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
  - target: "[[concepts/modern-prompt-engineering|Modern Prompt Engineering]]"
    type: extends
  - target: "[[concepts/yaml-vs-json-for-llms|YAML vs JSON for LLMs]]"
    type: illustrates
  - target: "[[concepts/system-level-optimization|System-Level Optimization]]"
    type: relates_to
---

# Tool Design for LLMs

You cannot just take tools as a reflection of your APIs or your product as it exists today. You have to think about tools in terms of what the LLM wants to see and how you can use exactly what you present to the LLM to make it work really well. ^[extracted]

## Tools Are Not API Mirrors

Writing good tools is often very disruptive — it's not just an API layer on top of what you already have. ^[extracted] It requires rethinking your interfaces from the LLM's perspective:

- What information does the LLM need to make good decisions?
- What format is most readable and token-efficient for the LLM?
- What level of detail helps the LLM without overwhelming it?

## Tool Outputs Matter Too

The format of tool outputs significantly affects LLM performance. [[concepts/yaml-vs-json-for-llms|A concrete example]]: shifting a tool output from JSON to YAML made a significant difference in a real project, because YAML is much more token-efficient and easier for an LLM to parse while doing analysis. ^[extracted]

To JavaScript, YAML and JSON are both structured data. To an LLM, they are very different. ^[extracted]

## Related

- [[concepts/modern-prompt-engineering|Modern Prompt Engineering]] — Context is more important than the system prompt
- [[concepts/yaml-vs-json-for-llms|YAML vs JSON for LLMs]] — Concrete output format example
- [[concepts/system-level-optimization|System-Level Optimization]] — Tools are part of the system to optimize
