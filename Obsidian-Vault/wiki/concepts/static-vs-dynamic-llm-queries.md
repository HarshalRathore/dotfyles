---
title: Static vs Dynamic LLM Queries
category: concepts
tags:
- llm
- queries
- prompts
- tax
- enterprise-ai
aliases:
- Static vs Dynamic Queries
- Static Dynamic LLM
- Prepared vs Open-ended Queries
sources:
- AIEF2025 - How Intuit uses LLMs to explain taxes to millions of taxpayers - Jaspreet Singh, Intuit - https://www.youtube.com/watch?v=_zl_zimMRak
summary: 'Two query patterns for LLM applications: static queries (prepared-statement style with known context) and dynamic queries (open-ended user questions). Static queries are easier to evaluate and opti...'
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
- target: '[[concepts/retrieval-augmented-generation|Retrieval-Augmented Generation]]'
  type: relates_to
- target: '[[concepts/rag-pipeline-architecture|RAG Pipeline Architecture]]'
  type: relates_to
---

# Static vs Dynamic LLM Queries

**Static vs Dynamic LLM Queries** distinguishes two patterns for framing LLM interactions in production applications. ^[extracted]

## Static Queries

Static queries are **prepared-statement style** prompts where:

- The prompt structure is fixed and known in advance
- User-specific data (e.g., tax information) is injected as variables
- The system knows what the user is looking at (e.g., their tax refund summary)
- Evaluation is straightforward because the input space is bounded

Example: Explaining a user's tax refund by injecting their deductions, credits, standard deduction, and W-2 data into a pre-defined prompt template. ^[extracted]

## Dynamic Queries

Dynamic queries are **open-ended** interactions where:

- The user asks an arbitrary question
- The system must determine the right answer dynamically
- More flexible prompting and retrieval are needed
- Evaluation is harder due to the unbounded input space

Example: A user asking "Can I deduct my dog?" — the system must interpret the question, retrieve relevant tax code information, and generate a contextual answer. ^[extracted]

## Implications

- **Static queries** are better suited for fine-tuning, as the input space is narrow and predictable.
- **Dynamic queries** benefit more from RAG and retrieval-augmented approaches.
- Intuit uses Claude primarily for static queries and OpenAI for dynamic Q&A. ^[extracted]

## Related

- [[concepts/retrieval-augmented-generation|Retrieval-Augmented Generation]] — Dynamic queries often need RAG
- [[concepts/rag-pipeline-architecture|RAG Pipeline Architecture]] — Retrieval infrastructure for dynamic queries
- [[concepts/llm-evaluation-framework|LLM Evaluation Framework]] — Static queries are easier to evaluate
