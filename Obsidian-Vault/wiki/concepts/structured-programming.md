---
title: "Structured Programming"
category: concepts
tags: [structured-programming, knuth, premature-optimization, software-engineering, programming-paradigms]
summary: "A programming paradigm emphasizing clear structure, control flow, and avoidance of premature optimization. Donald Knuth's 'premature optimization is the root of all evil' is a foundational principle."
sources:
  - "AIEF2025 - On Engineering AI Systems that Endure The Bitter Lesson - Omar Khattab, DSPy & Databricks - https://www.youtube.com/watch?v=qdmxApz3EJI"
provenance:
  extracted: 0.60
  inferred: 0.35
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: peripheral
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/premature-optimization|Premature Optimization]]"
    type: relates_to
  - target: "[[concepts/bitter-lesson|The Bitter Lesson]]"
    type: parallel_in_ai
---

# Structured Programming

**Structured programming** is a programming paradigm emphasizing clear structure, disciplined control flow, and the avoidance of premature optimization. Donald Knuth's principle "premature optimization is the root of all evil" is a foundational insight from this tradition. ^[extracted]

## Knuth's Insight

> "Premature optimization is the root of all evil."

This principle warns against optimizing code before understanding the problem well enough. Hard-coding values, machine-specific assumptions, and micro-optimizations based on incomplete understanding lead to fragile, non-scalable code. ^[extracted]

## Khattab's Parallel to the Bitter Lesson

Khattab draws a direct parallel: ^[extracted]

| Structured Programming | AI Research |
|----------------------|-------------|
| Premature optimization | Hard-coding domain knowledge |
| Knuth's insight | Sutton's Bitter Lesson |
| Machine-specific values | Expert heuristics |
| Fragile, non-scalable | Stuck, non-scaling |

In both cases, human ingenuity is not harmful — it's harmful when applied **prematurely**, constraining the system based on poor understanding. ^[extracted]

## Khattab's Example

Khattab shows an opaque square-root computation from an old machine that hardcodes floating-point values. This code is:

- Not future-proof (breaks on different architectures)
- Probably slower than built-in instructions
- An example of premature optimization / domain-specific hard-coding ^[extracted]

## Related

- [[concepts/premature-optimization|Premature Optimization]] — Knuth's principle
- [[concepts/bitter-lesson|The Bitter Lesson]] — Sutton's parallel insight
- [[entities/omar-khattab|Omar Khattab]] — Who drew the parallel
- [[concepts/ai-engineering|AI Engineering]] — The discipline that must apply both principles
