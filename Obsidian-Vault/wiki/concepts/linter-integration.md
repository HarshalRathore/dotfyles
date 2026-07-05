---
title: "Linter Integration"
category: concepts
tags: [linting, automated-fixing, code-quality, ai-coding, aief2025]
summary: Integrating linters (Ruff, MyPy, PyLint, Pyre) into the AI coding workflow with automatic error detection and fixing, tracking before/after states to prevent regression.
sources:
  - "AIEF2025 - Beyond the Prototype: Using AI to Write High-Quality Code - Josh Albrecht, Imbue - https://www.youtube.com/watch?v=x_1EumTaXeE"
provenance: { extracted: 0.9, inferred: 0.1, ambiguous: 0.0 }
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05T00:00:00Z
updated: 2026-07-05T00:00:00Z
relationships:
  - target: "[[concepts/style-guide-enforcement|Style Guide Enforcement]]"
    type: implements
  - target: "[[concepts/shift-left-ai-quality|Shift-Left AI Quality]]"
    type: supports
  - target: "[[concepts/ai-to-ai-verification|AI-to-AI Verification]]"
    type: layer_of
---

# Linter Integration

**Linter integration** is the practice of embedding automated linting tools (Ruff, MyPy, PyLint, Pyre, etc.) directly into the AI coding workflow, with automatic error detection and fixing capabilities.^[extracted]

## The Traditional Linter Problem

In normal development, linters are often described as "obnoxious" because they generate many small errors that don't necessarily cause runtime problems but require significant human effort to fix. This creates churn and extra work that developers avoid, leading to the common state where few codebases achieve zero linting errors.^[extracted]

## The AI Advantage

AI systems are uniquely well-suited to fixing lint errors because:

1. **They understand the patterns** — Lint errors are typically syntactic or stylistic, well within the capability of modern LLMs.^[extracted]
2. **They don't get fatigued** — Unlike humans, AI agents don't experience fatigue from fixing hundreds of minor issues.^[extracted]
3. **They can fix in context** — The agent can fix lint errors while maintaining awareness of the surrounding code structure.^[inferred]

## Before/After Tracking

Sculptor implements a key innovation: tracking what lint issues existed before the agent started and what issues existed after it ran. This allows developers to:

- **Prevent regression** — Ensure the AI agent doesn't introduce new lint errors^[extracted]
- **Measure improvement** — See whether the agent's changes improved or worsened the codebase's lint state^[extracted]
- **Avoid perfectionism** — Not require zero lint errors (which may be impractical) but at least prevent the agent from making things worse^[extracted]

## Tools Mentioned

The talk references several linting tools: Ruff, MyPy, PyLint, and Pyre. These cover different categories of errors: syntax/style (Ruff), type checking (MyPy), code quality (PyLint), and flow analysis (Pyre).^[extracted]
