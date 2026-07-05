---
title: "LLMs Turn Big Text Into Small Text"
category: concepts
tags:
  - llm
  - summarization
  - structured-output
  - llamaindex
  - integration
summary: The principle that LLMs excel at turning large bodies of unstructured text into smaller, structured representations — making them integration tools rather than chatbots.
provenance:
  extracted: 0.75
  inferred: 0.20
  ambiguous: 0.05
lifecycle: draft
base_confidence: 0.65
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/rag-evaluation|RAG]]"
    type: related_to
  - target: "[[concepts/beyond-chatbots]]"
    type: related_to
  - target: "[[concepts/llm-as-summarizer]]"
    type: extends
---

# LLMs Turn Big Text Into Small Text

The principle that LLMs excel at turning a large body of text into a smaller one, but are not good at taking a small prompt and generating a large body of text. This asymmetry is the fundamental value of LLMs for enterprise integration. ^[extracted]

## Core Insight

The largest addressable surface for LLMs is not chatbots but integration into existing software — using LLMs to handle messy inputs (unstructured documents, complex spreadsheets, irregular data) and produce structured data that feeds into regular software pipelines. ^[extracted]

## Implications for Agent Design

This principle explains why [[concepts/document-toolbox|document toolboxes]] and [[concepts/complex-document-understanding|complex document parsing]] are more valuable than chatbot interfaces:

1. **Input compression** — LLMs reduce massive unstructured documents to structured representations agents can reason about
2. **Structured output** — LLMs produce JSON, tables, and other formats that integrate with existing software
3. **Integration over conversation** — The value is in data transformation, not dialogue

## Relation to RAG

RAG will never die because larger contexts don't change the fact that it's always cheaper and faster to send less, more specific context. The LLM's ability to compress big text into small text is what makes retrieval worthwhile — you retrieve, then compress. ^[extracted]

## Related

- [[concepts/llm-as-summarizer]] — LLMs as summarization engines
- [[concepts/beyond-chatbots]] — LLMs as integration tools
- [[concepts/rag-evaluation|RAG]] — Retrieval + compression
- [[concepts/document-toolbox]] — Document compression as agent tool

## Coding Agent Application

[[entities/robert-brennan|Robert Brennan]] (OpenHands) applies this principle to code editing: contemporary coding agents use diff-based editors (find-and-replace) rather than full-file regeneration. For a 1,000-line file where only one line changes, full-file regeneration wastes tokens printing all unchanged lines. Diff-based editing specifies only the changes needed, saving significant tokens and reducing context window usage. ^[extracted]
