---
title: "LLMs.txt"
category: concepts
tags: [llms-txt, documentation, llm-friendly, agent-readable, api-design]
summary: "A specification for LLM-friendly documentation — a single clean markdown file that is more consumable by language models than HTML docs. Used by Replicate, cog.run, and other API platforms."
sources:
  - "AIEF2025 - Design like Karpathy is watching — Zeke Sikelianos, Replicate - https://www.youtube.com/watch?v=huQPkrwVWwc"
provenance: { extracted: 0.8, inferred: 0.2, ambiguous: 0.0 }
base_confidence: 0.9
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04T00:00:00Z
updated: 2026-07-04T00:00:00Z
relationships:
  - target: "[[concepts/agent-readable-docs|Agent-Readable Docs]]"
    type: extends
  - target: "[[concepts/api-first-design-for-agents|API-First Design for Agents]]"
    type: related_to
  - target: "[[concepts/cog-container|Cog]]"
    type: uses
  - target: "[[entities/replicate|Replicate]]"
    type: related_to
---

## LLMs.txt

LLMs.txt is a specification for providing LLM-friendly documentation as a single, clean markdown file. It represents a shift in documentation design: instead of elaborate HTML docs with fancy color palettes, branding, animations, transitions, and dark mode, the LLMs.txt approach delivers one simple markdown file with a copy-to-clipboard button.

### The Philosophy

As Zeke Sikelianos put it: "Said tired elaborate docs pages with fancy color palettes branding animations transitions dark mode wired one single docs markdown file and a copy to clip board button." The insight is that language models consume clean markdown far more effectively than rendered HTML pages.

### Use Cases

**Replicate model pages** — Any model page on Replicate now has a button to copy its contents as markdown for a language model, or to send the page directly to Claude for interactive conversation about the model. It also links to ChatGPT for similar interactions.

**cog.run** — Replicate took all of cog's documentation and compiled it into a single `llms.txt` file at `cog.run`. Developers can drop this into their editor when working with a cloned cog model they don't fully understand — the editor can consume the content and use it to write code.

**Cursor and Windsurf** — Users are encouraged to grab the llms.txt content and paste it into their AI editor so the model "knows how to run this model."

### The Primary Audience Shift

LLMs.txt embodies a broader thesis: the primary audience of your product, service, or library is now an LLM, not a human. This is a "tough pill to swallow" but represents the reality of how developers interact with APIs in the age of AI coding tools.
