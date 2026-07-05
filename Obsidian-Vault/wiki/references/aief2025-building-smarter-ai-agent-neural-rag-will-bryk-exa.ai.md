---
title: "AIEF2025 - Building a Smarter AI Agent with Neural RAG"
category: references
tags: [aief2025, neural-rag, ai-native-search, embeddings, exa, will-bryk, search, llm-retrieval]
aliases: [neural rag talk, will bryk exa talk]
summary: "Will Bryk (Exa.ai) at AIEF2025: the case for AI-native search built from scratch with transformer embeddings, the information theory argument for why LLMs need search, and why human-optimized search engines are suboptimal for AI agents."
sources:
  - "AIEF2025 - Building a Smarter AI Agent with Neural RAG - Will Bryk, Exa.ai - https://www.youtube.com/watch?v=xnXqpUW_Kp8"
provenance:
  extracted: 0.95
  inferred: 0.05
  ambiguous: 0.00
base_confidence: 0.90
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[entities/will-bryk]]"
    type: authored_by
  - target: "[[entities/exa]]"
    type: about
  - target: "[[concepts/neural-rag]]"
    type: describes
  - target: "[[concepts/ai-native-search]]"
    type: describes
  - target: "[[concepts/bitter-lesson]]"
    type: applies
---

# Building a Smarter AI Agent with Neural RAG

**Speaker**: Will Bryk, Founder of Exa.ai
**Event**: AI Engineer World's Fair 2025
**Video**: https://www.youtube.com/watch?v=xnXqpUW_Kp8

## Summary

Will Bryk presents the case for building web search from scratch using transformer-based embeddings rather than adapting traditional keyword-based search for AI. He traces the evolution from Google's 1998 PageRank breakthrough through ChatGPT's 2021 release, arguing that LLMs will always need to search the web due to information-theoretic constraints, and that search engines optimized for humans are fundamentally suboptimal for AI agents.

## Key Arguments

### The Information Theory Argument for LLM Search

Bryk presents a simple information-theoretic argument: GPT-4 has roughly 10 terabytes in its weights, while the web is in the exabyte range and constantly updating. Therefore, LLMs cannot contain all web knowledge in their parameters and will always need an external search interface. ^[extracted]

### Human vs. AI Search Optimization

Traditional search engines (Google, Bing) were built for humans — slow, keyword-typing creatures who click a few links and care about UI. AI agents are a fundamentally different class of user: they can process vast information, use complex queries, and need dense knowledge retrieval. The same search algorithm is not optimal for both. ^[extracted]

### Embedding-Based Search

Exa's approach replaces keyword indexing with document embeddings — dense vectors representing meaning, ideas, and references. This enables understanding of complex queries including negative constraints ("shirts without stripes") that traditional keyword search fails on. ^[extracted]

### The Bitter Lesson Applied to Search

Bryk frames Exa's approach as an application of the [[concepts/bitter-lesson|Bitter Lesson]]: rather than hard-coding search algorithms based on human behavior, use transformers and scaling to build a search engine that learns to understand queries at a deep semantic level. ^[inferred]

## Related Pages

- [[entities/will-bryk]] — Speaker and founder of Exa
- [[entities/exa]] — The AI-native search engine
- [[concepts/neural-rag]] — The embedding-based search paradigm
- [[concepts/ai-native-search]] — Search designed for AI agents
- [[concepts/bitter-lesson]] — The principle underlying the approach
- [[concepts/ai-powered-search]] — Broader category of AI-enhanced search
- [[concepts/rag-pipeline-architecture]] — Where retrieval fits in LLM systems
