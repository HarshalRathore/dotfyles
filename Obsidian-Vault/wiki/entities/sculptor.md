---
title: "Sculptor"
category: entities
tags: [tool, coding-agent, ai-agent, imbue, developer-tools, aief2025]
summary: Imbue's experimental coding agent environment for synchronous, immediate-feedback code generation. Focuses on identifying problems in AI-generated code before production.
sources:
  - "AIEF2025 - Beyond the Prototype: Using AI to Write High-Quality Code - Josh Albrecht, Imbue - https://www.youtube.com/watch?v=x_1EumTaXeE"
provenance: { extracted: 0.95, inferred: 0.05, ambiguous: 0.0 }
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05T00:00:00Z
updated: 2026-07-05T00:00:00Z
relationships:
  - target: "[[entities/imbue|Imbue]]"
    type: developed_by
  - target: "[[concepts/shift-left-ai-quality|Shift-Left AI Quality]]"
    type: implements
  - target: "[[concepts/plan-then-code-workflow|Plan-Then-Code Workflow]]"
    type: supports
---

# Sculptor

Sculptor is an experimental coding agent environment built by [[entities/imbue|Imbue]], led by CTO [[entities/josh-albrecht|Josh Albrecht]]. It is currently in research preview.^[extracted]

## Purpose

Sculptor addresses the gap between AI-generated prototype code and production-ready code. Unlike pull request review tools that operate late in the development process, Sculptor provides synchronous, immediate feedback — as soon as a line is changed or code is generated, the system evaluates it for problems.^[extracted]

## Core Capabilities

### Prevention Strategies

Sculptor implements four prevention strategies for AI-generated code quality:

1. **Learning** — Integrated research capability lets users ask the agent to investigate existing technologies and solutions before attempting to build, preventing re-invention.^[extracted]
2. **Planning** — System prompt manipulation forces the agent to generate a plan before writing any code. Users can switch prompts to toggle between planning mode and coding mode.^[extracted]
3. **Spec-first** — Specifications and documentation are first-class artifacts. Sculptor detects when code and docs have become inconsistent, reducing the maintenance burden.^[extracted]
4. **Style guide enforcement** — Custom style guide suggestions help keep the agent on a reasonable path, including recommendations like making classes immutable to prevent race conditions.^[extracted]

### Detection Strategies

Three detection mechanisms are built into Sculptor:

1. **Linters** — Automated tools (Ruff, MyPy, PyLint, Pyre) integrated for automatic error detection and fixing. Sculptor tracks what lint issues existed before the agent ran and what issues were created after, preventing regression.^[extracted]
2. **Tests** — Writing and running tests against generated code.^[extracted]
3. **LLM review** — Asking an LLM to review the generated code for correctness.^[extracted]

## Design Philosophy

Sculptor's approach rejects optimizing for large context windows, speed, or cost — problems Albrecht expects to be solved by model improvements within 3–24 months. Instead, it focuses on domain-specific problems: understanding and evaluating AI-generated code for correctness, security, and architectural quality.^[extracted]
