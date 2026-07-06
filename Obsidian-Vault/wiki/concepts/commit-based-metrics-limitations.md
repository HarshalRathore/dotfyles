---
title: Commit-Based Metrics Limitations
category: concepts
tags:
- software-engineering
- metrics
- measurement
- productivity
- developer-metrics
aliases:
- Commit Metrics Problems
- Why Commits Don't Measure Productivity
sources:
- AIEF2025 - Does AI Actually Boost Developer Productivity? (100k Devs Study) - Yegor Denisov-Blanch, Stanford - https://www.youtube.com/watch?v=tbDDYKRFjhk
summary: Commit count, PR count, and time-between-commits are flawed productivity metrics because task size varies. AI often introduces new tasks (bug fixes for AI code), making teams appear more active whi...
provenance:
  extracted: 0.9
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.8
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
- target: '[[concepts/ai-productivity-measurement|AI Productivity Measurement]]'
  type: contradicts
- target: '[[concepts/lines-of-code-metrics|Lines of Code Metrics]]'
  type: related_to
- target: '[[concepts/rework-vs-refactoring|Rework vs Refactoring]]'
  type: related_to
---

# Commit-Based Metrics Limitations

Commit count, PR count, and time-between-commits are widely used but fundamentally flawed metrics for measuring developer productivity.

## The Core Problem

**Task size varies.** Delivering more commits does not necessarily mean more productivity. A single commit could fix a critical bug, add a major feature, or reformat whitespace. The volume of commits is decoupled from the value delivered. ^[extracted]

## The AI Compounding Effect

AI coding tools make commit-based metrics even worse:
- AI generates code quickly, increasing commit frequency
- AI-generated code introduces bugs that require fixes
- These bug-fix commits add to the total count, making the team appear more active
- The team is effectively "spinning their wheels" — more commits, same or less net value ^[extracted]

## Related Flawed Metrics

- **Commit count** — ignores task size and value
- **PR count** — same problem, plus PRs can be huge or tiny
- **Time between commits** — shorter intervals don't mean more productive work; could mean more rework
- **Lines of code** — same fundamental problem (see [[concepts/lines-of-code-metrics|Lines of Code Metrics]])

## Better Alternatives

The Stanford study proposes measuring **functionality delivered over time** using an automated model that analyzes the semantic content of code changes across dimensions of quality, maintainability, and output — rather than counting commits or lines. ^[inferred]

## Related Concepts

- [[concepts/ai-productivity-measurement|AI Productivity Measurement]] — the broader measurement challenge
- [[concepts/lines-of-code-metrics|Lines of Code Metrics]] — why LOC is also flawed
- [[concepts/rework-vs-refactoring|Rework vs Refactoring]] — rework inflates commit counts
- [[concepts/ai-developer-productivity|AI Developer Productivity]] — productivity measurement context
