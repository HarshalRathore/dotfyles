---
title: "Rework vs Refactoring"
category: concepts
tags:
  - software-engineering
  - ai-productivity
  - code-quality
  - measurement
  - rework
  - refactoring
aliases:
  - Rework
  - Rework vs Refactoring
sources:
  - "AIEF2025 - Does AI Actually Boost Developer Productivity? (100k Devs Study) - Yegor Denisov-Blanch, Stanford - https://www.youtube.com/watch?v=tbDDYKRFjhk"
summary: "In AI productivity measurement, 'rework' means altering recently-written code (wasteful), while 'refactoring' means altering existing code without changing behavior (potentially beneficial). AI implementation immediately increases rework, masking true productivity gains."
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/ai-productivity-measurement|AI Productivity Measurement]]"
    type: used_by
  - target: "[[concepts/ai-developer-productivity|AI Developer Productivity]]"
    type: related_to
  - target: "[[concepts/commit-based-metrics-limitations|Commit-Based Metrics Limitations]]"
    type: related_to
---

# Rework vs Refactoring

In the context of [[concepts/ai-productivity-measurement|AI productivity measurement]], distinguishing between rework and refactoring is critical for understanding AI's true impact on developer output.

## Definitions

| Category | Description | Assessment |
|----------|-------------|------------|
| **Added Functionality** | New features and capabilities | Productive |
| **Removed Code** | Dead code elimination | Productive |
| **Refactoring** | Altering existing code without changing behavior | Can be wasteful or beneficial |
| **Rework** | Altering code that is much more recent (AI-generated) | Wasteful |

## Key Insight

From the Stanford study: rework and refactoring both alter existing code, but **rework alters code that is much more recent** — meaning it's AI-generated code that needs fixing. Refactoring could be wasteful or beneficial depending on context. ^[extracted]

## The AI Rework Effect

When a team implements AI coding tools:
1. AI generates code quickly, increasing apparent output volume
2. The AI-generated code introduces bugs and issues
3. Developers must go back and fix the AI's mistakes
4. This **rework** inflates total code changes while reducing net value

The speaker notes: "you feel like you're delivering more code because there's just more volume of code being written, more commits, more stuff being pushed. But not all of that is actually useful." ^[extracted]

## Measurement Implications

A productivity measurement system that only counts total output (commits, lines changed, etc.) will miss rework entirely and overstate AI's value. The Stanford model decomposes output into these four categories to reveal the true net impact.

## Related Concepts

- [[concepts/ai-productivity-measurement|AI Productivity Measurement]] — methodology for decomposing output
- [[concepts/ai-developer-productivity|AI Developer Productivity]] — broader productivity topic
- [[concepts/commit-based-metrics-limitations|Commit-Based Metrics Limitations]] — why volume metrics are misleading
