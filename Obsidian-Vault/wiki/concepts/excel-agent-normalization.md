---
title: Excel Agent Normalization
category: concepts
tags:
- excel
- agent
- data-normalization
- llamaindex
- spreadsheet
summary: An AI agent approach to normalizing unstructured Excel spreadsheets into clean 2D tables, enabling downstream querying and analysis that RAG and text-as-CSV cannot handle.
provenance:
  extracted: 0.8
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.65
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/document-toolbox]]'
  type: implements
- target: '[[concepts/parsing]]'
  type: extends
- target: '[[concepts/rag-evaluation|RAG]]'
  type: contradicts
sources: []
---

# Excel Agent Normalization

An AI agent approach to normalizing unstructured Excel spreadsheets into clean, queryable 2D tables. Introduced by [[entities/jerry-liu|Jerry Liu]] at AI Engineer World's Fair 2025 as part of LlamaIndex's document toolbox. ^[extracted]

## The Problem

Much knowledge work happens in spreadsheets (Microsoft Excel, Google Sheets, Numbers). However, typical enterprise spreadsheets are not structured 2D tables — they have gaps in rows and columns, merged cells, mixed content, and semantic structure that goes beyond tabular layout. Neither RAG nor text-as-CSV techniques work on these because they assume regular tabular structure. ^[extracted]

## The Approach

The Excel agent performs two operations:

1. **Normalization** — Takes an un-normalized spreadsheet and transforms it into a clean 2D table, understanding the semantic structure of the spreadsheet (column meanings, row groupings, data relationships)
2. **Agentic QA** — Allows natural language questioning over both the original un-normalized and the normalized versions of the spreadsheet

## Baseline Comparison

The best baseline for spreadsheet understanding is not RAG or text-as-CSV — both perform poorly. The next best baseline is an LLM with a code interpreter tool, achieving ~70-75% accuracy on synthetic Excel sheets. LlamaIndex's Excel agent achieves higher accuracy on a private dataset of synthetic Excel sheets by deeply understanding the semantic structure rather than just the layout. ^[extracted]

## Integration with Document Toolbox

Excel normalization is a specialized tool within the [[concepts/document-toolbox|document toolbox]], complementing traditional document parsing, extraction, and indexing capabilities. It addresses a specific gap: spreadsheet data that cannot be handled by generic document parsers or vector retrieval. ^[extracted]

## Related

- [[concepts/document-toolbox]] — The broader toolbox that includes Excel capabilities
- [[concepts/complex-document-understanding]] — Parsing challenge for complex documents
- [[concepts/parsing]] — General document parsing
- [[entities/jerry-liu]] — Announced at AIEF2025
- [[entities/llamaindex]] — Implementation platform
