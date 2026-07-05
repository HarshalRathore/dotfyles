---
title: "DSPy"
category: entities
tags: [framework, nlp, dspy, programming-over-prompting, databricks]
summary: "A programming framework for building AI systems with language models, created by Omar Khattab. Emphasizes programmatic structure over manual prompt engineering."
sources:
  - "AIEF2025 - On Engineering AI Systems that Endure The Bitter Lesson - Omar Khattab, DSPy & Databricks - https://www.youtube.com/watch?v=qdmxApz3EJI"
provenance:
  extracted: 0.85
  inferred: 0.15
  ambiguous: 0.00
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: core
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[entities/omar-khattab|Omar Khattab]]"
    type: implements
  - target: "[[concepts/prompt-engineering-is-dead|Prompt Engineering is Dead]]"
    type: replaces
  - target: "[[concepts/ai-engineering|AI Engineering]]"
    type: enables
  - target: "[[concepts/bitter-lesson|The Bitter Lesson]]"
    type: applies
---

# DSPy

**DSPy** is a programming framework for building AI systems with language models, created by **Omar Khattab**. It represents a shift from prompt engineering to programmatic specification of what LM systems should do.

## Philosophy: Programming Over Prompting

DSPy is built on the principle that AI systems should be *programmed* rather than *prompted*. Instead of manually crafting prompts for each LM call, DSPy lets developers specify the structure and constraints of what the system should accomplish, and the framework handles the optimization. ^[extracted]

This aligns with Omar Khattab's AIEF 2025 thesis: the engineer's job is not to engineer the specifics of search and learning, but to engineer *what the system is supposed to be doing* and *what it should learn for*. DSPy embodies this by letting you declare the *what* while the framework handles the *how*. ^[inferred]

## Relationship to the Bitter Lesson

Khattab's talk frames DSPy as a practical application of the Bitter Lesson to AI engineering: rather than hard-coding domain knowledge into prompts (which gets brittle as models change), DSPy structures systems so that learning and search can do the heavy lifting. ^[inferred]

## Related

- [[entities/omar-khattab|Omar Khattab]] — Creator of DSPy
- [[entities/databricks|Databricks]] — Where Khattab works on DSPy
- [[concepts/prompt-engineering-is-dead|Prompt Engineering is Dead]] — The paradigm DSPy replaces
- [[concepts/ai-engineering|AI Engineering]] — The discipline DSPy serves
