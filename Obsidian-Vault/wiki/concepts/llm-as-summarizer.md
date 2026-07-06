---
title: LLM as Summarizer
tags:
- agent
- ai
- design-pattern
- llm
- principle
sources:
- 'https://www.youtube.com/watch?v=72xxwkd8jrk'
summary: Design principle that LLMs excel at turning a large body of text into a smaller body of text (summarization, extraction, structuring), not the reverse. Guides what applications are worth building w...
provenance:
  extracted: 0.7
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
category: concepts
---

# LLM as Summarizer

The LLM as summarizer principle, articulated by [[entities/laurie-voss|Laurie Voss]] at AI Engineer World's Fair 2025, states that LLMs are fundamentally good at turning a large body of text into a smaller body of text, and not good at taking a small prompt and turning it into a large body of text. This serves as a design heuristic for choosing appropriate LLM applications.

## Core Principle

A good LLM use case is any situation where the model is required to turn a large body of text into a smaller body of text:
- Interpreting a contract → a decision
- Processing an invoice → structured fields
- Applying regulations → a compliance verdict
- Summarizing documents → a report
- Answering a question → a concise answer

## What This Means for Application Design

This principle implies that the most productive use of LLMs is in the [[concepts/beyond-chatbots|beyond chatbots]] pattern — integrating LLMs into existing software to transform unstructured data into structured data that traditional code can then process, rather than using LLMs as open-ended content generators. ^[inferred]

## Relationship to Other Concepts

- [[concepts/unstructured-data-extraction]] — Direct application of the summarizer principle: extracting structured fields from messy documents
- [[concepts/llm-as-computation-engine]] — Related framing: LLMs as a flexible computation primitive rather than a knowledge store
- [[concepts/beyond-chatbots]] — The architectural pattern this principle supports
- [[concepts/agent-design-patterns]] — The patterns that implement this principle in production

## Open Questions

- Does this principle degrade with stronger models? As models get better at long-form generation, does the heuristic shift?
- Are there counterexamples where small→large transformation works well (e.g., code generation from a spec)?

## Sources

- [[references/agent-design-patterns-production-laurie-voss-llamaindex]] — Talk at AI Engineer World's Fair 2025
