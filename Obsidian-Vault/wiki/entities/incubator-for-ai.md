---
title: Incubator for AI
category: entities
tags:
- organization
- uk-government
- ai-public-sector
- experimentation
- product-building
aliases:
- i.ai
- incubator for ai
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
- target: '[[entities/james-lowe]]'
  type: employs
- target: '[[entities/consult-gov-uk]]'
  type: created
- target: '[[entities/minute-ai-transcription]]'
  type: created
- target: '[[entities/theme-finder]]'
  type: created
summary: Incubator for AI
---

# Incubator for AI

The **Incubator for AI** (i.AI) is a small team of AI experts within the **UK government**, created by 10 Downing Street to deliver public good using AI through experimentation and product building. ^[extracted]

## Mission

i.AI operates at an exceptionally wide remit. The UK government delivers for over 70 million citizens, spending over a trillion pounds, and i.AI's work spans the full range from frontline services to the Prime Minister's meetings. This breadth necessitates strong product judgment about what to build. ^[extracted]

## Projects

### Consult / Theme Finder

i.AI built a prototype for analyzing government consultations — large public surveys with free-text responses that run hundreds per year and attract hundreds of thousands of responses. The initial approach used existing NLP techniques (such as BERTopic), but testing revealed inaccurate and inconsistent results that wouldn't meet legal thresholds. ^[extracted]

The team pivoted to prioritize AI capability first: they got real user data, generated synthetic data to create evaluations, optimized against those evals, and tested outputs with real users. The resulting package, **Theme Finder**, produces outputs comparable to human analysis but 1,000× faster and 400× cheaper. It has been open-sourced for others to use. ^[extracted]

### Minute

An AI transcription tool designed for government use cases where secure transcription and summarization could be transformational — particularly for frontline staff spending time on administration and paperwork instead of their core work. i.AI explored many feature variations using AI coding assistance, then stripped back to focus on what worked. ^[extracted]

## Open Source

Theme Finder has been open-sourced by i.AI, making their evaluation-driven approach to government consultation analysis available to others. ^[extracted]

## Related

- [[entities/james-lowe]] — Head of AI Engineering at i.AI
- [[entities/consult-gov-uk]] — Government consultation analysis project
- [[entities/theme-finder]] — Open-source AI analysis package
- [[entities/minute-ai-transcription]] — AI transcription tool
- [[concepts/ai-product-manager]] — the organizational mindset i.AI exemplifies
