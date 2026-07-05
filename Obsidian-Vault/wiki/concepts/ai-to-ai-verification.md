---
title: "AI-to-AI Verification"
category: concepts
tags: [ai-verification, code-quality, ai-agents, trust, aief2025]
summary: Using one AI system to evaluate and verify the output of another AI system — building trust through automated, systematic evaluation rather than manual inspection.
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
  - target: "[[concepts/vibe-coding-gap|Vibe Coding Gap]]"
    type: solves
  - target: "[[concepts/defect-based-quality|Defect-Based Quality]]"
    type: applies
  - target: "[[concepts/llm-as-judge-evaluation|LLM as Judge Evaluation]]"
    type: relates_to
---

# AI-to-AI Verification

**AI-to-AI verification** is the practice of using one AI system to evaluate, review, and verify the output of another AI system. This approach builds trust in AI-generated code through automated, systematic evaluation rather than manual human inspection.^[extracted]

## The Trust Problem

Josh Albrecht (Imbue) frames the central challenge of AI coding not as generating code, but as building **user trust** in that code. The goal is to allow another AI system to examine the generated code and answer questions like: Are there race conditions? Is an API key leaked? Does the code violate architectural constraints?^[extracted]

## Problem-Focused Quality

The verification approach is fundamentally problem-focused: high-quality code is defined as code with few or no problems. This aligns with the academic definition of software quality, which measures quality by defect count, time-to-fix, and the effectiveness of detection techniques.^[extracted]

Instead of trying to verify that code is "correct" in an absolute sense, AI-to-AI verification identifies specific problem classes:

- **Concurrency bugs** — Race conditions, shared mutable state^[extracted]
- **Security issues** — Leaked API keys, hardcoded secrets^[extracted]
- **Architectural violations** — Code that doesn't fit the project's established patterns^[extracted]
- **Style violations** — Code that deviates from the team's style guide^[extracted]

## Three-Layer Detection

AI-to-AI verification in Sculptor operates through three complementary layers:

1. **Linters** — Automated tools (Ruff, MyPy, PyLint, Pyre) that detect error classes automatically^[extracted]
2. **Tests** — Writing and running tests against generated code^[extracted]
3. **LLM review** — Asking an LLM to review the generated code for correctness and quality^[extracted]

Each layer catches different classes of problems, and together they provide comprehensive coverage.^[inferred]
