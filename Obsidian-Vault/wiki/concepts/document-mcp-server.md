---
title: Document MCP Server
category: concepts
tags:
- mcp
- agent
- document-parsing
- tool-interface
- llamaindex
summary: A pattern for exposing a generalized set of document interaction tools (search, lookup, manipulation, querying) to AI agents via MCP, extending beyond single-endpoint RAG retrieval.
provenance:
  extracted: 0.85
  inferred: 0.1
  ambiguous: 0.05
base_confidence: 0.65
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/mcp]]'
  type: implements
- target: '[[concepts/document-toolbox]]'
  type: implements
- target: '[[concepts/api-first-design-for-agents]]'
  type: related_to
sources: []
---

# Document MCP Server

A document MCP server is a pattern for exposing a generalized set of document interaction tools to AI agents via the Model Context Protocol (MCP). Introduced by [[entities/jerry-liu|Jerry Liu]] at AI Engineer World's Fair 2025, it represents a generalization of the RAG concept: instead of a single retrieval endpoint, agents receive a full toolkit of document operations. ^[extracted]

## Concept

Traditional RAG provides one tool: semantic retrieval. A document MCP server provides many:

- **Semantic search** — Fuzzy-find relevant content across documents
- **File lookup** — Retrieve file metadata and structural info
- **Manipulation** — Perform operations on documents (extract, transform, annotate)
- **Structure querying** — Query structured databases built from document data

## Relationship to RAG

RAG = retrieval + one-shot synthesis. A document MCP server treats retrieval as just one tool among many. This matters because agents need to do more than retrieve — they need to search, manipulate, and query structured data extracted from documents. ^[extracted]

## Architecture

A document MCP server sits on top of a preprocessing layer (data connectors, document parsing, indexing) and exposes standardized tool interfaces to any MCP-compatible agent. This allows agents built on different platforms (Claude, ChatGPT, custom agents) to interact with the same document collection through a consistent interface. ^[extracted]

## Related

- [[concepts/document-toolbox]] — The broader document toolbox concept
- [[concepts/mcp]] — The Model Context Protocol
- [[concepts/api-first-design-for-agents]] — API-first tool interfaces for agents
- [[entities/jerry-liu]] — Originator of the concept
- [[entities/llamaindex]] — LlamaCloud as a document MCP server implementation
