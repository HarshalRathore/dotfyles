---
title: "Inference-Time Scaling"
category: concepts
tags: [inference, scaling, compute, search, llm, bitter-lesson]
summary: "Spending more compute at test time to find better answers through exploration — the modern LLM mapping of Sutton's 'search' from the Bitter Lesson."
sources:
  - "AIEF2025 - On Engineering AI Systems that Endure The Bitter Lesson - Omar Khattab, DSPy & Databricks - https://www.youtube.com/watch?v=qdmxApz3EJI"
  - "The Bitter Lesson — Rich Sutton - https://www.incompleteideas.net/IncIdeas/BitterLesson.html"
provenance:
  extracted: 0.60
  inferred: 0.35
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/search-and-learn|Search and Learn]]"
    type: maps_to
  - target: "[[concepts/bitter-lesson|The Bitter Lesson]]"
    type: exemplifies
  - target: "[[concepts/ai-engineering|AI Engineering]]"
    type: constrains
---

# Inference-Time Scaling

**Inference-time scaling** is the modern LLM practice of spending more compute at test time to find better answers through exploration. It is the LLM-era mapping of **Sutton's "search"** from The Bitter Lesson. ^[inferred]

## From Sutton's Search to Modern LLMs

In Sutton's Bitter Lesson, **search** means exploring large spaces of possibilities to find better outcomes. In modern LLM practice, this maps to:

- **Chain-of-thought reasoning**: exploring multiple reasoning paths before committing to an answer
- **Tree search / self-play**: exploring solution spaces during inference
- **Speculative decoding**: generating and verifying multiple candidates
- **Re-ranking**: scoring multiple generated outputs to pick the best

All of these trade additional inference compute for better quality — exactly the pattern Sutton identified. ^[inferred]

## The Trade-Off

Inference-time scaling works because it leverages computation rather than domain knowledge. But from an AI engineering perspective (per Khattab's reframing), the question is: **what are we searching for?** The engineer's job is to define the right search space and objective, not to engineer the search mechanism itself. ^[extracted]

## Related

- [[concepts/search-and-learn|Search and Learn]] — Sutton's original framing
- [[concepts/bitter-lesson|The Bitter Lesson]] — The principle inference-time scaling exemplifies
- [[concepts/ai-engineering|AI Engineering]] — The discipline that must decide what to search for
