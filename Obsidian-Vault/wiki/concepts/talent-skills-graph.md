---
title: "Talent Skills Graph"
tags:
  - knowledge-graph
  - hr-tech
  - talent-management
  - neo4j
  - graphrag
  - aief2025
aliases:
  - Employee Skills Graph
  - Skills Graph
sources:
  - "[[sources/watchv=j-9ebjbxcbg]]"
  - "[[sources/watchv=czm3cw6fdbs]]"
summary: "A knowledge graph use case for employee talent management: modeling people, their skills, accomplishments, and domains to enable team formation, substitution, collaboration analysis, and talent distribution queries."
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
  - target: "[[concepts/graphrag|GraphRAG]]"
    type: use_case_of
  - target: "[[concepts/property-graph-model|Property Graph Model]]"
    type: implements
---

# Talent Skills Graph

A talent skills graph is a knowledge graph use case for employee talent management, team formation, and skills analysis. It models people, their skills, accomplishments, and work domains to answer questions that pure document retrieval cannot handle. ^[extracted]

## Use Cases

The talent skills graph enables: ^[extracted]

- **Talent search** — "Find all Python developers with API design experience"
- **Team formation** — "Build a team with complementary skills for an AI project"
- **Substitutions** — "Who can substitute for someone who knows Scrum and Tableau?"
- **Talent distribution** — "Summarize the technical skills distribution across the organization"
- **Similarity** — "Who is most similar to Lucy in terms of skills and domains?"
- **Collaboration analysis** — "Which individuals have collaborated on AI projects?"

## Data Model

The minimal model (Blumenfeld's Phase 1) consists of three primitives: ^[extracted]

```
Person --[:KNOWS]--> Skill
```

Expanded model (Phase 2) adds: ^[extracted]

```
Person --[:KNOWS]--> Skill
Person --[accomplishment_type]--> Accomplishment --[:BELONGS_TO]--> Domain
```

Where accomplishment types are enumerated: published, built, won, led, managed, optimized, shipped. ^[extracted]

## Data Sources

The talent skills graph can be populated from: ^[extracted]

1. **Structured CSV data** — a table with columns: email, name, list of skills (used in the AIEF2025 workshop)
2. **Unstructured resumes/PDFs** — entities extracted via LLMs guided by a Pydantic schema
3. **Internal HR systems** — project collaboration data, performance reviews, organizational hierarchy

## Graph Queries

### Count per Skill

```cypher
MATCH (p:Person)-[:KNOWS]->(s:Skill)
RETURN s.name, count(DISTINCT p) AS people_count
ORDER BY people_count DESC
```

### Similarity via Shared Skills

```cypher
MATCH (p:Person {name: $name})-[:KNOWS]->(s:Skill)<-[:KNOWS]-(other:Person)
RETURN other.name, count(DISTINCT s) AS shared_skills
ORDER BY shared_skills DESC
```

### Multi-Hop Skill Exploration

```cypher
MATCH (lucy:Person {name: "Lucy"})-[:KNOWS]->(skill:Skill)<-[:KNOWS]-(similar:Person)-[:KNOWS]->(otherSkill:Skill)
RETURN DISTINCT otherSkill.name
```

Finds all skills known by people who share skills with Lucy. ^[extracted]

## Relationship to Other Concepts

- [[concepts/graphrag|GraphRAG]] — the architecture that powers this use case
- [[concepts/graph-vs-document-retrieval|Graph vs Document Retrieval]] — why the graph approach beats document-only for this use case
- [[concepts/graph-traversal-similarity|Graph Traversal Similarity]] — computing similarity via shared graph neighbors
- [[concepts/knowledge-graph-ontology-design|Knowledge Graph Ontology Design]] — designing the schema for talent data

## Sources

- [[references/aief2025-intro-to-graphrag-zach-blumenfeld|AIEF2025 — Intro to GraphRAG Workshop — Zach Blumenfeld]]
- [[references/aief2025-agentic-graphrag-zach-blumenfeld|AIEF2025 — Agentic GraphRAG — Zach Blumenfeld]]
