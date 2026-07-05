---
title: "Spec-First Development"
category: concepts
tags: [specifications, documentation, ai-agents, ai-coding, aief2025]
summary: Treating specifications and documentation as first-class artifacts in AI-assisted development, with automated consistency checking between code and docs.
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
  - target: "[[concepts/plan-then-code-workflow|Plan-Then-Code Workflow]]"
    type: relates_to
  - target: "[[concepts/vibe-coding|Vibe Coding]]"
    type: contrasts_with
  - target: "[[concepts/shift-left-ai-quality|Shift-Left AI Quality]]"
    type: supports
---

# Spec-First Development

**Spec-first development** is the practice of treating specifications and documentation as first-class artifacts in the development workflow, with automated tools that maintain consistency between code and documentation.^[extracted]

## The Problem with Specs in AI Coding

Josh Albrecht (Imbue) identifies a key reason developers avoid writing specs: it's annoying to keep them up to date, and the time spent typing out documentation is wasted if the code changes. This problem is amplified with AI coding agents because:

1. **Agents lack context** — AI coding agents don't have access to a developer's email, Slack, or other communication channels where requirements are discussed.^[extracted]
2. **Agents need explicit context** — Even if they had access, agents cannot reliably translate informal communication into code without structured specifications.^[extracted]

## Automated Spec Maintenance

Sculptor addresses the spec maintenance burden through automated inconsistency detection:

- **Code-doc drift detection** — The system detects when generated code has become inconsistent with existing documentation, reducing the barrier to maintaining accurate docs.^[extracted]
- **Spec conflict detection** — The system can highlight inconsistencies or conflicts between different parts of the specification, making it easier to ensure the system design is coherent from the start.^[extracted]

By automating the maintenance burden, spec-first development becomes practical rather than aspirational. Developers are more likely to write and maintain documentation when the system helps them keep it accurate.^[inferred]

## Why Specs Matter for AI Agents

Structured specifications serve as the primary mechanism for communicating project context to AI coding agents. Without specs, agents operate in a vacuum, potentially producing code that is internally correct but architecturally misaligned with the project's requirements and conventions.^[inferred]
