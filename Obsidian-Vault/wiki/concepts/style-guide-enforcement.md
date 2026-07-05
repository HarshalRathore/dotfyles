---
title: "Style Guide Enforcement"
category: concepts
tags: [style-guide, code-quality, ai-agents, linting, aief2025]
summary: Enforcing coding standards through automated tools and real-time suggestions — keeping both human developers and AI agents on a consistent, error-preventing path.
sources:
  - "AIEF2025 - Beyond the Prototype: Using AI to Write High-Quality Code - Josh Albrecht, Imbue - https://www.youtube.com/watch?v=x_1EumTaXeE"
provenance: { extracted: 0.85, inferred: 0.15, ambiguous: 0.0 }
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05T00:00:00Z
updated: 2026-07-05T00:00:00Z
relationships:
  - target: "[[concepts/immutable-functional-style|Immutable Functional Style]]"
    type: enforces
  - target: "[[concepts/linter-integration|Linter Integration]]"
    type: extends
  - target: "[[concepts/shift-left-ai-quality|Shift-Left AI Quality]]"
    type: supports
---

# Style Guide Enforcement

**Style guide enforcement** is the practice of maintaining consistent coding standards through automated tools and real-time suggestions, applied to both human developers and AI coding agents.^[extracted]

## Why Style Guides Matter for AI Agents

Style guides are important even without AI agents — they ensure consistency across human-written code. For AI agents, style guides serve a dual purpose: they maintain code consistency and they prevent entire classes of errors through structural constraints.^[extracted]

## In Sculptor

Josh Albrecht (Imbue) describes how [[entities/sculptor|Sculptor]] provides style guide suggestions in real-time. For example, the system highlights when a class could be made immutable to prevent race conditions — a suggestion that comes directly from the team's style guide.^[extracted]

These suggestions help keep the AI agent on a "reasonable path" by providing constraints that prevent the agent from generating code that violates established patterns.^[extracted]

## Custom Style Guides for AI Agents

Imbue is developing style guides specifically tailored to AI agents, recognizing that agents have different error patterns than humans. A custom style guide for AI agents would make it easier for them to avoid the most common mistakes, such as introducing race conditions or violating architectural conventions.^[extracted]

## Linter Integration

Style guide enforcement in Sculptor extends to linter integration — automated tools (Ruff, MyPy, PyLint, Pyre) that detect and automatically fix style and correctness issues. Unlike traditional linter workflows where humans must fix numerous minor issues, AI agents are well-suited to automatically resolving these problems.^[extracted]

Sculptor tracks what lint issues existed before the agent ran and what issues were created after, preventing the agent from introducing new problems even if it doesn't achieve a zero-lint state.^[extracted]
