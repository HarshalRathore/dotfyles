---
title: "Scaling Enterprise-Grade RAG: Lessons from Legal Frontier"
tags:
  - talk
  - rag
  - legal-ai
  - enterprise
  - lance-db
  - harvey
  - aief2025
aliases:
  - Scaling Enterprise-Grade RAG
  - Legal Frontier RAG
sources:
  - "[[sources/watchv=w1mizchnkfa]]"
summary: "Calvin Qi (Harvey) and Chang She (LanceDB) discuss challenges of building RAG systems for legal data at massive scale, including query complexity, eval-driven development, and AI-native lakehouse infrastructure."
provenance:
  extracted: 0.9
  inferred: 0.1
  ambiguous: 0.0
base_confidence: 0.75
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/harvey-ai|Harvey]]"
    type: related_to
  - target: "[[entities/lance-db|LanceDB]]"
    type: related_to
---

# Scaling Enterprise-Grade RAG: Lessons from Legal Frontier

**Speakers:** Calvin Qi (Harvey), Chang She (LanceDB)
**Event:** AI Engineer World's Fair 2025
**Video:** https://www.youtube.com/watch?v=W1MiZChnkfA

## Summary

Calvin Qi from [[entities/harvey-ai|Harvey]] and Chang She from [[entities/lance-db|LanceDB]] present on the challenges of building retrieval-augmented generation systems for the legal industry. Harvey processes legal data at massive scale — tens of millions of documents across multiple countries — and faces unique challenges in query complexity, domain specificity, data security, and evaluation.

## Key Topics

### Harvey's Data Scales

Harvey handles three scales of legal data: ^[extracted]

1. **On-demand uploads** (1–50 docs) — individual document analysis
2. **Vaults** — project-scale collections (deals, litigation, data rooms)
3. **Data corpuses** — country-wide knowledge bases (legislation, case law, regulations)

### Query Complexity

Legal queries combine multiple retrieval signals: ^[extracted]

- Semantic understanding
- Temporal filtering
- Dataset references
- Keyword matching
- Multi-part regulatory reasoning
- Domain jargon resolution

### Eval-Driven Development

Harvey invests heavily in evaluation rather than fancy retrieval algorithms. The eval spectrum ranges from expensive expert reviews to fast automated metrics, with no silver bullet. ^[extracted]

### Infrastructure Needs

Enterprise RAG requires infrastructure that supports: ^[extracted]

- Reliability and availability at scale
- Smooth onboarding without manual tuning
- Data privacy and retention controls
- Vector, keyword, and filtering query support
- Online and offline performance

### LanceDB's Positioning

Chang She positions LanceDB as an "AI-native multimodal lake house" beyond just a vector database, providing a unified foundation for search, feature extraction, summarization, and generation. ^[extracted]

## Related Pages

- [[entities/harvey-ai|Harvey]] — legal AI assistant company
- [[entities/lance-db|LanceDB]] — AI-native multimodal lake house
- [[entities/calvin-qi|Calvin Qi]] — Harvey RAG team lead, LanceCB CEO
- [[entities/chang-she|Chang She]] — LanceDB speaker
- [[concepts/legal-ai|Legal AI]] — domain challenges
- [[concepts/enterprise-rag|Enterprise RAG]] — scaling challenges
- [[concepts/eval-driven-development|Eval-Driven Development]] — evaluation approach
- [[concepts/hybrid-retrieval|Hybrid Retrieval]] — multi-strategy retrieval
- [[concepts/ai-native-lakehouse|AI-Native Multimodal Lakehouse]] — infrastructure positioning

## Sources

- AIEF2025 - Scaling Enterprise-Grade RAG: Lessons from Legal Frontier - Calvin Qi (Harvey), Chang She (Lance) - https://www.youtube.com/watch?v=W1MiZChnkfA
