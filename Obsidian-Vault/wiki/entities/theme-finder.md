---
title: "Theme Finder"
category: entities
tags: [tool, open-source, ai-evaluation, government, text-analysis, theme-extraction]
aliases: [theme finder]
sources:
  - "AIEF2025 - Why your product needs an AI product manager, and why it should be you — James Lowe, i.AI - https://www.youtube.com/watch?v=xzJdSi2Tsqw"
provenance:
  extracted: 0.9
  inferred: 0.1
  ambiguous: 0.0
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[entities/incubator-for-ai]]"
    type: created_by
  - target: "[[entities/consult-gov-uk]]"
    type: derived_from
  - target: "[[concepts/evaluate-ai-early]]"
    type: demonstrates
---

# Theme Finder

**Theme Finder** is an open-source AI package built by the **Incubator for AI** (i.AI) for analyzing government consultation responses — large public surveys with free-text responses that attract hundreds of thousands of submissions. ^[extracted]

## Origin

Theme Finder emerged from the **Consult** project, where i.AI initially built a product around existing NLP techniques like BERTopic. Testing with real users revealed inaccurate and inconsistent results that wouldn't pass the high legal threshold required for government policy decisions. ^[extracted]

The team pivoted to prioritize AI capability evaluation first:

1. Collected data from real users
2. Generated synthetic data to create evaluation datasets
3. Optimized the pipeline against those evaluations
4. Tested outputs with real users

This evaluation-first approach produced a package whose output was comparable to human analysis but **1,000× faster and 400× cheaper**. ^[extracted]

## Impact

By prioritizing the AI capability and evaluating it early, i.AI discovered key points in the pipeline where human input and human-in-the-loop were most valuable. This insight fundamentally changed the product from what they originally envisioned. ^[extracted]

Theme Finder has been evaluated on live government consultations, and one of the evaluation datasets even appeared on the BBC front page. ^[extracted]

## Related

- [[entities/incubator-for-ai]] — Creator of Theme Finder
- [[entities/consult-gov-uk]] — The consultation analysis project that led to Theme Finder
- [[concepts/evaluate-ai-early]] — The core lesson Theme Finder demonstrates
- [[concepts/human-in-the-loop]] — Human input points discovered through evaluation
