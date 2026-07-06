---
title: Enterprise RAG
tags:
- rag
- enterprise
- scaling
- data-security
- infrastructure
- aief2025
aliases:
- Enterprise Retrieval-Augmented Generation
sources:
- 'https://www.youtube.com/watch?v=w1mizchnkfa'
summary: RAG systems at enterprise scale face challenges in data volume, query complexity, domain specificity, data security, and evaluation — requiring infrastructure that supports vector, keyword, and fil...
provenance:
  extracted: 0.85
  inferred: 0.15
  ambiguous: 0.0
base_confidence: 0.7
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/legal-ai|Legal AI]]'
  type: extends
- target: '[[concepts/ai-native-lakehouse|AI-Native Multimodal Lakehouse]]'
  type: uses
category: concepts
---

# Enterprise RAG

Enterprise RAG refers to retrieval-augmented generation systems deployed at scale for business-critical applications. The legal frontier represents one of the most demanding test cases, combining massive data volumes, complex queries, domain specificity, and strict security requirements. ^[extracted]

## Five Core Challenges

Enterprise RAG systems face five interconnected challenges: ^[extracted]

1. **Scale** — tens of millions of documents, each often very large and dense
2. **Query complexity** — expert queries combining semantic, temporal, keyword, and multi-regulatory reasoning
3. **Domain specificity** — data packed with specialized terminology requiring domain expert collaboration
4. **Data security and privacy** — confidential deals, regulated data, customer segregation, retention policies
5. **Evaluation** — ensuring system quality without silver-bullet evals, requiring a spectrum of approaches

## Infrastructure Requirements

At enterprise scale, the underlying infrastructure must provide: ^[extracted]

- **Reliability and availability** — always-on for all users
- **Smooth onboarding and scaling** — ML and data teams focus on business logic, not database tuning
- **Data privacy and retention** — customer-segregated storage, legal retention policies
- **Telemetry and usage tracking** — observability into database performance
- **Query flexibility** — support for vector search, keyword search, filtering, sorting, and dynamic/agentic navigation

## Harvey's Scale

[[entities/harvey-ai|Harvey]] operates data corpuses with tens of millions of documents across multiple countries, each containing complex legal texts. ^[extracted] This scale requires infrastructure that handles both online performance (query latency) and offline performance (ingestion, re-ingestion, ML experiments). ^[extracted]

## Related

- [[concepts/legal-ai|Legal AI]] — domain-specific enterprise RAG
- [[concepts/eval-driven-development|Eval-Driven Development]] — quality assurance approach
- [[concepts/hybrid-retrieval|Hybrid Retrieval]] — combining retrieval strategies
- [[concepts/ai-native-lakehouse|AI-Native Multimodal Lakehouse]] — infrastructure positioning

## Sources

- AIEF2025 - Scaling Enterprise-Grade RAG: Lessons from Legal Frontier - Calvin Qi (Harvey), Chang She (Lance) - https://www.youtube.com/watch?v=W1MiZChnkfA
- AIEF2025 - When Vectors Break Down: Graph-Based RAG for Dense Enterprise Knowledge - Sam Julien, Writer - https://www.youtube.com/watch?v=XlAIgmi_Vow
