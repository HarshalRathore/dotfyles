---
title: "Improving Agent with Semantic Search — Cursor's Official Engineering Blog"
category: references
tags: [cursor, semantic-search, embeddings, retrieval, coding-agents, benchmark, ab-testing, agent-traces]
sources:
  - "https://cursor.com/blog/semsearch"
source_url: "https://cursor.com/blog/semsearch"
created: "2026-08-11"
updated: "2026-08-11"
summary: "Cursor's engineering blog (Nov 2025, Heule/Jia/Jain) on why they trained their own embedding model: +12.5% average accuracy, the Cursor Context Bench eval, agent-session traces as training data, and A/B evidence that semantic search raises code retention."
affinity: {}
promotion_status: misc
stub: false
provenance:
  extracted: 0.90
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.9
lifecycle: draft
lifecycle_changed: "2026-08-11"
tier: supporting
---

# Improving Agent with Semantic Search

> **TL;DR** — Cursor trained its own embedding model because semantic search materially improves agent performance over large codebases: +12.5% average answer accuracy, higher code retention (+2.6% on 1000+ file repos), and fewer dissatisfied follow-up requests. The model is trained on **agent session traces** — what agents actually searched for and opened — ranked by an LLM in retrospect.

**Authors:** Stefan Heule, Emily Jia & Naman Jain · Cursor research blog · Nov 6, 2025
**URL:** https://cursor.com/blog/semsearch

## Core Claim

Coding agents need to understand a codebase by reading files and searching for relevant information. Cursor's agent uses **semantic search** — retrieving code segments matching natural-language queries ("where do we handle authentication?") — in addition to regex-based searching (grep). Cursor trained its **own embedding model** and built indexing pipelines for fast retrieval. ^[extracted]

While grep alone is viable, semantic search significantly improves agent performance, especially over large codebases: ^[extracted]

- **+12.5% average accuracy** answering questions (range 6.5%–23.5% depending on model)
- Code changes **more likely to be retained** in codebases
- **Fewer iterations** for users to arrive at a correct solution
- Accuracy gains **across all models tested**, including all frontier coding models

## Offline Evals — Cursor Context Bench

Cursor maintains an evaluation dataset, the **Cursor Context Bench**, focused on retrieving information in codebases with known correct answers. It runs over all most-used models in Cursor, including Cursor's own **Composer** model. Comparison: performance with semantic search available vs. not — in every configuration, semantic search significantly improves outcomes. ^[extracted]

## Online A/B Tests

Both groups used the same model; one group's agent had semantic search, the other relied solely on traditional tools like grep. Two metrics: ^[extracted]

- **Code Retention** (code written by effective agents is more likely to remain in user codebases): retention increases **+0.3%** with semantic search overall, rising to **+2.6% on large codebases (1,000+ files)**.
- **Dissatisfied User Requests** (code requiring no follow-ups or corrections): **+2.2% increase** in dissatisfied follow-up requests when semantic search was unavailable.

The effect size is lower than offline evals because the A/B test covers *all* agent queries and not all requests require search. ^[extracted]

## Custom Retrieval Models — Training from Agent Traces

The key insight: **agent sessions as training data**. When an agent works through a task it performs multiple searches and opens files before finding the right code. Analyzing these traces shows, in retrospect, what *should* have been retrieved earlier in the conversation. ^[extracted]

The pipeline:

1. Agent traces (searches + file opens → eventual correct code) are collected.
2. An LLM **ranks what content would have been most helpful at each step**.
3. The embedding model is trained to **align its similarity scores with the LLM-generated rankings**.

This creates a **feedback loop** where the retrieval model learns from how agents actually work through coding tasks — rather than from generic code similarity. ^[extracted] See [[concepts/embedding-models|Embedding Models]].

## Conclusion

Semantic search is currently **necessary** to achieve the best results, especially in large codebases. Cursor's agent makes heavy use of **both grep and semantic search** — the combination yields the best outcomes. Cursor continues to test and evaluate all tools given to the agent harness as models improve. ^[extracted]

## Concepts
- [[concepts/codebase-rag|Codebase RAG]]
- [[concepts/embedding-models|Embedding Models]] — including agent-trace-trained retrieval models
- [[concepts/embedding-based-search|Embedding-Based Search]]
- [[concepts/hybrid-retrieval|Hybrid Retrieval]] — grep + semantic search
- [[concepts/agent-evaluations|Agent Evaluations]] — offline eval methodology

## Entities
- [[entities/cursor-ai|Cursor]]
- [[entities/turbopuffer|Turbopuffer]] — the vector store used for chunk embeddings

## Related
- [[misc/web-towardsdatascience-com-how-cursor-actually-indexes|How Cursor Actually Indexes Your Codebase (TDS)]] — the pipeline article this blog was linked from
- [[references/chonkie-code-chunker|Chonkie CodeChunker]] — AST-based chunking used upstream of embedding

## Sources
- https://cursor.com/blog/semsearch
