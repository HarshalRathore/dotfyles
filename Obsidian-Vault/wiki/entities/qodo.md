---
title: "Qodo"
category: entities
tags:
  - qodo
  - ai-coding
  - code-review
  - testing
  - aief2025
  - company
  - cli
summary: AI-powered code review and testing company founded by Itamar Friedman. Focuses on the "red team" for code quality. Soft-launched a CLI tool at AIEF2025.
sources:
  - "AIEF2025 - Vibe Coding with Confidence — Itamar Friedman, Qodo - https://www.youtube.com/watch?v=n991Yxo1aOI"
provenance:
  extracted: 0.90
  inferred: 0.07
  ambiguous: 0.03
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[entities/itamar-friedman|Itamar Friedman]]"
    type: founded_by
  - target: "[[concepts/red-teaming|Red Teaming]]"
    type: implements
  - target: "[[concepts/vibe-coding|Vibe Coding]]"
    type: addresses_limitations_of
  - target: "[[concepts/cli-for-ai-tools|CLI for AI Tools]]"
    type: uses
---

# Qodo

Qodo is an AI-powered code review and testing company founded by [[entities/itamar-friedman|Itamar Friedman]]. The company positions itself as the "red team" for code quality — focusing on reviewing, testing, and ensuring code reliability rather than generating code.

## Positioning: Red Team vs Blue Team

Qodo frames the AI coding tool landscape in terms of [[concepts/red-teaming|red team]] and blue team capabilities:

- **Blue team** — Code generation and writing tools (the dominant focus of most AI coding tools)
- **Red team** — Code review, testing, and quality assurance (Qodo's focus area)

Friedman has argued that the industry has been overly focused on the blue team (writing code fast) while neglecting the red team (ensuring code is correct, maintainable, and production-ready). Qodo's products are designed to act as a tech lead perspective on code quality. ^[extracted]

## CLI Tool

At AIEF2025, Friedman announced the soft launch of a Qodo CLI tool, inviting the audience to test it and provide feedback. The tool represents Qodo's thesis that the CLI — not IDE-only tools — is the right interface for AI-powered code review and testing at scale. ^[extracted]

## Connection to Vibe Coding

Qodo's focus on the red team directly addresses a key limitation of [[concepts/vibe-coding|vibe coding]: the lack of confidence in generated code. By providing AI-powered review and testing, Qodo aims to give developers the confidence to ship vibe-coded output. ^[inferred]
