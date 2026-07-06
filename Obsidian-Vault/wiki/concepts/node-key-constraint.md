---
title: Node Key Constraint
tags:
- neo4j
- database-performance
- constraint
- graph-database
- graphrag
- aief2025
aliases:
- Uniqueness Constraint
- Node Key
sources:
- 'https://www.youtube.com/watch?v=j-9ebjbxcbg'
summary: 'A Neo4j uniqueness constraint that ensures a property (or set of properties) is unique and non-null across all nodes of a label. Critical for performance: without constraints, MERGE operations requ...'
provenance:
  extracted: 0.9
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.6
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[entities/neo4j|Neo4j]]'
  type: implemented_by
- target: '[[concepts/cypher-query-language|Cypher Query Language]]'
  type: used_by
category: concepts
---

# Node Key Constraint

A node key constraint in [[entities/neo4j|Neo4j]] declares that a property (or set of properties) must be unique and non-null across all nodes with a given label. It creates a unique index that enables O(log n) lookups instead of full graph scans. ^[extracted]

## Why It Matters

Zach Blumenfeld at AIEF2025 emphasized this as a critical performance pattern: ^[extracted]

> "A lot of times people will say, well, Neo4j is really slow. And that's often because of simple mistakes like not setting a constraint. And then you're going to have to do very complex searches in the database every time you search on a user rather than having it in an index that's unique."

Without a constraint, every `MERGE` operation on an unconstrained property requires a full graph scan to check for existing matches. With a constraint, Neo4j uses the unique index for instant lookups. ^[extracted]

## Syntax

```cypher
CREATE CONSTRAINT FOR (p:Person) REQUIRE p.email IS UNIQUE
CREATE CONSTRAINT FOR (s:Skill) REQUIRE s.name IS UNIQUE
```

This creates two constraints: ^[extracted]

1. `Person.email` must be unique and non-null
2. `Skill.name` must be unique and non-null

## Impact on MERGE Operations

With constraints in place, the bulk loading pattern becomes efficient: ^[extracted]

```cypher
MERGE (p:Person {email: $email})  // O(log n) lookup via index
SET p.name = $name
FOREACH (skill IN $skills |
  MERGE (s:Skill {name: skill})   // O(log n) lookup via index
  MERGE (p)-[:KNOWS]->(s)         // creates relationship
)
```

Without constraints, each `MERGE` would scan all `Person` or `Skill` nodes to check for matches — O(n) per merge instead of O(log n). ^[inferred]

## When to Use

- **Every label that will be queried or merged on frequently** — this is the default recommendation
- **Properties that serve as natural identifiers** — email, UUID, name (when unique)
- **Before any bulk data loading** — constraints should be created before the first `MERGE`

## Relationship to Other Concepts

- [[concepts/cypher-query-language|Cypher Query Language]] — constraints are created via Cypher DDL
- [[concepts/graphrag|GraphRAG]] — essential for performant graph population in GraphRAG pipelines
- [[concepts/property-graph-model|Property Graph Model]] — constraints apply to node labels

## Sources

- [[references/aief2025-intro-to-graphrag-zach-blumenfeld|AIEF2025 — Intro to GraphRAG Workshop — Zach Blumenfeld]]
