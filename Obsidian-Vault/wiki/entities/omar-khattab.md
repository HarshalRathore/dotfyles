---
title: "Omar Khattab"
category: entities
tags: [person, ai-engineering, dspy, databricks, nlp, ml-systems]
summary: "NLP researcher, creator of DSPy, and AI systems engineer at Databricks. Known for engineering-focused approaches to building reliable AI systems."
sources:
  - "AIEF2025 - On Engineering AI Systems that Endure The Bitter Lesson - Omar Khattab, DSPy & Databricks - https://www.youtube.com/watch?v=qdmxApz3EJI"
provenance:
  extracted: 0.90
  inferred: 0.10
  ambiguous: 0.00
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: core
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[entities/databricks|Databricks]]"
    type: works_at
  - target: "[[entities/dspy|DSPy]]"
    type: implements
  - target: "[[concepts/bitter-lesson|The Bitter Lesson]]"
    type: related_to
  - target: "[[concepts/ai-engineering|AI Engineering]]"
    type: related_to
---

# Omar Khattab

NLP researcher and AI systems engineer, currently at **Databricks**. Creator of **DSPy**, a framework for programming rather than prompting language model systems.

## The Bitter Lesson and AI Engineering

In his AIEF 2025 talk "On Engineering AI Systems that Endure: The Bitter Lesson," Khattab addresses a central tension in AI engineering: if Sutton's Bitter Lesson says that domain knowledge and human ingenuity are outperformed by scale (search + learning), what is AI engineering even about? ^[extracted]

Khattab resolves this by distinguishing two different goals:

1. **Building intelligence** (the AI researcher's goal): maximize the ability to figure things out in new environments fast — here, the Bitter Lesson applies: don't hard-code, leverage scale. ^[extracted]
2. **Building reliable software** (the AI engineer's goal): create robust, controllable, scalable systems that solve specific problems — here, the Bitter Lesson is reframed. We *subtract* agency and intelligence in the right places to achieve reliability. ^[extracted]

## Key Insight: Engineering vs Intelligence

Khattab argues that we don't build software because we lack AGI — we build software because we have billions of unreliable general intelligences (humans) and need systems that are reliable, robust, controllable, and scalable. Engineering is about carefully subtracting agency and intelligence in exactly the right places, not restricting intelligence everywhere. ^[extracted]

## Premature Optimization as the Bitter Lesson for Software

Khattab draws a parallel between the Bitter Lesson and Donald Knuth's "premature optimization is the root of all evil" from structured programming. Domain knowledge and human ingenuity are not harmful — they're harmful when applied prematurely, constraining the system based on poor understanding. ^[extracted]

He illustrates this with an opaque square-root computation from an old machine — code that is neither future-proof nor performant, hardcoding machine-specific values that would break on different architectures. ^[extracted]

## Implications for AI Engineering

The practical takeaway: search and learning work best when you search *for the right thing* and learn *for the right purpose*. AI engineering is about engineering what the system should do and what it should learn, not about engineering the specifics of search and learning itself. ^[extracted]

## Related

- [[concepts/bitter-lesson|The Bitter Lesson]] — Sutton's essay that frames the talk
- [[entities/dspy|DSPy]] — Khattab's framework for programmatic LM systems
- [[entities/databricks|Databricks]] — Current employer
- [[entities/rich-sutton|Rich Sutton]] — Author of The Bitter Lesson
- [[concepts/premature-optimization|Premature Optimization]] — The software engineering parallel
