---
title: Evidence-Based QA Generation
category: concepts
tags:
- evals
- synthetic-data
- qa-generation
- hallucination-prevention
- rag
aliases:
- evidence-based question generation
sources:
- 'AIEF2025 - Evaluating AI Search: A Practical Framework for Augmented AI Systems — Quotient AI + Tavily - https://www.youtube.com/watch?v=wRJD0inpmjU'
provenance:
  extracted: 0.9
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
- target: '[[concepts/dynamic-eval-sets]]'
  type: used_in
- target: '[[concepts/synthetic-data-vs-metrics]]'
  type: relates_to
summary: Evidence-Based QA Generation
---

# Evidence-Based QA Generation

**Evidence-based QA generation** is a method for creating evaluation question-answer pairs where each answer must be grounded in specific, traceable source evidence. Rather than generating Q&A from abstract knowledge, the system is constrained to produce answers only from retrieved documents, with explicit citations to the source material. ^[extracted]

## How It Works

In the Tavily dynamic eval set agent, evidence-based QA generation is the key step in the pipeline: ^[extracted]

1. The agent generates broad web search queries for targeted domains
2. It aggregates grounding documents from multiple real-time AI search providers
3. It generates Q&A pairs where the agent is **obliged to generate answer context** — explicitly stating which sources were used and which evidence from those sources supports each answer

## Benefits

Evidence-based QA generation provides two key advantages: ^[extracted]

1. **Increased reliability** — By constraining answers to documented evidence, the generated Q&A pairs are more trustworthy and less prone to hallucination
2. **Traceability** — You can always go back and check which sources were used and which specific evidence from those sources was used to generate each Q&A pair

## Relationship to Synthetic Data

Evidence-based QA generation is a form of [[concepts/synthetic-data-vs-metrics|synthetic data]] creation, but with the critical constraint that synthetic answers must be grounded in real retrieved documents rather than model-internal knowledge. This bridges the gap between fully synthetic data (which may hallucinate) and fully hand-curated data (which is expensive and limited in scope). ^[inferred]

## Related

- [[concepts/dynamic-eval-sets]] — Primary application
- [[entities/tavily]] — Implementation
- [[concepts/synthetic-data-vs-metrics]] — Synthetic data category
- [[concepts/hallucination-prevention]] — Hallucination reduction benefit
