---
title: "AI Red Team vs Blue Team"
category: concepts
tags:
  - red-teaming
  - blue-team
  - code-review
  - testing
  - aief2025
  - qodo
  - itamar-friedman
  - ai-safety
summary: Qodo's framing of AI coding tools as either blue team (code generation) or red team (reviewing, testing, quality assurance). The argument that the industry over-indexes on blue team while neglecting red team capabilities.
sources:
  - "AIEF2025 - Vibe Coding with Confidence — Itamar Friedman, Qodo - https://www.youtube.com/watch?v=n991Yxo1aOI"
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/red-teaming|Red Teaming]]"
    type: extends
  - target: "[[concepts/vibe-coding-with-confidence|Vibe Coding with Confidence]]"
    type: enables
  - target: "[[concepts/vibe-coding|Vibe Coding]]"
    type: addresses_limitations_of
  - target: "[[entities/qodo|Qodo]]"
    type: implements
---

# AI Red Team vs Blue Team

Qodo's framing of AI coding tools into **blue team** (code generation) and **red team** (reviewing, testing, quality assurance) categories. This distinction was introduced by Itamar Friedman at AIEF2025 as a way to analyze the AI coding tool landscape. ^[extracted]

## Blue Team — Code Generation

Blue team AI tools help developers write code:

- Autocomplete and code completion
- Natural language to code generation
- Feature implementation through prompts
- The dominant focus of most AI coding tools today

This is the "writing" side of software development — the [[concepts/vibe-coding|vibe coding]] paradigm that has captured the most attention. ^[extracted]

## Red Team — Review and Testing

Red team AI tools act as the quality assurance layer:

- Code review — reviewing generated code with a tech lead perspective
- Testing — automated validation of generated code
- Bug detection and fixing
- Ensuring code meets quality standards before production

Friedman argues the industry has been "shamelessly" focused on blue team tools while neglecting red team capabilities. Qodo's focus is on the red team — providing AI tools that act as a tech lead reviewing code and ensuring quality. ^[extracted]

## Why Red Team Matters for Vibe Coding

[[concepts/vibe-coding|Vibe coding]] produces code fast but without confidence. The [[concepts/vibe-coding-with-confidence|vibe coding with confidence]] thesis requires strong red team capabilities — automated review and testing — to make vibe-coded output production-ready. Without the red team, vibe coding remains risky for enterprise use. ^[inferred]

## The Holistic View

Friedman's argument extends beyond a simple blue/red dichotomy: the goal is not to replace blue team tools with red team tools, but to have AI in every part of the SDLC — and then orchestrate them into [[concepts/holistic-ai-sdlc|holistic workflows]] where review and testing happen as code is written (shift-left), not after. ^[inferred]
