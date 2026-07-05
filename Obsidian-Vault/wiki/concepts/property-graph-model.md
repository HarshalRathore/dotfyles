---
title: "Property Graph Model"
tags:
  - knowledge-graph
  - neo4j
  - graph-database
  - data-model
  - graphrag
  - aief2025
aliases:
  - Property Graph
sources:
  - "[[sources/watchv=j-9ebjbxcbg]]"
  - "[[sources/watchv=czm3cw6fdbs]]"
summary: "Neo4j's data model consisting of three primitives: nodes (nouns/entities), directed relationships (verbs/connections), and properties (key-value pairs). Both nodes and relationships can carry properties including vectors."
provenance:
  extracted: 0.90
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.60
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/neo4j|Neo4j]]"
    type: implemented_by
  - target: "[[concepts/cypher-query-language|Cypher Query Language]]"
    type: queried_by
  - target: "[[concepts/graphrag|GraphRAG]]"
    type: used_by
---

# Property Graph Model

The property graph model is [[entities/neo4j|Neo4j]]'s native data model for representing knowledge graphs. It consists of three primitives: ^[extracted]

## Three Primitives

### Nodes

Nodes represent entities — people, places, things, concepts. They are the "nouns" of the graph. ^[extracted]

- Identified by a **label** (equivalent to a table type in SQL): `Person`, `Skill`, `Accomplishment`, `Domain`
- Carry **properties**: key-value pairs that can be strings, numbers, arrays, or vectors
- Example: `(p:Person {email: "zach@example.com", name: "Zach"})`

### Relationships

Relationships define how nodes are connected. They are the "verbs" of the graph. ^[extracted]

- Always **directed** (have a start and end node)
- Have a **type**: `KNOWS`, `BUILT`, `PUBLISHED`, `COLLABORATED_ON`
- Also carry **properties**: e.g., `{overlap: 3}` on a similarity relationship
- Example: `(p:Person)-[:KNOWS]->(s:Skill)`

### Properties

Properties are key-value pairs attached to both nodes and relationships. ^[extracted]

- **Types**: strings, numbers, booleans, arrays
- **Vectors**: Neo4j has supported vector properties for a long time, enabling semantic search on node data
- Example: `{name: "Python", category: "programming_language"}`

## Label vs Property Distinction

A key design decision in the property graph model: what becomes a label vs. a property. ^[extracted]

- **Labels** define the entity type and determine which constraints and indexes apply
- **Properties** store attributes within a type
- The choice affects query patterns and performance — Blumenfeld notes this is a common decision point in graph modeling

## Example: Employee Skills Graph

```
(Emma:Person {email: "emma@cyberdyne.com", name: "Emma"})
  [:KNOWS]→ (Python:Skill {name: "Python"})
  [:KNOWS]→ (Flask:Skill {name: "Flask"})
  [:KNOWS]→ (API_Design:Skill {name: "API Design"})

(Sarah:Person {email: "sarah@cyberdyne.com", name: "Sarah"})
  [:KNOWS]→ (Python:Skill)
  [:KNOWS]→ (SQL:Skill)
```

This creates a bipartite graph where people share skills through the `Skill` nodes — enabling similarity queries via shared neighbors. ^[extracted]

## Vector Integration

A key advantage of the property graph model: vectors are first-class properties. Both nodes and relationships can store vector embeddings, meaning the same platform handles: ^[extracted]

- **Vector indexing** for semantic similarity search on embedded text
- **Graph traversal** for relationship-based contextualization

The vector index serves as an entry point into the graph: a vector search locates relevant nodes, and from there the retriever navigates relationships to enrich context. ^[extracted]

## Relationship to Other Concepts

- [[concepts/cypher-query-language|Cypher Query Language]] — the query language for this model
- [[concepts/graphrag|GraphRAG]] — the property graph is the storage substrate
- [[concepts/knowledge-graph-ontology-design|Knowledge Graph Ontology Design]] — labels and relationship types are the ontology
- [[entities/neo4j|Neo4j]] — the database implementing this model

## Sources

- [[references/aief2025-intro-to-graphrag-zach-blumenfeld|AIEF2025 — Intro to GraphRAG Workshop — Zach Blumenfeld]]
