---
title: "Knowledge Graph Ontology Design"
tags:
  - knowledge-graph
  - ontology
  - llm
  - extraction
  - prompt-engineering
  - rag
aliases:
  - Ontology Design for KG
  - Knowledge Graph Schema
sources:
  - "AI Engineer World's Fair 2025 talk — HybridRAG: A Fusion of Graph and Vector Retrieval — Mitesh Patel, NVIDIA - https://www.youtube.com/watch?v=-tgQa8Fzf80"
  - "AIEF2025 - Wisdom-Driven Knowledge Augmented Generation at Scale - Chin Keong Lam, Patho AI - https://www.youtube.com/watch?v=9AQOvT8LnMI"
  - "AIEF2025 - Why Your Agent's Brain Needs a Playbook: Practical Wins from Using Ontologies - Jesús Barrasa, Neo4j - https://www.youtube.com/watch?v=CbiR9xS2skQ"
  - "AIEF2025 - Agentic GraphRAG: Simplifying Retrieval Across Structured & Unstructured Data — Zach Blumenfeld - https://www.youtube.com/watch?v=CzM3cW6FdBs"
provenance:
  extracted: 0.78
  inferred: 0.17
  ambiguous: 0.05
base_confidence: 0.42
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
relationships:
  - target: "[[concepts/triplet-extraction|Triplet Extraction]]"
    type: uses
  - target: "[[concepts/graphrag|GraphRAG]]"
    type: used_by
  - target: "[[concepts/hybrid-graph-extraction|Hybrid Graph Extraction]]"
    type: related_to
  - target: "[[concepts/kag-knowledge-augmented-generation|KAG (Knowledge Augmented Generation)]]"
    type: related_to
  - target: "[[concepts/ontology-driven-retrieval|Ontology-Driven Retrieval]]"
    type: related_to
---

# Knowledge Graph Ontology Design

Knowledge Graph Ontology Design is the process of defining the schema — entity types, relationship types, and their allowed combinations — that governs how triplets are extracted from unstructured documents for a [[concepts/graphrag|GraphRAG]] or [[concepts/hybridrag|HybridRAG]] system. The ontology is encoded into LLM prompts to guide structured extraction. ^[extracted]

## Importance

Ontology design is described as ~80% of the total effort in building a GraphRAG system. The ontology determines what entities will be captured, what relationships between them matter, and ultimately what questions the system can answer. A poorly designed ontology produces noisy triplets, which in turn produce noisy retrieval results. ^[extracted]

## Process

1. **Understand the domain** — identify the key entity types (people, organizations, concepts, events, financial metrics, etc.)
2. **Define relationships** — specify the allowed relationship types between entity pairs
3. **Create extraction prompts** — encode the ontology into prompts that guide LLMs during [[concepts/triplet-extraction|triplet extraction]]
4. **Iterate** — extract triplets from a sample, evaluate quality, and refine the ontology
5. **Validate** — test retrieval with real queries to confirm the ontology serves the use case ^[inferred]

## Ontologies as Formal Schemas

[[entities/jesús-barrasa|Jesús Barrasa]] (Field CTO for AI at [[entities/neo4j|Neo4j]]) frames ontologies as a solution to a deeper problem: the **schema divergence** across different data pipelines. Building a knowledge graph requires injecting a target schema, but each pipeline uses a different representation — JSON for structured data mappings, Pydantic classes for LLM extraction, or natural language in prompts. This divergence is "not ideal to manage." ^[extracted]

Ontologies solve this by serving as a shared, formal, **implementation-agnostic** domain description, defined by W3C standards (OWL, RDF). An ontology describes: ^[extracted]

- **Classes** — corresponding to graph node labels (e.g., Privately Held Company, Stock Corporation)
- **Subclass relationships** — one class as a subcategory of another
- **Inter-class relationships** — typed connections between classes of any nature (e.g., "governed by a board agreement")

Barrasa cites the **FIBO ontology** (Financial Industry Business Ontology) as a real-world public example of an ontology standard. The approach enables model-driven graph construction that works for both structured and unstructured pipelines from a single schema definition. ^[extracted]

## Ontology-Driven Retrieval

Barrasa's second key contribution: storing the ontology *in the graph itself* as data enables [[concepts/ontology-driven-retrieval|ontology-driven retrieval]]. The ontology annotations (e.g., "contextualizing relationship") determine which edges the retriever navigates. Changing the ontology — a data artifact — changes retriever behavior on the fly without code changes. This creates a level of indirection where the same retrieval engine adapts its behavior based on ontology annotations. ^[extracted]

## Hybrid Extraction

Chin Keong Lam of Patho AI recommends a **[[concepts/hybrid-graph-extraction|hybrid graph extraction]]** approach: start with automated LLM triplet extraction, then have domain experts prune incorrect relationships and refine the taxonomy. This balances the speed of automated extraction with the accuracy of expert-guided ontology design. The key insight: ontology quality depends on domain experts establishing the canonical entity types and relationship types, which purely automated extraction cannot guarantee. ^[extracted]

### Iterative Expansion Pattern (Blumenfeld)

Zach Blumenfeld at AIEF2025 demonstrated a practical alternative to the up-front ontology design: start with the simplest possible data model and expand iteratively as query requirements grow. ^[extracted]

**Phase 1: Minimal model**
- Three primitives: Person, Skill, Accomplishment (the "things" people do)
- No subtyping, minimal relationship types
- Sufficient for basic counting and similarity queries ^[inferred]

**Phase 2: Add entity enrichment**
- Subtype accomplishments by type: published, built, won, led, managed, optimized, shipped ^[extracted]
- Group accomplishments into domains: AI, data engineering, analytics
- Add work type classification
- Enables domain-specific filtering and cross-domain similarity ^[inferred]

**Phase 3: Add new data sources**
- Import internal HR data with project collaboration information
- Add new relationship types (e.g., COLLABORATED_ON) without schema refactoring
- Existing traversal queries automatically incorporate new edges ^[extracted]

This contrasts with the up-front ontology design approach (~80% of effort) advocated by [[entities/mitesh-patel|Mitesh Patel]] and [[entities/chin-keong-lam|Chin Keong Lam]]. The choice depends on whether the domain is well-understood (heavy up-front design) or exploratory (start simple, expand). ^[inferred]

## Best Practices

- Be specific about what constitutes an entity and what relationships matter for the target use case
- The ontology is domain-dependent — a financial ontology (companies, spending, revenue) differs from a medical ontology (symptoms, treatments, drugs)
- Start narrow and expand iteratively as gaps are discovered
- Include negative examples in prompts to prevent common extraction errors ^[inferred]

## Quality Factors

The speaker's team tested triplet extraction accuracy on a 100-document corpus and found that ontology-guided extraction with LLaMA 3.3 achieved 71% baseline accuracy. Fine-tuning (LoRA on LLaMA 3.1) raised this to 87%, and additional data cleaning and output length optimization further improved results. ^[extracted]

## Related

- [[concepts/triplet-extraction|Triplet Extraction]] — the mechanism guided by the ontology
- [[concepts/graphrag|GraphRAG]] — the system that consumes the ontology-driven triplets
- [[concepts/ontology-driven-retrieval|Ontology-Driven Retrieval]] — dynamic retrievers driven by stored ontologies
- [[concepts/unstructured-data-extraction|Unstructured Data Extraction]] — broader extraction context
- [[concepts/hybridrag|HybridRAG]] — hybrid architecture using ontology-driven KGs
- [[concepts/hybrid-graph-extraction|Hybrid Graph Extraction]] — LLM + expert methodology for graph construction
- [[concepts/kag-knowledge-augmented-generation|KAG (Knowledge Augmented Generation)]] — wisdom-driven graph architecture

## Sources
- [[references/aief2025-wisdom-driven-kag-chin-keong-lam|AIEF2025 — Wisdom-Driven Knowledge Augmented Generation at Scale — Chin Keong Lam, Patho AI]] — Conference talk
- [[references/aief2025-why-your-agent-brain-needs-playbook-ontologies-jesus-barrasa|AIEF2025 — Why Your Agent's Brain Needs a Playbook — Jesús Barrasa, Neo4j]] — Conference talk
