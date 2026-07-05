---
title: "Ontology-Driven Retrieval"
tags:
  - method
  - retrieval
  - knowledge-graph
  - ontology
  - graphrag
sources:
  - "[[sources/watchv=cbir9xs2skq]]"
summary: "A retrieval architecture where the domain ontology is stored as data in the knowledge graph and queried dynamically to control which relationships the retriever traverses, enabling behavior changes without code changes."
provenance:
  extracted: 0.70
  inferred: 0.20
  ambiguous: 0.10
base_confidence: 0.45
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
relationships:
  - target: "[[concepts/graphrag|GraphRAG]]"
    type: extends
  - target: "[[concepts/knowledge-graph-ontology-design|Knowledge Graph Ontology Design]]"
    type: uses
  - target: "[[entities/neo4j|Neo4j]]"
    type: uses
---

# Ontology-Driven Retrieval

Ontology-Driven Retrieval is a [[concepts/graphrag|GraphRAG]] architecture pattern where the domain ontology is persisted as data in the knowledge graph itself and queried dynamically at retrieval time to determine which relationships the retriever should traverse. This creates a level of indirection where changing the ontology — a data artifact — changes retriever behavior on the fly without code changes. ^[extracted]

The concept was introduced by [[entities/jesús-barrasa|Jesús Barrasa]] (Field CTO for AI at [[entities/neo4j|Neo4j]]) at AI Engineer World's Fair 2025. ^[extracted]

## How It Works

1. **Ontology as data** — The domain ontology (classes, subclass relationships, inter-class relationship types) is stored as nodes and edges in the same graph database that holds the domain data. ^[extracted]
2. **Relationship annotation** — Specific relationship types in the ontology are annotated as "contextualizing" — i.e., relationships that should be navigated during retrieval enrichment. ^[extracted]
3. **Vector entry point** — A vector search on embedded text (chunks, document plots, etc.) locates the starting node in the graph. ^[extracted]
4. **Dynamic query** — Instead of hard-coding which relationships to traverse, the retriever first queries the ontology layer: "which relationships are annotated as contextualizing?" ^[extracted]
5. **Contextualized traversal** — Only those ontology-annotated relationships are navigated to enrich the matched nodes with connected information. ^[extracted]
6. **Data-driven control** — Changing the annotations in the ontology directly changes retriever behavior, without any code changes. ^[extracted]

## Barrasa's Example

Using a movie database: ^[extracted]

- Vector search matches "a computer hacker that discovers the world he knows is simulated reality controlled by machines" → finds "The Matrix" movie node
- The ontology defines that "ACTED_IN" is a contextualizing relationship (but "PRODUCED" and "DIRECTED" are not annotated as contextualizing)
- The retriever traverses only from the movie to actors via ACTED_IN edges, enriching the context with actor information
- An ontology change (e.g., adding a new contextualizing relationship type or modifying an existing annotation) changes retriever behavior dynamically

## Advantages

- **No hard-coded retriever logic** — retrieval behavior is data-driven, not code-driven ^[extracted]
- **Runtime adaptability** — ontology changes take effect immediately without redeployment ^[inferred]
- **Separation of concerns** — domain experts can control retrieval behavior by editing the ontology, without engineering involvement ^[inferred]
- **Consistent with model-driven design** — follows the principle that a well-defined schema pays dividends at query time ^[extracted]

## Relationship to Other Patterns

- Extends [[concepts/graphrag|GraphRAG]] by making the retriever itself ontology-aware
- Uses [[concepts/knowledge-graph-ontology-design|Knowledge Graph Ontology Design]] principles for the stored ontology
- Complements [[concepts/hybridrag|HybridRAG]] — ontology annotations could control which of the two retrieval paths (graph vs vector) to prioritize ^[inferred]
- Related to [[concepts/agentic-rag|Agentic RAG]] in that both make retrieval decisions dynamic — ontology-driven retrieval does so via schema-level control rather than agent reasoning ^[inferred]

## Open Questions

- How does ontology annotation scale for very large graphs with hundreds of relationship types? ^[ambiguous]
- The talk demonstrates the pattern with a small movie database — it's unclear how latency is affected by the extra ontology query hop at scale. ^[ambiguous]
- Whether ontology-driven retrieval is compatible with non-Neo4j graph databases depends on their ability to store schema-as-data. ^[inferred]

## Related

- [[concepts/graphrag|GraphRAG]] — extended by this pattern
- [[concepts/knowledge-graph-ontology-design|Knowledge Graph Ontology Design]] — the ontology design that feeds into this pattern
- [[concepts/agentic-rag|Agentic RAG]] — alternative approach to dynamic retrieval
- [[concepts/hybridrag|HybridRAG]] — complementary fusion approach
- [[concepts/multi-hop-retrieval|Multi-Hop Retrieval]] — traversal strategy enabled by the ontology annotations
- [[entities/neo4j|Neo4j]] — database platform used in the demonstration
- [[entities/jesús-barrasa|Jesús Barrasa]] — originator of the pattern
- [[references/aief2025-why-your-agent-brain-needs-playbook-ontologies-jesus-barrasa|AIEF2025 Talk Reference]] — source talk

## Sources

- [[references/aief2025-why-your-agent-brain-needs-playbook-ontologies-jesus-barrasa|AIEF2025 — Why Your Agent's Brain Needs a Playbook — Jesús Barrasa, Neo4j]]
