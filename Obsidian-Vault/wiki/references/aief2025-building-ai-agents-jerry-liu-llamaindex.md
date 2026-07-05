---
title: "Building AI Agents that actually automate Knowledge Work — Jerry Liu, LlamaIndex"
tags:
  - reference
  - talk
  - agent
  - llamaindex
  - document-parsing
  - rag
  - ai-eng-fair-2025
sources:
  - "AIEF2025 - Building AI Agents that actually automate Knowledge Work - Jerry Liu, LlamaIndex - https://www.youtube.com/watch?v=jVGCulhBRZI"
summary: "Jerry Liu presents LlamaIndex's document toolbox for automating knowledge work over unstructured enterprise data, including the document MCP server concept, assistive vs automation agents, and new Excel normalization capabilities."
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.70
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# Building AI Agents that actually automate Knowledge Work — Jerry Liu, LlamaIndex

> [!tldr] Jerry Liu, co-founder and CEO of LlamaIndex, argues that automating knowledge work over unstructured data requires a "document toolbox" — a generalized set of tools beyond naive RAG — and introduces LlamaIndex's GenEI-native document parsing platform with new Excel normalization capabilities. He categorizes agents into assistive and automation types.

## Core Thesis

Around 90% of enterprise data lives as unstructured documents (PDFs, PowerPoints, Word, Excel). Historically, humans needed to read and write these documents to make decisions and take actions. For the first time, AI agents can reason and act over massive amounts of unstructured context tokens — doing analysis, research, synthesis, and taking actions end-to-end. ^[extracted]

## Two Agent Categories

Jerry categorizes agents for knowledge work automation into two types:

1. **Assistive agents** — Standard chat interface. Help humans get information faster, with more human-in-the-loop.
2. **Automation agents** — Automate routine tasks, run in the background, require less human oversight, and can take actions that automate routine operational work. ^[extracted]

## The Document Toolbox

Jerry argues that building agents for unstructured enterprise data requires a "document toolbox" — a generalization beyond naive RAG. RAG is just retrieval plus one-shot synthesis. Agents need a richer set of tool interfaces:

- **Semantic search** — fuzzy-find relevant source data
- **File lookup** — retrieve file metadata
- **Manipulation** — perform operations on files
- **Structure querying** — query structured databases for aggregate insights

The toolbox requires a preprocessing layer:
- **Data connectors** — sync data from sources (SharePoint, Google Drive, S3, Confluence) with permissions and metadata
- **Document parsing and extraction** — deep understanding of tables, charts, images, complex layouts
- **Indexing** — vector search, SQL-tabular indexing, GraphDB indexing

## Complex Document Understanding

Human knowledge in complex PDFs and documents (embedded tables, charts, images, irregular layouts, headers, footers) is designed for human consumption, not machine consumption. If documents are not processed correctly, no matter how good the LLM is, it will fail. ^[extracted]

LlamaIndex's approach uses LLMs and LVMs interleaved with traditional parsing techniques, plus agentic validation and reasoning tokens, to achieve higher accuracy than either approach alone. They benchmarked modes adapting SANA 3.5, 4.0, Gemini 2.5 Pro, and 4.1 from OpenAI, outperforming all existing parsing benchmarks. ^[extracted]

## Excel Agent

LlamaIndex announced Excel capabilities for their document toolbox. Knowledge work happens heavily in spreadsheets, but this has been unsolved by LLMs. Typical Excel sheets are not structured 2D tables — they have gaps in rows and columns. Neither RAG nor text-as-CSV techniques work on these.

The Excel agent takes un-normalized spreadsheets and transforms them into normalized 2D formats, then allows agentic QA over both un-normalized and normalized versions. The best baseline is not RAG or text-as-CSV — it's an LLM with a code interpreter tool (~70-75% accuracy). LlamaIndex's agent achieves higher accuracy on a private dataset of synthetic Excel sheets. ^[extracted]

## The Stack

Jerry frames the agent stack as two main components:
1. **Nice tools** — interfaces for agents to interact with the external world (MCP, A2A), surfacing relevant context and enabling external actions
2. **Agent architecture** — general reasoning loops and constrained loops, encoding business logic through agentic workflows ^[extracted]

## Related

- [[concepts/document-toolbox]] — The document toolbox concept
- [[concepts/assistive-vs-automation-agents]] — Assistive vs automation agent categories
- [[concepts/complex-document-understanding]] — Complex document parsing challenges
- [[entities/llamaindex]] — LlamaIndex platform
- [[entities/llamaparse]] — LlamaParse document parser
- [[concepts/agent-design-patterns]] — Agent design patterns
- [[concepts/api-first-design-for-agents]] — API-first tool interfaces for agents

## Sources

- AIEF2025 talk: "Building AI Agents that actually automate Knowledge Work" by Jerry Liu, LlamaIndex — https://www.youtube.com/watch?v=jVGCulhBRZI
