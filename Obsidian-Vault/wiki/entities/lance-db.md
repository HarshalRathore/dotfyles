---
title: "LanceDB"
tags:
  - company
  - vector-database
  - ai-infrastructure
  - lakehouse
  - multimodal
  - open-source
  - aief2025
aliases:
  - Lance
sources:
  - "[[sources/watchv=w1mizchnkfa]]"
summary: "LanceDB delivers an AI-native multimodal lake house — positioning beyond just a vector database as a foundational platform for AI data operations including feature extraction, summarization, and generation."
provenance:
  extracted: 0.8
  inferred: 0.2
  ambiguous: 0.0
base_confidence: 0.7
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/ai-native-lakehouse|AI-Native Multimodal Lakehouse]]"
    type: implements
  - target: "[[entities/harvey-ai|Harvey]]"
    type: uses
---

# LanceDB

LanceDB positions itself as an **AI-native multimodal lake house**, deliberately going beyond the framing of just a vector database. ^[extracted]

## Positioning

Chang She (LanceDB) described LanceDB as delivering "beyond what I call just a vector database, but what we call an AI-native multimodal lake house." ^[extracted] The idea is that AI systems need a good foundational platform for all the tasks required with AI data — not just search, but feature extraction, generating summaries, and other generative operations. ^[extracted]

## Use Case: Harvey

[[entities/harvey-ai|Harvey]] uses LanceDB to support their enterprise RAG system, handling queries over massive legal data sets including legislation, case laws, contracts, and litigation documents across multiple countries. ^[extracted]

## Related

- [[concepts/ai-native-lakehouse|AI-Native Multimodal Lakehouse]] — LanceDB's positioning
- [[entities/harvey-ai|Harvey]] — enterprise RAG customer
- [[entities/calvin-qi|Calvin Qi]] — co-speaker
- [[entities/lance-cb|LanceCB]] — related data tools company

## Sources

- AIEF2025 - Scaling Enterprise-Grade RAG: Lessons from Legal Frontier - Calvin Qi (Harvey), Chang She (Lance) - https://www.youtube.com/watch?v=W1MiZChnkfA
