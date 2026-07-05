---
title: "AIEF2025 — Intro to GraphRAG: Hands-On Workshop — Zach Blumenfeld"
category: references
tags:
  - ai-engineering
  - knowledge-graph
  - graphrag
  - neo4j
  - aief2025
  - workshop
  - cypher
  - langchain
  - pydantic
aliases:
  - Zach Blumenfeld GraphRAG Workshop
  - Intro to GraphRAG
sources:
  - "[[sources/watchv=j-9ebjbxcbg]]"
summary: "A hands-on 80-minute workshop introducing GraphRAG fundamentals through three modules: Neo4j graph basics with Cypher queries, entity extraction from unstructured data, and building a simple agent with retrieval tools using LangGraph."
provenance:
  extracted: 0.90
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.50
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/graphrag|GraphRAG]]"
    type: related_to
  - target: "[[concepts/cypher-query-language|Cypher Query Language]]"
    type: uses
  - target: "[[concepts/property-graph-model|Property Graph Model]]"
    type: uses
  - target: "[[concepts/talent-skills-graph|Talent Skills Graph]]"
    type: related_to
---

# AIEF2025 — Intro to GraphRAG: Hands-On Workshop

> Zach Blumenfeld delivers an introductory, hands-on 80-minute workshop on GraphRAG fundamentals, structured in three progressive modules covering Neo4j graph basics, entity extraction from unstructured data, and building a simple retrieval agent.

## Overview

This is a distinct talk from Blumenfeld's other AIEF2025 presentation ("Agentic GraphRAG," talk ID `CzM3cW6FdBs`). This session is a beginner-friendly workshop designed for attendees with mixed familiarity — some know Neo4j, some know LangChain, some know neither. The workshop uses pre-provisioned Jupyter notebooks on managed servers, with a live Neo4j database and OpenAI API key provided via a shared environment file. ^[extracted]

The workshop targets the same use case — an employee skills and talent graph — but approaches it from a tutorial angle rather than an architectural argument. ^[inferred]

## Workshop Structure

The workshop is divided into three modules: ^[extracted]

### Module 1: Graph Basics with Neo4j

Covers the property graph model (nodes, relationships, properties), the Cypher query language, and basic data loading from structured CSV data. Participants create a `Person`-`KNOWS`-`Skill` graph from a skills dataset, set uniqueness constraints for fast lookups, and run Cypher queries for counting, similarity, and multi-hop traversal. ^[extracted]

Key concepts introduced:
- **Property graph model**: nodes (nouns: people, things), relationships (verbs: knows, built, published), properties (key-value pairs including vectors) ^[extracted]
- **Cypher as ASCII art**: queries read like the graph patterns they describe — `MATCH (p:Person)-[:KNOWS]->(s:Skill)` ^[extracted]
- **Node key constraints**: uniqueness constraints on `email` and `skill name` for fast matching and merge operations — a critical performance pattern ^[extracted]
- **Vector search indices**: Neo4j supports approximate nearest neighbor vector search alongside graph traversal ^[extracted]
- **Graph analytics**: community detection (Louvain, Leiden), centrality algorithms, and path finding via Neo4j's Graph Data Science (GDS) library ^[extracted]

### Module 2: Unstructured Data and Entity Extraction

Introduces entity extraction from unstructured documents (resumes, PDFs) using LLMs. The speaker notes this module covers how to extract structured entities from text — the counterpart to Module 1's structured CSV data. ^[extracted]

### Module 3: Building a Retrieval Agent with LangGraph

Participants build a simple agent using LangGraph that connects to the Neo4j graph via retrieval tools. This demonstrates how a knowledge graph serves as the agent's data layer, enabling structured queries that pure document retrieval cannot perform. ^[extracted]

## Setup and Infrastructure

The workshop uses a managed infrastructure model: ^[extracted]

- **Jupyter servers**: Two servers (split by attendee number: ≤160 → Server 1, ≥201 → Server 2)
- **Authentication**: `attendee<N>` for both username and password (e.g., `attendee123`)
- **Environment file**: `ws.env` contains Neo4j connection URI, credentials, and an OpenAI API key
- **Setup commands**: `git clone` the workshop repo, then copy `ws.env` into the `talent` subdirectory
- **Neo4j Browser**: `browser.neo4j.io/preview` for visualizing the graph in real-time
- **Slack channel**: "Workshop GraphRAG Intro" in AIE Slack for slides and links
- **Post-workshop**: Notebooks are available on GitHub but servers are taken down after the session

## Key Technical Demonstrations

### Data Loading with Constraints

The speaker emphasizes a critical performance pattern: always set node key constraints before loading data. Without constraints, every merge operation requires a full graph scan; with constraints, Neo4j uses an index for O(log n) lookups. ^[extracted]

```cypher
CREATE CONSTRAINT FOR (p:Person) REQUIRE p.email IS UNIQUE
CREATE CONSTRAINT FOR (s:Skill) REQUIRE s.name IS UNIQUE
```

### Bulk Loading Pattern

Data is loaded in chunks using a `MERGE` pattern that creates the full graph structure in one query: ^[extracted]

```cypher
MERGE (p:Person {email: $email})
SET p.name = $name
FOREACH (skill IN $skills |
  MERGE (s:Skill {name: skill})
  MERGE (p)-[:KNOWS]->(s)
)
```

### Similarity via Precomputed Relationships

The speaker demonstrates computing pairwise similarity between people based on shared skill count, then **materializing** those relationships as edges in the graph (`SIMILAR_SKILL_SET` with an `overlap` property). This turns an O(n²) computation into a simple graph traversal for future queries. ^[extracted]

## Notable Quotes

> "The idea is that if you have a use case and you kind of know the types of questions that you want to answer with your agents, by taking your data and decomposing even a very simple knowledge graph to start, you're going to be able to expose a lot of the sort of domain logic that you'd want to apply through the model of your data."

> "Neo4j is really slow. And that's often because of simple mistakes like not setting a constraint. And then you're going to have to do very complex searches in the database every time you search on a user rather than having it in an index that's unique."

> "Once we have this logic extracted from whatever our original data source is, we can now control at a much more fine-tuned level how we define what a similar person is or what a similar skill is."

> "It's basically like having your information in a symbolic versus just a sub-symbolic vector."

## Tools Mentioned

- [[entities/neo4j|Neo4j]] — graph database and browser for visualization
- [[concepts/langchain|LangChain]] — framework for document decomposition and structured extraction
- [[concepts/langgraph|LangGraph]] — agent framework for building retrieval agents
- [[concepts/pydantic|Pydantic]] — Python library for defining data model schemas
- Jupyter notebooks — interactive workshop environment
- OpenAI API — LLM backend for extraction and agent reasoning

## Open Questions

- The workshop uses a small employee dataset — scalability for enterprise-scale graphs is not addressed. ^[ambiguous]
- The precomputed similarity relationship approach materializes O(n²) computations — the speaker notes overlap counts go up to 3 in the demo, but the scaling implications for large graphs are unclear. ^[ambiguous]
- Module 2 (unstructured extraction) and Module 3 (agent building) are described but not detailed in the transcript — full technical depth is not captured here. ^[ambiguous]

## Related

- [[concepts/graphrag|GraphRAG]] — the overarching architecture
- [[concepts/graph-vs-document-retrieval|Graph vs Document Retrieval]] — why graphs matter for analytical queries
- [[concepts/graph-traversal-similarity|Graph Traversal Similarity]] — variable-length path similarity
- [[concepts/triplet-extraction|Triplet Extraction]] — extracting entities from unstructured text
- [[references/aief2025-agentic-graphrag-zach-blumenfeld|AIEF2025 — Agentic GraphRAG — Zach Blumenfeld]] — the companion architectural talk (different video)

## Sources

- <https://www.youtube.com/watch?v=J-9EbJBxcbg> — Full workshop recording
