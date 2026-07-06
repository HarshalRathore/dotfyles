---
title: AI Productivity Measurement
category: concepts
tags:
- ai
- productivity
- measurement
- software-engineering
- methodology
- developer-metrics
aliases:
- AI Productivity Measurement
- Measuring AI Impact on Developers
sources:
- AIEF2025 - Does AI Actually Boost Developer Productivity? (100k Devs Study) - Yegor Denisov-Blanch, Stanford - https://www.youtube.com/watch?v=tbDDYKRFjhk
summary: The challenge of accurately measuring AI's impact on developer productivity. Stanford's study critiques three flawed approaches (commit-based metrics, greenfield experiments, self-reported surveys)...
provenance:
  extracted: 0.75
  inferred: 0.2
  ambiguous: 0.05
base_confidence: 0.8
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: core
created: 2026-07-05
updated: 2026-07-05
relationships:
- target: '[[concepts/commit-based-metrics-limitations|Commit-Based Metrics Limitations]]'
  type: contradicts
- target: '[[concepts/self-reported-productivity|Self-Reported Productivity]]'
  type: contradicts
- target: '[[concepts/greenfield-vs-brownfield|Greenfield vs Brownfield]]'
  type: related_to
- target: '[[concepts/rework-vs-refactoring|Rework vs Refactoring]]'
  type: related_to
---

# AI Productivity Measurement

Measuring AI's impact on developer productivity is notoriously difficult. The Stanford 100k Devs study identifies three major methodological flaws in existing approaches and proposes a Git-based automated model as an alternative.

## Three Flawed Approaches

### 1. Commit/PR/Task-Based Metrics
Studies measuring productivity via commit count, PR count, or time-between-commits suffer from a fundamental flaw: **task size varies**. More commits does not equal more productivity. AI often introduces new tasks (bug fixes for AI-generated code), so teams may appear more active while actually "spinning their wheels." ^[extracted]

### 2. Greenfield Experiments
Lab studies that split developers into AI/non-AI groups on greenfield (from-scratch) tasks show AI dramatically outperforming non-AI teams. This is misleading because AI excels at greenfield boilerplate, but **most software engineering is not greenfield** — it involves existing codebases with dependencies and context. ^[extracted]

### 3. Self-Reported Surveys
The Stanford team ran an experiment with 43 developers asking them to self-rate productivity. Results:
- Self-assessment correlated almost as poorly as flipping a coin with actual productivity
- Developers misjudged their productivity by ~30 percentile points
- Only 1 in 3 estimated their productivity within their quartile
- Surveys are valuable for morale but should not measure developer productivity ^[extracted]

## Proposed Methodology

The Stanford team built an automated productivity measurement model that:

1. **Plugs into Git** and analyzes source code changes per commit
2. **Quantifies changes** across multiple dimensions (quality, maintainability, output)
3. **Aggregates by author/SHA/timestamp** to compute productivity as **functionality delivered over time**, not lines of code or commit count

The model was trained on expert panel evaluations — the team found that engineering experts agree with each other when evaluating code objectively, and that panel judgments predict real-world outcomes. The automated model correlates well with expert panels while being fast, scalable, and affordable.

## Output Decomposition

Productivity is decomposed into four categories:
- **Added functionality** — new features and capabilities
- **Removed code** — dead code elimination
- **Refactoring** — altering existing code without changing behavior
- **Rework** — altering recent code (wasteful)

This decomposition reveals that AI's apparent output gains may be partially or wholly consumed by rework. ^[inferred]

## Related Concepts

- [[concepts/commit-based-metrics-limitations|Commit-Based Metrics Limitations]] — why commits don't measure productivity
- [[concepts/self-reported-productivity|Self-Reported Productivity]] — surveys are poor predictors
- [[concepts/greenfield-vs-brownfield|Greenfield vs Brownfield]] — AI's context advantage
- [[concepts/rework-vs-refactoring|Rework vs Refactoring]] — wasteful vs. beneficial changes
- [[concepts/ai-developer-productivity|AI Developer Productivity]] — broader topic
