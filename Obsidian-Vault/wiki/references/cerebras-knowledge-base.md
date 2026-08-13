---
title: "How We Built Our Knowledge Base — Cerebras X Article"
category: references
tags:
  - knowledge-base
  - rag
  - retrieval
  - agent-tools
  - mcp
sources:
  - https://x.com/cerebras/status/2077822555159945507
source_url: https://x.com/cerebras/status/2077822555159945507
summary: Cerebras's architecture for an internal knowledge base/RAG system — ingests Slack, Wiki, code repos, and incidents into a single embedding table with hybrid retrieval and MCP tool integration.
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.37
lifecycle: draft
lifecycle_changed: 2026-07-18
tier: supporting
created: 2026-07-18T00:00:00Z
updated: 2026-07-18T00:00:00Z
relationships:
  - target: "[[concepts/agentic-retrieval]]"
    type: related_to
  - target: "[[concepts/ai-harness]]"
    type: related_to
---

# How We Built Our Knowledge Base — Cerebras X Article

**Source:** [Cerebras (@cerebras)](https://x.com/cerebras) — 2026-07-16 via X Article (also cross-posted as blog post) ^[extracted]

**Note:** The X Article was recovered via Wayback Machine metadata and OCR of 12 attached images — text is verified against image layouts but may contain minor OCR artifacts. ^[ambiguous]

## Architecture Overview

Cerebras built an internal knowledge base / RAG system that ingests from Slack, Wiki/Confluence, code repos, documents, and custom databases into a single embeddings table using pgvector with 3,072-dim vectors. ^[extracted]

### Pipeline: Sources → Distillation → Embeddings → Retrieval ^[extracted]

1. **Multi-source ingestion** — Slack threads, wiki pages, code repositories, incidents, and custom databases are fed into a single pipeline. ^[extracted]
2. **Thread-to-artifact distillation** — Raw threads are processed: RAW THREAD → THREAD ARTIFACT (one JSON object per thread with question/summary/solution/system/code_refs) → EMBEDDED ROW. ^[extracted]
3. **Burst detection and filtering** — Conversation bursts are filtered in two stages: Burst 01 filters short/common/no-reaction messages; Burst 02 keeps long/rare-term/reacted-to messages and extracts author threads showing technical-detail → resolution → ack flow. ^[extracted]
4. **Hybrid retrieval** — Six list sources are queried in parallel and fused via Reciprocal Rank Fusion (k=60) with LLM reranking. ^[extracted]

### Retrieval Architecture ^[extracted]

- **Four index types:** VECTOR (pgvector), FTS (full-text search), GRAPH, WIKI — combined via RRF scoring: `score(d) = sum(1 / (60 + rank_L(d)))` across indices. ^[extracted]
- **Ranking signals:** Exact-token matching, embedding similarity, IDF (rare token boosting), and age decay (newer answers win ties). ^[extracted]
- **LLM reranker** at the top for final answer synthesis with citations. ^[extracted]

### Code Chunking

Code is chunked using **language-aware (AST-based) splitting**, not naive fixed-token windows — demonstrated with a C++ CheckpointLoader class as example. ^[extracted]

### Search Decomposition

Search is decomposed into sub-queries (SEARCH_SLACK, SEARCH_CODE, RECENT_PRS) by a PLANNER, then evidence rows are normalized and synthesized into an answer with citations. ^[extracted]

### MCP Integration

The system supports [[concepts/agentic-retrieval|MCP clients]] (e.g., LLM coding agents) connecting via the MCP protocol to the search planner/executor pipeline for direct tool-call access. ^[extracted]

### Project Scoping

Query scoping is project-aware — each project (e.g., COMPILER vs PLATFORM) has its own default scope over its Slack, repo, incidents, and runbooks, with shared incident storage. ^[extracted]

### Event-Driven Ingestion

Ingestion is event-driven: socket events trigger distillation, bot reply tracking, then thread re-ingest/sync, which upserts thread vectors and resets watermarks (burst vectors). ^[extracted]

## Significance

This architecture represents a production-grade [[concepts/ai-harness|AI harness]] for institutional knowledge retrieval — combining hybrid search, LLM planning and reranking, and MCP tool access into a unified system designed for engineering productivity rather than customer-facing Q&A. ^[inferred]

## Related

- [[concepts/agentic-retrieval]] — the retrieval paradigm this system implements
- [[concepts/ai-harness]] — the infrastructure layer for the planner/reranker pipeline
