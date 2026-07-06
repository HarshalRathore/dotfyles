---
title: Writer Research Team Structure
category: concepts
tags:
- research-team
- ai-organization
- enterprise-models
- evaluations
- domain-models
- retrieval
- aief2025
sources:
- 'AIEF2025 - When Vectors Break Down: Graph-Based RAG for Dense Enterprise Knowledge - Sam Julien, Writer - https://www.youtube.com/watch?v=XlAIgmi_Vow'
summary: 'Writer''s research team has four areas of focus: enterprise models (Palmyra X5), practical evaluations (Failsafe QA), domain-specific specialization (Palmyra Med/Fin), and retrieval/knowledge integr...'
provenance:
  extracted: 0.9
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.8
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[entities/writer|Writer]]'
  type: describes
- target: '[[concepts/enterprise-rag|Enterprise RAG]]'
  type: related_to
- target: '[[concepts/graphrag|GraphRAG]]'
  type: related_to
---

# Writer Research Team Structure

Writer's research team is organized into four areas of focus, all unified by a customer-first problem-solving approach.

## Four Areas of Focus

### 1. Enterprise Models

Building large language models for enterprise use. The flagship is **Palmyra X5**, which powers the AI Engineer website. ^[extracted]

### 2. Practical Evaluations

Developing benchmarks and evaluation frameworks. The flagship is **Failsafe QA**, a finance-specific benchmark. ^[extracted]

### 3. Domain-Specific Specialization

Creating domain-tailored models. Current models include:
- **Palmyra Med** — healthcare domain
- **Palmyra Fin** — finance domain ^[extracted]

### 4. Retrieval and Knowledge Integration

Bringing enterprise data to work with models in a secure, reliable way. This is the area focused on in Sam Julien's AIEF2025 talk, covering graph-based RAG, knowledge graph construction, and hybrid retrieval. ^[extracted]

## Unifying Principle

All four areas are driven by **solving customer problems** rather than implementing specific solutions or chasing hype. This customer-first approach is what Sam Julien considers the key to Writer's success. ^[extracted]

## Related

- [[entities/writer|Writer]] — the organization
- [[concepts/customer-first-problem-solving|Customer-First Problem Solving]] — the unifying approach
- [[concepts/enterprise-rag|Enterprise RAG]] — the domain
- [[concepts/graphrag|GraphRAG]] — the retrieval architecture
