---
title: Embedding-Based Search
category: concepts
tags:
- embedding-search
- vector-search
- dense-retrieval
- semantic-search
- neural-rag
aliases:
- dense retrieval
- vector search
- embedding retrieval
summary: Search technique that represents documents and queries as dense embedding vectors, performing similarity search in vector space rather than keyword matching. Foundation of neural RAG and AI-native...
sources:
- AIEF2025 - Building a Smarter AI Agent with Neural RAG - Will Bryk, Exa.ai - https://www.youtube.com/watch?v=xnXqpUW_Kp8
provenance:
  extracted: 0.85
  inferred: 0.15
  ambiguous: 0.0
base_confidence: 0.8
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
- target: '[[concepts/neural-rag]]'
  type: implements
- target: '[[concepts/embedding-models]]'
  type: uses
- target: '[[concepts/semantic-vs-lexical-query-patterns]]'
  type: relates_to
- target: '[[concepts/ai-native-search]]'
  type: enables
---

# Embedding-Based Search

**Embedding-Based Search** (also called dense retrieval or vector search) is a search technique that represents both documents and queries as dense embedding vectors, performing similarity search in vector space rather than keyword matching.

## How It Works

Instead of creating a keyword/inverted index mapping words to documents, embedding-based search:

1. Converts each document into a dense embedding vector using a transformer model
2. Converts the query into the same embedding space
3. Performs similarity search (e.g., cosine similarity) between the query embedding and all document embeddings ^[extracted]

The embedding captures semantic meaning beyond exact word matches — it represents the document's ideas, concepts, and how people refer to it on the web. ^[extracted]

## Key Advantage: Semantic Understanding

The critical advantage over keyword search is semantic understanding. A query like "shirts without stripes" is embedded as a semantic vector, and documents whose embeddings are semantically similar (i.e., actually depict shirts without stripes) rank higher — even though the word "stripes" appears in the query. Traditional keyword search fails here because it matches the presence of "stripes" rather than understanding the negative constraint. ^[extracted]

## Relationship to Other Concepts

Embedding-based search is the technical foundation of [[concepts/neural-rag|Neural RAG]] and [[concepts/ai-native-search|AI-native search]]. It is also one of the core components of [[concepts/ai-powered-search|AI-powered search]], alongside lexical search, re-ranking, and hybrid approaches. ^[inferred]

Unlike [[concepts/semantic-vs-lexical-query-patterns|lexical search]] which works well for keyword-style queries, embedding-based search excels at natural-language queries where semantic meaning matters more than term identity. ^[extracted]

## Scaling and the Bitter Lesson

Embedding-based search embodies the [[concepts/bitter-lesson|Bitter Lesson]]: rather than hard-coding search rules, use transformers and scaling. More compute and more quality data consistently improve embedding quality and search performance. ^[inferred]

## Related

- [[concepts/neural-rag]] — Neural RAG builds on embedding-based search
- [[concepts/embedding-models]] — The models that produce embeddings
- [[concepts/ai-native-search]] — AI-native search uses embedding-based retrieval
- [[concepts/ai-powered-search]] — Embedding search is a component of AI-powered search
- [[concepts/semantic-vs-lexical-query-patterns]] — When to use embedding vs lexical search
