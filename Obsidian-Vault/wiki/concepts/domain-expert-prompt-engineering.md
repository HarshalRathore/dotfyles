---
title: Domain Expert Prompt Engineering
category: concepts
tags:
- prompt-engineering
- domain-experts
- human-in-the-loop
- tax
- enterprise-ai
aliases:
- Domain Expert Prompt Engineering
- Expert Prompt Engineers
- Tax Analyst Prompt Engineering
sources:
- AIEF2025 - How Intuit uses LLMs to explain taxes to millions of taxpayers - Jaspreet Singh, Intuit - https://www.youtube.com/watch?v=_zl_zimMRak
summary: Using domain experts (tax analysts) as prompt engineers, bridging the gap between regulatory knowledge and ML engineering. This allows data science teams to focus on metrics and datasets while expe...
provenance:
  extracted: 0.85
  inferred: 0.1
  ambiguous: 0.05
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/llm-evaluation-framework|LLM Evaluation Framework]]'
  type: part_of
- target: '[[concepts/llm-as-judge|LLM as Judge]]'
  type: relates_to
---

# Domain Expert Prompt Engineering

**Domain expert prompt engineering** is the practice of having subject-matter experts write and refine LLM prompts, rather than relying solely on data scientists or ML engineers. ^[extracted]

## The Intuit Model

Intuit employs tax analysts who decode IRS changes year over year. These analysts serve a dual role: ^[extracted]

1. **Domain experts** — They understand the regulatory landscape and can verify LLM outputs for accuracy.
2. **Prompt engineers** — They write and refine prompts, ensuring the LLM's output matches regulatory requirements.

## Why It Works

This approach creates a natural division of labor:

- **Domain experts** handle prompt quality and initial evaluations — their regulatory knowledge is the bottleneck, not their technical skills.
- **Data science/ML teams** focus on defining metrics, building datasets, running automated evals, and iterating on model selection.

The domain experts' prompt work becomes the foundation for automated evaluation systems, including LLM-as-judge models trained on their golden datasets. ^[extracted]

## Broader Implications

Domain expert prompt engineering is particularly valuable in regulated industries (tax, healthcare, legal) where:
- Output accuracy is non-negotiable
- Regulatory knowledge changes frequently
- The domain experts already exist as part of the organization

## Related

- [[concepts/llm-evaluation-framework|LLM Evaluation Framework]] — Domain experts are Phase 1 and 2 of the eval system
- [[concepts/llm-as-judge|LLM as Judge]] — Expert-curated golden datasets power LLM judges
- [[concepts/agent-evaluation-role|Agent Evaluation Role]] — Human's shifted responsibility from doing to evaluating
