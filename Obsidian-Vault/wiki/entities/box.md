---
title: Box
tags:
- organization
- enterprise
- content-platform
- ai
- cloud
sources:
- 'https://www.youtube.com/watch?v=12v5s1n1eoy'
summary: Enterprise unstructured content platform managing exabytes of data for 115K+ customers including 2/3 of the Fortune 500.
provenance:
  extracted: 0.85
  inferred: 0.15
  ambiguous: 0.0
base_confidence: 0.7
lifecycle: draft
created: 2026-07-03
updated: 2026-07-03
category: entities
tier: supporting
---

# Box

Box is an enterprise unstructured content platform with over 15 years of history. It manages exabytes of data and hundreds of billions of files for more than 115,000 enterprise customers, including two-thirds of the Fortune 500. The company focuses on bringing content management, security, and increasingly AI capabilities to large enterprises.

## AI Platform Evolution

Box began its generative AI journey in 2023, building AI capabilities on top of its existing content platform infrastructure. The company built features including Q&A across documents, data extraction, and AI-powered workflows. A core insight was that many enterprise customers' first AI deployment was with Box, due to data security concerns with public AI services. ^[inferred]

### Agentic Architecture

Box shifted from simple LLM calls to an [[concepts/agentic-architecture|agentic architecture]] using directed graphs with tools, memory, and orchestration. This approach proved critical for complex enterprise use cases where single-shot LLM calls fell short — particularly for extracting structured data from complex documents.

### Model Strategy

Box supports multiple model vendors (Gemini, Llama, OpenAI, [[entities/anthropic|Anthropic]]) and explicitly avoids fine-tuning. The company prefers prompt engineering, prompt caching, and agentic approaches over fine-tuning, citing the difficulty of maintaining fine-tuned models across multiple vendor model evolutions.

## Platform Approach

Box provides an API-first platform: an agent API that customers can call, and publishes MCP servers for agent-to-agent communication. This positions Box as both a consumer of AI and a platform for enterprise customers to build their own AI agents on top of Box's content. ^[inferred]

## Key Products

- **Data extraction** — converting unstructured content (contracts, leases, proposals) into structured data using multi-step agentic pipelines
- **Deep research on enterprise content** — agentic deep research over a customer's own Box data, analogous to OpenAI/Gemini deep research on the internet
- **AI-powered workflows** — intelligent workflow automation across content

## Sources

- [[references/box-agentic-platform-ben-kus|Building an Agentic Platform — Ben Kus, CTO Box]] — Conference talk
