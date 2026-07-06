---
title: Consult (UK Government)
category: entities
tags:
- project
- uk-government
- consultation
- public-policy
- text-analysis
- nlp
aliases:
- consult
- uk government consultation
sources:
- AIEF2025 - Why your product needs an AI product manager, and why it should be you — James Lowe, i.AI - https://www.youtube.com/watch?v=xzJdSi2Tsqw
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
- target: '[[entities/incubator-for-ai]]'
  type: created_by
- target: '[[entities/theme-finder]]'
  type: produced
summary: Consult (UK Government)
---

# Consult (UK Government)

**Consult** was a project by the **Incubator for AI** (i.AI) to apply AI to the analysis of UK government consultations — large public surveys with free-text responses. ^[extracted]

## Context

Every time the UK government undertakes a major policy change, it has a legal duty to gather public input through consultations. Hundreds of these run each year, some attracting hundreds of thousands of responses. Analyzing these responses manually can take months and cost millions of pounds. ^[extracted]

This is a prototypical use case for AI — large volumes of unstructured text requiring theme extraction and analysis. ^[extracted]

## Evolution

The project illustrates a common pitfall in AI product development: under pressure to deliver, i.AI initially built a product around existing NLP techniques (BERTopic) without first validating the AI capability. Real-user testing revealed inaccurate and inconsistent results that wouldn't meet legal thresholds. ^[extracted]

The team then pivoted to an evaluation-first approach, which produced **Theme Finder** — an open-source package that is 1,000× faster and 400× cheaper than human analysis. ^[extracted]

## Related

- [[entities/incubator-for-ai]] — Project owner
- [[entities/theme-finder]] — The package that replaced the initial Consult prototype
- [[concepts/evaluate-ai-early]] — The lesson Consult demonstrates
