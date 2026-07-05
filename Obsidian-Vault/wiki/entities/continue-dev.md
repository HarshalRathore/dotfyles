---
title: continue.dev
category: entities
tags: [tool, open-source, code-search, rag, coding-agent, vscode-extension]
aliases: [Continue, continue.dev]
summary: "Open-source coding assistant that implements a classic RAG plus re-ranking approach for 'chat with your codebase' applications. Found Voyage Code 3 to be the best embedding model for code understanding."
sources:
  - "AIEF2025 - The State of AI Powered Search and Retrieval — Frank Liu, MongoDB (prev Voyage AI) - https://www.youtube.com/watch?v=pIPtpBZ6TKk"
provenance:
  extracted: 0.90
  inferred: 0.07
  ambiguous: 0.03
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/rag-pipeline-architecture]]"
    type: implements
  - target: "[[entities/voyage-ai]]"
    type: uses
  - target: "[[concepts/domain-specific-embedding-models]]"
    type: exemplifies
---

# continue.dev

continue.dev is an open-source coding assistant that implements a classic [[concepts/rag-pipeline-architecture|RAG]] plus re-ranking approach for "chat with your codebase" applications. ^[extracted]

## Architecture

continue.dev uses a RAG pipeline to enable natural language interaction with codebases: ^[extracted]

1. Code and documentation are embedded and indexed
2. User queries are embedded and used to retrieve relevant code snippets
3. A re-ranking model improves the precision of retrieved results
4. The LLM generates responses grounded in the retrieved code context

## Embedding Model Selection

continue.dev empirically evaluated multiple embedding models and found that **Voyage Code 3** performs the best for their use case. The rationale: code understanding requires an embedding model specifically trained on code, documentation, and developer semantics — not a general-purpose model. ^[extracted]

This finding exemplifies the broader principle that [[concepts/domain-specific-embedding-models|domain-specific embedding models outperform general-purpose models within their target domain]].

## Significance

continue.dev is cited as a real-world example of AI-powered search applied to codebases — demonstrating that the same retrieval principles used for document search (embeddings, re-ranking, grounding) apply equally to code understanding. ^[inferred]

## Related

- [[entities/voyage-ai]] — provider of Voyage Code 3 embedding model
- [[concepts/domain-specific-embedding-models]] — the principle continue.dev exemplifies
- [[concepts/rag-pipeline-architecture]] — the architecture pattern used
- [[concepts/ai-powered-search]] — the broader category

## Sources

- AIEF2025 - The State of AI Powered Search and Retrieval — Frank Liu, MongoDB (prev Voyage AI) - https://www.youtube.com/watch?v=pIPtpBZ6TKk
