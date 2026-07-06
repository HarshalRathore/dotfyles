---
title: 'AIEF2025 - Building Alice''s Brain: an AI Sales Rep that Learns Like a Human — Sherwood & Satwik, 11x'
tags:
- ai-sdr
- rag
- knowledge-base
- parsing
- vector-database
- conference-talk
- ai-eng-worlds-fair-2025
sources:
- 'https://www.youtube.com/watch?v=kwmkmv0fnwq'
summary: 11x tech leads Sherwood and Satwik present Alice's knowledge base — a RAG pipeline that lets their AI SDR proactively pull seller context from documents, websites, and media instead of requiring ma...
provenance:
  extracted: 0.9
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[entities/alice-ai-sdr]]'
  type: related_to
- target: '[[entities/11x]]'
  type: related_to
- target: '[[concepts/ai-sdr]]'
  type: related_to
- target: '[[concepts/agentic-rag]]'
  type: related_to
category: references
---

# AIEF2025 - Building Alice's Brain: an AI Sales Rep that Learns Like a Human — Sherwood & Satwik, 11x

> Talk at AI Engineer World's Fair 2025. Sherwood (tech lead, Alice product at 11x) and Satwik present the architecture and lessons from building Alice's knowledge base — a RAG system that enables their AI SDR to proactively pull seller context from uploaded documents, websites, and media.

## Summary

11x builds digital workers for go-to-market organizations. Their two current products are **Alice**, an AI SDR (sales development representative), and **Julian**, a voice agent. Alice sends ~50,000 personalized emails per day across ~300 business organizations. The talk focuses on Alice's knowledge base — the system that replaced a manual "library" onboarding experience with a RAG pipeline where Alice proactively pulls seller context instead of waiting for users to push it.

## Key Points

### The Old Problem: Manual Library Onboarding

Previously, sellers manually entered product details, services, pain points, solutions, and value propositions into a dashboard called "the library." This created onboarding friction — users couldn't run campaigns until they filled out the library. The resulting emails were suboptimal: either too few offers (irrelevant to the lead) or too many offers (flooding the context window).

### The New Approach: Alice Pulls Context

The knowledge base flips the model: instead of sellers pushing context, Alice proactively pulls it. Users upload documents, URLs, videos, and other resources. The system parses, chunks, embeds, and stores them in a vector database. Alice queries this knowledge base when writing personalized emails.

### Five-Step RAG Pipeline

The pipeline has five stages:

1. **Parsing** — Converting non-text resources (PDFs, images, websites, audio, video) into structured markdown. They did not build parsing in-house, instead selecting vendors: LlamaParse (documents/images), Firecrawl (websites), and Cloud Glue (audio/video).
2. **Chunking** — A waterfall strategy: split on markdown headers first, then sentences, then tokens. This preserves semantic structure while keeping chunks within token limits.
3. **Storage** — Upserting chunks to both a local database and Pinecone (vector database) with embeddings.
4. **Retrieval** — Using a deep research agent (built on Leto) that plans multi-step context retrieval, evaluates relevance, and synthesizes results into clean Q&A format.
5. **Visualization** — An interactive 3D visualization of the knowledge base using UMAP to project Pinecone vectors into three dimensions, letting users click nodes to inspect chunks.

### Vendor Selection Philosophy

They chose vendors over building in-house for three reasons: too many resource types, time-to-market pressure, and lack of confidence in their own parsing outcomes. Their initial selection criteria focused on resource type support, markdown output, and webhook delivery — but notably did not consider accuracy, comprehensiveness, or cost upfront. They plan to benchmark these metrics in the future.

### Lessons Learned

1. **RAG is complex** — Many micro-decisions, multiple technologies to evaluate, different resource types each need tailored handling.
2. **Get to production before benchmarking** — Start with something that satisfies product requirements, then establish real benchmarks to iterate on.
3. **Lean on vendors** — Make competing solutions work for your business; they'll teach you about their differentiators.

### Future Plans

- Track and address hallucinations in Alice's emails
- Evaluate parsing vendors on accuracy and completeness
- Experiment with hybrid RAG (graph database alongside vector database)
- Reduce costs across the entire pipeline

## Related Pages

- [[entities/alice-ai-sdr]] — Alice, the AI SDR product
- [[entities/11x]] — The company building Alice
- [[entities/pinecone]] — The vector database used for storage
- [[entities/llamaparse]] — Document/image parsing vendor
- [[entities/firecrawl]] — Website crawling vendor
- [[entities/cloud-glue]] — Audio/video parsing vendor
- [[entities/leto]] — Cloud agent provider for deep research
- [[concepts/ai-sdr]] — AI Sales Development Representative concept
- [[concepts/agentic-rag]] — Agentic RAG patterns
- [[concepts/graphrag]] — Graph-based RAG (mentioned as future work)

## Sources

- Video: <https://www.youtube.com/watch?v=KWmkMV0FNwQ>
