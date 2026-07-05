---
title: "Dynamic Context in AI Agents"
category: concepts
tags:
  - context-management
  - ai-agents
  - rag
  - generative-ai
  - data-retrieval
sources:
  - "[[sources/watchv=rofhhjmumcc]]"
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.82
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---
# Dynamic Context in AI Agents

The principle that context in AI agent systems is **dynamic and multi-source**, not static and predefined. Context is retrieved at runtime from multiple data services and sources, making it a critical design consideration for AI applications. ^[extracted]

## Static vs Dynamic Context

Traditional AI applications often used static prompts with hardcoded context. Generative AI agents require dynamic context that:

- Is retrieved at runtime, not baked into the prompt
- Comes from multiple data services and sources
- Changes based on user, session, and business context
- Must be kept fresh and accurate ^[extracted]

## Implications

Dynamic context transforms the architecture of AI applications:

- **Data integration becomes critical** — Multiple sources must be accessible in real-time
- **Context quality determines output quality** — Stale or incorrect context produces incorrect responses
- **Context retrieval is a first-class concern** — Not an afterthought, but a core pipeline stage
- **Platform support matters** — Platforms like Amazon Bedrock provide Knowledge Bases for quick RAG implementation ^[extracted]

## Relationship to RAG

Dynamic context is the foundation of [[concepts/agentic-rag|Agentic RAG]] — the retrieval step provides the dynamic context that the agent uses to generate responses. The quality of retrieval directly determines the quality of context, which directly determines output quality. ^[inferred]

## Related Pages

- [[concepts/ai-agent-data-pipeline|AI Agent Data Pipeline]] — Context as a pipeline stage
- [[concepts/agentic-rag|Agentic RAG]] — Dynamic context through retrieval
- [[concepts/data-silos-problem|Data Silos Problem]] — Multi-source context requires breaking down silos
- [[entities/amazon-bedrock|Amazon Bedrock]] — Platform with Knowledge Bases for dynamic context
