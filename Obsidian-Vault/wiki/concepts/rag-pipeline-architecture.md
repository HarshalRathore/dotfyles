---
title: "RAG Pipeline Architecture"
category: concepts
tags: [rag, retrieval, vector-database, llm, architecture, pipeline]
summary: "Standard RAG architecture: a vector database retrieves relevant documents for a query, and an LLM generates an answer grounded in that retrieved context."
sources:
  - "AIEF2025 - Prompt Engineering is Dead — Nir Gazit, Traceloop - https://www.youtube.com/watch?v=jvKf6zXrNO4"
  - "AIEF2025 - The State of AI Powered Search and Retrieval — Frank Liu, MongoDB (prev Voyage AI) - https://www.youtube.com/watch?v=pIPtpBZ6TKk"
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-04
updated: 2026-07-05
relationships:
  - target: "[[entities/chroma]]"
    type: uses
  - target: "[[entities/openai]]"
    type: uses
  - target: "[[concepts/retrieval-evaluation-isolation]]"
    type: extends
  - target: "[[concepts/llm-as-judge-evaluation]]"
    type: related_to
  - target: "[[concepts/agentic-retrieval]]"
    type: extends
---

# RAG Pipeline Architecture

The standard architecture for retrieval-augmented generation consists of two main steps:

1. **Retrieval**: Given a user query, search a [[entities/chroma|vector database]] (e.g., Chroma) to find relevant documents. Documents are embedded and indexed by semantic similarity.
2. **Generation**: Pass the query plus retrieved context to an LLM (e.g., [[entities/openai|OpenAI]]) which generates an answer grounded in the retrieved documents.

This architecture was the subject of [[entities/nir-gazit|Nir Gazit]]'s AIEF2025 talk, where he used a simple RAG pipeline as the subject of his auto-improving agent experiment. The pipeline is described as "super simple" — the easiest drug you can think of — yet even this simple system required significant effort to get working well.

The RAG pipeline can be evaluated at multiple levels: individual retrieval quality (does the vector DB return the right documents?), individual generation quality (does the LLM use context well?), and end-to-end quality (does the final answer satisfy the user's question?). This multi-level evaluation capability is what enables [[concepts/llm-as-judge-evaluation|LLM-as-judge]] evaluation and [[concepts/auto-improving-agent-loop|auto-improving agent loops]].

## Agentic Evolution

The standard RAG pipeline is evolving into [[concepts/agentic-retrieval|agentic retrieval]], where the search system participates in a feedback loop with the LLM. Instead of a single query → retrieve → generate cycle, the agent can decompose queries, issue multiple parallel searches, expand queries based on intermediate results, and iterate. This is particularly important for complex queries (e.g., "X's Q4 2024 earnings" → four separate quarterly queries) and marks 2025 as "the year of the agents" where retrieval systems must support conversational, decomposed queries. ^[extracted]

## Quality Engineering Loop

David Karam (Pi Labs, fmr. Google Search) proposes a quality engineering loop for systematically improving RAG quality: define outcomes → baseline → loss analysis → technique selection → re-baseline. The critical insight is that teams should start with outcomes and loss analysis, not techniques. Without knowing what's broken, you cannot know whether BM25, vector retrieval, or re-ranking is the right choice. ^[extracted]

Within this loop, technique selection is guided by complexity-adjusted impact (difficulty × impact): easy-high-impact techniques like BM25 are implemented immediately, while hard techniques like custom embeddings are only considered when the domain justifies the investment. The "stay lazy" principle — don't fix what isn't broken — prevents teams from over-engineering systems that work well with simpler approaches. ^[extracted]

## In-Memory Retrieval

The simplest RAG approach: bring all documents into the LLM context window without any retrieval step. Works when document count is small (e.g., NotebookLM with 5 documents) but fails when context is polluted or documents exceed window size. This is the baseline technique in the quality engineering loop — if in-memory retrieval works, you don't need any other technique. ^[extracted]

## LLM-Search Integration

A broader pattern beyond RAG: LLMs always need to search the web because the web (exabytes) vastly exceeds what can fit in model weights (~10 terabytes for GPT-4). This is an information-theoretic constraint, not a temporary limitation. The search engine used matters — traditional engines optimized for humans are suboptimal for AI agents. [[entities/exa|Exa]] builds search engines specifically for AI consumption, returning dense knowledge rather than curated link lists. ^[extracted]

