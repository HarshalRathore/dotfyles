---
title: Windsurf Context Connectors
category: concepts
tags:
- context
- windsurf
- retrieval
- embedding-search
- mcp
- ast
- aief2025
aliases:
- Windsurf Context Tools
- Context Retrieval Toolkit
sources:
- 'AIEF2025 - The Eyes Are The (Context) Window to The Soul: How Windsurf Gets to Know You — Sam Fertig, Windsurf - https://www.youtube.com/watch?v=jUv5WSPo9fk'
provenance:
  extracted: 0.9
  inferred: 0.07
  ambiguous: 0.03
base_confidence: 0.8
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[entities/windsurf]]'
  type: implemented-by
- target: '[[concepts/context-relevance-over-size]]'
  type: enables
summary: Windsurf Context Connectors
---

# Windsurf Context Connectors

**Windsurf Context Connectors** are the multiple context retrieval mechanisms that [[entities/windsurf|Windsurf]] provides at the user level to implement its context philosophy. ^[extracted]

## The Full Toolkit

Windsurf provides the following context retrieval mechanisms:

| Connector | Description |
|-----------|-------------|
| **Embedding search** | Semantic search over code and documentation |
| **Memories** | Agent-generated memories about the user and project |
| **Rules** | User-provided rules that constrain agent behavior |
| **Custom workspaces** | User-defined scope boundaries for context |
| **At-mentions** | Explicit references to files, symbols, or sections |
| **Plain text search** | Keyword-based code search |
| **Knowledge base** | Structured project knowledge |
| **Multimodal input** | Non-text context (images, diagrams) |
| **Riptide** | Windsurf's proprietary context retrieval system |
| **MCP** | Model Context Protocol for external data sources |
| **Remote indexing** | Indexing of codebases not locally available |
| **Re-ranking** | Post-retrieval relevance scoring |
| **AST parsing** | Abstract syntax tree-based code understanding |

Some of these are more relevant than others for different tasks; some make sense, some don't; some are tangential. ^[extracted]

## Design Philosophy

Windsurf does not rely on a single retrieval method (e.g., embedding search alone). Instead, it combines multiple tools in tandem to understand the codebase comprehensively. ^[extracted] This multi-pronged approach:

- Gets more accurate results and more relevant suggestions
- Reduces hallucinations — no guesswork
- Grounds the agent in the centralized source of truth: the codebase
- Provides tailored suggestions based on deep understanding of both user and codebase ^[extracted]

## Related Pages

- [[entities/windsurf]] — Product implementing these connectors
- [[concepts/context-relevance-over-size]] — Why multiple connectors matter
- [[concepts/context-philosophy-what-vs-how-much]] — The philosophy these implement
- [[concepts/model-context-protocol]] — MCP as one of the connectors
