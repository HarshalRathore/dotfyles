---
title: In-Memory Retrieval
category: concepts
tags: [in-memory, context-window, rag, retrieval, llm, aief2025]
aliases: [context-window retrieval, whole-doc retrieval, in-context retrieval, no-rag]
summary: "The simplest RAG approach: bring all documents into the LLM context window without any retrieval step. Works when document count is small; fails when context is polluted or exceeds window size."
sources:
  - "AIEF2025 - Layering every technique in RAG, one query at a time — David Karam, Pi Labs (fmr. Google Search) - https://www.youtube.com/watch?v=w9u11ioHGA0"
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/rag-pipeline-architecture|RAG Pipeline Architecture]]"
    type: replaces
  - target: "[[concepts/context-window-size|Context Window Size]]"
    type: limited_by
  - target: "[[concepts/complexity-adjusted-impact]]"
    type: easy_high_impact
---

# In-Memory Retrieval

In-memory retrieval is the simplest possible approach to grounding an LLM on documents: bring all documents into the context window without any retrieval step. There is no vector database, no BM25 index, no ranking — just the raw documents passed directly to the LLM. ^[extracted]

## How It Works

Given a set of documents and a user query:
1. Load all documents into the prompt
2. Pass the documents plus query to the LLM
3. The LLM generates an answer using whatever context fits in its window

No retrieval step at all. The "retrieval" is the entire document set. ^[extracted]

## When It Works

In-memory retrieval works well when:
- **Document count is small** — NotebookLM, for example, accepts up to 50 documents but works best with a handful
- **Documents are short** — Individual documents fit comfortably within the context window
- **All documents are relevant** — No need to filter because everything is included

Karam cites NotebookLM as a strong example: you put in five documents, ask questions about them, and don't need any RAG at all. The LLM can reason over the full context. ^[extracted]

## When It Fails

In-memory retrieval breaks in two scenarios: ^[extracted]

1. **Context pollution** — Too many documents in the context window makes it hard for the LLM to focus on the relevant information. Irrelevant documents add noise that degrades answer quality.
2. **Window size limits** — Documents simply don't fit in the context window. This is the hard ceiling: if your corpus exceeds the model's context length, in-memory retrieval is physically impossible.

These failure modes are the signal that it's time to move to the next technique (BM25 or vector retrieval). ^[extracted]

## Position in the Technique Catalog

In-memory retrieval is the first (simplest) technique in Karam's quality engineering loop. It's the baseline against which all other techniques are compared. If in-memory retrieval works for your use case, you don't need any of the more complex techniques. ^[extracted]

The decision tree is:
1. Can all documents fit in the context window without pollution? → Use in-memory retrieval
2. If not, do keyword-style queries dominate? → Add BM25
3. If not, do natural language queries dominate? → Add vector retrieval
4. If not, is relevance scoring insufficient? → Add re-ranking

## Related

- [[concepts/rag-pipeline-architecture|RAG Pipeline Architecture]] — the standard architecture that in-memory retrieval replaces
- [[concepts/context-window-size|Context Window Size]] — the physical constraint
- [[concepts/complexity-adjusted-impact]] — in-memory retrieval is the easiest technique
- [[concepts/quality-engineering-loop]] — the process that starts with in-memory as baseline
- [[references/aief2025-layering-every-technique-in-rag-david-karam|AIEF2025 - Layering every technique in RAG]] — the source talk
