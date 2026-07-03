---
title: "GraphRAG"
tags:
  - rag
  - retrieval
  - knowledge-graph
  - graph-database
  - architecture
aliases:
  - Graph RAG
  - Knowledge Graph RAG
sources:
  - "AI Engineer World's Fair 2025 talk — HybridRAG: A Fusion of Graph and Vector Retrieval — Mitesh Patel, NVIDIA - https://www.youtube.com/watch?v=-tgQa8Fzf80"
  - "AI Engineer World's Fair 2025 talk - \"Data readiness\" is a Myth: Reliable AI with an Agentic Semantic Layer — Anushrut Gupta, PromptQL - https://www.youtube.com/watch?v=1nOTQsfe1RU"
  - "AIEF2025 - Wisdom-Driven Knowledge Augmented Generation at Scale - Chin Keong Lam, Patho AI - https://www.youtube.com/watch?v=9AQOvT8LnMI"
  - "AIEF2025 - Why Your Agent's Brain Needs a Playbook: Practical Wins from Using Ontologies - Jesús Barrasa, Neo4j - https://www.youtube.com/watch?v=CbiR9xS2skQ"
  - "AIEF2025 - Agentic GraphRAG: Simplifying Retrieval Across Structured & Unstructured Data — Zach Blumenfeld - https://www.youtube.com/watch?v=CzM3cW6FdBs"
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
relationships:
  - target: "[[concepts/hybridrag|HybridRAG]]"
    type: related_to
  - target: "[[concepts/triplet-extraction|Triplet Extraction]]"
    type: uses
  - target: "[[concepts/kag-knowledge-augmented-generation|KAG (Knowledge Augmented Generation)]]"
    type: related_to
  - target: "[[concepts/ontology-driven-retrieval|Ontology-Driven Retrieval]]"
    type: related_to
---

# GraphRAG

GraphRAG is a retrieval-augmented generation architecture that uses a knowledge graph as its primary retrieval index. Unlike vector-based RAG, which retrieves passages by semantic similarity, GraphRAG retrieves by traversing entity-relationship edges — exploiting the structured connections between entities that vector databases inherently miss. ^[extracted]

## How It Works

GraphRAG operates in two phases:

1. **Knowledge Graph Construction (Offline)** — Source documents are processed to extract (entity, relationship, entity) triplets using an LLM guided by a domain-specific [[concepts/knowledge-graph-ontology-design|ontology]]. These triplets are stored in a graph database forming a network of entities connected by typed relationships.
2. **Graph Retrieval (Online)** — When a query arrives, relevant entities are identified and the graph is traversed via [[concepts/multi-hop-retrieval|multi-hop retrieval]] to collect connected entities and their relationships. The traversed subgraph is passed as context to the LLM for response generation. ^[extracted]

### Three Retrieval Strategies (Neo4j Framing)

[[entities/jesús-barrasa|Jesús Barrasa]] (Field CTO for AI at [[entities/neo4j|Neo4j]]) frames GraphRAG as enabling three retrieval strategies beyond vector-only RAG: ^[extracted]

1. **Vector semantic search** — over indexed embeddings stored as node properties in the graph database
2. **Contextualization** — navigating graph relationships from matched nodes to enrich retrieved context with connected entities
3. **Structured queries** — generating Cypher queries via text-to-query for precise factual retrieval

### Property Graph Model with Vector Integration

In [[entities/neo4j|Neo4j]]'s property graph model, both nodes and relationships carry **properties** — key-value pairs that can be numeric, string, or **vector** data types. This means the same platform handles both: ^[extracted]

- **Vector indexing** for semantic similarity search on embedded text
- **Graph traversal** for relationship-based contextualization

The vector index serves as an **entry point into the graph**: a vector search locates relevant nodes, and from there the retriever navigates relationships to enrich context. ^[extracted]

### Dual Graph Architecture

GraphRAG systems built from unstructured data maintain two graph layers: ^[extracted]

1. **Domain graph** — extracted entities and their typed relationships (the knowledge layer)
2. **Lexical graph** — source document structure (chunks, sections, clauses) connected to the domain graph via entity-mention edges

The lexical graph can range from a simple sequential list of chunks (for plain documents) to a richer tree structure (for legal contracts with sections, subsections, definitions, clauses). Each chunk stores both raw text and its vectorized embedding, creating a combined retrieval surface. ^[extracted]


### Agentic GraphRAG — Graph as Agent Data Layer

Zach Blumenfeld at AIEF2025 demonstrated an agentic GraphRAG pattern where the knowledge graph sits as the central data layer between agents and their tools. Rather than agents querying documents directly, the graph serves as a structured intermediate representation that agents query via [[concepts/model-context-protocol|MCP]]-connected Cypher generation. ^[extracted]

This pattern addresses a fundamental limitation of document-only [[concepts/agentic-rag|agentic RAG]]: agents with only a vector search tool cannot perform aggregation, analytics, or relationship traversal across the corpus. By extracting structured entities (people, skills, accomplishments, domains) into a graph and giving the agent schema-aware query tools, the same queries become precise: ^[extracted]

| Query | Document-Only Result | Graph-Augmented Result |
|---|---|---|
| "How many Python developers?" | Returns K=5 (top-K limit) | Returns actual count (e.g., 28) via Cypher aggregation |
| "Who is most similar to Lucas?" | Semantic search match | Overlap of shared skills, domains, and accomplishments with explicit reasoning |
| "Summarize technical talent distribution" | Cannot answer | Aggregates counts per skill, broken down by domain |
| "Who collaborates with whom?" | Searches text for "collaborators" | Traverses explicit collaboration edges between people |

The graph also enables **flexible data model expansion**: new data sources (e.g., an internal HR system with project assignments) add new relationship types without schema refactoring, unlike RDBMS which require join tables for many-to-many transitions. ^[extracted]

This is distinct from the [[concepts/ontology-driven-retrieval|ontology-driven retrieval]] pattern (Jesús Barrasa): ontology-driven retrieval uses the ontology as data to control *which* relationships to traverse, whereas agentic GraphRAG uses the graph as a structured query surface that agents can interrogate analytically. ^[inferred]

### Graph Analytics on the Graph — Post-Construction Curation

Beyond using the graph as a retrieval index, graph data science algorithms can be applied **to the graph itself** for data quality curation. Alison Cosette (Neo4j) at AIEF2025 demonstrated the **Connect → Cluster → Curate** framework: ^[extracted]

1. **Connect** — run KNN on chunk embeddings to create similarity edges between neighboring chunks
2. **Cluster** — apply community detection (Louvain, Leiden, or label propagation) to group similar chunks
3. **Curate** — inspect communities for redundant chunks (collapse duplicates via APOC), coverage gaps (communities with anomalous statistics), and diversity issues ("chicken nuggets and Twinkies" problem where top-K results come from one homogeneous cluster) ^[extracted]

This is distinct from GraphRAG's retrieval function: graph analytics operates on the *chunk similarity graph*, not the *entity knowledge graph*. Both can coexist in the same database — the knowledge graph for structured retrieval, the similarity graph for ongoing curation. ^[inferred] See [[concepts/graph-analytics-rag-curation|Graph Analytics for RAG Curation]] for the full framework.

## Advantages over Vector-Only RAG

- Knowledge graphs capture **relationships** between entities in structured form, not just semantic proximity
- Enables multi-hop reasoning: "What entity is related to X through relationship Y?"
- Queries can follow explicit relationship paths for precise factual retrieval
- Particularly effective for structured domains: retail, financial services, employee databases, and any dataset with well-defined entity relationships ^[extracted]

## Challenges

- Ontology design is the most time-consuming part (~80% of effort) ^[extracted]
- Triplet quality directly determines retrieval quality — noisy triplets produce noisy results
- **Cannot capture business semantics at scale** — Knowledge graphs model entity relationships but cannot encode tacit business language like "what does 'at risk' mean to my business?" Each term has context-dependent meaning that varies across teams, domains, and time. Additionally, you cannot practically capture a billion-row Snowflake table in a graph structure. ^[extracted] This limits GraphRAG's applicability as a full semantic layer for enterprise business contexts. ^[inferred] See [[concepts/tribal-knowledge-in-ai|Tribal Knowledge in AI]] and [[concepts/agentic-semantic-layer|Agentic Semantic Layer]] for alternative approaches.

## Related
- [[concepts/hybridrag|HybridRAG]] — graph + vector fusion
- [[concepts/kag-knowledge-augmented-generation|KAG (Knowledge Augmented Generation)]] — wisdom-driven graph architecture
- [[concepts/ontology-driven-retrieval|Ontology-Driven Retrieval]] — dynamic retrievers driven by stored ontologies
- [[concepts/wisdom-graph|Wisdom Graph]] — conceptual state machine for KAG
- [[concepts/knowledge-cards|Knowledge Cards]] — structured data retrieval for precise quantitative answers
- [[concepts/triplet-extraction|Triplet Extraction]] — constructing nodes and edges from text
- [[concepts/knowledge-graph-ontology-design|Knowledge Graph Ontology Design]] — ontology for consistent extraction
- [[concepts/multi-hop-retrieval|Multi-Hop Retrieval]] — traversal strategy for graph-based RAG
- [[concepts/graph-analytics-rag-curation|Graph Analytics for RAG Curation]] — graph algorithms for data quality curation
- [[concepts/application-observability-graph|Application Observability Graph]] — modeling app runtime as a graph

## Sources
- [[references/hybridrag-fusion-graph-vector-retrieval-mitesh-patel|HybridRAG: A Fusion of Graph and Vector Retrieval — Mitesh Patel, NVIDIA]] — Conference talk
- [[references/aief2025-wisdom-driven-kag-chin-keong-lam|AIEF2025 — Wisdom-Driven Knowledge Augmented Generation at Scale — Chin Keong Lam, Patho AI]] — Conference talk
- [[references/aief2025-why-your-agent-brain-needs-playbook-ontologies-jesus-barrasa|AIEF2025 — Why Your Agent's Brain Needs a Playbook — Jesús Barrasa, Neo4j]] — Conference talk
- [[references/aief2025-graph-intelligence-alison-andreas-neo4j|AIEF2025 — Graph Intelligence: Enhance Reasoning and Retrieval Using Graph Analytics — Alison Cosette & Andreas, Neo4j]] — Conference talk
