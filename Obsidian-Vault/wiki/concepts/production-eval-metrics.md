---
title: Production Eval Metrics
category: concepts
tags:
- evals
- metrics
- production
- online-evals
- braintrust
sources:
- AIEF2025 - Why should anyone care about Evals? — Manu Goyal, Braintrust - https://www.youtube.com/watch?v=jJ45Yz1lJao
provenance:
  extracted: 0.85
  inferred: 0.1
  ambiguous: 0.05
base_confidence: 0.8
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/eval-offline-online-duality|Eval Offline/Online Duality]]'
  type: relates_to
- target: '[[concepts/eval-data-flywheel|Eval Data Flywheel]]'
  type: enables
- target: '[[concepts/eval-production-metrics|Eval Production Metrics]]'
  type: extends
summary: Production Eval Metrics
---

# Production Eval Metrics

The principle that the same evaluation metrics used in offline evals should be applied to online production data, creating a unified measurement framework that connects development-time validation with production-time monitoring. ^[extracted]

## The Metric Consistency Principle

Most teams use different metrics for development and production. Manu Goyal's key insight: if you apply the same metrics from offline to online, you get actionable signal about which production examples are most valuable for the next iteration. ^[extracted]

This consistency means:

- Offline eval scores are directly comparable to online production scores
- Production data can be ranked by the same criteria used to evaluate development changes
- The most problematic production cases are objectively identified, not subjectively guessed ^[extracted]

## From Signal to Action

The production metrics don't just tell you what's happening — they tell you what to work on next. Examples with the worst production scores become the highest-priority additions to the offline eval dataset, closing the loop between production monitoring and development iteration. ^[extracted]

## Related

- [[concepts/eval-offline-online-duality|Eval Offline/Online Duality]] — The framework this principle operates within
- [[concepts/eval-data-flywheel|Eval Data Flywheel]] — The mechanism powered by metric consistency
- [[concepts/eval-production-metrics|Eval Production Metrics]] — The concrete metrics (latency, cost, tokens) captured in production
- [[concepts/online-evals|Online Evals]] — The production-side evaluation mode
