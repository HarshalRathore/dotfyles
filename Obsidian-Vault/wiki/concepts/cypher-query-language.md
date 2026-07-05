---
title: "Cypher Query Language"
tags:
  - neo4j
  - query-language
  - graph-database
  - knowledge-graph
  - graphrag
  - aief2025
aliases:
  - Cypher
  - Neo4j Query Language
sources:
  - "[[sources/watchv=j-9ebjbxcbg]]"
  - "[[sources/watchv=czm3cw6fdbs]]"
summary: "Neo4j's declarative query language that uses ASCII-art-like syntax to express graph patterns. Supports MATCH, MERGE, CREATE, aggregation, variable-length path traversal, and vector search integration."
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.55
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/neo4j|Neo4j]]"
    type: used_by
  - target: "[[concepts/graphrag|GraphRAG]]"
    type: used_by
  - target: "[[concepts/property-graph-model|Property Graph Model]]"
    type: queries
---

# Cypher Query Language

Cypher is [[entities/neo4j|Neo4j]]'s declarative query language for reading, writing, and traversing property graphs. Its syntax is designed to read like ASCII art — the visual shape of a query mirrors the graph pattern it describes. ^[extracted]

## Syntax Philosophy

Cypher queries read literally as graph patterns. The core pattern `MATCH (p:Person)-[:KNOWS]->(s:Skill)` connects a `Person` node to a `Skill` node through a `KNOWS` relationship — the parentheses are nodes, the brackets are relationships, and the arrows indicate direction. ^[extracted]

This gives Cypher an SQL-esque feel for those familiar with relational databases, but operates on graph topology rather than tables and joins. ^[extracted]

## Core Clauses

| Clause | Purpose |
|---|---|
| `MATCH` | Find existing graph patterns |
| `MERGE` | Match or create — ensures a pattern exists (idempotent) |
| `CREATE` | Create new nodes and relationships |
| `SET` | Set or update node/relationship properties |
| `RETURN` | Project query results |
| `WHERE` | Filter matched patterns |
| `WITH` | Pipe results to subsequent clauses |
| `FOREACH` | Iterate over lists (bulk operations) |

## Key Patterns Demonstrated at AIEF2025

### Basic Pattern Matching

```cypher
MATCH (p:Person)-[:KNOWS]->(s:Skill)
RETURN p.name, s.name
```

Returns person names paired with their skills. ^[extracted]

### Aggregation

```cypher
MATCH (p:Person)-[:KNOWS]->(s:Skill)
RETURN s.name, count(DISTINCT p) AS people_count
ORDER BY people_count DESC
```

Counts distinct people per skill — answers "how many Python developers?" with an exact count (not top-K). ^[extracted]

### Variable-Length Path Traversal

```cypher
MATCH path = (p1:Person)-[*0..3]-(p2:Person)
RETURN DISTINCT path
```

Traverses 0 to 3 hops between people through shared skills, domains, and accomplishments. Used for computing explainable similarity. ^[extracted]

### MERGE with Bulk Loading

```cypher
MERGE (p:Person {email: $email})
SET p.name = $name
FOREACH (skill IN $skills |
  MERGE (s:Skill {name: skill})
  MERGE (p)-[:KNOWS]->(s)
)
```

Creates or updates a person and all their skills in a single query, using `MERGE` for idempotent upserts. ^[extracted]

### Similarity Computation

```cypher
MATCH (p:Person {name: $personName})-[:KNOWS]->(s:Skill)<-[:KNOWS]-(other:Person)
RETURN other.name, count(DISTINCT s) AS shared_skills
ORDER BY shared_skills DESC
```

Finds people who share skills with a target person, ranked by overlap count. ^[extracted]

### Precomputed Similarity Relationships

```cypher
MATCH (p1:Person), (p2:Person)
WHERE p1.email < p2.email  // avoid duplicates
WITH p1, p2,
  size([(s1:Skill)-[:KNOWS]-(p1) | s1] ∩ [(s2:Skill)-[:KNOWS]-(p2) | s2]) AS overlap
WHERE overlap > 0
MERGE (p1)-[:SIMILAR_SKILL_SET {overlap: overlap}]->(p2)
```

Materializes pairwise similarity as graph edges with an `overlap` property, turning O(n²) computation into a simple future traversal. ^[extracted]

## Cypher Generation by LLMs

A key insight from Zach Blumenfeld at AIEF2025: as LLMs improve at interpreting graph schemas, they become capable of generating Cypher queries from natural language. The relationship type names serve as "annotations for the model" — the language you choose for relationships directly affects how well an LLM can generate correct queries. ^[extracted]

For complex traversals, Blumenfeld recommends providing the agent with expert tools (Python functions or [[concepts/model-context-protocol|MCP]] servers) rather than relying on LLM-generated Cypher alone. ^[extracted]

## Neo4j's Fine-Tuned Cypher Models

Neo4j released fine-tuned models based on Google's Gemma in April 2025 (available on Hugging Face) that improve Cypher generation quality over base models. These are available for self-hosting but were not used in the AIEF2025 workshop (which used OpenAI models). ^[extracted]

## Relationship to Other Concepts

- [[concepts/property-graph-model|Property Graph Model]] — Cypher operates on this data model
- [[concepts/graphrag|GraphRAG]] — Cypher is the query language for graph-based retrieval
- [[concepts/graph-traversal-similarity|Graph Traversal Similarity]] — uses variable-length Cypher paths
- [[concepts/multi-hop-retrieval|Multi-Hop Retrieval]] — enabled by Cypher's path traversal

## Sources

- [[references/aief2025-intro-to-graphrag-zach-blumenfeld|AIEF2025 — Intro to GraphRAG Workshop — Zach Blumenfeld]] — Workshop
- [[references/aief2025-agentic-graphrag-zach-blumenfeld|AIEF2025 — Agentic GraphRAG — Zach Blumenfeld]] — Talk
