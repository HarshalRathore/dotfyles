---
title: "Neo4j Browser"
tags:
  - tool
  - neo4j
  - visualization
  - graph-database
  - aief2025
aliases:
  - Neo4j Browser Preview
sources:
  - "[[sources/watchv=j-9ebjbxcbg]]"
summary: "Neo4j's web-based graph visualization tool (browser.neo4j.io/preview) for exploring and visualizing property graphs in real-time during workshops and development."
provenance:
  extracted: 0.90
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.55
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/neo4j|Neo4j]]"
    type: product_of
  - target: "[[concepts/property-graph-model|Property Graph Model]]"
    type: visualizes
---

# Neo4j Browser

Neo4j Browser is [[entities/neo4j|Neo4j]]'s web-based tool for visualizing and interacting with property graphs. At AIEF2025, it was used as the visualization layer during the GraphRAG workshop to let participants see the graph structure in real-time as queries were executed. ^[extracted]

## Access

The workshop used the preview instance at `browser.neo4j.io/preview`, which connects to the workshop's managed Neo4j database. Users authenticate with the same credentials as the Jupyter notebooks: `attendee<N>` for both username and password. ^[extracted]

## Usage in the Workshop

Participants used Neo4j Browser to: ^[extracted]

1. **Visualize the graph** — see nodes (people, skills) and relationships (KNOWS) rendered as a force-directed graph
2. **Run Cypher queries** — execute queries and see results as both tables and visual graph representations
3. **Explore relationships** — click on nodes to see connected entities and relationships

The browser can display results as either a table (tabular data) or a graph (visual node-edge rendering). When a query returns node objects (not just scalar values), the graph view is available. ^[extracted]

## Relationship to Other Concepts

- [[entities/neo4j|Neo4j]] — the database the browser connects to
- [[concepts/property-graph-model|Property Graph Model]] — the data model visualized
- [[concepts/cypher-query-language|Cypher Query Language]] — the query language used in the browser

## Sources

- [[references/aief2025-intro-to-graphrag-zach-blumenfeld|AIEF2025 — Intro to GraphRAG Workshop — Zach Blumenfeld]]
