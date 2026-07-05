---
title: "Demo Culture"
category: concepts
tags:
  - culture
  - prototyping
  - ai-native
  - aief2025
aliases:
  - demo-driven development
  - demo culture
summary: "An organizational culture where ideas are validated through working demos built in hours rather than memos or decks, enabled by cheap code and AI-assisted rapid prototyping."
provenance:
  extracted: 0.90
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/code-is-cheap|Code Is Cheap]]"
    type: extends
  - target: "[[concepts/compounding-engineering|Compounding Engineering]]"
    type: related_to
  - target: "[[concepts/ai-native-company|AI-Native Company]]"
    type: related_to
  - target: "[[concepts/feeling-the-material|Feeling the Material]]"
    type: related_to
---

# Demo Culture

**Demo Culture** is an organizational culture where ideas are validated through working demos built in hours rather than through memos, decks, or lengthy justification documents. It emerges naturally when code becomes cheap and AI-assisted rapid prototyping makes it feasible to build working prototypes quickly.

## The Shift from Memos to Demos

In traditional engineering organizations, the process for proposing new work typically involves:

1. Writing a memo or design document
2. Creating a deck or presentation
3. Convincing stakeholders that the idea is worth the time investment
4. Building the thing

This process exists because building something is expensive — it requires significant time, coordination, and risk. If the idea turns out to be wrong, that investment is wasted.

In a demo culture, steps 1-3 are replaced by:

1. Build a demo in a couple hours
2. Show everyone
3. Get feedback

## Why It Matters

Shipper identifies a key benefit of demo culture: **it allows you to do weirder things**. When you can feel the thing you're building, you get insights that are impossible from a memo or deck. The ability to interact with a working prototype reveals problems and opportunities that abstract discussion cannot.

## Enabling Conditions

Demo culture requires:

- **Cheap code**: When code is expensive (slow to write, hard to change), demos are too costly. When AI agents write 99% of code, the marginal cost of a prototype approaches zero.
- **AI agent availability**: Agents must be ready to execute on instructions immediately, without lengthy setup.
- **Parallel work capacity**: Engineers must be able to spin up multiple prototypes simultaneously.

## Relationship to Compounding Engineering

Demo culture and [[concepts/compounding-engineering|compounding engineering]] are mutually reinforcing. The codification step in compounding engineering makes demos faster to build (because proven patterns are already captured), and demos generate more tacit knowledge to codify.

## Sources

- AIEF2025 - Dispatch from the Future: building an AI-native Company – Dan Shipper, Every, AI & I - https://www.youtube.com/watch?v=MGzymaYBiss
