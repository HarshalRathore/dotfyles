---
title: "Built-in Agent Tools"
tags:
  - ai-agents
  - tools
  - agent-frameworks
  - developer-experience
  - sdk-design
aliases: [default tools, agent tools, built-in tools]
sources:
  - "[[sources/watchv=q3nreeadkmc]]"
summary: "Pre-packaged tools that ship with an agent SDK — such as file read, file write, and text-to-speech — allowing agents to perform common operations without custom tool code."
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/minimal-scaffolding-ai-agents|Minimal Scaffolding for AI Agents]]"
    type: implements
  - target: "[[concepts/agent-loop|Agent Loop]]"
    type: related_to
---

# Built-in Agent Tools

Pre-packaged tools that ship with an agent SDK, allowing agents to perform common operations without requiring custom tool code. ^[extracted]

## Strands' Built-in Tools

[[entities/strands-agents|Strands Agents]] ships `strands-tools` with three default tools:

1. **File read** — Read content from the local filesystem
2. **File write** — Write content to the local filesystem
3. **Text-to-speech** — Convert text to spoken audio

These three tools enabled a complete pipeline: read a file → summarize it → write the summary → speak it aloud. No custom code was needed. ^[extracted]

## Philosophy

Built-in tools reduce the friction of getting started with agent development. The developer installs `strands-tools` and immediately has access to common operations. Custom tools are still supported via the `@tools.tool` decorator for anything beyond the built-in set. ^[extracted]

## Trade-offs

**Pros:**
- Zero setup for common operations
- Reduces scaffolding burden
- Agents can perform useful tasks immediately

**Cons:**
- Limited to the tools that ship
- May not cover domain-specific needs
- SDK dependency for tool availability

## Related

- [[concepts/minimal-scaffolding-ai-agents]] — Minimal scaffolding philosophy
- [[concepts/agent-loop]] — Agent loop pattern
- [[entities/strands-agents]] — Strands Agents SDK
- [[references/aief2025-introducing-strands-agents-open-source-ai-agents-sdk-suman-debnath-aws]] — AIEF2025 talk
