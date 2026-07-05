---
title: "Evaluate AI Early"
category: concepts
tags: [ai-evaluation, ai-product-development, prototyping, experimentation, eval-driven-development]
aliases: [evaluate ai early, resolve ai uncertainties early, ai eval first]
sources:
  - "AIEF2025 - Why your product needs an AI product manager, and why it should be you — James Lowe, i.AI - https://www.youtube.com/watch?v=xzJdSi2Tsqw"
provenance:
  extracted: 0.8
  inferred: 0.2
  ambiguous: 0.0
base_confidence: 0.9
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: core
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/ai-product-manager]]"
    type: core_skill_of
  - target: "[[concepts/feature-exploration-strategy]]"
    type: contrasts_with
  - target: "[[concepts/ai-capability-first]]"
    type: implements
---

# Evaluate AI Early

**Evaluate AI early** is the principle that AI capabilities should be evaluated and validated before building a full product around them. The goal is to resolve AI uncertainties early through evaluations and tests with real users, rather than building a product that turns out to be impossible or wrong. ^[extracted]

## The Problem

When building AI products, teams face a critical uncertainty: is the AI capability good enough for the intended use case? Traditional product development assumes the technology works and focuses on building the right product. With AI, the technology itself may not work for the specific task. ^[extracted]

The common pitfall is starting in "product building mode" — building a product around existing AI techniques without first validating that those techniques work well enough for the real-world use case. ^[extracted]

## The Approach

1. **Get real data** — Collect data from actual users and real scenarios
2. **Generate synthetic data** — Augment with synthetic data to create evaluation datasets
3. **Build evaluations** — Create evals that measure the specific quality needed
4. **Optimize against evals** — Iteratively improve the AI pipeline using those evaluations
5. **Test with real users** — Validate outputs with actual users throughout

This approach ensures you know the AI capability works before investing in product development. ^[extracted]

## Case Study: Theme Finder

The **Incubator for AI** initially built a government consultation analysis product using existing NLP techniques (BERTopic). Real-user testing revealed inaccurate, inconsistent results that wouldn't pass legal thresholds. ^[extracted]

They pivoted to evaluate-first: collected real data, generated synthetic eval data, optimized against evals, and tested with users. The result was a package producing output comparable to humans but **1,000× faster and 400× cheaper**. ^[extracted]

Critically, the evaluation process revealed where human-in-the-loop input was most valuable in the pipeline — fundamentally changing the product from what they originally envisioned. ^[extracted]

## Benefits

Evaluating AI early prevents two costly mistakes:

1. **Wasting time building something that's not possible** — The AI capability may not work for the task
2. **Wasting time building the wrong product** — Understanding the AI's actual capabilities shapes what product to build

## Related

- [[concepts/ai-product-manager]] — Core skill of the AI product manager
- [[concepts/ai-capability-first]] — Prioritizing AI capability over product design
- [[concepts/feature-exploration-strategy]] — The complementary "go wide" approach
- [[concepts/human-in-the-loop]] — Insight discovered through evaluation
- [[entities/theme-finder]] — Real-world example of evaluate-early in action
