---
title: "Graph Traversal Similarity"
tags:
  - knowledge-graph
  - graph-traversal
  - similarity
  - agent
  - retrieval
aliases:
  - Variable-Length Path Similarity
  - Graph Overlap Similarity
  - Neighborhood Overlap
sources:
  - "[[sources/watchv=j-9ebjbxcbg]]"
  - "[[sources/watchv=czm3cw6fdbs]]"
summary: "A graph-based similarity computation technique that uses variable-length path traversals (0-3 hops) over shared entities — skills, domains, accomplishments — to find and rank similar entities with explainable reasoning."
provenance:
  extracted: 0.78
  inferred: 0.17
  ambiguous: 0.05
base_confidence: 0.42
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-04
relationships:
  - target: "[[concepts/multi-hop-retrieval|Multi-Hop Retrieval]]"
    type: uses
  - target: "[[concepts/graphrag|GraphRAG]]"
    type: used_by
  - target: "[[concepts/graph-vs-document-retrieval|Graph vs Document Retrieval]]"
    type: related_to
---

# Graph Traversal Similarity

Graph Traversal Similarity is a technique for computing how similar two entities are by measuring the overlap of their graph neighborhoods — shared skills, shared domains, shared accomplishments, or any other relationship type in the knowledge graph. Unlike vector-based similarity (embedding cosine distance), graph traversal similarity is explainable: the system can show exactly which relationships contributed to the score. ^[extracted]

## How It Works

Zach Blumenfeld demonstrated this in the context of an employee skills graph: given two people, traverse variable-length paths (0 to 3 hops) that connect them through shared entities. ^[extracted]

```
Person A --[KNOWS]--> Skill: Python
Person B --[KNOWS]--> Skill: Python
                           ↑ shared skill contributes to similarity

Person A --[PUBLISHED]--> Thing: ML Pipeline --[BELONGS_TO]--> Domain: AI
Person B --[BUILT]-----> Thing: ML Pipeline --[BELONGS_TO]--> Domain: AI
                           ↑ shared domain and overlapping accomplishments
```

### The Overlap Calculation

The agent computes similarity by: ^[extracted]

1. Finding all entities (skills, accomplishments, domains) connected to both Person A and Person B
2. Counting the number of shared entities in each category
3. Normalizing by the total number of entities each person has
4. Returning the person with the highest overlap score and explaining why ("shared X skills in Y domains")

## Key Advantages over Vector Similarity

| Aspect | Vector Similarity | Graph Traversal Similarity |
|---|---|---|
| Basis | Embedding cosine distance | Shared graph neighborhood overlap |
| Explainability | Opaque — "similar because vectors are close" | Transparent — "similar because they share skills: Python, SQL, and both work in AI domain" ^[extracted] |
| Filterability | Hard to filter by specific attribute | Can require overlap on specific relationship types ^[inferred] |
| Auditability | Cannot correct false similarity | Can review and adjust the graph to fix incorrect connections ^[extracted] |
| New data | Needs re-embedding | New relationships automatically affect similarity ^[inferred] |

## The Cypher Pattern

The core Cypher query uses variable-length path matching: ^[extracted]

```cypher
MATCH (p1:Person {id: $personId})
MATCH (p2:Person {id: $otherPersonId})
OPTIONAL MATCH path = p1-[*0..3]-(p2)
RETURN path
```

This traverses 0 to 3 hops across skills, systems, domains, and accomplishments. Adding new node or relationship types (e.g., collaboration edges) automatically extends the traversal without query changes. ^[extracted]

## Relationship to Other Patterns

- [[concepts/multi-hop-retrieval|Multi-Hop Retrieval]] — the traversal technique this similarity measure uses
- [[concepts/graphrag|GraphRAG]] — the architecture that enables this kind of graph-native computation
- [[concepts/graph-vs-document-retrieval|Graph vs Document Retrieval]] — contrast with vector-only approaches that cannot do structured similarity
- [[concepts/knowledge-graph-ontology-design|Knowledge Graph Ontology Design]] — the ontology must include the relationship types that similarity should consider

## Sources

- [[references/aief2025-agentic-graphrag-zach-blumenfeld|AIEF2025 — Agentic GraphRAG — Zach Blumenfeld]] — Conference talk
