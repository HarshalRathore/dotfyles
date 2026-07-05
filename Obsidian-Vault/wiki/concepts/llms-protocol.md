---
title: "LLMs Protocol (llms.txt)"
category: concepts
tags: [llms-protocol, llms-txt, documentation-standard, agent-readability, machine-readable-docs]
summary: "The emerging convention for providing LLM-friendly documentation as a single markdown file. Represents a protocol shift from HTML documentation to machine-native documentation formats."
sources:
  - "AIEF2025 - Design like Karpathy is watching — Zeke Sikelianos, Replicate - https://www.youtube.com/watch?v=huQPkrwVWwc"
provenance: { extracted: 0.85, inferred: 0.15, ambiguous: 0.0 }
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04T00:00:00Z
updated: 2026-07-04T00:00:00Z
relationships:
  - target: "[[concepts/llms-txt|LLMs.txt]]"
    type: related_to
  - target: "[[concepts/agent-readable-docs|Agent-Readable Docs]]"
    type: extends
  - target: "[[concepts/api-first-design-for-agents|API-First Design for Agents]]"
    type: related_to
---

## LLMs Protocol (llms.txt)

The LLMs protocol (embodied by the llms.txt convention) is an emerging standard for providing documentation in a format that language models can consume directly. Rather than elaborate HTML documentation sites with navigation, styling, and interactivity, the protocol specifies a single clean markdown file that captures the essential information about a tool, API, or service.

### Design Principles

The protocol follows a simple philosophy: strip away everything that is decorative for humans and keep only what is informative for machines. As Zeke Sikelianos summarized it, the alternative is "tired elaborate docs pages with fancy color palettes branding animations transitions dark mode" versus "one single docs markdown file and a copy to clipboard button."

### Implementation Examples

**Replicate** — Every model page on Replicate now includes a button to copy the page contents as markdown for a language model, or to send the page directly to Claude for interactive conversation.

**cog.run** — All of cog's documentation is compiled into a single llms.txt file, enabling developers to drop it into their AI editor and immediately understand how to work with a cloned model.

### The Protocol Shift

The LLMs protocol represents a fundamental shift in documentation design: from human-first to machine-first. The human-friendly rendering is still provided (via templates that render the OpenAPI schema), but the source of truth is the machine-readable format. This is a concrete implementation of the "LLM as Primary Audience" thesis.
