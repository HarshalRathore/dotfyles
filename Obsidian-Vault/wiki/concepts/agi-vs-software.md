---
title: AGI vs Software Engineering
category: concepts
tags:
- agi
- software-engineering
- reliability
- intelligence-vs-control
- bitter-lesson
summary: The distinction between building general intelligence (AI research goal) and building reliable software (AI engineering goal). We build software not because we lack AGI, but because we need control...
sources:
- AIEF2025 - On Engineering AI Systems that Endure The Bitter Lesson - Omar Khattab, DSPy & Databricks - https://www.youtube.com/watch?v=qdmxApz3EJI
provenance:
  extracted: 0.85
  inferred: 0.1
  ambiguous: 0.05
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
- target: '[[concepts/ai-engineering|AI Engineering]]'
  type: distinguishes_from
- target: '[[concepts/bitter-lesson|The Bitter Lesson]]'
  type: reframed_by
- target: '[[concepts/agent-autonomy|Agent Autonomy]]'
  type: relates_to
---

# AGI vs Software Engineering

The distinction between **building general intelligence** (the AI research goal) and **building reliable software** (the AI engineering goal). This distinction resolves the apparent contradiction between Sutton's Bitter Lesson and the practice of AI engineering. ^[extracted]

## The Key Insight

> We don't build software because we lack AGI. We have eight billion general intelligences already. They're unreliable because that's what intelligence is. We build software because we want reliable, robust, controllable, scalable systems. ^[extracted]

## Two Axes

| | AI Research Goal | AI Engineering Goal |
|---|-----------------|-------------------|
| **What?** | Maximize intelligence | Build reliable software |
| **How?** | Don't hard-code, leverage scale | Subtract agency in the right places |
| **Focus** | Search and learning mechanics | What to search/learn for |
| **Agent view** | More agency = better | Less agency (in right places) = better |

## Engineering as Subtraction

Engineering reliable systems is about **subtracting agency and intelligence in exactly the right places**, carefully and not restricting intelligence everywhere. This is a fundamentally different axis from the Bitter Lesson's optimization of intelligence. ^[extracted]

## Implications

1. **Prompt engineering isn't dead** — it's a form of engineering, of constraining behavior to achieve reliability
2. **Domain knowledge matters** — not for maximizing intelligence, but for building systems that work reliably for specific purposes
3. **The bitter lesson still applies** — but to the *design* of what to search/learn for, not to the *mechanics* of search and learning

## Related

- [[concepts/ai-engineering|AI Engineering]] — The discipline this distinction defines
- [[concepts/bitter-lesson|The Bitter Lesson]] — The principle this distinction resolves
- [[entities/omar-khattab|Omar Khattab]] — Who articulated this at AIEF 2025
- [[concepts/agent-autonomy|Agent Autonomy]] — The trade-off between autonomy and control
