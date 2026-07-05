---
title: "AIEF2025 — Agentic GraphRAG: Simplifying Retrieval Across Structured & Unstructured Data — Zach Blumenfeld"
category: references
tags:
  - ai-engineering
  - knowledge-graph
  - graphrag
  - neo4j
  - aief2025
  - mcp
aliases:
  - Zach Blumenfeld AIEF2025
  - Agentic GraphRAG
sources:
  - "[[sources/watchv=czm3cw6fdbs]]"
summary: "Zach Blumenfeld presents an agentic GraphRAG architecture using Neo4j as the central data layer, demonstrating through a live notebook why document-only vector retrieval fails for analytical queries and how structured graph extraction plus MCP-based Cypher generation enables accurate aggregation, similarity, and relationship queries."
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.40
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
relationships:
  - target: "[[concepts/graphrag|GraphRAG]]"
    type: related_to
  - target: "[[concepts/graph-vs-document-retrieval|Graph vs Document Retrieval]]"
    type: related_to
  - target: "[[concepts/graph-traversal-similarity|Graph Traversal Similarity]]"
    type: related_to
  - target: "[[concepts/triplet-extraction|Triplet Extraction]]"
    type: related_to
  - target: "[[concepts/knowledge-graph-ontology-design|Knowledge Graph Ontology Design]]"
    type: related_to
---

# AIEF2025 — Agentic GraphRAG: Simplifying Retrieval Across Structured & Unstructured Data

> Zach Blumenfeld demonstrates that placing a knowledge graph between agents and their data sources unlocks analytical, aggregational, and relationship-oriented queries that pure document vector retrieval cannot perform, using a live employee skills analysis notebook on Neo4j.

## Overview

Zach Blumenfeld presents a practical, notebook-driven talk on building agentic GraphRAG systems that handle both structured and unstructured data. The talk uses a concrete example: an employee knowledge assistant for "Cyberdyne Systems" that answers questions about skills, team composition, collaboration patterns, and talent distribution from a folder of resume PDFs. ^[extracted]

The talk shows a progression from naive document-only retrieval to a fully agentic graph-based system, demonstrating the specific limitations each step removes. ^[inferred]

## Key Ideas

### 1. Document-Only Retrieval is Insufficient

The baseline approach — loading resume PDFs as documents with embeddings and an agent with a single search-documents tool — fails on common analytical questions: ^[extracted]

- **"How many Python developers?"** — Returns K=5 (the top-K setting), not the actual count
- **"Who is most similar to Lucas?"** — Only does semantic search, cannot compute structured skill overlap
- **"Summarize technical talent distribution"** — Cannot aggregate across the population
- **"Who collaborates with whom?"** — Collaboration data is embedded in resume prose, not queryable

### 2. Structured Entity Extraction with Pydantic

The solution: extract structured entities from resumes using LLMs guided by Pydantic classes. The data model includes: ^[extracted]

- **Person** — entity with skills, accomplishments, and domains
- **Accomplishment types** — enumerated (published, built, won, led, managed, optimized, shipped)
- **Domains** — high-level categories like AI, data engineering, analytics
- **Work types** — classification of what kind of work was done

The extraction uses LangChain to decompose documents and produce structured JSON conforming to the Pydantic schema. ^[extracted]

### 3. Expressive Graph + MCP for Agent Queries

Once the graph is populated, an agent uses an MCP server that enables: ^[extracted]

- **Schema reading** — the agent introspects the graph structure to understand what entities and relationships are available
- **Cypher generation** — the LLM generates precise Cypher queries against the schema

This turns vague similarity searches into precise graph queries:

**"How many Python developers?"** → `MATCH (p:Person)-[:KNOWS]->(s:Skill {name:"Python"}) RETURN count(p)` → correct answer: 28 (not K=5) ^[extracted]

### 4. Explainable Graph Similarity

The agent computes similarity via graph traversal — 0 to 3 hops over skills, domains, and accomplishments: ^[extracted]

```
MATCH path = (p1:Person)-[*0..3]-(p2:Person) RETURN path
```

Rather than opaque "semantic similarity," the agent can explain: "Sarah is most similar to Lucas because they share Python, SQL, and JavaScript skills and both work in AI and data engineering domains." ^[extracted]

### 5. Flexible Data Model Expansion

When new data sources arrive (e.g., an internal HR system with project collaboration data), the graph accommodates them naturally: ^[extracted]

- New relationship types (e.g., COLLABORATED_ON) are added without schema refactoring
- One-to-many relationships become many-to-many without join tables
- Existing traversal queries automatically pick up the new edges

This contrasts with RDBMS, where adding a many-to-many relationship requires creating a join table and refactoring existing queries. ^[inferred]

## Key Demonstration Queries

| Query | Document-Only | Graph-Augmented |
|---|---|---|
| "How many Python developers?" | Returns K=5 (top-K) | Returns actual count: 28 |
| "Who is most similar to Lucas Martinez and why?" | Semantic search, no structured overlap | Sarah — shares Python, SQL, JavaScript skills; both in AI and data engineering |
| "Summarize technical talent distribution" | Cannot answer | Returns counts per skill, broken down by domain |
| "Which individuals have collaborated on AI projects?" | Searches text for "collaborators" | Traces COLLABORATED_ON edges in the graph |

## Notable Quotes

> "A lot of the retrieval that we're seeing is not so much just a straight shot vector search anymore. A lot of what we're seeing is a question being broken down and being handed multiple queries, right, to go and pull the data that you need."

> "The great thing about having a knowledge graph is that you can express a very simple data model to get started to your agent, which can help it do that decomposition."

> "The great thing about graph is that I don't have to refactor the schema at all — I can just sort of create new relationships."

## Tools Mentioned

- [[entities/neo4j|Neo4j]] — graph database used for the knowledge graph
- Google ADK — agent development framework used for building the agents
- [[concepts/model-context-protocol|MCP]] — protocol for connecting agents to the Neo4j schema and Cypher generation
- LangChain — framework used for document decomposition and structured extraction
- Pydantic — Python library for defining data model schemas for LLM extraction

## Open Questions

- The talk uses a small employee dataset — scalability of the MCP-based Cypher generation approach for graphs with millions of nodes is not addressed. ^[ambiguous]
- Cypher generation quality depends on LLM capability — hallucinated Cypher could produce incorrect results. ^[inferred]
- How the approach handles real-time data updates (streaming) vs batch ingestion is not covered. ^[ambiguous]

## Related

- [[concepts/graphrag|GraphRAG]] — the overarching architecture for graph-based retrieval
- [[concepts/graph-vs-document-retrieval|Graph vs Document Retrieval]] — core contrast demonstrated in the talk
- [[concepts/graph-traversal-similarity|Graph Traversal Similarity]] — variable-length path similarity technique
- [[concepts/triplet-extraction|Triplet Extraction]] — structured extraction from unstructured documents
- [[concepts/knowledge-graph-ontology-design|Knowledge Graph Ontology Design]] — ontology design for agent-queryable graphs
- [[concepts/multi-hop-retrieval|Multi-Hop Retrieval]] — traversal strategy used by the similarity queries
- [[concepts/mcp-gateway-pattern|MCP Gateway Pattern]] — protocol for connecting agents to data sources

## Sources

- <https://www.youtube.com/watch?v=CzM3cW6FdBs> — Full talk recording
