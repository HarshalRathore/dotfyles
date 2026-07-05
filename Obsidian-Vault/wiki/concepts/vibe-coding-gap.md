---
title: "Vibe Coding Gap"
category: concepts
tags: [vibe-coding, prototype-to-production, ai-coding, code-quality, aief2025]
summary: The gap between AI-generated prototype code and production-ready code — the awkward choice between manually reviewing every line or blindly merging.
sources:
  - "AIEF2025 - Beyond the Prototype: Using AI to Write High-Quality Code - Josh Albrecht, Imbue - https://www.youtube.com/watch?v=x_1EumTaXeE"
provenance: { extracted: 0.8, inferred: 0.2, ambiguous: 0.0 }
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05T00:00:00Z
updated: 2026-07-05T00:00:00Z
relationships:
  - target: "[[concepts/vibe-coding|Vibe Coding]]"
    type: addresses_limitation_of
  - target: "[[concepts/ai-to-ai-verification|AI-to-AI Verification]]"
    type: solved_by
  - target: "[[concepts/shift-left-ai-quality|Shift-Left AI Quality]]"
    type: relates_to
---

# Vibe Coding Gap

The **vibe coding gap** is the disconnect between AI-generated prototype code and code that is safe to ship to production. When a developer uses a vibe coding tool to generate code, the output often works for the prototype but contains problems that make it unsuitable for production environments.^[extracted]

## The Problem

Josh Albrecht (Imbue) describes the current state as an awkward binary choice: either manually review every line of the AI-generated diff yourself, or blindly hit merge and hope for the best. Neither option is satisfactory — manual review defeats the productivity benefit of AI coding, while blind merging risks shipping broken code.^[extracted]

The gap widens as projects move away from greenfield prototyping into larger, more established codebases where architectural decisions, security constraints, and team conventions matter.^[extracted]

## The Third Option: AI-to-AI Verification

The gap is addressable through a third option: using another AI system to evaluate the generated code. Instead of a human reviewing every line, an AI system can check for specific problem classes — race conditions, leaked API keys, architectural violations — and provide a structured assessment of code quality.^[extracted]

This approach shifts the paradigm from "human reviews AI code" to "AI verifies AI code," building trust through automated, systematic evaluation rather than manual inspection.^[inferred]

## Relationship to Vibe Coding

The vibe coding gap is the primary limitation that prevents vibe coding from being viable for production software. [[concepts/vibe-coding|Vibe coding]] excels at rapid prototyping but produces code without the confidence needed for deployment. Bridging this gap is the central challenge for AI coding tools aiming at production use.^[inferred]
