---
title: "Document Toolbox"
category: concepts
tags:
  - agent
  - document-parsing
  - rag
  - enterprise-data
  - llamaindex
summary: A generalized set of tool interfaces beyond naive RAG that equip AI agents to understand, search, manipulate, and query over massive amounts of unstructured enterprise documents.
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.65
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/rag-evaluation|RAG]]"
    type: extends
  - target: "[[concepts/document-mcp-server]]"
    type: implements
  - target: "[[concepts/assistive-vs-automation-agents]]"
    type: related_to
---

# Document Toolbox

The document toolbox is a generalized set of tool interfaces that equip AI agents to interact with massive amounts of unstructured enterprise data. Coined by [[entities/jerry-liu|Jerry Liu]] at AI Engineer World's Fair 2025, it extends beyond naive RAG (retrieval + one-shot synthesis) to provide a richer set of operations for document interaction. ^[extracted]

## Why It Matters

Around 90% of enterprise data lives as unstructured documents — PDFs, PowerPoints, Word files, Excel spreadsheets. Humans have historically read and written these documents to make decisions. AI agents can now reason and act over massive amounts of unstructured context, but they need the right tools to do so effectively. ^[extracted]

## Tool Interface Categories

The document toolbox provides four categories of tool interfaces:

1. **Semantic search** — Fuzzy-find relevant source data across document collections using vector or embedding search
2. **File lookup** — Retrieve file metadata, permissions, and structural information
3. **Manipulation** — Perform operations on documents: extract, transform, annotate, merge
4. **Structure querying** — Query structured databases built from extracted document data for aggregate insights

## Preprocessing Layer

Building the document toolbox requires a preprocessing layer:

- **Data connectors** — Sync data from enterprise sources (SharePoint, Google Drive, S3, Confluence) with proper permissions and metadata
- **Document parsing and extraction** — Deep understanding of tables, charts, images, and complex layouts within documents
- **Indexing** — Multiple indexing strategies: vector search, SQL-tabular indexing, GraphDB indexing

## Document MCP Server

The document toolbox is exposed to agents through what Jerry calls a "document MCP server" — a set of standardized tool interfaces that allow any AI agent (via MCP or A2A protocols) to interact with the document collection. This is a generalization of the RAG concept: instead of a single retrieval endpoint, agents get a full toolkit. ^[extracted]

## Relation to Agent Types

The document toolbox serves both [[concepts/assistive-vs-automation-agents|assistive agents]] (chat interfaces that help humans get information faster) and [[concepts/assistive-vs-automation-agents|automation agents]] (background agents that automate routine tasks). The toolbox provides the underlying tool interfaces that both agent types consume. ^[extracted]

## Related

- [[concepts/document-mcp-server]] — The MCP server pattern for exposing document tools
- [[concepts/complex-document-understanding]] — The parsing challenge behind the toolbox
- [[concepts/rag-evaluation|RAG]] — Naive retrieval is just one tool in the toolbox
- [[concepts/assistive-vs-automation-agents]] — Agent categories that consume the toolbox
- [[entities/jerry-liu]] — Originator of the concept
- [[entities/llamaindex]] — LlamaIndex's GenEI-native document toolbox implementation
