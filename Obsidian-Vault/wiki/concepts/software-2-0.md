---
title: "Software 2.0"
category: concepts
tags: [software-2-0, karpathy, machine-learning, code-generation, ai-programming]
summary: "Karpathy's 2019 thesis that machine learning models will write code for us and be better at it than humans. Predicted the rise of vibe coding and AI-assisted development."
sources:
  - "AIEF2025 - Design like Karpathy is watching — Zeke Sikelianos, Replicate - https://www.youtube.com/watch?v=huQPkrwVWwc"
provenance: { extracted: 0.9, inferred: 0.1, ambiguous: 0.0 }
base_confidence: 0.9
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: core
created: 2026-07-04T00:00:00Z
updated: 2026-07-04T00:00:00Z
relationships:
  - target: "[[concepts/vibe-coding|Vibe Coding]]"
    type: extends
  - target: "[[entities/andre-karpathy|Andre Karpathy]]"
    type: related_to
  - target: "[[concepts/probabilistic-software|Probabilistic Software]]"
    type: related_to
---

## Software 2.0

Software 2.0 is a term coined by Andre Karpathy approximately seven years before the AIEF2025 talk (circa 2019) to describe a paradigm in which machine learning models write code for us and are better at it than humans. It was presented as a manifesto predicting the trajectory of AI-assisted development.

### The Thesis

Traditional software (Software 1.0) is written by humans in explicit programming languages — every line of code is a deliberate instruction. Software 2.0 inverts this: the code is largely produced by machine learning models trained on vast corpora of existing code, and the "programming" happens through natural language descriptions, examples, and training data rather than explicit syntax.

### Why It Matters

Karpathy's Software 2.0 thesis predicted exactly the world we are in now: AI coding tools that generate, modify, and maintain code at scale. Vibe coding is the practical manifestation of this thesis — developers describe what they want in English and let the model produce the implementation.

### Relationship to Modern AI Coding

The Software 2.0 manifesto anticipated that the hottest new programming language would be English, a claim that has proven prescient. The gap between local prototyping and production deployment — exemplified by Karpathy's Menugen project — is itself a Software 2.0 problem: the models can generate the code, but the surrounding infrastructure (deployment, APIs, platform integrations) remains in Software 1.0 and creates friction.
