---
title: "Application Observability Graph"
tags:
  - observability
  - graph-database
  - agents
  - rag
  - monitoring
  - analytics
aliases:
  - Application Memory Graph
  - App Graph
  - Runtime Knowledge Graph
sources:
  - "AIEF2025 - Graph Intelligence: Enhance Reasoning and Retrieval Using Graph Analytics - Alison & Andreas, Neo4j - https://www.youtube.com/watch?v=GGxAQVbwBL4"
summary: "Modeling an AI application's runtime state as a property graph — sessions, prompts, responses, and retrieved context documents interconnected — for content usage analytics and agent behavior monitoring."
provenance:
  extracted: 0.65
  inferred: 0.30
  ambiguous: 0.05
base_confidence: 0.38
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Application Observability Graph

An approach to AI application observability that models the runtime state as a property graph — sessions, user prompts, assistant responses, and retrieved context documents all connected as nodes with typed relationships. Introduced by Alison Cosette ([[entities/neo4j|Neo4j]]) at AIEF2025. ^[extracted]

## Core Data Model

The application graph connects four primary entity types: ^[extracted]

- **Session** — a user's conversation session
- **Message (User Prompt)** — the user's input, labeled as both `Message` and `Prompt`
- **Message (Assistant Response)** — the AI's response, labeled as both `Message` and `Assistant`
- **Context Document (Chunk)** — each document chunk retrieved to ground that response

This creates a connected network where every response links to precisely which documents were retrieved, and every document links to every query that used it. ^[extracted]

## Dual Labels for Flexible Querying

Nodes with multiple labels enable dual-purpose queries: a node labeled both `Message` and `Prompt` can be found by searching all messages (interaction history) or filtered to only user prompts (for prompt analysis). Similarly, `Message` + `Assistant` labels let you isolate assistant responses from user prompts while still treating both as messages for traversal. ^[extracted]

## Key Analytics

### Document Usage Patterns
- Which documents are retrieved most/least often? ^[extracted]
- Which documents co-occur frequently in responses? This reveals concept affinities that similarity alone misses. ^[extracted]
- Which documents have declining usage? They may be stale and need updating. ^[inferred]

### Conversation Flow Analysis
- Track which knowledge communities a user traverses during a session. ^[extracted]
- A conversation starts in community A, moves through community B, and resolves in community C — this path is visible in the graph. ^[extracted]
- "We're tracking human cognition by watching the way people move around their thought process." ^[extracted]
- Short vs long conversations, optimal paths, and common dead-ends can be analyzed through graph traversal patterns. ^[inferred]

### Content Quality Monitoring
- PageRank on the application graph reveals the most influential documents. But influence requires scrutiny: a highly-used document may be genuinely important, or it may be stale boilerplate being copy-pasted. ^[extracted]
- Per-community ratings analysis — if one community's documents consistently receive lower quality ratings, that cluster needs investigation. ^[extracted]

### Co-occurrence Relationships
- When a query retrieves K documents, they all co-occur by virtue of being retrieved together. Tracking these co-occurrence pairs across many queries reveals which concepts naturally belong together. ^[extracted]
- Weighting co-occurrence by frequency creates an affinity metric: "these documents are often needed to answer the same question." ^[extracted]

## Combined Application + Knowledge Graph

The application graph (sessions, prompts, responses, context docs) and the domain knowledge graph (entities, relationships extracted from documents) are connected through the chunk nodes — forming a **unified graph** that bridges application behavior and domain knowledge. ^[extracted] This unified view enables queries like "which domain concepts are most frequently accessed in long conversations?" or "does this cluster of legal documents lead to lower user satisfaction?" ^[inferred]

## Comparison with Traditional Logging

| Aspect | Traditional AI Observability | Application Graph |
|--------|------------------------------|-------------------|
| Data model | Flat log rows | Connected graph of entities |
| Query | Filter by field-value | Traverse typed relationships |
| Content analytics | Count by document ID | Co-occurrence, PageRank, communities |
| Conversation paths | Sequential timestamps | Multi-hop traversal |
| Scalability | Indices on timestamp+field | Graph projection + algorithms |

Traditional logging ([[concepts/ai-observability-production-logging|AI Observability & Production Logging]]) captures prompt-response pairs as table rows. The application graph adds relationship-aware analysis on top of the same base data. ^[inferred]

## Related
- [[concepts/ai-observability-production-logging|AI Observability & Production Logging]] — complementary logging infrastructure
- [[concepts/graph-analytics-rag-curation|Graph Analytics for RAG Curation]] — using graph algorithms on the application graph for content curation
- [[concepts/graphrag|GraphRAG]] — knowledge graph for retrieval; application graph for observability
- [[concepts/agent-loop|Agent Loop]] — the runtime loop the application graph tracks
- [[concepts/re-ranking|Re-ranking]] — diversity-aware re-ranking using graph signals
- [[references/aief2025-graph-intelligence-alison-andreas-neo4j|AIEF2025 — Graph Intelligence Talk]] — source talk

## Sources
- [[references/aief2025-graph-intelligence-alison-andreas-neo4j|AIEF2025 — Graph Intelligence: Enhance Reasoning and Retrieval Using Graph Analytics — Alison Cosette & Andreas, Neo4j]]
