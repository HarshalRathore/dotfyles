---
title: "Defect-Based Quality"
category: concepts
tags: [code-quality, software-engineering, defect-metrics, aief2025]
summary: Defining software quality through the academic lens of defect counting — measuring quality by the number of defects, time to fix them, and technique effectiveness at catching them.
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
  - target: "[[concepts/shift-left-ai-quality|Shift-Left AI Quality]]"
    type: applies_to
  - target: "[[concepts/ai-to-ai-verification|AI-to-AI Verification]]"
    type: measured_by
  - target: "[[concepts/defect-prevention|Defect Prevention]]"
    type: relates_to
---

# Defect-Based Quality

**Defect-based quality** is the academic and engineering approach to defining software quality through defect metrics: the number of defects present, the time required to fix each defect, and the effectiveness of different techniques at catching defects.^[extracted]

## Academic Foundation

Josh Albrecht (Imbue) grounds his approach to AI coding quality in the established academic framework for software quality measurement. In this framework:

- **Quality = few defects** — High-quality software is defined negatively: it's the absence of problems rather than the presence of positive attributes.^[extracted]
- **Defect count is the primary metric** — The total number of defects in a codebase is the fundamental measure of quality.^[extracted]
- **Time-to-fix matters** — How long it takes to identify and resolve a defect is a secondary but important quality dimension.^[extracted]
- **Technique effectiveness** — Different quality techniques (linting, testing, review) are evaluated by how many defects they catch.^[extracted]

## Implications for AI Coding

This defect-based view has direct implications for how AI coding tools should be designed:

1. **Focus on problem identification** — Rather than trying to make AI agents "produce good code," focus on identifying problems in the code they produce.^[extracted]
2. **Shift-left detection** — Problems identified earlier are cheaper to fix, both for humans and agents.^[extracted]
3. **Prevention over detection** — The best quality strategy is preventing problems before they occur (through planning, specs, style guides), not just detecting them afterward.^[extracted]

## "No Problems = High Quality"

Albrecht's simplification — "if there's no problems, then that's probably high quality code" — captures the essence of defect-based quality. This definition is intentionally pragmatic: it doesn't require proving code is "correct" in some absolute sense, only that it has no identifiable problems.^[extracted]
