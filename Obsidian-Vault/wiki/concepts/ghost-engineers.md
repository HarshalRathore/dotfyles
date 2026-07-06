---
title: Ghost Engineers
category: concepts
tags:
- software-engineering
- productivity
- management
- measurement
- ai-productivity
aliases:
- Ghost Engineer
- Ghost Developers
sources:
- AIEF2025 - Does AI Actually Boost Developer Productivity? (100k Devs Study) - Yegor Denisov-Blanch, Stanford - https://www.youtube.com/watch?v=tbDDYKRFjhk
summary: A 'ghost engineer' is a software engineer who collects a paycheck but does essentially no work. Stanford's study found ~10% of engineers in a 50k dataset fit this pattern — surprising to some, unsu...
provenance:
  extracted: 0.9
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
- target: '[[concepts/ai-productivity-measurement|AI Productivity Measurement]]'
  type: related_to
- target: '[[concepts/commit-based-metrics-limitations|Commit-Based Metrics Limitations]]'
  type: related_to
- target: '[[entities/stanford|Stanford University]]'
  type: discovered_by
---

# Ghost Engineers

A **ghost engineer** is a software engineer who collects a paycheck but does essentially no work — producing no meaningful code, commits, or deliverables. The term was coined by a Stanford research group analyzing large-scale developer activity data.

## Key Finding

Stanford's study of ~50,000 software engineers found that roughly **10% were ghost engineers**. This finding was amplified when [[entities/elon-musk|Elon Musk]] retweeted it. ^[extracted]

## Implications

### For Engineering Leadership
- Traditional management structures often leave leaders as "the last person to know" when something is wrong with their engineering team
- [[entities/simon-from-industry|Simon from industry]] (ex-CTO of a unicorn with 700 developers) was always the last to know about team issues, which motivated his interest in better measurement
- The finding suggests that large engineering organizations may have significant hidden inefficiency

### For AI Productivity Measurement
- Ghost engineers complicate productivity baselines — if 10% of a team produces nothing, AI tools applied to that team may show artificially inflated gains
- The Stanford study's focus on private repositories helps distinguish ghost behavior from genuine contribution patterns

## Related Concepts

- [[concepts/ai-productivity-measurement|AI Productivity Measurement]] — why accurate measurement matters
- [[concepts/commit-based-metrics-limitations|Commit-Based Metrics Limitations]] — why commit counts miss ghost behavior
- [[concepts/rework-vs-refactoring|Rework vs Refactoring]] — distinguishing wasteful from productive activity
