---
title: "AIEF2025 — Graph Intelligence: Enhance Reasoning and Retrieval Using Graph Analytics — Alison Cosette & Andreas, Neo4j"
tags:
  - aief2025
  - neo4j
  - graph-analytics
  - rag
  - community-detection
  - knowledge-graph
sources:
  - "[[sources/watchv=ggxaqvbwbl4]]"
summary: "How to apply graph data science algorithms — KNN similarity, community detection, PageRank, betweenness centrality — to improve RAG grounding data quality and retrieval diversity at scale. Introduces the Connect → Cluster → Curate framework."
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.42
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# AIEF2025 — Graph Intelligence: Enhance Reasoning and Retrieval Using Graph Analytics — Alison Cosette & Andreas, Neo4j

> A workshop-style talk at AI Engineer World's Fair 2025 demonstrating how to use Neo4j Graph Data Science (GDS) algorithms to improve RAG application quality at scale. Alison Cosette (Neo4j Developer Relations) presents the "Connect → Cluster → Curate" framework for using graph analytics to curate grounding data, diversify retrieval, and achieve observability into AI application behavior. ^[extracted]

## Connect: Build a Similarity Graph

- Run **KNN (K-Nearest Neighbors)** on document chunk embeddings to create similarity relationships between chunks. K=25 was used in the demo. ^[extracted]
- Create a projected graph (subgraph) containing only the document nodes and their embeddings, then run KNN on the projection to generate weighted similarity edges. ^[extracted]
- This transforms a flat set of unrelated chunks into a connected similarity graph where similar documents are linked. ^[extracted]

## Cluster: Community Detection

- Apply **Louvain community detection** (modularity optimization) on the similarity graph to group similar chunks into communities. ^[extracted]
- Communities are groups where intra-group connections are dense and inter-group connections are sparse — high modularity. ^[extracted]
- **Label Propagation** is a faster alternative for very large graphs; trades nuance for speed. ^[extracted]
- **Leiden** handles disconnected graphs better than Louvain. ^[extracted]
- Community detection runs on the **graph structure** (the connectedness), not the embedding values themselves — it reveals structural grouping that cosine similarity alone cannot surface. ^[inferred]

## Curate: Use Communities to Improve Data Quality

Once communities are assigned, you can inspect each community for curation issues: ^[extracted]

### Finding Redundancy Through Node Collapse

- **APOC (Awesome Procedures on Cypher) node collapse** deduplicates near-identical chunks into a single node while preserving lineage (keeping all original source connections). ^[extracted]
- This makes retrieval more efficient by avoiding returning 10 nearly-identical chunks from versioned documentation (e.g., algorithm docs for v1.5 vs v1.6 where the algorithm text hasn't changed). ^[extracted]

### Detecting Coverage Gaps

- Analyze per-community summary statistics (median word count, similarity distribution, chunk size) to find anomalous or low-quality communities. ^[extracted]
- A community where median word count is 1 (headings, navigation elements) is not useful grounding data. ^[extracted]

### The "Chicken Nuggets and Twinkies" Problem

- Cosine similarity is "exactly what you want" — which is the problem. It creates homogeneous results, the same way a robot cooking for kids would only make chicken nuggets and Twinkies. ^[extracted]
- In a community with 49 chunks at 0.98 average similarity, retrieving the top 10 gives zero diversity — just high confidence in one narrow idea. ^[extracted]
- "The Dark Side of Distance Metrics: How Cosine Similarity Broke America" — an unreleased talk title that captures the issue. ^[extracted]

## Five Principles of High-Quality Grounding Data

1. **Relevant** — does the data actually augment the answer? ^[extracted]
2. **Augmenting** — does it add new information? ^[extracted]
3. **Reliable** — can you trust the source? ^[extracted]
4. **Variety (Diverse)** — is there breadth across communities or is everything from one cluster? ^[extracted]
5. **Efficient** — is retrieval fast and cost-effective? ^[extracted]

## Diversity-Aware Retrieval

- Use **community membership** to re-rank results — promote results from different communities to ensure diversity. ^[extracted]
- Use **PageRank** to weight by importance — "why Google made billions of dollars". ^[extracted]
- **Betweenness centrality** identifies bridge documents that connect otherwise separate communities — these may represent foundational knowledge that spans domains. ^[extracted]
- Graph-based re-ranking can weight by importance, diversity, or community novelty, not just similarity. ^[inferred]

## The Application Memory Graph

- Model the AI application's own runtime as a graph: **Session → User Prompt → Assistant Response → Context Documents** (chunks). ^[extracted]
- This enables observability into which documents are actually being used, how conversations flow between knowledge communities, and what content is influential. ^[extracted]
- Co-occurrence relationships between documents (chunks retrieved together across many queries) reveal concept affinity that similarity alone misses. ^[extracted]
- Conversation flow analysis: track which communities a user traverses during a session, how long it takes to reach the right answer, and which paths lead to success. ^[extracted]
- PageRank on the application graph reveals the most influential documents — but requires scrutiny: is a rarely-used document irrelevant or is that a coverage gap? Is a highly-used document genuinely important or is the same stale text being copy-pasted across responses? ^[extracted]

## Graph Projections

- Most graph algorithms run on a **projection** (a subgraph), not the full graph. Projections specify exactly which nodes and relationships (and which properties) to include. ^[extracted]
- Project modes: `stream` (calculate and display), `mutate` (modify the projection), `write` (write results back to the database). ^[extracted]
- For KNN, create a projection with only document nodes and embedding properties — run KNN to generate similarity edges between previously unrelated nodes. ^[extracted]

## Ontology Design Strategy

- "Start small. Start with generic terms, see if it works. If too much volume in generic terms, get more specific." ^[extracted]
- Iterate on the ontology with a subset of data before scaling. Evaluate with real queries to confirm the ontology serves the use case. ^[extracted]
- Questions drive the ontology: "What are the questions people are going to ask?" ^[extracted]
- Use the **KG Builder** (Neo4j's simple KG pipeline) for organic ontology discovery — throw documents in, let entities and relationships rise naturally, then use graph analytics (PageRank, betweenness centrality) to understand what's important. ^[extracted]

## Tools and Implementation

- **Neo4j Graph Data Science (GDS)** library provides the algorithm implementations. ^[extracted]
- **APOC** (Awesome Procedures on Cypher) for utilities like node collapse. ^[extracted]
- **Console.Neo4j.io** — cloud instance with free Pro Trial (7 days) that includes GDS and vector optimization. ^[extracted]
- **Cypher** — query language; "all the Cypher used today is already in the notebooks". ^[extracted]
- **Multiple vector indices** — practical workaround for metadata filtering (e.g., one index per doc version for temporal filtering). ^[extracted]
- **Dual labels** on nodes (e.g., `Message` + `Assistant` on a node) for flexible querying. ^[extracted]

## Build-Operate-Thinking

- Alison's framing: "AI engineers are worried about the pipes AND the water." ^[extracted]
- The data scientists and developers aren't on different sides anymore — we're all AI engineers building from a cohesive point (data and application simultaneously). ^[extracted]
- "Our job is to build good, smart applications. We are responsible for the outcomes of these processes." ^[extracted]
- "It's not about human in the loop — it's about accountability in the loop." ^[extracted]

## Related

- [[concepts/graphrag|GraphRAG]] — base architecture for graph-based retrieval
- [[concepts/graph-analytics-rag-curation|Graph Analytics for RAG Curation]] — the Connect → Cluster → Curate framework
- [[concepts/application-observability-graph|Application Observability Graph]] — modeling AI app runtime as a graph
- [[concepts/knowledge-graph-ontology-design|Knowledge Graph Ontology Design]] — ontology design strategy
- [[entities/neo4j|Neo4j]] — graph database used
- [[concepts/re-ranking|Re-ranking]] — diversity-aware re-ranking

## Sources

- AIEF2025 — Alison Cosette & Andreas, Neo4j: <https://www.youtube.com/watch?v=GGxAQVbwBL4>
