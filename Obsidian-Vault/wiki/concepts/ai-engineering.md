---
title: "AI Engineering"
category: concepts
tags: [ai-engineering, software-engineering, reliability, bitter-lesson, engineering-principles]
summary: "The discipline of building reliable, robust, controllable, and scalable AI systems. Distinguished from AI research: engineering subtracts agency in the right places rather than maximizing intelligence."
sources:
  - "AIEF2025 - On Engineering AI Systems that Endure The Bitter Lesson - Omar Khattab, DSPy & Databricks - https://www.youtube.com/watch?v=qdmxApz3EJI"
  - "AIEF2025 - Define AI Engineer — Greg Brockman, OpenAI & Jensen Huang - https://www.youtube.com/watch?v=..."
provenance:
  extracted: 0.75
  inferred: 0.20
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: core
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/bitter-lesson|The Bitter Lesson]]"
    type: reframed_by
  - target: "[[concepts/agi-vs-software|AGI vs Software Engineering]]"
    type: distinguished_from
  - target: "[[entities/omar-khattab|Omar Khattab]]"
    type: discussed_by
  - target: "[[entities/dspy|DSPy]]"
    type: enables
---

# AI Engineering

**AI Engineering** is the discipline of building **reliable, robust, controllable, and scalable** systems that use AI/ML components. It is fundamentally different from AI research: where research seeks to maximize intelligence, engineering seeks to maximize reliability. ^[extracted]

## The Core Distinction

AI researchers and AI engineers have different goals:

| AI Research | AI Engineering |
|-------------|---------------|
| Maximize intelligence | Build reliable software |
| Ability to figure things out fast | Robust, controllable, scalable systems |
| Don't hard-code anything | Subtract agency in the right places |
| Leverage search and learning at scale | Engineer *what* to search/learn for |

## Why We Build Software

Khattab's key insight: we don't build software because we lack AGI. We have billions of unreliable general intelligences already (humans). We build software because we need systems that are:

- **Reliable**: they work consistently
- **Robust**: they handle edge cases
- **Controllable**: we can reason about their behavior
- **Scalable**: they work at scale

Engineering is about **subtracting agency and intelligence in exactly the right places**, carefully and not restricting intelligence everywhere. ^[extracted]

## The Bitter Lesson for Engineers

The Bitter Lesson applies to AI engineering, but differently:

- Don't hard-code domain knowledge prematurely (it constrains the system)
- Engineer *what* the system should do and *what* it should learn
- Don't engineer the specifics of search and learning — engineer the objectives ^[extracted]

## The Scramble Problem

A practical challenge unique to AI engineering: model APIs change under the hood constantly. New LLMs drop weekly with different trade-offs (cost, speed, quality). Prompting guides get longer for "closer to AGI" models. Model providers change behavior without version bumps. This creates a constant scramble that traditional software engineering doesn't face (where hardware changes every 2-3 years). ^[extracted]

## Related

- [[concepts/bitter-lesson|The Bitter Lesson]] — The principle AI engineering reframes
- [[entities/omar-khattab|Omar Khattab]] — Articulated the distinction at AIEF 2025
- [[entities/dspy|DSPy]] — A programming framework embodying AI engineering principles
- [[concepts/premature-optimization|Premature Optimization]] — The parallel risk in both domains
- [[concepts/model-update-velocity|Model Update Velocity]] — The practical challenge AI engineers face
