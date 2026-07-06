---
title: Self-Reported Productivity
category: concepts
tags:
- software-engineering
- measurement
- surveys
- productivity
- developer-metrics
aliases:
- Self-Reported Productivity
- Survey-Based Productivity
sources:
- AIEF2025 - Does AI Actually Boost Developer Productivity? (100k Devs Study) - Yegor Denisov-Blanch, Stanford - https://www.youtube.com/watch?v=tbDDYKRFjhk
summary: Self-reported productivity surveys are poor predictors of actual developer productivity. Stanford's study found developers misjudge their productivity by ~30 percentile points, and only 1 in 3 esti...
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
- target: '[[concepts/commit-based-metrics-limitations|Commit-Based Metrics Limitations]]'
  type: related_to
- target: '[[concepts/ai-developer-productivity|AI Developer Productivity]]'
  type: related_to
---

# Self-Reported Productivity

Self-reported productivity surveys are a widely used but fundamentally unreliable method for measuring developer productivity.

## Stanford's Experiment

The Stanford team ran a controlled experiment with 43 developers:
1. Asked each developer to self-rate their productivity in 5 percentile buckets (0–100) relative to the global mean/median
2. Compared self-ratings to measured productivity from Git data
3. Results showed self-assessment correlated almost as poorly as flipping a coin with actual productivity ^[extracted]

## Key Findings

| Metric | Result |
|--------|--------|
| Productivity misjudgment | ~30 percentile points |
| Within-quartile accuracy | 1 in 3 developers |
| Correlation with actual productivity | Near zero (coin-flip level) |

## Implications

- **Surveys should not be used to measure developer productivity**, much less the impact of AI on developers
- Surveys are valuable for surfacing morale and other issues that cannot be derived from metrics
- The Dunning-Kruger effect is likely at play: less productive developers overestimate their output more than highly productive ones

## Related Concepts

- [[concepts/ai-productivity-measurement|AI Productivity Measurement]] — why objective measurement matters
- [[concepts/commit-based-metrics-limitations|Commit-Based Metrics Limitations]] — another flawed metric approach
- [[concepts/ai-developer-productivity|AI Developer Productivity]] — broader productivity context
