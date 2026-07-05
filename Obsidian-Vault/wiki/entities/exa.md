---
title: Exa.ai
category: entities
tags: [search, ai-native, embeddings, exa, aief2025, y-combinator, metarank]
aliases: [Exa, exa.ai]
summary: "AI-native web search engine founded in 2021 (YC Summer 2021). Built from scratch using transformer embeddings instead of keyword indexing. Designed for AI agents, not human users."
sources:
  - "AIEF2025 - Building a Smarter AI Agent with Neural RAG - Will Bryk, Exa.ai - https://www.youtube.com/watch?v=xnXqpUW_Kp8"
provenance:
  extracted: 0.90
  inferred: 0.10
  ambiguous: 0.00
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[entities/will-bryk]]"
    type: founded_by
  - target: "[[concepts/neural-rag]]"
    type: implements
  - target: "[[concepts/ai-native-search]]"
    type: implements
  - target: "[[concepts/embedding-based-search]]"
    type: implements
---

# Exa.ai

**Exa** (formerly known as Metamap) is an AI-native web search engine founded in 2021 and accepted into Y Combinator's Summer 2021 cohort. It was built from scratch using transformer-based embeddings rather than traditional keyword indexing, designed specifically for AI agents rather than human users.

## Technology

Exa's fundamental approach differs from traditional search engines (Google, Bing) in how it represents web documents:

- **Traditional search**: Creates a keyword/inverted index mapping words to documents. At query time, performs keyword comparison algorithms. ^[extracted]
- **Exa**: Converts each document into a dense embedding — a list of numbers representing the document's meaning, ideas, and how people refer to it. At query time, embeds the query and compares embeddings via similarity search. ^[extracted]

This allows Exa to handle complex, natural-language queries that traditional engines struggle with — for example, "shirts without stripes" returns results that actually don't have stripes, because the embedding captures the negative constraint semantically rather than lexically. ^[extracted]

## The AI-Search Paradigm

Exa was built on the premise that LLMs will always need to search the web. The information theory argument: GPT-4 has roughly 10 terabytes in its weights, while the web is in the exabyte range. The web is also constantly updating. Therefore, LLMs need a search interface to access current, comprehensive information. ^[extracted]

The key insight is that **search engines built for humans are suboptimal for AI agents**. Humans type simple keywords, care about UI, and click a few links. AI agents can process vast amounts of information, use complex queries, and need dense knowledge retrieval. The search algorithm optimal for one is not optimal for the other. ^[extracted]

## History

- **2021**: Founded, joined YC Summer 2021, raised funding
- **2021–2022**: Four years of research, GPU cluster training, transformer architecture experiments
- **November 2022**: Launched the product; received significant attention on Twitter
- **November 2022 (two weeks later)**: ChatGPT released, fundamentally changing the landscape and raising questions about the role of search in an LLM-first world

## Sources

- AIEF2025 - Building a Smarter AI Agent with Neural RAG - Will Bryk, Exa.ai - https://www.youtube.com/watch?v=xnXqpUW_Kp8
