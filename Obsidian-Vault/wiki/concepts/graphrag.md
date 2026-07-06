---
title: GraphRAG
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
- 'https://www.youtube.com/watch?v=j-9ebjbxcbg'
- 'https://www.youtube.com/watch?v=-tgqa8fzf80'
- '[[sources/ai-engineer-worlds-fair-2025-talk]]'
- 'https://www.youtube.com/watch?v=9aqovt8lnmi'
- 'https://www.youtube.com/watch?v=cbir9xs2skq'
- 'https://www.youtube.com/watch?v=czm3cw6fdbs'
- 'Data readiness is a Myth: Reliable AI with an Agentic Semantic Layer — Anushrut Gupta, PromptQL - https://www.youtube.com/watch?v=1nOTQsfe1RU'
- AIEF2025 - Wisdom-Driven Knowledge Augmented Generation at Scale - Chin Keong Lam, Patho AI - https://www.youtube.com/watch?v=9AQOvT8LnMI
- 'AIEF2025 - Why Your Agent''s Brain Needs a Playbook: Practical Wins from Using Ontologies - Jesús Barrasa, Neo4j - https://www.youtube.com/watch?v=CbiR9xS2skQ'
- 'AIEF2025 - Agentic GraphRAG: Simplifying Retrieval Across Structured & Unstructured Data — Zach Blumenfeld - https://www.youtube.com/watch?v=CzM3cW6FdBs'
- 'AIEF2025 - Practical GraphRAG: Making LLMs smarter with Knowledge Graphs — Michael, Jesus, and Stephen, Neo4j - https://www.youtube.com/watch?v=XNneh6-eyPg'
- AIEF2025 - Knowledge Graphs in Litigation Agents — Tom Smoker, WhyHow - https://www.youtube.com/watch?v=yYxr6LdXNWM
- AIEF2025 - Top Ten Challenges to Reach AGI — Stephen Chin, Andreas Kollegger - https://www.youtube.com/watch?v=ypyvj_56sBU
lifecycle: draft
tier: supporting
updated: 2026-07-05
relationships:
- target: '[[concepts/hybridrag|HybridRAG]]'
  type: related_to
- target: '[[concepts/triplet-extraction|Triplet Extraction]]'
  type: uses
- target: '[[concepts/kag-knowledge-augmented-generation|KAG (Knowledge Augmented Generation)]]'
  type: related_to
- target: '[[concepts/ontology-driven-retrieval|Ontology-Driven Retrieval]]'
  type: related_to
category: concepts
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
created: '2026-07-05T04:30:43.871841+00:00'
summary: GraphRAG
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

## Litigation Domain: Knowledge Graphs in Legal Work

[[entities/whyhow|WhyHow]] (founded by [[entities/tom-smoker|Tom Smoker]]) applies GraphRAG-inspired patterns to class action and mass tort litigation. Their system represents individuals, products, ingredients, concentrations, and IDs as connected entities in a knowledge graph, enabling lawyers to trace connections between harmed individuals and pharmaceutical manufacturers. ^[extracted]

This domain demonstrates GraphRAG's strength in **networked, schematized data**: the ability to see what is connected to something else, do multi-hop traversal, and perform mass analytics on connections. For litigation, this means tracing individual → product → ingredient → concentration → ID chains to build case networks. ^[extracted] See [[concepts/litigation-agents|Litigation Agents]] for the full domain context.

## Advantages over Vector-Only RAG

- Knowledge graphs capture **relationships** between entities in structured form, not just semantic proximity
- Enables multi-hop reasoning: "What entity is related to X through relationship Y?"
- Queries can follow explicit relationship paths for precise factual retrieval
- Particularly effective for structured domains: retail, financial services, employee databases, and any dataset with well-defined entity relationships ^[extracted]

## Challenges

- Ontology design is the most time-consuming part (~80% of effort) ^[extracted]
- Triplet quality directly determines retrieval quality — noisy triplets produce noisy results
- **Cannot capture business semantics at scale** — Knowledge graphs model entity relationships but cannot encode tacit business language like "what does 'at risk' mean to my business?" Each term has context-dependent meaning that varies across teams, domains, and time. Additionally, you cannot practically capture a billion-row Snowflake table in a graph structure. ^[extracted] This limits GraphRAG's applicability as a full semantic layer for enterprise business contexts. ^[inferred] See [[concepts/tribal-knowledge-in-ai|Tribal Knowledge in AI]] and [[concepts/agentic-semantic-layer|Agentic Semantic Layer]] for alternative approaches.

### Real-World Case: Writer

[[entities/writer|Writer]] provides a concrete case study in overcoming graph database challenges. Their team encountered four specific problems: (1) graph construction cost at scale, (2) Cypher struggling with similarity matching, (3) LLMs preferring text over graph structures, and (4) expertise mismatch. Their solution was to build a specialized model for graph construction that runs on CPUs or smaller GPUs — returning to their core competency rather than trying to become graph database experts. This customer-first approach (solving the retrieval problem rather than forcing a technology) is what Sam Julien considers the key to their success. ^[extracted] See [[references/aief2025-when-vectors-break-down-sam-julien-writer|AIEF2025 talk]] for the full journe…

## Industry Trajectory: Hybrid RAG

Michael Hunger, Stephen Shin, and [[entities/jesús-barrasa|Jesús Barrasa]] at AIEF2025 framed GraphRAG as breathing new life into the AI ecosystem. On Gartner's 2024 hype cycle, generic AI is trending down, RAG is getting over the hump, but GraphRAG and related patterns are providing new momentum. Analysts report GraphRAG is grounded in facts, resolves hallucinations, and that knowledge graphs + AI together solve these problems. ^[extracted]

### Evidence Base

| Source | Finding | Metric |
|---|---|---|
| Microsoft Research (GraphRAG paper) | Better results with less token cost | Lower cost than standard RAG ^[extracted] |
| DataWorld study | RAG on graph vs RAG on SQL | 3× improvement in LLM response accuracy ^[extracted] |
| LinkedIn customer support | Knowledge graph for support scenarios | 28.6% reduction in median per-issue resolution time ^[extracted] |

The speakers also introduced the **GraphRAG Patterns Catalog** (GraphRAG.com) — a collection of named patterns with example graphs and Cypher queries for building GraphRAG applications. ^[extracted]

### The Two-Brain Analogy

The speakers use a cognitive analogy: the human brain's right side is creative, builds things, and extrapolates (like LLMs); the left side is logical, has facts, reasoning, and enriches data (like knowledge graphs). Knowledge graphs provide the factual, logical foundation that grounds and explains the LLM's creative output. ^[extracted] See [[concepts/two-brain-analogy-llm|Two-Brain Analogy: LLMs and Knowledge Graphs]] for the full framing.

### Vector Similarity Is Not Relevance

A core insight: vector similarity is not the same as relevance. Vector databases retrieve by computing embedding distances, which pulls back only a fraction of relevant information, cannot capture entity relationships, and produces unexplainable results. Knowledge graphs retrieve by traversing entity-relationship edges, providing complete retrieval, structural relevance, explainability, and multi-hop reasoning. ^[extracted] See [[concepts/vector-similarity-vs-relevance|Vector Similarity vs. Relevance]] for the full analysis.

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
- [[concepts/litigation-agents|Litigation Agents]] — knowledge graphs in legal domain
- [[concepts/graph-state-management|Graph State Management]] — graphs as workflow state substrate

## Sources
- [[references/aief2025-graph-intelligence-alison-andreas-neo4j|AIEF2025 — Graph Intelligence: Enhancing Reasoning and Retrieval Using Graph Analytics — Alison Cosette & Andreas, Neo4j]] — Conference talk
- [[references/aief2025-building-alices-brain-ai-sales-rep-learns-like-human-sherwood-satwik-11x|AIEF2025 — Building Alice's Brain: an AI Sales Rep that Learns Like a Human — Sherwood & Satwik, 11x]] — Conference talk (hybrid RAG plans)
- [[references/aief2025-why-your-agent-brain-needs-playbook-ontologies-jesus-barrasa|AIEF2025 — Why Your Agent's Brain Needs a Playbook — Jesús Barrasa, Neo4j]] — Conference talk
- [[references/aief2025-when-vectors-break-down-sam-julien-writer|AIEF2025 — When Vectors Break Down: Graph-Based RAG for Dense Enterprise Knowledge — Sam Julien, Writer]] — Conference talk
- [[references/aief2025-knowledge-graphs-litigation-agents-tom-smoker-whyhow|AIEF2025 — Knowledge Graphs in Litigation Agents — Tom Smoker, WhyHow]] — Conference talk
